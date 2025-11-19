void sub_1003EED2C()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_link];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_message];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EF0;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = &v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style + 8];
  v8 = [v4 constraintEqualToAnchor:v5 constant:v7];

  *(v3 + 32) = v8;
  v9 = [v1 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = *v6;
  v12 = [v9 constraintEqualToAnchor:v10 constant:*v6];

  *(v3 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v11];

  *(v3 + 48) = v15;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:isa];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1005521F0;
  v18 = [v2 topAnchor];
  v19 = [v1 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v17 + 32) = v20;
  v21 = [v2 leadingAnchor];
  v22 = [v0 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:v11];

  *(v17 + 40) = v23;
  v24 = [v2 trailingAnchor];
  v25 = [v0 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:-v11];

  *(v17 + 48) = v26;
  v27 = [v2 bottomAnchor];
  v28 = [v0 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-v7];

  *(v17 + 56) = v29;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v30 activateConstraints:v31];
}

id sub_1003EF194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMHelpFriendView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for FMHelpFriendViewStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMHelpFriendViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1003EF2E0()
{
  v1 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_link;
  *(v0 + v1) = [objc_allocWithZone(UIButton) init];
  v2 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_message;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC6FindMy16FMHelpFriendView_style;
  if (qword_1006AEC98 != -1)
  {
    swift_once();
  }

  v4 = v0 + v3;
  v5 = byte_1006D49E0;
  *v4 = xmmword_1006D49D0;
  *(v4 + 16) = v5;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003EF768()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_identifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber);

  return swift_deallocClassInstance();
}

Swift::Int sub_1003EF81C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003EFDE8(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003EF8BC()
{
  type metadata accessor for UUID();
  sub_1003EFDE8(&unk_1006C2410, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1003EF944()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003EFDE8(&unk_1006C2410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003EF9E0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFA78(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 40))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 56))(a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFBBC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFC54(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 72))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFCEC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 80))(a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003EFDE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003EFE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = FMIPDevice.category.getter();
  v6 = v5;
  if (v4 == FMIPDeviceImageCacheRequest.class.getter() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v9 = FMIPDevice.rawModel.getter();
  v11 = v10;
  if (v9 == FMIPDeviceImageCacheRequest.model.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = FMIPDevice.color.getter();
  v16 = v15;
  v17 = FMIPDeviceImageCacheRequest.color.getter();
  if (!v16)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v18)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (v14 != v17 || v16 != v18)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_18;
    }

LABEL_16:
    v19 = type metadata accessor for FMIPDevice();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

LABEL_18:
  v22 = type metadata accessor for FMIPDevice();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a2, a1, v22);
  return (*(v23 + 56))(a2, 0, 1, v22);
}

uint64_t sub_1003F00B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FMIPItemRole();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPItem.role.getter();
  v8 = FMIPItemRole.emoji.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v8 == FMIPItemImageCacheRequest.emoji.getter() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v14 = type metadata accessor for FMIPItem();
      return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    }
  }

  v16 = type metadata accessor for FMIPItem();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a2, a1, v16);
  return (*(v17 + 56))(a2, 0, 1, v16);
}

uint64_t sub_1003F02D8(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for FMIPDevice();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    (*(v7 + 16))(v9, a2, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = a2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136315138;
      v33 = FMIPDeviceImageCacheRequest.debugDescription.getter();
      v17 = v16;
      (*(v7 + 8))(v9, v6);
      v18 = sub_100005B4C(v33, v17, &v38);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMDevicesProvider: didLoadImage for request %s", v14, 0xCu);
      sub_100006060(v15);

      a2 = v13;
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v19 = *(v37 + 16);

    os_unfair_lock_lock((v19 + 24));
    v6 = *(v19 + 16);

    os_unfair_lock_unlock((v19 + 24));

    if (v6 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
      }
    }

    else
    {
      v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
      }
    }

    v20 = FMIPManager.devices.getter();
    __chkstk_darwin(v20);
    *(&v28 - 2) = a2;
    v21 = sub_1003F7EFC(sub_1003F07BC, (&v28 - 4), v20);

    result = v21;
    v33 = v21[2];
    if (!v33)
    {
LABEL_20:
    }

    if (v9 < 1)
    {
      break;
    }

    v28 = 0;
    v23 = 0;
    v31 = v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v7 = v6 & 0xC000000000000001;
    v29 = (v34 + 8);
    v30 = v34 + 16;
    v32 = result;
    while (v23 < *(result + 16))
    {
      (*(v34 + 16))(v5, &v31[*(v34 + 72) * v23], v35);
      a2 = 0;
      do
      {
        if (v7)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v6 + 8 * a2 + 32);
        }

        v27 = v26 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v27 + 8);
          ObjectType = swift_getObjectType();
          (*(v24 + 40))(v37, v36, v5, ObjectType, v24);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        ++a2;
      }

      while (v9 != a2);
      ++v23;
      (*v29)(v5, v35);
      result = v32;
      if (v23 == v33)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003F07FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1005604E8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1003F0884()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1005604E8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1003F08D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F19BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003F0914(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() mainBundle];
  if (a3)
  {
    v15 = 0x8000000100579A00;
    v7 = 0xD000000000000013;
    v8 = 0x80000001005799E0;
    v9 = 0xD000000000000018;
    v10 = a1;
    v11 = a2;
  }

  else
  {
    v15 = 0x8000000100582000;
    v8 = 0x8000000100581FE0;
    v9 = 0xD000000000000015;
    v10 = a1;
    v11 = a2;
    v7 = 0xD000000000000010;
  }

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v7, v6, v12, *&v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1003F0A8C()
{
  sub_1002AEFA8();

  sub_1003F0AB4();
}

void sub_1003F0AB4()
{
  v1 = type metadata accessor for FMPlatterIcon();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v95 = &v90 - v6;
  v97 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode;
  v98 = v0;
  if (v0[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] > 1u)
  {
    if (v0[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] == 2)
    {
      v18 = 0x8000000100596500;
      v96 = 0x8000000100596520;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005B14(v19, qword_1006D4630);
      v20 = v98;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v21, v22))
      {

        v93 = 0xD000000000000012;
        v94 = 0xD000000000000015;
        goto LABEL_40;
      }

      v90 = v1;
      v91 = v2;
      v92 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136315138;
      v25 = [*&v20[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label] text];
      if (v25)
      {
        v26 = v25;
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0xE000000000000000;
      }

      v55 = sub_100005B4C(v27, v29, &aBlock);

      *(v23 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v21, v22, "FMFailablePlatterInfoView: Showing failure for: %s", v23, 0xCu);
      sub_100006060(v24);

      v93 = 0xD000000000000012;
      v94 = 0xD000000000000015;
      goto LABEL_35;
    }

    v96 = 0x8000000100596540;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100005B14(v41, qword_1006D4630);
    v42 = v98;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    v45 = os_log_type_enabled(v43, v44);
    v93 = 0x4552554C4941465FLL;
    if (v45)
    {
      v90 = v1;
      v91 = v2;
      v92 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      v48 = [*&v42[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label] text];
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

      v57 = sub_100005B4C(v50, v52, &aBlock);

      *(v46 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v43, v44, "FMFailablePlatterInfoView: Showing failure for: %s", v46, 0xCu);
      sub_100006060(v47);

      v2 = v91;
      v5 = v92;
    }

    else
    {
    }

    v53 = 0xD000000000000011;
LABEL_39:
    v94 = v53;
    v18 = 0xEE00454C5449545FLL;
    goto LABEL_40;
  }

  if (v0[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode])
  {
    v96 = 0x8000000100596560;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100005B14(v30, qword_1006D4630);
    v31 = v98;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v90 = v1;
      v91 = v2;
      v92 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136315138;
      v36 = [*&v31[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label] text];
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0xE000000000000000;
      }

      v93 = 0x4552554C4941465FLL;
      v56 = sub_100005B4C(v38, v40, &aBlock);

      *(v34 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v32, v33, "FMFailablePlatterInfoView: Showing failure for: %s", v34, 0xCu);
      sub_100006060(v35);

      v94 = 0xD000000000000022;
      v18 = 0xEE00454C5449545FLL;
LABEL_35:
      v2 = v91;
      v5 = v92;
      goto LABEL_40;
    }

    v93 = 0x4552554C4941465FLL;

    v53 = 0xD000000000000022;
    goto LABEL_39;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v96 = 0xE900000000000045;
  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v98;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v90 = v1;
    v91 = v2;
    v92 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    v13 = [*&v8[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label] text];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v54 = sub_100005B4C(v15, v17, &aBlock);

    *(v11 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMFailablePlatterInfoView: Showing default for: %s", v11, 0xCu);
    sub_100006060(v12);

    v18 = 0xE600000000000000;
    v2 = v91;
    v5 = v92;
  }

  else
  {

    v18 = 0xE600000000000000;
  }

  v94 = 0x4C5449544255535FLL;
  v93 = 0x454C5449545FLL;
LABEL_40:
  v58 = v98;
  v59 = v95;
  *v95 = v98[v97];
  swift_storeEnumTagMultiPayload();
  v60 = objc_opt_self();
  v61 = *&v58[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView];
  sub_1000D5AC4(v59, v5);
  v62 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  sub_10015DA28(v5, v63 + v62);
  v104 = sub_1003F1A00;
  v105 = v63;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100004AE4;
  v103 = &unk_10063CA08;
  v64 = _Block_copy(&aBlock);
  v65 = v58;

  [v60 transitionWithView:v61 duration:5242884 options:v64 animations:0 completion:0.25];
  _Block_release(v64);
  sub_1000D59F8(v59);
  v66 = *&v65[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label];
  v67 = swift_allocObject();
  v68 = v93;
  v67[2] = v65;
  v67[3] = v68;
  v67[4] = v18;
  v104 = sub_1003F1A64;
  v105 = v67;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100004AE4;
  v103 = &unk_10063CA58;
  v69 = _Block_copy(&aBlock);
  v70 = v65;

  [v60 transitionWithView:v66 duration:5242884 options:v69 animations:0 completion:0.25];
  _Block_release(v69);
  v71 = *&v70[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle];
  v72 = swift_allocObject();
  v73 = v94;
  v72[2] = v70;
  v72[3] = v73;
  v72[4] = v96;
  v104 = sub_1003F1ACC;
  v105 = v72;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100004AE4;
  v103 = &unk_10063CAA8;
  v74 = _Block_copy(&aBlock);
  v75 = v70;

  [v60 transitionWithView:v71 duration:5242884 options:v74 animations:0 completion:0.25];
  _Block_release(v74);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_100005B14(v76, qword_1006D4630);
  v77 = v75;
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v80 = 136315394;
    v99 = v98[v97];
    v81 = String.init<A>(describing:)();
    v83 = sub_100005B4C(v81, v82, &aBlock);

    *(v80 + 4) = v83;
    *(v80 + 12) = 2080;
    v84 = [v66 text];
    if (v84)
    {
      v85 = v84;
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;
    }

    else
    {
      v86 = 0;
      v88 = 0xE000000000000000;
    }

    v89 = sub_100005B4C(v86, v88, &aBlock);

    *(v80 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v78, v79, "FMFailablePlatterInfoView: Showing failure for: %s ->  %s", v80, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1003F1708(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a4);
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType);
  v8 = 0xD000000000000019;
  if (v7)
  {
    v8 = 0xD00000000000001ELL;
    v9 = "N_FAILURE_SUBTITLE";
  }

  else
  {
    v9 = "ACCESSORY_DETAIL_SOUND_PENDING";
  }

  v12 = v8;
  v13 = v9 | 0x8000000000000000;

  v10._countAndFlagsBits = a2;
  v10._object = a3;
  String.append(_:)(v10);

  sub_1003F0914(v12, v13, v7);

  v11 = String._bridgeToObjectiveC()();

  [v6 setText:v11];
}

id sub_1003F1810()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFailablePlatterInfoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFailablePlatterInfoView()
{
  result = qword_1006BEC20;
  if (!qword_1006BEC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1003F1910()
{
  result = qword_1006BEC30;
  if (!qword_1006BEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEC30);
  }

  return result;
}

unint64_t sub_1003F1968()
{
  result = qword_1006BEC38;
  if (!qword_1006BEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BEC38);
  }

  return result;
}

uint64_t sub_1003F19BC(uint64_t result)
{
  if (result > 499)
  {
    if (result == 501)
    {
      return 3;
    }

    if (result == 500)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 13)
    {
      return 1;
    }
  }

  return 4;
}

uint64_t sub_1003F1A00()
{
  v1 = *(type metadata accessor for FMPlatterIcon() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1002B2648(v2, v3);
}

uint64_t sub_1003F1A8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003F1B00()
{
  swift_unknownObjectWeakDestroy();
}

id sub_1003F1B70()
{

  v1 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
  FMIPAccessoryDiscoveryController.Callbacks.detectedPairingAccessoryCallback.setter();
  v1(v4, 0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003F1ED0(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_deviceSubscription])
  {
    v4 = *(*(*&v2[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_viewModel] + 24) + 16);

    os_unfair_lock_lock((v4 + 24));
    sub_10008FB6C((v4 + 16));
    os_unfair_lock_unlock((v4 + 24));
  }

  My = type metadata accessor for Feature.FindMy();
  v8[3] = My;
  v8[4] = sub_10000A0C0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v6 = sub_100008FC0(v8);
  (*(*(My - 8) + 104))(v6, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100006060(v8);
  if (My)
  {
    return dispatch thunk of FMIPAccessoryDiscoveryController.stopProximityDiscovery(completion:)();
  }

  return result;
}

uint64_t sub_1003F2124()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMAccessoryDiscoveryItemSearchingCard: detectedPairingAccessoryCallback, dismissing card.", v11, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1003F41E0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063CC88;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1003F24C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    aBlock[4] = sub_100097224;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063CCD8;
    v3 = _Block_copy(aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

void sub_1003F25B8()
{
  My = type metadata accessor for Feature.FindMy();
  v6 = My;
  v7 = sub_10000A0C0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v2 = sub_100008FC0(v5);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.emotionalKiwi(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v5);
  if (My)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of FMIPAccessoryDiscoveryController.startProximityDiscovery(completion:invalidationHandler:)();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_sharingClient);
    v7 = sub_1003F2CBC;
    v8 = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1001A44B4;
    v6 = &unk_10063CC60;
    v4 = _Block_copy(v5);
    [v3 reenableProxCardType:101 completion:v4];
    _Block_release(v4);
  }
}

void sub_1003F2794(uint64_t a1)
{
  v2 = type metadata accessor for FMIPAccessoryError();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_10007EBC0(&qword_1006B3048);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_1003F4168(a1, &v26 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v8, v11, v2);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4630);
    (*(v3 + 16))(v6, v8, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v26 = FMIPAccessoryError.localizedDescription.getter();
      v18 = v17;
      v19 = *(v3 + 8);
      v19(v6, v2);
      v20 = sub_100005B4C(v26, v18, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMAccessoryDiscoveryItemSearchingCard: Error enabling prox card %s", v15, 0xCu);
      sub_100006060(v16);

      v19(v8, v2);
    }

    else
    {

      v25 = *(v3 + 8);
      v25(v6, v2);
      v25(v8, v2);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMAccessoryDiscoveryItemSearchingCard: Prox card re-enabled", v24, 2u);
    }
  }
}

void sub_1003F2B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = [v3 isBeingDismissed];

      _os_log_impl(&_mh_execute_header, v4, v5, "isBeingDismissed = %{BOOL}d", v6, 8u);
    }

    else
    {

      v4 = v3;
    }

    if (([v3 isBeingDismissed]& 1) == 0)
    {
      sub_1003F25B8();
    }
  }
}

void sub_1003F2CBC(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100005B14(v1, qword_1006D4630);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v13 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_100005B4C(v6, v7, &v13);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "FMAccessoryDiscoveryItemSearchingCard: Error enabling prox card %s", v4, 0xCu);
      sub_100006060(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100005B14(v9, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "FMAccessoryDiscoveryItemSearchingCard: Prox card re-enabled", v11, 2u);
    }
  }
}

void sub_1003F2F50()
{
  v1 = [objc_opt_self() mainBundle];
  v11._object = 0x8000000100582000;
  v2._countAndFlagsBits = 0x4D4554495F444441;
  v2._object = 0xEE00454C5449545FLL;
  v3.value._object = 0x8000000100581FE0;
  v11._countAndFlagsBits = 0xD000000000000015;
  v3.value._countAndFlagsBits = 0xD000000000000010;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  sub_10022ECA4(0xD000000000000010, 0x8000000100596670);
  v6 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v6];

  v7 = *&v0[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer];
  v8 = sub_1003F3ED0();
  v9 = (v7 + OBJC_IVAR____TtC6FindMy14FMAVPlayerView_assetName);
  *v9 = v8;
  v9[1] = v10;

  sub_1002E76F0();
}

void sub_1003F30C8()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = [v1 traitCollection];
  [v9 userInterfaceStyle];

  v10 = [objc_opt_self() mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 URLForResource:v11 withExtension:0];

  if (v12)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v6, v2);
    v13 = [*&v1[OBJC_IVAR____TtC6FindMy29FMAccessoryDiscoveryVideoCard_videoPlayer] layer];
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v17 = SFAdjustmentFiltersForAssetTypeAndURL();

    sub_10000905C(0, &qword_1006C3CB0);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10052AAA0(v18);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setFilters:isa];

    (*(v3 + 8))(v8, v2);
  }
}

void sub_1003F33C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_initialItemCount) < *(a2 + 16))
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100005B14(v5, qword_1006D4630);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "FMAccessoryDiscoveryItemSearchingCard: dismissing because we paired a new one.", v8, 2u);
      }

      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      aBlock[4] = sub_1000822F4;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063CC38;
      v10 = _Block_copy(aBlock);

      [v4 dismissViewControllerAnimated:1 completion:v10];
      _Block_release(v10);
    }
  }
}

uint64_t sub_1003F359C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062CB38;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_100012470((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v3;
}

uint64_t sub_1003F366C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_1006250F0;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_100012470((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v3;
}

uint64_t sub_1003F373C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10062AD80;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_100012470((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v3;
}

uint64_t sub_1003F380C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMDevicesSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10063CAF8;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 16);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v3;
}

id sub_1003F38DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DiscoveryType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_sharingClient;
  *&v3[v9] = [objc_allocWithZone(SFClient) init];
  v10 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_baClient;
  (*(v6 + 104))(v8, enum case for DiscoveryType.b389(_:), v5);
  type metadata accessor for FMIPAccessoryDiscoveryController();
  swift_allocObject();
  *&v3[v10] = FMIPAccessoryDiscoveryController.init(discoveryType:)();
  *&v3[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_deviceSubscription] = 0;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_viewModel] = a2;

  v11 = FMIPManager.items.getter();

  v12 = *(v11 + 16);

  *&v3[OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_initialItemCount] = v12;
  v13 = type metadata accessor for FMAccessoryDiscoveryItemSearchingCard();
  v15.receiver = v3;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "initWithContentView:", 0);
}

uint64_t sub_1003F3AA4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v6;
    v16 = v3;
    v17 = v8;
    v18 = v4;
    v19 = v7;
    v20 = v15;
    *v15 = 134218240;
    *(v15 + 4) = *(a1 + 16);

    *(v20 + 12) = 2048;
    *(v20 + 14) = *(v12 + OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryItemSearchingCard_initialItemCount);

    _os_log_impl(&_mh_execute_header, v13, v14, "FMAccessoryDiscoveryItemSearchingCard: devicesProvider didUpdate items %ld, originalCount %ld", v20, 0x16u);
    v7 = v19;
    v4 = v18;
    v8 = v17;
    v3 = v16;
    v6 = v27;
  }

  else
  {

    v13 = v12;
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  aBlock[4] = sub_1003F3EC8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063CBE8;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1003F3ED0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = MGGetSInt32Answer();
  if (v2 < 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_11;
  }

  v0 = v2;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = SBSIsSystemApertureAvailable();
  if (v4 == 1)
  {

    return 0xD000000000000014;
  }

  if (!v4)
  {
    v6 = v5;

    v7 = 0xD000000000000015;
    if (!v6)
    {
      v7 = 0xD000000000000016;
    }

    if (v0 == 2)
    {
      return v7;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0 != 2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315394;
    type metadata accessor for UIUserInterfaceIdiom(0);
    v15 = String.init<A>(describing:)();
    v17 = sub_100005B4C(v15, v16, &v18);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMAccessoryDiscoveryItemSearchingCard: Invalid asset combination: %s, %{BOOL}d", v13, 0x12u);
    sub_100006060(v14);
  }

  return 0xD000000000000016;
}

uint64_t sub_1003F4168(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003F4230(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v31 = OBJC_IVAR____TtC6FindMy19FMClusterAnnotation__memberAnnotations;
  *&v2[OBJC_IVAR____TtC6FindMy19FMClusterAnnotation__memberAnnotations] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  *&v2[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v15 = 0;
    v17 = 0;
LABEL_13:
    *&v2[v31] = a1;

    v25 = &v2[OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_tempCoordinate];
    *v25 = v15;
    v25[1] = v17;
    v26 = &v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_title];
    *v26 = 0;
    v26[1] = 0;
    *&v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_badgeImage] = 0;
    *&v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_stewieBadgeImage] = 0;
    v27 = &v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    *v27 = v21;
    v27[1] = v22;
    v28 = &v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_coordinate];
    *v28 = v15;
    v28[1] = v17;
    *&v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] = v19;
    v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_isWithYou] = v22 == 1;
    v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_isInaccurate] = 0;
    v2[OBJC_IVAR____TtC6FindMy12FMAnnotation_isLive] = 0;
    v29 = type metadata accessor for FMAnnotation();
    v32.receiver = v2;
    v32.super_class = v29;
    objc_msgSendSuper2(&v32, "init");
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v12 = *(a1 + 32);
  }

  v13 = v12;
  [v12 coordinate];
  v15 = v14;
  v17 = v16;

  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v19 = *&v18[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy];

    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v24 = v20;
    v21 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
    v22 = *&v20[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
    sub_10009186C(v21, v22);

    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(a1 + 32);
    v19 = *&v23[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy];
    v20 = v23;
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1003F4608(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_1003F4F2C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063CD50;
  v12 = _Block_copy(aBlock);

  v13 = v1;
  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_1003F483C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    v12 = 0;
    v8 = 0;
    v10 = 0;
LABEL_13:
    *(a2 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation__memberAnnotations) = a1;

    v13 = (a2 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_tempCoordinate);
    *v13 = v8;
    v13[1] = v10;
    *(a2 + OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy) = v12;
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  [v5 coordinate];
  v8 = v7;
  v10 = v9;

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v12 = *&v11[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy];

    goto LABEL_13;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a1 + 32);
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
}

id sub_1003F499C()
{
  v0 = objc_allocWithZone(UIImage);

  return [v0 init];
}

size_t sub_1003F4A48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FMAnnotationIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = *(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier);
  v11 = *(a1 + OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8);
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  v34 = v9;
  v12 = *(a1 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation__memberAnnotations);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_10009186C(v10, v11);
    v16 = _swiftEmptyArrayStorage;
LABEL_14:
    v29 = v34;
    *(v34 + 32) = v16;
    *a2 = v29;
    return swift_storeEnumTagMultiPayload();
  }

  v25 = v10;
  v26 = v5;
  v27 = v11;
  v28 = _CocoaArrayWrapper.endIndex.getter();
  v11 = v27;
  v5 = v26;
  v13 = v28;
  v10 = v25;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_3:
  v33 = v5;
  sub_10009186C(v10, v11);
  v36 = _swiftEmptyArrayStorage;

  result = sub_100167554(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v35 = v13;
    v31 = a2;
    v32 = v2;
    v15 = 0;
    v16 = v36;
    v17 = v12;
    v18 = v12 & 0xC000000000000001;
    v19 = v12;
    do
    {
      if (v18)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v17 + 8 * v15 + 32);
      }

      v21 = *((swift_isaMask & *v20) + 0x190);
      v22 = v20;
      v21();

      v36 = v16;
      v24 = v16[2];
      v23 = v16[3];
      if (v24 >= v23 >> 1)
      {
        sub_100167554(v23 > 1, v24 + 1, 1);
        v16 = v36;
      }

      ++v15;
      v16[2] = v24 + 1;
      sub_1003F4EAC(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
      v17 = v19;
    }

    while (v35 != v15);

    a2 = v31;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void sub_1003F4DEC()
{

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_updateQueue);
}

id sub_1003F4E2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMClusterAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F4EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F4F34(char *a1, char *a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier();
  v5 = __chkstk_darwin(v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v26 = a1;
  OS_dispatch_queue.sync<A>(execute:)();
  v25 = a2;
  OS_dispatch_queue.sync<A>(execute:)();
  v10 = sub_10017E734(v9, v7);
  sub_10017E6D8(v7);
  sub_10017E6D8(v9);
  if ((v10 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_10000905C(0, &qword_1006B4980);
  v11 = [objc_allocWithZone(UIImage) init];
  v12 = [objc_allocWithZone(UIImage) init];
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  [a1 coordinate];
  v15 = v14;
  [a2 coordinate];
  if (v15 != v16)
  {
    goto LABEL_20;
  }

  [a1 coordinate];
  v18 = v17;
  [a2 coordinate];
  if (v18 != v19 || *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy] != *&a2[OBJC_IVAR____TtC6FindMy12FMAnnotation_horizontalAccuracy])
  {
    goto LABEL_20;
  }

  v20 = *&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
  v21 = *&a2[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v20 != 3)
      {
        goto LABEL_15;
      }

      if (v21 != 3)
      {
        goto LABEL_20;
      }
    }

LABEL_23:
    v22 = 1;
    return v22 & 1;
  }

  if (!v20)
  {
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v20 == 1)
  {
    if (v21 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_15:
  if (v21 < 4)
  {
LABEL_20:
    v22 = 0;
    return v22 & 1;
  }

  if (*&a1[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] == *&a2[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier] && v20 == v21)
  {
    goto LABEL_23;
  }

  v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
  return v22 & 1;
}

char *sub_1003F51F8()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B3298);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v75 - v10;
  *&v1[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch;
  *&v1[v11] = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v83 = &type metadata for SolariumFeatureFlag;
  v75 = sub_10000BD04();
  v84 = v75;
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100006060(v82);
  v12 = 16.0;
  if ((v11 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1006D4798;
  }

  v76 = v5;
  v13 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch;
  v14 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *&v1[v13] = sub_100502750(1, v12);
  v1[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled] = 0;
  v1[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_mockDisabled] = 0;
  v78 = objc_opt_self();
  v15 = [v78 mainBundle];
  v16.value._countAndFlagsBits = 0xD000000000000013;
  v85._object = 0x8000000100579A00;
  v17._object = 0x8000000100596830;
  v16.value._object = 0x80000001005799E0;
  v17._countAndFlagsBits = 0xD000000000000018;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0xD000000000000018;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v85)._countAndFlagsBits;

  v19 = v79;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v19, 0, 1, v2);
  v20 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  *&v1[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v1[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v1[v22] = [objc_allocWithZone(UIStackView) init];
  v23 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v1[v23] = [objc_allocWithZone(UIStackView) init];
  v24 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v25 = objc_opt_self();
  *&v1[v24] = [v25 buttonWithType:1];
  v26 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v1[v26] = [v25 buttonWithType:1];
  v27 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v1[v27] = [objc_allocWithZone(UIView) init];
  v28 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v1[v28] = [objc_allocWithZone(UIView) init];
  v29 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v1[v29] = [objc_allocWithZone(UIView) init];
  v30 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v31 = type metadata accessor for FMPlatterBackgroundView();
  v32 = objc_allocWithZone(v31);
  v32[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v81.receiver = v32;
  v81.super_class = v31;
  v33 = objc_msgSendSuper2(&v81, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v30] = v33;
  v34 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v1[v34] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v35 = &v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v36 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v80.receiver = v1;
  v80.super_class = v36;
  v37 = objc_msgSendSuper2(&v80, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v39 = *&v37[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v40 = v37;
  v41 = v39;
  v42 = String._bridgeToObjectiveC()();

  [v41 setText:v42];

  [*&v37[v38] setAdjustsFontForContentSizeCategory:1];
  v43 = *&v37[v38];
  v44 = String._bridgeToObjectiveC()();
  [v43 setAccessibilityIdentifier:v44];

  sub_100243148(v19, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    v45 = sub_10017D238(v9);
  }

  else
  {
    v46 = v76;
    sub_10015DA28(v9, v76);
    v83 = &type metadata for SolariumFeatureFlag;
    v84 = v75;
    v47 = isFeatureEnabled(_:)();
    sub_100006060(v82);
    if (v47)
    {
      v48 = sub_100438138(0);
      v50 = v49;
      v51 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v40[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v48];
      [*&v40[v51] setTintColor:v50];
      [*&v40[v51] setTintAdjustmentMode:1];
    }

    else
    {
      v48 = *&v40[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v50 = sub_10043B9F4(v46, 0);
      [v48 setImage:v50];
    }

    v45 = sub_1000D59F8(v46);
  }

  (*((swift_isaMask & *v40) + 0x1E0))(v45);
  sub_100455CF8();
  (*((swift_isaMask & *v40) + 0x1F8))();
  v52 = v40;
  v53 = String._bridgeToObjectiveC()();
  [v52 setAccessibilityIdentifier:v53];

  sub_10017D238(v79);
  v54 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch;
  v55 = *&v52[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
  v56 = v52;
  v57 = v78;
  v58 = [v78 mainBundle];
  v86._object = 0x8000000100588A40;
  v59._countAndFlagsBits = 0xD00000000000001ELL;
  v59._object = 0x8000000100588A20;
  v86._countAndFlagsBits = 0xD000000000000030;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v86);

  *(v55 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle) = v61;

  v62 = *(v55 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel);

  v63 = v62;
  v64 = String._bridgeToObjectiveC()();

  [v63 setText:v64];

  v65 = [v57 mainBundle];
  v66.value._countAndFlagsBits = 0xD000000000000016;
  v87._object = 0x800000010057D660;
  v67._countAndFlagsBits = 0xD00000000000002FLL;
  v67._object = 0x8000000100588AD0;
  v66.value._object = 0x800000010057D640;
  v87._countAndFlagsBits = 0xD00000000000001BLL;
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v66, v65, v68, v87);

  sub_100502538(v69._countAndFlagsBits, v69._object);
  [*&v52[v54] setUserInteractionEnabled:0];
  *(*&v52[v54] + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) = 0;
  sub_100503F58();
  v70 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch;
  *(*&v56[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch] + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = 0;
  sub_10014B454();
  v71 = *&v56[v70];
  *(v71 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn) = 0;
  [*(v71 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch) setOn:0];
  v72 = *&v56[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v73 = String._bridgeToObjectiveC()();
  [v72 setAccessibilityIdentifier:v73];

  return v56;
}

id sub_1003F5CD0()
{
  v1 = v0;
  sub_100455328();
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch);
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5.value._countAndFlagsBits = 0xD000000000000016;
  v30._object = 0x800000010057D660;
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x80000001005888C0;
  v5.value._object = 0x800000010057D640;
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v30);

  *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title] = v8;

  v9 = *&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v10 = v9;
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  v12 = String._bridgeToObjectiveC()();
  [v2 setAccessibilityIdentifier:v12];

  v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_isLastRow] = 1;
  sub_10050265C();
  v13 = *(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch);
  v14 = [v3 mainBundle];
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v31._object = 0x8000000100579A00;
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x8000000100596850;
  v15.value._object = 0x80000001005799E0;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000018;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v31);

  *&v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_title] = v18;

  v19 = *&v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_titleLabel];

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isOn] = 0;
  [*&v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_settingSwitch] setOn:0];
  *&v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_delegate + 8] = &off_10063CD78;
  swift_unknownObjectWeakAssign();
  v22 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v22];

  v23 = *(v1 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);
  [v23 addArrangedSubview:v13];
  My = type metadata accessor for Feature.FindMy();
  v29[3] = My;
  v29[4] = sub_1000069D8();
  v25 = sub_100008FC0(v29);
  (*(*(My - 8) + 104))(v25, enum case for Feature.FindMy.separationAlerts(_:), My);
  v26 = isFeatureEnabled(_:)();
  sub_100006060(v29);
  v27 = 0;
  if (v26)
  {
    [v23 addArrangedSubview:v2];
    v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = 0;
    v27 = 1;
    [*&v2[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setHidden:1];
  }

  v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separated] = v27;
  return [*&v13[OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_separator] setHidden:(v26 & 1) == 0];
}

void sub_1003F6140()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"notifyWhenLeftBehindRowTap"];
  [*(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch) addGestureRecognizer:v1];
}

id sub_1003F61C0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled;
  if (*(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled))
  {
    v3 = 0.35;
  }

  else if (*(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_mockDisabled))
  {
    v3 = 0.35;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel);
  v5 = [objc_opt_self() labelColor];
  [v4 setTextColor:v5];

  [v4 setAlpha:v3];
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch);
  if (*(v1 + v2))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled);
  }

  *(v6 + OBJC_IVAR____TtC6FindMy19FMSettingSwitchView_isEnabled) = v7;
  sub_10014B454();
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch);
  if (*(v1 + v2))
  {
    v9 = 0;
  }

  else
  {
    v9 = [*(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch) isUserInteractionEnabled];
  }

  return [v8 setUserInteractionEnabled:v9];
}

uint64_t sub_1003F6318(void *a1, char a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v7 = a1;
  v8 = v2;
  while (1)
  {
    v9 = v8;
    v8 = [v8 nextResponder];

    if (!v8)
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      sub_1000C5474(sub_1003F69A8, v6, 0, 0);

      break;
    }
  }
}

void sub_1003F6430(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1002431B8();
    v7 = *&v6[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch];
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100005B14(v9, qword_1006D4630);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "FMItemNotificationsView:  User toggled notify when found switch", v12, 2u);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1003AD550(a4 & 1);
        swift_unknownObjectRelease();
      }
    }

    v13 = *&v6[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch];
    v14 = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMItemNotificationsView:  User toggled notify if left behind switch", v18, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = [objc_opt_self() standardUserDefaults];
      v20 = String._bridgeToObjectiveC()();
      v21 = [v19 BOOLForKey:v20];

      if (v21)
      {
        sub_1003A2410(a4 & 1);
      }

      else
      {
        sub_1003A2DC8();
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_17:
    }
  }
}

uint64_t sub_1003F673C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMItemNotificationsView: User selected detail label.", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003ADB1C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1003F68A0()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch);
}

id sub_1003F68F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemNotificationsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F69B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenFoundSwitch;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for FMSettingSwitchView()) init];
  v8 = &type metadata for SolariumFeatureFlag;
  v9 = sub_10000BD04();
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v7);
  v3 = 16.0;
  if ((v2 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v3 = *&qword_1006D4798;
  }

  v4 = OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_notifyWhenLeftBehindSwitch;
  v5 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *(v1 + v4) = sub_100502750(1, v3);
  *(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_mockDisabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL sub_1003F6B00(_BYTE *a1, _BYTE *a2)
{
  v2 = 33.0;
  if (*a1)
  {
    v3 = 66.0;
  }

  else
  {
    v3 = 33.0;
  }

  if (*a2)
  {
    v2 = 66.0;
  }

  return v3 == v2;
}

void sub_1003F6B44()
{
  if (*v0)
  {
    v1 = 0x4050800000000000;
  }

  else
  {
    v1 = 0x4040800000000000;
  }

  Hasher._combine(_:)(v1);
}

double *sub_1003F6B90@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 66.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 33.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_1003F6BC8(double *a1@<X8>)
{
  v2 = 33.0;
  if (*v1)
  {
    v2 = 66.0;
  }

  *a1 = v2;
}

void sub_1003F6BF4(double a1, double a2, double a3, double a4)
{
  v8 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1003F7DF8(&qword_1006AF370, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v8 drawInRect:isa withAttributes:{a1, a2, a3, a4}];
}

id sub_1003F6CF0(int a1, id a2, double a3, double a4, void *a5)
{
  [a2 size];
  v10 = (a3 - v9) * 0.5;
  v12 = (a4 - v11) * 0.5;
  [a5 drawInRect:{0.0, 0.0, a3, a4}];
  [a2 size];

  return [a2 drawInRect:{v10, v12, v13, v14}];
}

CGImageRef sub_1003F6DAC()
{
  v1 = v0;
  Width = CGImageGetWidth(v0);
  Height = CGImageGetHeight(v1);
  v4 = CGImageGetWidth(v1);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v6 = sub_1003F77AC(Width, Height, v4, DeviceGray, 7u);

  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CGImageGetWidth(v1);
  CGImageGetHeight(v1);
  CGContextRef.draw(_:in:byTiling:)();

  Image = CGBitmapContextCreateImage(v7);
  if (!Image)
  {
    goto LABEL_49;
  }

  v9 = Image;
  v10 = CGImageGetDataProvider(Image);
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = v10;
  v12 = CGDataProviderCopyData(v10);
  if (!v12)
  {

    goto LABEL_49;
  }

  v13 = v12;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = CGImageGetWidth(v1);
  v18 = CGImageGetHeight(v1);
  v19 = CGImageGetHeight(v1);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_65;
  }

  v46 = v18;
  v48 = v17;
  v40 = v11;
  v41 = v9;
  v42 = v7;
  if (!v19)
  {
    v45 = 0;
    v47 = 0;
LABEL_52:
    if (!__OFSUB__(v47, v48))
    {
      if (!__OFSUB__(v45, v46))
      {
        v56.origin.x = v48;
        v56.origin.y = v46;
        v56.size.width = &v47[-v48] + 1.0;
        v56.size.height = (v45 - v46) + 1.0;
        v39 = CGImageCreateWithImageInRect(v1, v56);

        sub_10000A858(v14, v16);
        return v39;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v43 = v19;
  v45 = 0;
  v47 = 0;
  v20 = 0;
  v21 = v16 >> 62;
  v49 = v1;
  while (1)
  {
    v22 = CGImageGetWidth(v1);
    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v23 = v22;
    v24 = 0;
    v44 = v20 + 1;
    if (v22)
    {
      break;
    }

LABEL_8:
    ++v20;
    if (v44 == v43)
    {
      goto LABEL_52;
    }
  }

  while (1)
  {
    while (1)
    {
      if (v24 >= v23)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v9 = (v24 + 1);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_56;
      }

      v26 = CGImageGetWidth(v1);
      v27 = v26 * v20;
      if ((v26 * v20) >> 64 != (v26 * v20) >> 63)
      {
        goto LABEL_57;
      }

      v7 = v24 + v27;
      if (__OFADD__(v27, v24))
      {
        goto LABEL_58;
      }

      if (v21 <= 1)
      {
        break;
      }

      if (v21 != 2)
      {
        goto LABEL_68;
      }

      if (v7 < *(v14 + 16))
      {
        goto LABEL_60;
      }

      if (v7 >= *(v14 + 24))
      {
        goto LABEL_62;
      }

      v32 = __DataStorage._bytes.getter();
      if (!v32)
      {
        goto LABEL_70;
      }

      v33 = v32;
      v34 = __DataStorage._offset.getter();
      v35 = v7 - v34;
      if (__OFSUB__(v7, v34))
      {
        goto LABEL_63;
      }

LABEL_12:
      v25 = *(v33 + v35);
      v1 = v49;
      v24 = (v24 + 1);
      if (!v25)
      {
        goto LABEL_13;
      }

LABEL_22:
      if (v24 - 1 >= v48)
      {
        v28 = v48;
      }

      else
      {
        v28 = v24 - 1;
      }

      v29 = v47;
      if (v47 <= (v24 - 1))
      {
        v29 = v24 - 1;
      }

      v47 = v29;
      v48 = v28;
      if (v20 >= v46)
      {
        v30 = v46;
      }

      else
      {
        v30 = v20;
      }

      v31 = v45;
      if (v45 <= v20)
      {
        v31 = v20;
      }

      v45 = v31;
      v46 = v30;
      v24 = v9;
      if (v23 == v9)
      {
        goto LABEL_8;
      }
    }

    if (v21)
    {
      break;
    }

    if (v7 >= BYTE6(v16))
    {
      goto LABEL_59;
    }

    v50 = v14;
    v51 = v16;
    v52 = BYTE2(v16);
    v53 = BYTE3(v16);
    v54 = BYTE4(v16);
    v55 = BYTE5(v16);
    v24 = (v24 + 1);
    if (*(&v50 + v7))
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v23 == v24)
    {
      goto LABEL_8;
    }
  }

  if (v7 < v14 || v7 >= v14 >> 32)
  {
    goto LABEL_61;
  }

  v36 = __DataStorage._bytes.getter();
  if (!v36)
  {
    goto LABEL_69;
  }

  v33 = v36;
  v37 = __DataStorage._offset.getter();
  v35 = v7 - v37;
  if (!__OFSUB__(v7, v37))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_47:

LABEL_49:
  return 0;
}

CGImageRef sub_1003F71FC(double a1)
{
  sub_10007EBC0(&qword_1006BED50);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552210;
  type metadata accessor for CFString(0);
  *(v2 + 32) = kCTFontFamilyNameAttribute;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x6C6F43656C707041;
  *(v2 + 72) = 0xEF696A6F6D45726FLL;
  *(v2 + 120) = v3;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 96) = kCTFontSizeAttribute;
  *(v2 + 152) = &type metadata for CGFloat;
  *(v2 + 128) = a1;
  sub_10000905C(0, &qword_1006B0518);
  v4 = kCTFontFamilyNameAttribute;
  v5 = kCTFontSizeAttribute;
  v6 = NSDictionary.init(dictionaryLiteral:)();
  v7 = CTFontDescriptorCreateWithAttributes(v6);
  v8 = CTFontCreateWithFontDescriptor(v7, 0.0, 0);
  sub_10007EBC0(&qword_1006BED58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = kCTFontAttributeName;
  *(inited + 40) = v8;
  v10 = kCTFontAttributeName;
  v11 = v8;
  sub_100153824(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006BED60);
  type metadata accessor for CTFont(0);
  sub_1003F7DF8(&qword_1006AF318, type metadata accessor for CFString);
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = String._bridgeToObjectiveC()();
  v14 = CFAttributedStringCreate(kCFAllocatorDefault, v13, v12.super.isa);

  if (!v14)
  {

    return 0;
  }

  v15 = CTFramesetterCreateWithAttributedString(v14);
  v44.width = INFINITY;
  v42.location = 0;
  v42.length = 0;
  v44.height = INFINITY;
  v16 = CTFramesetterSuggestFrameSizeWithConstraints(v15, v42, 0, v44, 0);
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = v16.width;
  v45.size.height = v16.height;
  v17 = CGPathCreateWithRect(v45, 0);
  v43.location = 0;
  v43.length = 0;
  v18 = CTFramesetterCreateFrame(v15, v43, v17, 0);

  v19 = v16.width + v16.width;
  if (v16.width + v16.width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v16.height + v16.height;
  v21 = COERCE__INT64(fabs(v16.height + v16.height)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v16.width + v16.width)) > 0x7FEFFFFFFFFFFFFFLL || v21)
  {
    goto LABEL_21;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v20 < 9.22337204e18)
  {
    frame = v18;
    v40 = v11;
    v22 = v19;
    v23 = v20;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v25 = sub_1003F77AC(v22, v23, 0, DeviceRGB, 1u);

    if (v25)
    {
      CGContextRef.textPosition.getter();
      CGContextRef.textPosition.setter();
      CGContextRef.textPosition.getter();
      CGContextRef.textPosition.setter();
      CTFrameDraw(frame, v25);
      Image = CGBitmapContextCreateImage(v25);
      if (Image)
      {
        v27 = Image;
        v28 = sub_1003F6DAC();

        return v28;
      }

      goto LABEL_17;
    }

    if (qword_1006AEBE0 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_13:
  v30 = type metadata accessor for Logger();
  sub_100005B14(v30, qword_1006D4630);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v31, v32))
  {

LABEL_17:
    return 0;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v41 = v34;
  *v33 = 136315138;
  v35 = _typeName(_:qualified:)();
  v38 = v6;
  v37 = sub_100005B4C(v35, v36, &v41);

  *(v33 + 4) = v37;
  _os_log_impl(&_mh_execute_header, v31, v32, "FMItemImageCreationOperation: Created an nil context for request %s", v33, 0xCu);
  sub_100006060(v34);

  return 0;
}

uint64_t sub_1003F77CC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = [objc_opt_self() mainScreen];
  [v8 scale];
  v10 = v9;

  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  if (a3)
  {
    v13 = 0.35;
  }

  else
  {
    v13 = 0.6;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() imageNamed:v14];

  if (!v15)
  {
    return 0;
  }

  v16 = v13 * (v10 * a4);
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() fontWithName:v17 size:v16];

  if (!v18)
  {
LABEL_15:

    return 0;
  }

  [v15 size];
  v20 = v10 * v19;
  [v15 size];
  v22 = v10 * v21;
  v23 = -0.5;
  if (v12 != 1)
  {
    v23 = 0.5;
  }

  v24 = v23 * (v20 - v16);
  sub_10007EBC0(&qword_1006B0C40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10000905C(0, &qword_1006B4DD0);
  *(inited + 40) = v18;
  v26 = NSFontAttributeName;
  v48 = v18;
  v27 = sub_10001AC8C(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B0C50);
  v28 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v20, v22}];
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  *(v29 + 32) = v24;
  *(v29 + 40) = (v22 - v16) * 0.5 + -6.0;
  *(v29 + 48) = v20;
  *(v29 + 56) = v22;
  *(v29 + 64) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1003F7DCC;
  *(v30 + 24) = v29;
  v53 = sub_1003F7DE0;
  v54 = v30;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_100433D54;
  v52 = &unk_10063CE30;
  v31 = _Block_copy(&aBlock);

  v32 = [v28 imageWithActions:v31];
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v35 = [v32 CGImage];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1003F6DAC();

      if (v37)
      {
        [v32 scale];
        v39 = [objc_allocWithZone(UIImage) initWithCGImage:v37 scale:objc_msgSend(v32 orientation:{"imageOrientation"), v38}];

        if (v39)
        {
          v47 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{v20, v22}];
          v40 = swift_allocObject();
          *(v40 + 16) = v39;
          *(v40 + 24) = v20;
          *(v40 + 32) = v22;
          *(v40 + 40) = v15;
          v41 = swift_allocObject();
          *(v41 + 16) = sub_1003F7DE8;
          *(v41 + 24) = v40;
          v53 = sub_1003F7EA8;
          v54 = v41;
          aBlock = _NSConcreteStackBlock;
          v50 = 1107296256;
          v51 = sub_100433D54;
          v52 = &unk_10063CEA8;
          v42 = _Block_copy(&aBlock);
          v43 = v39;
          v44 = v15;

          v45 = [v47 imageWithActions:v42];

          _Block_release(v42);
          v46 = swift_isEscapingClosureAtFileLocation();

          if ((v46 & 1) == 0)
          {
            return v45;
          }

          goto LABEL_18;
        }
      }
    }

    goto LABEL_15;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003F7DF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003F7E54()
{
  result = qword_1006BED68;
  if (!qword_1006BED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BED68);
  }

  return result;
}

void *sub_1003F7F4C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(BOOL, uint64_t, uint64_t, void *))
{
  v43 = a2;
  v38 = a4;
  v39 = a5;
  v12 = sub_10007EBC0(a4);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = a6(0);
  v16 = __chkstk_darwin(v15);
  v42 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v31 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return _swiftEmptyArrayStorage;
  }

  v32 = a7;
  v21 = *(v18 + 72);
  v34 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v22 = a3 + v34;
  v40 = (v18 + 32);
  v41 = (v18 + 48);
  v23 = _swiftEmptyArrayStorage;
  v35 = v15;
  v36 = a1;
  v33 = v21;
  while (1)
  {
    a1(v22);
    if (v7)
    {
      break;
    }

    if ((*v41)(v14, 1, v15) == 1)
    {
      sub_100012DF0(v14, v38);
    }

    else
    {
      v24 = *v40;
      v25 = v37;
      (*v40)(v37, v14, v15);
      v24(v42, v25, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = v32(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = v32(v26 > 1, v27 + 1, 1, v23);
      }

      v23[2] = v27 + 1;
      v28 = v33;
      v29 = v23 + v34 + v27 * v33;
      v15 = v35;
      v24(v29, v42, v35);
      v21 = v28;
      a1 = v36;
    }

    v22 += v21;
    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

char *sub_1003F8284(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_10007EBC0(&qword_1006B6900);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for FMFindableObject();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = *(type metadata accessor for FMIPItem() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = _swiftEmptyArrayStorage;
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_100012DF0(v8, &qword_1006B6900);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_10008BE60(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_10008BE60(v20 > 1, v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void sub_1003F85B0(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v16 = &_swiftEmptyArrayStorage;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_11:
    v15 = *(*(a3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v12 = v15;
    a1(&v14, &v15);
    if (v3)
    {

      return;
    }

    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1003F8748(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView);
  *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView) = a1;
  v6 = a1;

  if (a1)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) userTrackingMode];
    if (v4 <= 2)
    {
      LODWORD(v5) = dword_100560814[v4];
      [v6 setZPriority:v5];
    }
  }
}

void sub_1003F87FC()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 safeAreaInsets];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v3 safeAreaInsets];

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  [v5 safeAreaInsets];

  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 safeAreaInsets];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1003F898C@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v67 = type metadata accessor for FMIPUnknownItem();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for FMIPItem();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v62 - v7;
  v8 = sub_10007EBC0(&qword_1006B07D0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = &v62 - v12;
  v13 = type metadata accessor for FMIPDevice();
  v68 = *(v13 - 8);
  v69 = v13;
  __chkstk_darwin(v13);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMFFriend();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v1 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56);
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v22 + v23, v21, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v49 = v70;
      v48 = v71;
      (*(v70 + 32))(v6, v21, v71);
      v50 = FMIPItem.identifier.getter();
      v52 = v51;
      (*(v49 + 8))(v6, v48);
      v34 = v72;
      *v72 = v50;
      v34[1] = v52;
      v35 = type metadata accessor for FMAnnotationIdentifier();
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
LABEL_8:
        v36 = type metadata accessor for FMAnnotationIdentifier();
        (*(*(v36 - 8) + 56))(v72, 1, 1, v36);
        return sub_10002A100(v21, type metadata accessor for FMSelectedSection);
      }

      v31 = v65;
      v32 = v63;
      v33 = v67;
      (*(v65 + 32))(v63, v21, v67);
      v34 = v72;
      FMIPUnknownItem.identifier.getter();
      (*(v31 + 8))(v32, v33);
      v35 = type metadata accessor for FMAnnotationIdentifier();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 2)
      {
        (*(v16 + 32))(v18, v21, v15);
        v25 = FMFFriend.identifier.getter();
        v27 = v26;
        (*(v16 + 8))(v18, v15);
        v28 = v72;
        *v72 = v25;
        v28[1] = v27;
        v29 = type metadata accessor for FMAnnotationIdentifier();
        swift_storeEnumTagMultiPayload();
        return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
      }

      goto LABEL_8;
    }

    v37 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
    v39 = v68;
    v38 = v69;
    v40 = v64;
    (*(v68 + 32))(v64, v21, v69);
    v41 = v66;
    sub_100035318(&v21[v37], v66, &qword_1006B07D0);
    sub_100007204(v41, v11, &qword_1006B07D0);
    v43 = v70;
    v42 = v71;
    if ((*(v70 + 48))(v11, 1, v71) != 1)
    {
      v53 = v41;
      v54 = v62;
      (*(v43 + 32))(v62, v11, v42);
      v67 = FMIPDevice.identifier.getter();
      v56 = v55;
      v57 = FMIPItem.identifier.getter();
      v59 = v58;
      (*(v43 + 8))(v54, v42);
      sub_100012DF0(v53, &qword_1006B07D0);
      (*(v39 + 8))(v40, v38);
      v60 = v72;
      *v72 = v67;
      v60[1] = v56;
      v60[2] = v57;
      v60[3] = v59;
      v61 = type metadata accessor for FMAnnotationIdentifier();
      swift_storeEnumTagMultiPayload();
      return (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
    }

    sub_100012DF0(v11, &qword_1006B07D0);
    v44 = FMIPDevice.identifier.getter();
    v45 = v40;
    v47 = v46;
    sub_100012DF0(v41, &qword_1006B07D0);
    (*(v39 + 8))(v45, v38);
    v34 = v72;
    *v72 = v44;
    v34[1] = v47;
    v35 = type metadata accessor for FMAnnotationIdentifier();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
}

void sub_1003F9128(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1003FAFBC(a1 & 1);
  }
}

void sub_1003F91B8(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for FMMapViewController();
  objc_msgSendSuper2(&v12, "viewWillDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription;
  v5 = *&v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription];
  if (v5)
  {
    v6 = *(*&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
    swift_beginAccess();

    v7 = sub_1003CD53C((v6 + 16), v5);
    v8 = *(v6 + 16);
    if (v8 >> 62)
    {
      v11 = v7;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      v7 = v11;
      if (v9 >= v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v7)
      {
LABEL_4:
        sub_1003CD570(v7, v9);
        swift_endAccess();

        *&v2[v4] = 0;

        goto LABEL_5;
      }
    }

    __break(1u);
    return;
  }

LABEL_5:
  v10 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  [v10 removeObserver:v2 name:qword_1006D4E20 object:v2];
}

id sub_1003F9408()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  v3 = *&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  if (v2 != 1)
  {
    result = [v0 view];
    if (result)
    {
      v6 = result;
      [result safeAreaInsets];
      v8 = v7;

      [v3 _setLabelEdgeInsets:{v8 + 16.0, 0.0, 0.0, 0.0}];
      result = [v0 view];
      if (result)
      {
        v9 = result;
        [result safeAreaInsets];
        v4 = v10;

        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v4 = 59.0;
  [*&v0[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView] _setLabelEdgeInsets:{59.0, 0.0, 0.0, 0.0}];
LABEL_6:

  return [v3 _setLabelEdgeWidths:{v4, 0.0, 0.0, 0.0}];
}

uint64_t sub_1003F9570()
{
  v37 = &_swiftEmptyArrayStorage;
  v38 = &_swiftEmptyArrayStorage;
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) annotations];
  sub_10007EBC0(&qword_1006C1DD0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = &_swiftEmptyArrayStorage;
    goto LABEL_24;
  }

LABEL_22:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = &_swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        swift_unknownObjectRetain();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      type metadata accessor for FMTrackAnnotation();
      v7 = swift_dynamicCastClass();
      swift_unknownObjectRetain();
      if (v7)
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v37;
    swift_unknownObjectRelease();
  }

  while (v4 != v3);
LABEL_24:

  swift_bridgeObjectRetain_n();
  v36 = sub_1004EC178(v5);
  sub_100055E60(&v36, sub_1000573A8, sub_100400CE4);
  swift_bridgeObjectRelease_n();
  v8 = v36;
  v37 = v36;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = v8 & 0x4000000000000000;
    if (v8 < 0 || v13)
    {
      v34 = v12;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v34;
    }

    else
    {
      v14 = *(v8 + 16);
    }

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "FMMapViewController: trackAnnotations count %ld", v12, 0xCu);
  }

  else
  {

    v13 = v8 & 0x4000000000000000;
  }

  if (v8 < 0 || v13)
  {
    goto LABEL_59;
  }

  v15 = v8;
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  while (v15 >> 62)
  {
    v33 = _CocoaArrayWrapper.endIndex.getter();
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      if (v33 >= 5)
      {
        v35 = 5;
      }

      else
      {
        v35 = v33;
      }

      if (v33 >= 0)
      {
        v17 = v35;
      }

      else
      {
        v17 = 5;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v17)
      {
        goto LABEL_69;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_59:
    v15 = _bridgeCocoaArray<A>(_:)();
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 5)
  {
    v17 = 5;
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v17)
  {
LABEL_69:
    __break(1u);
    return result;
  }

LABEL_40:
  if ((v15 & 0xC000000000000001) != 0)
  {

    if (v17)
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      if (v17 != 1)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(1);
        if (v17 != 2)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(2);
          if (v17 != 3)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(3);
            if (v17 != 4)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(4);
              if (v17 != 5)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(5);
                _ArrayBuffer._typeCheckSlowPath(_:)(6);
              }
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (v15 >> 62)
  {
    v19 = _CocoaArrayWrapper.subscript.getter();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v21 = v27;
    v20 = v23;
    v18 = v25;
  }

  else
  {
    v18 = 0;
    v19 = v15 & 0xFFFFFFFFFFFFFF8;
    v20 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = (2 * v17) | 1;
  }

  sub_1004A7E1C(v19, v20, v18, v21);
  swift_unknownObjectRelease();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    swift_beginAccess();
    if (v38 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v28, v29, "FMMapViewController: annotationsToCenterOn count %ld", v30, 0xCu);
  }

  swift_beginAccess();
  v32 = v38;

  return v32;
}

uint64_t sub_1003F9BC8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v1;
  aBlock[4] = sub_100406DD8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D3D8;
  v12 = _Block_copy(aBlock);

  v13 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_1003F9E98(uint64_t a1, uint64_t a2)
{
  v106 = type metadata accessor for FMFFriend();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B07D0);
  v6 = __chkstk_darwin(v5 - 8);
  v117 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v102 = &v97 - v9;
  __chkstk_darwin(v8);
  v108 = &v97 - v10;
  v111 = type metadata accessor for FMIPDevice();
  v110 = *(v111 - 8);
  v11 = __chkstk_darwin(v111);
  v103 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v97 - v13;
  v113 = type metadata accessor for FMAnnotationIdentifier();
  __chkstk_darwin(v113);
  v114 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for FMIPItem();
  v118 = *(v112 - 8);
  v15 = __chkstk_darwin(v112);
  v100 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v101 = &v97 - v18;
  __chkstk_darwin(v17);
  v107 = &v97 - v19;
  v20 = type metadata accessor for FMSelectedSection();
  v21 = __chkstk_darwin(v20);
  v116 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v97 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v97 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v97 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v97 - v33;
  __chkstk_darwin(v32);
  v36 = &v97 - v35;
  v37 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(a1 + v37, v36, type metadata accessor for FMSelectedSection);
  v38 = OBJC_IVAR____TtC6FindMy19FMMapViewController_previousSelectedSection;
  swift_beginAccess();
  v115 = v38;
  sub_100027BE0(a2 + v38, v34, type metadata accessor for FMSelectedSection);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100005B14(v39, qword_1006D4630);
  sub_100027BE0(v36, v31, type metadata accessor for FMSelectedSection);
  v119 = v34;
  sub_100027BE0(v34, v28, type metadata accessor for FMSelectedSection);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v120 = v20;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v98 = v36;
    v97 = v44;
    v121[0] = v44;
    *v43 = 136315394;
    sub_100027BE0(v31, v25, type metadata accessor for FMSelectedSection);
    v45 = String.init<A>(describing:)();
    v99 = a2;
    v47 = v46;
    sub_10002A100(v31, type metadata accessor for FMSelectedSection);
    v48 = sub_100005B4C(v45, v47, v121);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    sub_100027BE0(v28, v25, type metadata accessor for FMSelectedSection);
    v49 = String.init<A>(describing:)();
    v51 = v50;
    sub_10002A100(v28, type metadata accessor for FMSelectedSection);
    v52 = v49;
    a2 = v99;
    v53 = sub_100005B4C(v52, v51, v121);

    *(v43 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v40, v41, "FMMapViewController: didUpdate selectedSection: %s and previousSelection: %s", v43, 0x16u);
    swift_arrayDestroy();
    v36 = v98;
  }

  else
  {

    sub_10002A100(v28, type metadata accessor for FMSelectedSection);
    sub_10002A100(v31, type metadata accessor for FMSelectedSection);
  }

  v54 = v117;
  v55 = v118;
  v56 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource);
  v57 = v119;
  if (*(v56 + 59) == 1 && [*(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) _isPitched])
  {
    *(v56 + 59) = 0;
    sub_1003FAFBC(0);
  }

  v58 = v116;
  sub_100027BE0(v36, v116, type metadata accessor for FMSelectedSection);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v66 = v58;
      v67 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
      (*(v110 + 32))(v109, v66, v111);
      v68 = v108;
      sub_100035318(v66 + v67, v108, &qword_1006B07D0);
      *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
      My = type metadata accessor for Feature.FindMy();
      v121[3] = My;
      v121[4] = sub_10000A540(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
      v70 = sub_100008FC0(v121);
      (*(*(My - 8) + 104))(v70, enum case for Feature.FindMy.baAirpods(_:), My);
      LOBYTE(My) = isFeatureEnabled(_:)();
      sub_100006060(v121);
      v71 = (v55 + 48);
      if ((My & 1) == 0)
      {
        sub_100007204(v68, v54, &qword_1006B07D0);
        if ((*v71)(v54, 1, v112) != 1)
        {
          v90 = v100;
          (*(v55 + 32))();
          v117 = FMIPDevice.identifier.getter();
          v92 = v91;
          v93 = FMIPItem.identifier.getter();
          v94 = v55;
          v95 = v114;
          *v114 = v117;
          v95[1] = v92;
          v95[2] = v93;
          v95[3] = v96;
          swift_storeEnumTagMultiPayload();
          sub_1003FB248(v95);
          sub_10002A100(v95, type metadata accessor for FMAnnotationIdentifier);
          (*(v94 + 8))(v90, v112);
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v54 = v102;
      sub_100007204(v68, v102, &qword_1006B07D0);
      v72 = v112;
      if ((*v71)(v54, 1, v112) == 1)
      {
LABEL_29:
        sub_100012DF0(v54, &qword_1006B07D0);
        v74 = v109;
LABEL_30:
        v87 = FMIPDevice.identifier.getter();
        v88 = v114;
        *v114 = v87;
        *(v88 + 8) = v89;
        swift_storeEnumTagMultiPayload();
        sub_1003FB248(v88);
        sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
        sub_100012DF0(v108, &qword_1006B07D0);
        (*(v110 + 8))(v74, v111);
        goto LABEL_25;
      }

      v73 = v101;
      (*(v55 + 32))(v101, v54, v72);
      v74 = v109;
      if ((FMIPDevice.shouldDisplaySeparatedLocation.getter() & 1) == 0)
      {
        (*(v55 + 8))(v73, v72);
        goto LABEL_30;
      }

      v75 = FMIPDevice.identifier.getter();
      v77 = v76;
      v78 = FMIPItem.identifier.getter();
      v79 = v55;
      v80 = v114;
      *v114 = v75;
      v80[1] = v77;
      v80[2] = v78;
      v80[3] = v81;
      swift_storeEnumTagMultiPayload();
      sub_1003FB248(v80);
      sub_10002A100(v80, type metadata accessor for FMAnnotationIdentifier);
      (*(v79 + 8))(v101, v112);
LABEL_32:
      sub_100012DF0(v108, &qword_1006B07D0);
      (*(v110 + 8))(v109, v111);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      v84 = sub_10005F7D0(v36, v25);
      sub_10002A100(v25, type metadata accessor for FMSelectedSection);
      sub_10002A100(v57, type metadata accessor for FMSelectedSection);
      if (v84)
      {
        return sub_10002A100(v36, type metadata accessor for FMSelectedSection);
      }

      v86 = v115;
      swift_beginAccess();
      sub_100058438(v36, a2 + v86);
      return swift_endAccess();
    case 1u:
      v55 = v110;
      v59 = v103;
      v60 = v111;
      (*(v110 + 32))(v103, v58, v111);
      *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
      v82 = FMIPDevice.identifier.getter();
      v62 = v114;
      *v114 = v82;
      *(v62 + 8) = v83;
      goto LABEL_24;
    case 2u:
      v55 = v105;
      v59 = v104;
      v60 = v106;
      (*(v105 + 32))(v104, v58, v106);
      *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
      v64 = FMFFriend.identifier.getter();
      v62 = v114;
      *v114 = v64;
      *(v62 + 8) = v65;
      goto LABEL_24;
    case 3u:
    case 4u:
      v59 = v107;
      v60 = v112;
      (*(v55 + 32))(v107, v58, v112);
      *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
      v61 = FMIPItem.identifier.getter();
      v62 = v114;
      *v114 = v61;
      *(v62 + 8) = v63;
LABEL_24:
      swift_storeEnumTagMultiPayload();
      sub_1003FB248(v62);
      sub_10002A100(v62, type metadata accessor for FMAnnotationIdentifier);
      (*(v55 + 8))(v59, v60);
      goto LABEL_25;
    case 5u:
    case 6u:
      sub_10002A100(v58, type metadata accessor for FMSelectedSection);
      *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
      sub_1003FC98C();
      goto LABEL_25;
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0x13u:
      goto LABEL_25;
    case 0xCu:
    case 0xFu:
    case 0x11u:
      sub_1003FD12C();
      if ((sub_10005F7D0(v57, v36) & 1) == 0)
      {
        [*(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) setUserTrackingMode:0];
        *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
        sub_1000202F4(0, 0, 0);
      }

      goto LABEL_25;
    case 0x10u:
      sub_1003FD12C();
      goto LABEL_25;
    default:
      sub_1003FD12C();
      if ((sub_10005F7D0(v57, v36) & 1) == 0)
      {
        [*(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) setUserTrackingMode:0];
        *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
        sub_1000202F4(1, 0, 0);
      }

      sub_10002A100(v58, type metadata accessor for FMSelectedSection);
      goto LABEL_25;
  }
}

void sub_1003FAD48(int a1, uint64_t a2)
{
  My = type metadata accessor for Feature.FindMy();
  v19[3] = My;
  v19[4] = sub_10000A540(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v5 = sub_100008FC0(v19);
  (*(*(My - 8) + 104))(v5, enum case for Feature.FindMy.springfieldIntegration(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v19);
  if (My)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4630);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19[0] = v10;
      *v9 = 136446210;
      v11 = a1 & 0x10101;
      v12 = sub_1002318A0(v11);
      v14 = sub_100005B4C(v12, v13, v19);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMMapViewController: Will update mapView configuration: %{public}s", v9, 0xCu);
      sub_100006060(v10);
    }

    else
    {

      v11 = a1 & 0x10101;
    }

    v17 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    v18 = sub_10001EC90(v11);
    [v17 setPreferredConfiguration:v18];
  }

  else
  {
    v15 = 3;
    if ((a1 & 0x10000) != 0)
    {
      v15 = 4;
    }

    if (a1)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [*(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) setMapType:v16];
  }

  sub_10001ED48(1);
}

void sub_1003FAFBC(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMMapViewController: setMapPerspective is3DEnabled: %{BOOL,public}d", v7, 8u);
  }

  if ((a1 & 1) == 0)
  {
    v2[OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode] = 1;
  }

  v8 = objc_opt_self();
  v9 = swift_allocObject();
  v10 = a1 & 1;
  *(v9 + 16) = a1 & 1;
  *(v9 + 24) = v2;
  v19 = sub_100406D88;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100004AE4;
  v18 = &unk_10063D338;
  v11 = _Block_copy(&v15);
  v12 = v2;

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v12;
  v19 = sub_100406DBC;
  v20 = v13;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10037A044;
  v18 = &unk_10063D388;
  v14 = _Block_copy(&v15);
  v12;

  [v8 animateWithDuration:v11 animations:v14 completion:0.2];
  _Block_release(v14);
  _Block_release(v11);
  sub_10001ED48(1);
}

uint64_t sub_1003FB248(uint64_t a1)
{
  v26 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMAnnotationIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  sub_10000905C(0, &qword_1006AEDC0);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v10 + 8);
  v27(v13, v9);
  sub_100027BE0(v26, &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMAnnotationIdentifier);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v29;
  *(v17 + 16) = v29;
  sub_10005701C(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for FMAnnotationIdentifier);
  aBlock[4] = sub_100406D08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D2E8;
  v19 = _Block_copy(aBlock);
  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  v21 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v33 + 8))(v2, v21);
  (*(v31 + 8))(v5, v32);
  return (v27)(v15, v28);
}

void sub_1003FB6B4(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v132 = type metadata accessor for FMIPPartType();
  v122 = *(v132 - 8);
  v3 = __chkstk_darwin(v132);
  v126 = &v106[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v125 = &v106[-v6];
  v7 = __chkstk_darwin(v5);
  v134 = &v106[-v8];
  __chkstk_darwin(v7);
  v131 = &v106[-v9];
  v10 = type metadata accessor for FMIPItem();
  isa = v10[-1].isa;
  v11 = __chkstk_darwin(v10);
  v13 = &v106[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v11);
  v16 = &v106[-v15];
  __chkstk_darwin(v14);
  v18 = &v106[-v17];
  v19 = sub_10007EBC0(&qword_1006B07D0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v106[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v20);
  v25 = &v106[-v24];
  v26 = __chkstk_darwin(v23);
  v28 = &v106[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v106[-v30];
  __chkstk_darwin(v29);
  v33 = &v106[-v32];
  v34 = type metadata accessor for FMAnnotationIdentifier();
  v35 = __chkstk_darwin(v34);
  v36 = __chkstk_darwin(v35);
  v38 = a1;
  v40 = &v106[-v39];
  v41 = *(v38 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource);
  if ((*(v41 + 56) | 4) == 4)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v139 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v139, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v139, v43, "FMMapViewController: not selecting as the mode changed", v44, 2u);
    }

    v45 = v139;

    return;
  }

  v128 = v37;
  v133 = v36;
  v138 = v31;
  v120 = v28;
  v124 = v33;
  v118 = v25;
  v119 = v22;
  v129 = v18;
  v116 = v16;
  v114 = v13;
  v135 = v38;
  v46 = *(v41 + 48);
  __chkstk_darwin(v36);
  v47 = v137;
  *&v106[-16] = v137;

  sub_1003F85B0(sub_100406D6C, &v106[-32], v46);
  v49 = v48;

  v50 = v47;
  v139 = v10;
  if (v49 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter() == 1;
    v50 = v47;
    if (v60)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {

        goto LABEL_60;
      }

      goto LABEL_11;
    }
  }

  else if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_11:
    if ((v49 & 0xC000000000000001) != 0)
    {
      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_14;
    }

    if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(v49 + 32);
LABEL_14:
      v127 = v51;

      goto LABEL_15;
    }

    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  sub_100027BE0(v50, v40, type metadata accessor for FMAnnotationIdentifier);
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_10002A100(v40, type metadata accessor for FMAnnotationIdentifier);
    goto LABEL_60;
  }

  sub_10002A100(v40, type metadata accessor for FMAnnotationIdentifier);
  v61 = isa;
  v62 = *(isa + 7);
  v63 = v124;
  v112 = isa + 56;
  v111 = v62;
  v62(v124, 1, 1, v139);
  if (v49 >> 62)
  {
    v64 = _CocoaArrayWrapper.endIndex.getter();
    v65 = v128;
    if (v64)
    {
      goto LABEL_27;
    }

LABEL_59:

    sub_100012DF0(v63, &qword_1006B07D0);
    goto LABEL_60;
  }

  v64 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v65 = v128;
  if (!v64)
  {
    goto LABEL_59;
  }

LABEL_27:
  if (v64 < 1)
  {
    goto LABEL_63;
  }

  v127 = 0;
  v66 = 0;
  v67 = v49 & 0xC000000000000001;
  v130 = (v61 + 48);
  v115 = (v122 + 8);
  v117 = (v61 + 8);
  v109 = enum case for FMIPPartType.leftBud(_:);
  v108 = (v122 + 104);
  v136 = v64;
  v137 = v49;
  v113 = v49 & 0xC000000000000001;
  v121 = (v61 + 32);
  do
  {
    if (v67)
    {
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v68 = *(v49 + 8 * v66 + 32);
    }

    v69 = v68;
    (*((swift_isaMask & *v68) + 0x190))();
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      sub_10002A100(v65, type metadata accessor for FMAnnotationIdentifier);
      goto LABEL_30;
    }

    v70 = v65;
    v71 = *(v65 + 16);
    v72 = *(v70 + 24);

    v73 = v71;
    v74 = v138;
    sub_1000E5FF8(v73, v72, v138);

    v75 = *v130;
    if ((*v130)(v74, 1, v139) == 1)
    {

      sub_100012DF0(v74, &qword_1006B07D0);
    }

    else
    {
      v76 = *v121;
      v77 = v74;
      v78 = v139;
      (*v121)(v129, v77, v139);
      v79 = v63;
      v80 = v120;
      sub_100007204(v79, v120, &qword_1006B07D0);
      v122 = v75;
      v81 = v75(v80, 1, v78);
      v82 = v134;
      isa = v76;
      if (v81 == 1)
      {
        sub_100012DF0(v80, &qword_1006B07D0);
      }

      else
      {
        v83 = v116;
        (v76)(v116, v80, v139);
        v84 = v131;
        FMIPItem.partType.getter();
        FMIPItem.partType.getter();
        sub_10000A540(&qword_1006BEF58, &type metadata accessor for FMIPPartType);
        v85 = v132;
        v86 = dispatch thunk of static Comparable.< infix(_:_:)();
        v87 = v82;
        v88 = *v115;
        (*v115)(v87, v85);
        v88(v84, v85);
        (*v117)(v83, v139);
        if (v86)
        {
          v63 = v124;
          sub_100012DF0(v124, &qword_1006B07D0);

          v89 = v139;
          (isa)(v63, v129, v139);
          v111(v63, 0, 1, v89);
          v127 = v69;
          v65 = v128;
          v67 = v113;
          goto LABEL_30;
        }
      }

      v90 = v118;
      sub_100007204(v124, v118, &qword_1006B07D0);
      v91 = v122;
      if (v122(v90, 1, v139) == 1)
      {
        sub_100012DF0(v90, &qword_1006B07D0);
        v92 = v119;
        v67 = v113;
LABEL_48:
        v101 = v124;
        sub_100007204(v124, v92, &qword_1006B07D0);
        if (v91(v92, 1, v139) == 1)
        {
          sub_100012DF0(v101, &qword_1006B07D0);

          sub_100012DF0(v92, &qword_1006B07D0);
          v102 = v139;
          (isa)(v101, v129, v139);
          v111(v101, 0, 1, v102);
          v127 = v69;
        }

        else
        {
          (*v117)(v129, v139);

          sub_100012DF0(v92, &qword_1006B07D0);
        }

        v63 = v101;
        goto LABEL_52;
      }

      v93 = v114;
      (isa)(v114, v90, v139);
      v94 = v131;
      FMIPItem.partType.getter();
      v95 = v134;
      FMIPItem.partType.getter();
      v96 = static FMIPPartType.isEqualSortOrder(lhs:rhs:)();
      v97 = *v115;
      v98 = v132;
      (*v115)(v95, v132);
      v110 = v97;
      v97(v94, v98);
      v92 = v119;
      if ((v96 & 1) == 0)
      {
        (*v117)(v93, v139);
        v67 = v113;
        v91 = v122;
        goto LABEL_48;
      }

      FMIPItem.partType.getter();
      (*v108)(v126, v109, v98);
      sub_10000A540(&qword_1006BEF50, &type metadata accessor for FMIPPartType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v142 == v140 && v143 == v141)
      {
        v99 = v132;
        v100 = v110;
        v110(v126, v132);
        v100(v125, v99);
        (*v117)(v93, v139);

        v67 = v113;
      }

      else
      {
        v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v103 = v132;
        v104 = v110;
        v110(v126, v132);
        v104(v125, v103);
        (*v117)(v93, v139);

        v67 = v113;
        v91 = v122;
        if ((v107 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v63 = v124;
      sub_100012DF0(v124, &qword_1006B07D0);

      v105 = v139;
      (isa)(v63, v129, v139);
      v111(v63, 0, 1, v105);
      v127 = v69;
    }

LABEL_52:
    v65 = v128;
LABEL_30:
    ++v66;
    v49 = v137;
  }

  while (v136 != v66);

  sub_100012DF0(v63, &qword_1006B07D0);
  if (!v127)
  {
LABEL_60:
    sub_1003FD12C();
    sub_10005482C();
    return;
  }

LABEL_15:
  v52 = *(v135 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  v53 = [v52 viewForAnnotation:v127];
  if (v53)
  {
    v54 = v53;
    type metadata accessor for FMMapAnnotationView();
    v55 = swift_dynamicCastClass();
    if (v55)
    {
      v55[OBJC_IVAR____TtC6FindMy19FMMapAnnotationView_shouldHideCallout] = 0;
      [v55 updateCalloutViewIfNeededAnimated:1];
    }
  }

  v56 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
  v57 = v135;
  *(v135 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
  v58 = v52;
  v59 = v127;
  [v58 selectAnnotation:v127 animated:1];
  sub_10005482C();

  *(v57 + v56) = 1;
}

void *sub_1003FC70C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FMAnnotationIdentifier();
  v7 = __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = *a1;
  sub_100027BE0(a2, v21 - v10, type metadata accessor for FMAnnotationIdentifier);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = sub_10002A100(v11, type metadata accessor for FMAnnotationIdentifier);
    v14 = *((swift_isaMask & *v12) + 0x190);
    v14(v13);
    v15 = sub_10017E734(v9, a2);
    v16 = sub_10002A100(v9, type metadata accessor for FMAnnotationIdentifier);
    if (v15 & 1) != 0 || (v14(v16), v17 = sub_10017D548(a2), result = sub_10002A100(v9, type metadata accessor for FMAnnotationIdentifier), (v17))
    {
      result = v12;
      *a3 = v12;
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    (*((swift_isaMask & *v12) + 0x190))();
    v19 = sub_10017E734(v9, a2);
    sub_10002A100(v9, type metadata accessor for FMAnnotationIdentifier);
    if (v19)
    {
      v20 = v12;
    }

    else
    {
      v12 = 0;
    }

    *a3 = v12;
    return sub_10002A100(v11, type metadata accessor for FMAnnotationIdentifier);
  }

  return result;
}

uint64_t sub_1003FC98C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v8 + 8);
  v19(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_100406D00;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D298;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v3, v1);
  (*(v20 + 8))(v6, v21);
  return (v19)(v13, v7);
}

void sub_1003FCD38(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BEF48);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  if (*(*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 56) == 3)
  {

    v6 = sub_100402D40(v5);

    v7 = 1 << *(v6 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v6 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
      v12 = v11;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = *(v6 + 48);
      v16 = type metadata accessor for FMAnnotationIdentifier();
      sub_100027BE0(v15 + *(*(v16 - 8) + 72) * v14, v4, type metadata accessor for FMAnnotationIdentifier);
      v17 = *(*(v6 + 56) + 8 * v14);
      *&v4[*(v2 + 48)] = v17;
      sub_1003FD000(v4, v17, a1);
      sub_100012DF0(v4, &qword_1006BEF48);
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 64 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_1006AEBE0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v22 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v22, v19, "FMMapViewController: not selecting cluster as the mode changed", v20, 2u);
  }

  v21 = v22;
}

id sub_1003FD000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMMapViewController: select cluster annotation", v8, 2u);
  }

  v9 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
  *(a3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
  result = [*(a3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) selectAnnotation:a2 animated:1];
  *(*(a3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 59) = 1;
  *(a3 + v9) = 1;
  return result;
}

uint64_t sub_1003FD12C()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_100005B14(v2, qword_1006D4630);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewController: deselecting all annotations", v5, 2u);
    }

    v6 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
    *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
    v7 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    v8 = [v7 selectedAnnotations];
    sub_10007EBC0(&qword_1006C1DD0);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = v1;
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        break;
      }

      goto LABEL_6;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      break;
    }

LABEL_6:
    v11 = 0;
    while ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_14;
      }

LABEL_10:
      [v7 deselectAnnotation:v12 animated:1];
      swift_unknownObjectRelease();
      ++v11;
      if (v1 == v10)
      {
        goto LABEL_18;
      }
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v11 + 32);
    swift_unknownObjectRetain();
    v1 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_10;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_18:

  *(v14 + v6) = 1;
  return result;
}

void sub_1003FD488()
{
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate, &unk_1006B0000);

  sub_10002A100(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_previousSelectedSection, type metadata accessor for FMSelectedSection);

  v1 = *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView);
}

id sub_1003FD55C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMapViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003FD704(void *a1, void *a2)
{
  v21 = type metadata accessor for FMIPMapInteractionEvent();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = [objc_allocWithZone(MKMapItemRequest) initWithMapFeatureAnnotation:a1];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = a2;
  v14 = v2;
  v15 = v11;
  v16 = a1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v13;
  v18[5] = v14;
  v18[6] = v15;
  v18[7] = v16;
  sub_100170C90(0, 0, v10, &unk_1005607F8, v18);

  FMIPMapInteractionEvent.init(mapPOITapped:mapPOIOpenInMaps:)();
  FMIPManager.enqueue(mapInteractionEvent:)();

  (*(v5 + 8))(v7, v21);
}

uint64_t sub_1003FD95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003FD9F8, v9, v8);
}

uint64_t sub_1003FD9F8()
{
  v1 = v0[7];

  [v1 setNeedsLayout];
  [v1 layoutIfNeeded];
  v2 = [v1 subviews];
  sub_10000905C(0, &qword_1006BA410);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v5 = *(v3 + 32);
      }

      v6 = v5;
      if (v4 == 1)
      {
        break;
      }

      v41 = 1;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v41 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          if (v41 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v42 = *(v3 + 8 * v41 + 32);
        }

        v7 = v42;
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        [v6 bounds];
        Height = CGRectGetHeight(v59);
        [v7 bounds];
        if (Height < CGRectGetHeight(v60))
        {

          v6 = v7;
          ++v41;
          if (v43 == v4)
          {
            goto LABEL_8;
          }
        }

        else
        {

          ++v41;
          if (v43 == v4)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
        goto LABEL_36;
      }
    }

LABEL_7:
    v7 = v6;
LABEL_8:
    v54 = v0[9];
    v55 = v0[10];
    v9 = v0[7];
    v8 = v0[8];

    [v7 frame];
    v11 = v10 + 16.0;
    [v7 frame];
    v13 = v12 + 16.0;
    v0[5] = &type metadata for SolariumFeatureFlag;
    v0[6] = sub_10000BD04();
    v14 = isFeatureEnabled(_:)();
    sub_100006060((v0 + 2));
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = -0.0;
    }

    [v7 frame];
    v17 = v16 + -8.0;
    [v7 frame];
    v19 = [objc_allocWithZone(type metadata accessor for FMAnnotationMenuButton()) initWithFrame:{v17, v18 + -8.0 - v15, v11, v13}];
    [v9 addSubview:v19];
    sub_10000905C(0, &qword_1006AF730);
    v20 = [objc_opt_self() mainBundle];
    swift__string._object = 0x8000000100596A90;
    v21._countAndFlagsBits = 0x5F4E495F4E45504FLL;
    v21._object = 0xEC0000005350414DLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    swift__string._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, swift__string);

    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() systemImageNamed:v23];

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v54;
    v26[3] = v55;
    v26[4] = v25;
    v27 = v54;
    v28 = v55;
    v29 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_10000905C(0, &unk_1006AF720);
    sub_10007EBC0(&qword_1006AFC30);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_1005528C0;
    *(preferredElementSize + 32) = v29;
    v31 = v19;
    v32 = v29;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v57.value.super.isa = 0;
    v57.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v57, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    [v31 setMenu:isa];

    v35 = swift_allocObject();
    *(v35 + 16) = v8;
    v36 = &v31[OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction];
    v37 = *&v31[OBJC_IVAR____TtC6FindMy22FMAnnotationMenuButton_didEndInteraction];
    *v36 = sub_100406CE8;
    v36[1] = v35;
    v38 = v8;
    sub_10001835C(v37);
    v39 = v31;
    [v39 setShowsMenuAsPrimaryAction:1];
    if ([v39 _isInAWindow])
    {
      v40 = [v39 contextMenuInteraction];

      if (v40)
      {
        [v40 _presentMenuAtLocation:0.0, 0.0];

        v39 = v40;
      }

      else
      {
      }
    }

    else
    {

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100005B14(v45, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMMapViewController: Couldn't present POI menu. Annotation removed from window", v48, 2u);
      }
    }
  }

  else
  {
LABEL_36:

    if (qword_1006AEBE0 != -1)
    {
LABEL_44:
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005B14(v49, qword_1006D4630);
    v39 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v39, v50, "FMMapViewController: Couldn't find POI annotation view", v51, 2u);
    }
  }

  v52 = v0[1];

  return v52();
}

void sub_1003FE168(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v10[4] = sub_100406CF0;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10012105C;
  v10[3] = &unk_10063D1F8;
  v8 = _Block_copy(v10);
  v9 = a3;

  [a2 getMapItemWithCompletionHandler:v8];
  _Block_release(v8);
}

void sub_1003FE258(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for FMIPMapInteractionEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    v14 = a3;
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v49 = v8;
      v18 = v17;
      v47 = swift_slowAlloc();
      v51[0] = v47;
      *v18 = 136315394;
      v19 = v14;
      v48 = a4;
      v20 = v9;
      v21 = v19;
      v22 = [v19 description];
      v46 = v15;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v16;
      v26 = v25;

      v9 = v20;
      v27 = sub_100005B4C(v24, v26, v51);

      *(v18 + 4) = v27;
      *(v18 + 12) = 2080;
      v50 = a2;
      swift_errorRetain();
      sub_10007EBC0(&qword_1006B9570);
      v28 = String.init<A>(describing:)();
      v30 = sub_100005B4C(v28, v29, v51);

      *(v18 + 14) = v30;
      v31 = v46;
      _os_log_impl(&_mh_execute_header, v46, v45, "FMMapViewController: Couldn't fetch mapItem for annotation: %s error: %s", v18, 0x16u);
      swift_arrayDestroy();

      v8 = v49;
    }

    else
    {
    }

    [v14 coordinate];
    v33 = v32;
    [v14 coordinate];
    v35 = [objc_allocWithZone(CLLocation) initWithLatitude:v33 longitude:v34];
    v36 = [v14 title];
    v37 = objc_opt_self();
    v38 = v35;
    v39 = [v37 placemarkWithLocation:v38 name:v36 postalAddress:0];

    v40 = [objc_allocWithZone(MKMapItem) initWithPlacemark:v39];
    v12 = v40;
  }

  v41 = a1;
  [v12 openInMapsWithLaunchOptions:0];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;

    FMIPMapInteractionEvent.init(mapPOITapped:mapPOIOpenInMaps:)();
    FMIPManager.enqueue(mapInteractionEvent:)();

    (*(v9 + 8))(v11, v8);
  }

  else
  {
  }
}

uint64_t sub_1003FE6C0(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BEEE8);
  __chkstk_darwin(v2 - 8);
  v4 = (&v11 - v3);
  v5 = type metadata accessor for FMAnnotationIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) = 0;
  sub_1003FD12C();
  v9 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
  *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
  sub_1003F898C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_100012DF0(v4, &qword_1006BEEE8);
  }

  else
  {
    sub_10005701C(v4, v8, type metadata accessor for FMAnnotationIdentifier);
    sub_1003FB248(v8);
    result = sub_10002A100(v8, type metadata accessor for FMAnnotationIdentifier);
  }

  *(a1 + v9) = 1;
  return result;
}

void sub_1003FE85C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v4 setAlpha:1.0];

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1003FEAAC(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) != 1)
  {
    return;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_12:
    *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) = 0;
    return;
  }

  v4 = v3;
  swift_unknownObjectRetain();
  v5 = [a1 viewForAnnotation:v4];
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v12 = v5;
  v6 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v4;
    *v11 = v4;
    swift_unknownObjectRetain();
    _os_log_impl(&_mh_execute_header, v8, v9, "FMMapViewController: didSelect annotation %@", v10, 0xCu);
    sub_100012DF0(v11, &unk_1006AF760);
  }

  *(v6 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) = 1;
  sub_1003FD704(v4, v12);
  swift_unknownObjectRelease();
}

void sub_1003FED54(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - v11;
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ((*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) & 1) == 0)
  {
    v19 = *(*(a1 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56);
    v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027BE0(v19 + v20, v14, type metadata accessor for FMSelectedSection);

    if ((sub_10005F7D0(a2, v14) & 1) == 0)
    {
      sub_10002A100(v14, type metadata accessor for FMSelectedSection);

      return;
    }

    if ([a3 annotation] && (type metadata accessor for FMDeviceAnnotation(), v21 = swift_dynamicCastClass(), swift_unknownObjectRelease(), v21))
    {
      *(*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 59) = 1;
    }

    else
    {
      if (![a3 annotation] || (type metadata accessor for FMPersonAnnotation(), v22 = swift_dynamicCastClass(), swift_unknownObjectRelease(), !v22))
      {
LABEL_18:
        if ([a3 annotation])
        {
          type metadata accessor for FMItemAnnotation();
          v23 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v23)
          {
            *(*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 59) = 1;
            swift_storeEnumTagMultiPayload();
            sub_100027BE0(v19 + v20, v9, type metadata accessor for FMSelectedSection);
            swift_beginAccess();
            sub_100058530(v12, v19 + v20);
            swift_endAccess();
            sub_100058594(v9);
            sub_10002A100(v9, type metadata accessor for FMSelectedSection);
            sub_10002A100(v12, type metadata accessor for FMSelectedSection);
          }
        }

        if ([a3 annotation])
        {
          type metadata accessor for FMClusterAnnotation();
          if (swift_dynamicCastClass())
          {
            swift_unknownObjectRelease();
            *(*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 59) = 1;
            swift_storeEnumTagMultiPayload();
            sub_100027BE0(v19 + v20, v9, type metadata accessor for FMSelectedSection);
            swift_beginAccess();
            sub_100058530(v12, v19 + v20);
            swift_endAccess();
            sub_100058594(v9);

            sub_10002A100(v9, type metadata accessor for FMSelectedSection);
            sub_10002A100(v12, type metadata accessor for FMSelectedSection);
            v24 = v14;
LABEL_27:
            sub_10002A100(v24, type metadata accessor for FMSelectedSection);
            return;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v24 = v14;
        goto LABEL_27;
      }

      *(*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 59) = 1;
    }

    swift_storeEnumTagMultiPayload();
    sub_100027BE0(v19 + v20, v9, type metadata accessor for FMSelectedSection);
    swift_beginAccess();
    sub_100058530(v12, v19 + v20);
    swift_endAccess();
    sub_100058594(v9);
    sub_10002A100(v9, type metadata accessor for FMSelectedSection);
    sub_10002A100(v12, type metadata accessor for FMSelectedSection);
    goto LABEL_18;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v26 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v26, v16, "FMMapViewController: Won't change selection since POI is selected", v17, 2u);
  }

  v18 = v26;
}

void sub_1003FF568(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMInfoAnnotation();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    swift_unknownObjectRetain();
    v6 = [v5 viewForAnnotation:v4];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = [objc_opt_self() systemRedColor];
        [v9 setTintColor:v10];

        v11 = String._bridgeToObjectiveC()();

        [v9 setGlyphText:v11];

        [v9 setTitleVisibility:2];
        LODWORD(v12) = 1148846080;
        [v9 setDisplayPriority:v12];
        [v9 setUserInteractionEnabled:0];
        [v4 setCoordinate:{*&v4[OBJC_IVAR____TtC6FindMy16FMInfoAnnotation_tempCoordinate], *&v4[OBJC_IVAR____TtC6FindMy16FMInfoAnnotation_tempCoordinate + 8]}];
        [v5 addAnnotation:v4];
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for FMClusterAnnotation();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    swift_unknownObjectRetain();
    v16 = [v15 viewForAnnotation:v14];
    if (v16)
    {
      v7 = v16;
      type metadata accessor for FMClusteredAnnotationView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        __chkstk_darwin(v17);
        sub_10007EBC0(&unk_1006BEF10);
        OS_dispatch_queue.sync<A>(execute:)();
        sub_10008FF20(v29);

        [v14 setCoordinate:{*&v14[OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_tempCoordinate], *&v14[OBJC_IVAR____TtC6FindMy19FMClusterAnnotation_tempCoordinate + 8]}];
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for FMAnnotation();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v20 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  swift_unknownObjectRetain();
  v21 = [v20 viewForAnnotation:v19];
  if (!v21)
  {
    swift_unknownObjectRelease();
    return;
  }

  v7 = v21;
  type metadata accessor for FMMapAnnotationView();
  v22 = swift_dynamicCastClass();
  if (v22)
  {
    v23 = v22;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    swift_unknownObjectRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = 1;
      swift_unknownObjectRelease();
      _os_log_impl(&_mh_execute_header, v25, v26, "*x* FMMapViewController: set enabled? %{BOOL}d", v27, 8u);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    sub_1002DC850(v19);
    v28 = [v23 setUserInteractionEnabled:1];
    (*((swift_isaMask & *v19) + 0x180))(v28);
  }

LABEL_23:
  swift_unknownObjectRelease();
}

uint64_t sub_1003FFA4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v114 = a3;
  v137 = a2;
  v134 = type metadata accessor for FMAnnotationIdentifier();
  v136 = *(v134 - 8);
  __chkstk_darwin(v134);
  v121 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10007EBC0(&unk_1006BEF00);
  __chkstk_darwin(v128);
  v129 = &v105 - v5;
  v111 = type metadata accessor for FMFFriend();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v109 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B07D0);
  v8 = __chkstk_darwin(v7 - 8);
  v112 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v113 = &v105 - v10;
  v11 = type metadata accessor for FMIPDevice();
  v127 = *(v11 - 8);
  __chkstk_darwin(v11);
  v131 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPUnknownItem();
  v118 = *(v13 - 8);
  v119 = v13;
  __chkstk_darwin(v13);
  v117 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMSelectedSection();
  v16 = __chkstk_darwin(v15);
  v130 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v126 = &v105 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v105 - v21;
  __chkstk_darwin(v20);
  v24 = &v105 - v23;
  v123 = type metadata accessor for FMIPItem();
  v25 = *(v123 - 8);
  v26 = __chkstk_darwin(v123);
  v108 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v105 - v28;
  v30 = sub_10007EBC0(&qword_1006BEEE8);
  v31 = __chkstk_darwin(v30 - 8);
  v120 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v133 = &v105 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = (&v105 - v36);
  __chkstk_darwin(v35);
  v39 = &v105 - v38;
  v40 = *a1;
  type metadata accessor for FMAnnotation();
  v135 = v40;
  result = swift_dynamicCastClass();
  v132 = result;
  if (result)
  {
    v122 = v11;
    v42 = v136 + 56;
    v43 = *(v136 + 56);
    v43(v39, 1, 1, v134);
    sub_100027BE0(v137, v24, type metadata accessor for FMSelectedSection);
    v115 = v15;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v124 = v43;
    v125 = v42;
    v107 = v25;
    if (EnumCaseMultiPayload == 3)
    {
      v45 = *(v25 + 32);
      v106 = v37;
      v46 = v123;
      v45(v29, v24, v123);
      swift_unknownObjectRetain();
      v47 = FMIPItem.identifier.getter();
      v48 = v39;
      v50 = v49;
      v37 = v106;
      (*(v25 + 8))(v29, v46);
      sub_100012DF0(v48, &qword_1006BEEE8);
      *v37 = v47;
      v37[1] = v50;
      v39 = v48;
      v51 = v134;
      swift_storeEnumTagMultiPayload();
      v52 = v51;
      v43(v37, 0, 1, v51);
      sub_100035318(v37, v48, &qword_1006BEEE8);
    }

    else
    {
      v52 = v134;
      swift_unknownObjectRetain();
      sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    }

    v53 = v137;
    sub_100027BE0(v137, v22, type metadata accessor for FMSelectedSection);
    v54 = swift_getEnumCaseMultiPayload();
    v116 = v39;
    if (v54 == 8)
    {
      v55 = v117;
      v56 = v118;
      v57 = v119;
      (*(v118 + 32))(v117, v22, v119);
      FMIPUnknownItem.identifier.getter();
      (*(v56 + 8))(v55, v57);
      sub_100012DF0(v39, &qword_1006BEEE8);
      swift_storeEnumTagMultiPayload();
      v124(v37, 0, 1, v52);
      v53 = v137;
      sub_100035318(v37, v39, &qword_1006BEEE8);
    }

    else
    {
      sub_10002A100(v22, type metadata accessor for FMSelectedSection);
    }

    v58 = v122;
    v59 = v126;
    v60 = v127;
    v61 = v131;
    sub_100027BE0(v53, v126, type metadata accessor for FMSelectedSection);
    v62 = swift_getEnumCaseMultiPayload();
    v63 = v133;
    if (v62)
    {
      sub_10002A100(v59, type metadata accessor for FMSelectedSection);
      sub_100027BE0(v53, v130, type metadata accessor for FMSelectedSection);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v87 = sub_10002A100(v130, type metadata accessor for FMSelectedSection);
        v74 = v124;
        v70 = v116;
        goto LABEL_16;
      }

      v64 = v110;
      v65 = v109;
      v66 = v111;
      (*(v110 + 32))(v109, v130, v111);
      v67 = FMFFriend.identifier.getter();
      v69 = v68;
      (*(v64 + 8))(v65, v66);
      v70 = v116;
      sub_100012DF0(v116, &qword_1006BEEE8);
      *v37 = v67;
      v37[1] = v69;
      swift_storeEnumTagMultiPayload();
      v71 = v124;
      v124(v37, 0, 1, v52);
      v72 = v37;
      v73 = v70;
      v74 = v71;
    }

    else
    {
      v75 = sub_10007EBC0(&qword_1006BEEE0);
      v76 = v58;
      v77 = *(v75 + 48);
      (*(v60 + 32))(v61, v59, v76);
      v78 = v113;
      sub_100035318(v59 + v77, v113, &qword_1006B07D0);
      v79 = v112;
      sub_100007204(v78, v112, &qword_1006B07D0);
      v80 = v107;
      v81 = v123;
      if ((*(v107 + 48))(v79, 1, v123) == 1)
      {
        sub_100012DF0(v79, &qword_1006B07D0);
        v82 = v131;
        v83 = FMIPDevice.identifier.getter();
        v85 = v84;
        sub_100012DF0(v78, &qword_1006B07D0);
        (*(v60 + 8))(v82, v122);
        v70 = v116;
        sub_100012DF0(v116, &qword_1006BEEE8);
        *v37 = v83;
        v37[1] = v85;
        swift_storeEnumTagMultiPayload();
        v86 = v124;
        v124(v37, 0, 1, v52);
        v72 = v37;
        v73 = v70;
        v74 = v86;
      }

      else
      {
        v88 = v108;
        (*(v80 + 32))(v108, v79, v81);
        v89 = v131;
        v137 = FMIPDevice.identifier.getter();
        v134 = v90;
        v91 = FMIPItem.identifier.getter();
        v130 = v92;
        v93 = v88;
        v63 = v133;
        (*(v80 + 8))(v93, v81);
        sub_100012DF0(v78, &qword_1006B07D0);
        (*(v60 + 8))(v89, v122);
        v70 = v116;
        sub_100012DF0(v116, &qword_1006BEEE8);
        v94 = v134;
        *v37 = v137;
        v37[1] = v94;
        v95 = v130;
        v37[2] = v91;
        v37[3] = v95;
        swift_storeEnumTagMultiPayload();
        v74 = v124;
        v124(v37, 0, 1, v52);
        v72 = v37;
        v73 = v70;
      }
    }

    v87 = sub_100035318(v72, v73, &qword_1006BEEE8);
LABEL_16:
    v96 = *((swift_isaMask & *v132) + 0x190);
    v96(v87);
    v74(v63, 0, 1, v52);
    v97 = v129;
    v98 = *(v128 + 48);
    sub_100007204(v63, v129, &qword_1006BEEE8);
    sub_100007204(v70, v97 + v98, &qword_1006BEEE8);
    v99 = *(v136 + 48);
    if (v99(v97, 1, v52) == 1)
    {
      sub_100012DF0(v63, &qword_1006BEEE8);
      if (v99(v97 + v98, 1, v52) == 1)
      {
        v100 = sub_100012DF0(v97, &qword_1006BEEE8);
        v101 = v121;
LABEL_24:
        v96(v100);
        sub_1003FB248(v101);
        swift_unknownObjectRelease();
        sub_10002A100(v101, type metadata accessor for FMAnnotationIdentifier);
        return sub_100012DF0(v70, &qword_1006BEEE8);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v102 = v120;
      sub_100007204(v97, v120, &qword_1006BEEE8);
      if (v99(v97 + v98, 1, v52) != 1)
      {
        v103 = v97 + v98;
        v101 = v121;
        sub_10005701C(v103, v121, type metadata accessor for FMAnnotationIdentifier);
        v104 = sub_10017E734(v102, v101);
        sub_10002A100(v101, type metadata accessor for FMAnnotationIdentifier);
        sub_100012DF0(v133, &qword_1006BEEE8);
        sub_10002A100(v102, type metadata accessor for FMAnnotationIdentifier);
        v100 = sub_100012DF0(v97, &qword_1006BEEE8);
        if ((v104 & 1) == 0)
        {
          swift_unknownObjectRelease();
          return sub_100012DF0(v70, &qword_1006BEEE8);
        }

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      sub_100012DF0(v133, &qword_1006BEEE8);
      sub_10002A100(v102, type metadata accessor for FMAnnotationIdentifier);
    }

    sub_100012DF0(v97, &unk_1006BEF00);
    return sub_100012DF0(v70, &qword_1006BEEE8);
  }

  return result;
}

BOOL sub_100400914(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  [*a1 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;
  [v2 coordinate];
  v9 = v8;
  v11 = v10;
  [v3 coordinate];
  if (v5 == v7)
  {
    if (v11 == v13)
    {
      return &v20 < &v19;
    }

    [v2 coordinate];
    v17 = v16;
    [v3 coordinate];
    return v18 < v17;
  }

  else
  {
    return v12 < v9;
  }
}

void sub_100400A20(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
  }

  v5 = *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  v6 = [v5 camera];
  [v6 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000905C(0, &unk_1006BEF20);
  swift_dynamicCast();
  [v5 setCamera:v7];
  *(a2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation) = 0;
  [v5 setUserTrackingMode:a3 animated:1];
  if (!a3)
  {
    sub_1000202F4(1, 0, 0);
  }
}

void sub_100400CE4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMTrackAnnotation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10040161C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100400DE8(0, v2, 1, a1);
  }
}

void sub_100400DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v17 = a3;
    v7 = *(v4 + 8 * a3);
    v15 = v6;
    v16 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = static Date.> infix(_:_:)();

      if ((v11 & 1) == 0)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v16 + 8;
        v6 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v12;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100400ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    do
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 coordinate];
        v15 = v14;
        [v13 coordinate];
        v17 = v16;
        [v12 coordinate];
        v19 = v18;
        v21 = v20;
        [v13 coordinate];
        if (v15 == v17)
        {
          if (v21 == v23)
          {

            if (&v31 >= &v30)
            {
              break;
            }

            goto LABEL_13;
          }

          [v12 coordinate];
          v19 = v25;
          [v13 coordinate];
          v24 = v26;
        }

        else
        {
          v24 = v22;
        }

        if (v24 >= v19)
        {
          break;
        }

LABEL_13:
        if (!v5)
        {
          __break(1u);
        }

        v27 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v27;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
    }

    while (v4 != a2);
  }
}

uint64_t sub_100401084(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10025EFD4(v8);
      v8 = result;
    }

    v82 = v8 + 2;
    v83 = v8[2];
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = &v8[2 * v83];
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_100402468((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v14 = *v12;
      v13 = v12 + 4;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 2;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_10008B8B8((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = (v8 + 4);
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = &v38[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v38[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = &v38[16 * v5 - 16];
        v78 = *v77;
        v79 = &v38[16 * v5];
        v80 = *(v79 + 1);
        sub_100402468((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove(&v38[16 * v5], v79 + 16, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[16 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = &v38[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

void sub_10040161C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_89:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = sub_10025EFD4(v9);
    }

    v90 = *(v9 + 2);
    if (v90 >= 2)
    {
      do
      {
        v91 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v90 - 1);
        v92 = *&v9[16 * v90];
        v93 = *&v9[16 * v90 + 24];
        sub_10040266C((v91 + 8 * v92), (v91 + 8 * *&v9[16 * v90 + 16]), (v91 + 8 * v93), v11);
        if (v5)
        {
          break;
        }

        if (v93 < v92)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10025EFD4(v9);
        }

        if (v90 - 2 >= *(v9 + 2))
        {
          goto LABEL_115;
        }

        v94 = &v9[16 * v90];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_10025EF48(v90 - 1);
        v90 = *(v9 + 2);
        v6 = a3;
      }

      while (v90 > 1);
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 < v7)
    {
      v103 = v7;
      v97 = v9;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v6 = (8 * v10);
      v14 = v10;
      v15 = (v12 + 8 * v10);
      v17 = *v15;
      v16 = v15 + 2;
      v18 = v13;
      v19 = v17;
      v105 = static Date.> infix(_:_:)();

      v9 = v14;
      v20 = (v14 + 2);
      while (1)
      {
        v11 = v103;
        if (v103 == v20)
        {
          break;
        }

        v21 = *(v16 - 1);
        v22 = *v16;
        v23 = v21;
        LODWORD(v21) = static Date.> infix(_:_:)() & 1;

        v20 = (v20 + 1);
        ++v16;
        if ((v105 & 1) != v21)
        {
          v11 = (v20 - 1);
          break;
        }
      }

      v10 = v9;
      if ((v105 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v11 < v9)
      {
        goto LABEL_118;
      }

      if (v9 < v11)
      {
        v24 = 8 * v11 - 8;
        v25 = v11;
        v26 = v9;
        v9 = v97;
        do
        {
          v25 = (v25 - 1);
          if (v26 != v25)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_124;
            }

            v27 = *(v6 + v28);
            *(v6 + v28) = *(v28 + v24);
            *(v28 + v24) = v27;
          }

          ++v26;
          v24 -= 8;
          ++v6;
        }

        while (v26 < v25);
        v6 = a3;
      }

      else
      {
LABEL_18:
        v6 = a3;
        v9 = v97;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (&v10[a4] >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = &v10[a4];
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10008B8B8(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = sub_10008B8B8((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v46;
    v47 = &v9[16 * v45];
    *(v47 + 4) = v10;
    *(v47 + 5) = v11;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v107 = v11;
    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v9 + 4);
          v51 = *(v9 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_58:
          if (v53)
          {
            goto LABEL_105;
          }

          v66 = &v9[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_108;
          }

          v72 = &v9[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_112;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v76 = &v9[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_107;
        }

        v79 = &v9[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v88 = *&v9[16 * v87 + 32];
        v11 = *&v9[16 * v49 + 40];
        sub_10040266C((*v6 + 8 * v88), (*v6 + 8 * *&v9[16 * v49 + 32]), (*v6 + 8 * v11), v48);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v11 < v88)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10025EFD4(v9);
        }

        if (v87 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v89 = &v9[16 * v87];
        *(v89 + 4) = v88;
        *(v89 + 5) = v11;
        sub_10025EF48(v49);
        v46 = *(v9 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v9[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_103;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_104;
      }

      v61 = &v9[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_106;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_109;
      }

      if (v65 >= v57)
      {
        v83 = &v9[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_89;
    }
  }

  v98 = v9;
  v99 = v5;
  v31 = v10;
  v32 = *v6;
  v33 = *v6 + 8 * v11 - 8;
  v95 = v31;
  v34 = v31 - v11;
  v101 = v30;
LABEL_31:
  v104 = v33;
  v106 = v11;
  v35 = *(v32 + 8 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = static Date.> infix(_:_:)();

    if ((v41 & 1) == 0)
    {
LABEL_30:
      v11 = (v106 + 1);
      v33 = v104 + 8;
      --v34;
      if ((v106 + 1) != v101)
      {
        goto LABEL_31;
      }

      v11 = v101;
      v9 = v98;
      v5 = v99;
      v6 = a3;
      v10 = v95;
      goto LABEL_38;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
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
}

void sub_100401C68(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 >= v6)
      {
        v36 = v5;
      }

      else
      {
        v10 = *a3;
        v11 = *(*a3 + 8 * v9);
        v128 = *(*a3 + 8 * v7);
        v12 = v128;
        v129 = v11;
        v13 = v11;
        v14 = v12;
        v15 = sub_100400914(&v129, &v128);
        if (v5)
        {

          return;
        }

        v16 = v15;

        v17 = v7 + 2;
        if (v7 + 2 < v6)
        {
          v117 = v7;
          v18 = (v10 + 8 * v7 + 16);
          do
          {
            v5 = *(v18 - 1);
            v20 = *v18;
            v21 = v5;
            [v20 coordinate];
            v23 = v22;
            [v21 coordinate];
            v25 = v24;
            [v20 coordinate];
            v27 = v26;
            v29 = v28;
            [v21 coordinate];
            if (v23 == v25)
            {
              if (v29 == v31)
              {

                if ((((&v127 >= &v126) ^ v16) & 1) == 0)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                [v20 coordinate];
                v33 = v32;
                [v21 coordinate];
                v35 = v34;

                if (v16 == v35 >= v33)
                {
                  goto LABEL_18;
                }
              }
            }

            else
            {
              v19 = v30;

              if (((v16 ^ (v19 >= v27)) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            ++v18;
            ++v17;
          }

          while (v6 != v17);
          v17 = v6;
LABEL_18:
          v7 = v117;
        }

        v36 = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        if (v17 < v7)
        {
          goto LABEL_138;
        }

        if (v7 < v17)
        {
          v37 = 8 * v17 - 8;
          v38 = 8 * v7;
          v9 = v17;
          v39 = v7;
          do
          {
            if (v39 != --v17)
            {
              v40 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              v41 = *(v40 + v38);
              *(v40 + v38) = *(v40 + v37);
              *(v40 + v37) = v41;
            }

            ++v39;
            v37 -= 8;
            v38 += 8;
          }

          while (v39 < v17);
        }

        else
        {
LABEL_27:
          v9 = v17;
        }
      }

      v42 = a3[1];
      if (v9 >= v42)
      {
        v44 = v9;
        if (v9 < v7)
        {
          goto LABEL_134;
        }

        goto LABEL_39;
      }

      if (__OFSUB__(v9, v7))
      {
        goto LABEL_135;
      }

      if (v9 - v7 >= a4)
      {
LABEL_36:
        v44 = v9;
        if (v9 < v7)
        {
          goto LABEL_134;
        }

        goto LABEL_39;
      }

      v43 = v7 + a4;
      if (__OFADD__(v7, a4))
      {
        goto LABEL_136;
      }

      if (v43 >= v42)
      {
        v43 = a3[1];
      }

      if (v43 < v7)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        v8 = sub_10025EFD4(v8);
LABEL_108:
        v132 = v8;
        v113 = *(v8 + 2);
        if (v113 >= 2)
        {
          while (*a3)
          {
            v114 = *&v8[16 * v113];
            v115 = *&v8[16 * v113 + 24];
            sub_100402958((*a3 + 8 * v114), (*a3 + 8 * *&v8[16 * v113 + 16]), (*a3 + 8 * v115), v7);
            if (v5)
            {
              goto LABEL_116;
            }

            if (v115 < v114)
            {
              goto LABEL_132;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_10025EFD4(v8);
            }

            if (v113 - 2 >= *(v8 + 2))
            {
              goto LABEL_133;
            }

            v116 = &v8[16 * v113];
            *v116 = v114;
            *(v116 + 1) = v115;
            v132 = v8;
            sub_10025EF48(v113 - 1);
            v8 = v132;
            v113 = *(v132 + 2);
            if (v113 <= 1)
            {
              goto LABEL_116;
            }
          }

          goto LABEL_143;
        }

LABEL_116:

        return;
      }

      if (v9 == v43)
      {
        goto LABEL_36;
      }

      v120 = v36;
      v90 = *a3;
      v91 = *a3 + 8 * v9 - 8;
      v118 = v7;
      v92 = v7 - v9;
      v122 = v43;
      while (2)
      {
        v124 = v9;
        v93 = *(v90 + 8 * v9);
        v94 = v92;
        v5 = v91;
        do
        {
          v95 = *v5;
          v96 = v93;
          v97 = v95;
          [v96 coordinate];
          v99 = v98;
          [v97 coordinate];
          v101 = v100;
          [v96 coordinate];
          v103 = v102;
          v105 = v104;
          [v97 coordinate];
          if (v99 == v101)
          {
            if (v105 == v107)
            {

              if (&v131 >= &v130)
              {
                break;
              }

              goto LABEL_98;
            }

            [v96 coordinate];
            v103 = v109;
            [v97 coordinate];
            v108 = v110;
          }

          else
          {
            v108 = v106;
          }

          if (v108 >= v103)
          {
            break;
          }

LABEL_98:
          if (!v90)
          {
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
          }

          v111 = *v5;
          v93 = *(v5 + 8);
          *v5 = v93;
          *(v5 + 8) = v111;
          v5 -= 8;
        }

        while (!__CFADD__(v94++, 1));
        v9 = v124 + 1;
        v91 += 8;
        --v92;
        if (v124 + 1 != v122)
        {
          continue;
        }

        break;
      }

      v44 = v122;
      v36 = v120;
      v7 = v118;
      if (v122 < v118)
      {
        goto LABEL_134;
      }

LABEL_39:
      v123 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10008B8B8(0, *(v8 + 2) + 1, 1, v8);
      }

      v46 = *(v8 + 2);
      v45 = *(v8 + 3);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v8 = sub_10008B8B8((v45 > 1), v46 + 1, 1, v8);
      }

      *(v8 + 2) = v47;
      v48 = &v8[16 * v46];
      *(v48 + 4) = v7;
      *(v48 + 5) = v123;
      v49 = *a1;
      if (!*a1)
      {
        goto LABEL_144;
      }

      if (v46)
      {
        while (2)
        {
          v7 = v47 - 1;
          if (v47 >= 4)
          {
            v54 = &v8[16 * v47 + 32];
            v55 = *(v54 - 64);
            v56 = *(v54 - 56);
            v60 = __OFSUB__(v56, v55);
            v57 = v56 - v55;
            if (v60)
            {
              goto LABEL_121;
            }

            v59 = *(v54 - 48);
            v58 = *(v54 - 40);
            v60 = __OFSUB__(v58, v59);
            v52 = v58 - v59;
            v53 = v60;
            if (v60)
            {
              goto LABEL_122;
            }

            v61 = &v8[16 * v47];
            v63 = *v61;
            v62 = *(v61 + 1);
            v60 = __OFSUB__(v62, v63);
            v64 = v62 - v63;
            if (v60)
            {
              goto LABEL_124;
            }

            v60 = __OFADD__(v52, v64);
            v65 = v52 + v64;
            if (v60)
            {
              goto LABEL_127;
            }

            if (v65 >= v57)
            {
              v83 = &v8[16 * v7 + 32];
              v85 = *v83;
              v84 = *(v83 + 1);
              v60 = __OFSUB__(v84, v85);
              v86 = v84 - v85;
              if (v60)
              {
                goto LABEL_131;
              }

              if (v52 < v86)
              {
                v7 = v47 - 2;
              }
            }

            else
            {
LABEL_58:
              if (v53)
              {
                goto LABEL_123;
              }

              v66 = &v8[16 * v47];
              v68 = *v66;
              v67 = *(v66 + 1);
              v69 = __OFSUB__(v67, v68);
              v70 = v67 - v68;
              v71 = v69;
              if (v69)
              {
                goto LABEL_126;
              }

              v72 = &v8[16 * v7 + 32];
              v74 = *v72;
              v73 = *(v72 + 1);
              v60 = __OFSUB__(v73, v74);
              v75 = v73 - v74;
              if (v60)
              {
                goto LABEL_129;
              }

              if (__OFADD__(v70, v75))
              {
                goto LABEL_130;
              }

              if (v70 + v75 < v52)
              {
                goto LABEL_72;
              }

              if (v52 < v75)
              {
                v7 = v47 - 2;
              }
            }
          }

          else
          {
            if (v47 == 3)
            {
              v50 = *(v8 + 4);
              v51 = *(v8 + 5);
              v60 = __OFSUB__(v51, v50);
              v52 = v51 - v50;
              v53 = v60;
              goto LABEL_58;
            }

            v76 = &v8[16 * v47];
            v78 = *v76;
            v77 = *(v76 + 1);
            v60 = __OFSUB__(v77, v78);
            v70 = v77 - v78;
            v71 = v60;
LABEL_72:
            if (v71)
            {
              goto LABEL_125;
            }

            v79 = &v8[16 * v7];
            v81 = *(v79 + 4);
            v80 = *(v79 + 5);
            v60 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v60)
            {
              goto LABEL_128;
            }

            if (v82 < v70)
            {
              break;
            }
          }

          v87 = v7 - 1;
          if (v7 - 1 >= v47)
          {
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          if (!*a3)
          {
            goto LABEL_141;
          }

          v88 = *&v8[16 * v87 + 32];
          v5 = *&v8[16 * v7 + 40];
          sub_100402958((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v7 + 32]), (*a3 + 8 * v5), v49);
          if (v36)
          {
            goto LABEL_116;
          }

          if (v5 < v88)
          {
            goto LABEL_119;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10025EFD4(v8);
          }

          if (v87 >= *(v8 + 2))
          {
            goto LABEL_120;
          }

          v89 = &v8[16 * v87];
          *(v89 + 4) = v88;
          *(v89 + 5) = v5;
          v132 = v8;
          sub_10025EF48(v7);
          v8 = v132;
          v47 = *(v132 + 2);
          if (v47 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v5 = v36;
      v7 = v123;
      v6 = a3[1];
      if (v123 >= v6)
      {
        goto LABEL_106;
      }
    }
  }

  v8 = &_swiftEmptyArrayStorage;
LABEL_106:
  v7 = *a1;
  if (*a1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_108;
  }

  __break(1u);
}

uint64_t sub_100402468(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 2;
    v5 -= 2;
    v18 = v14;
    do
    {
      v19 = v5 + 2;
      v20 = *(v18 - 2);
      v18 -= 2;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 2, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_10040266C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v37 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v35 = v6;
LABEL_27:
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v37;
      do
      {
        v27 = v25;
        v28 = v25 + 1;
        v29 = *--v26;
        v30 = v24;
        v31 = *v24;
        v36 = v29;
        v32 = v31;
        v33 = static Date.> infix(_:_:)();

        if (v33)
        {
          v4 = v27;
          if (v28 != v5)
          {
            *v27 = *v30;
          }

          if (v37 <= v15 || (v5 = v30, v30 <= v35))
          {
            v5 = v30;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v28 != v37)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v37 = v26;
        v24 = v30;
      }

      while (v26 > v15);
      v37 = v26;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v37 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v15;
        v19 = *v5;
        v20 = v18;
        LOBYTE(v18) = static Date.> infix(_:_:)();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v21 = v5;
        v22 = v17;
        v23 = v17 == v5++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v22 + 1;
        if (v15 < v37)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v15;
      v22 = v17;
      v23 = v17 == v15++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v22 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v37 - v15 + (v37 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * ((v37 - v15) / 8));
  }

  return 1;
}

uint64_t sub_100402958(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_49;
    }

    while (1)
    {
      v15 = *v4;
      v16 = *v6;
      v17 = v15;
      [v16 coordinate];
      v19 = v18;
      [v17 coordinate];
      v21 = v20;
      [v16 coordinate];
      v23 = v22;
      v25 = v24;
      [v17 coordinate];
      if (v19 == v21)
      {
        if (v25 == v27)
        {

          if (&v55 >= &v54)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }

        [v16 coordinate];
        v23 = v31;
        [v17 coordinate];
        v30 = v32;
      }

      else
      {
        v30 = v26;
      }

      if (v30 >= v23)
      {
LABEL_14:
        v28 = v4;
        v29 = v7 == v4++;
        if (v29)
        {
          goto LABEL_16;
        }

LABEL_15:
        *v7 = *v28;
        goto LABEL_16;
      }

LABEL_22:
      v28 = v6;
      v29 = v7 == v6++;
      if (!v29)
      {
        goto LABEL_15;
      }

LABEL_16:
      ++v7;
      if (v4 >= v14 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_49;
      }
    }
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v53 = v6;
    v33 = v6 - 1;
    --v5;
    v34 = v14;
    while (1)
    {
      v35 = *--v34;
      v6 = v33;
      v36 = *v33;
      v37 = v35;
      v38 = v36;
      [v37 coordinate];
      v40 = v39;
      [v38 coordinate];
      v42 = v41;
      [v37 coordinate];
      v44 = v43;
      v46 = v45;
      [v38 coordinate];
      if (v40 == v42)
      {
        if (v46 == v48)
        {

          if (&v57 < &v56)
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        [v37 coordinate];
        v44 = v50;
        [v38 coordinate];
        v49 = v51;
      }

      else
      {
        v49 = v47;
      }

      if (v49 < v44)
      {
LABEL_41:
        if (v5 + 1 != v53)
        {
          *v5 = *v6;
        }

        if (v14 <= v4 || v6 <= v7)
        {
          break;
        }

        goto LABEL_30;
      }

LABEL_39:
      v33 = v6;
      if (v5 + 1 != v14)
      {
        *v5 = *v34;
      }

      --v5;
      v14 = v34;
      if (v34 <= v4)
      {
        v14 = v34;
        v6 = v53;
        break;
      }
    }
  }

LABEL_49:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_100402D40(uint64_t a1)
{
  v2 = v1;
  v45 = sub_10007EBC0(&qword_1006BEF48);
  v4 = __chkstk_darwin(v45);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = type metadata accessor for FMAnnotationIdentifier();
  v44 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v11) = *(a1 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v12;
    v38 = v2;
    v46 = v8;
    v36 = &v36;
    __chkstk_darwin(v10);
    v39 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v13);
    v8 = 0;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);
    v18 = (v15 + 63) >> 6;
    v12 = v47;
    v42 = v18;
    v43 = a1;
    v40 = 0;
    v41 = a1 + 64;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
LABEL_12:
      v22 = v19 | (v8 << 6);
      sub_100027BE0(*(a1 + 48) + *(v44 + 72) * v22, v12, type metadata accessor for FMAnnotationIdentifier);
      v23 = *(*(a1 + 56) + 8 * v22);
      v24 = v12;
      v25 = v46;
      sub_100027BE0(v24, v46, type metadata accessor for FMAnnotationIdentifier);
      v26 = v45;
      *(v25 + *(v45 + 48)) = v23;
      v2 = &qword_1006BEF48;
      sub_100007204(v25, v6, &qword_1006BEF48);
      v27 = *&v6[*(v26 + 48)];
      v28 = *&v27[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
      v29 = *&v27[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
      v30 = v23;
      sub_10009186C(v28, v29);

      if (v29)
      {
        if (v29 - 1 >= 3)
        {
          sub_100091880(v28, v29);
        }

        sub_100012DF0(v46, &qword_1006BEF48);
        sub_10002A100(v6, type metadata accessor for FMAnnotationIdentifier);

        v12 = v47;
        sub_10002A100(v47, type metadata accessor for FMAnnotationIdentifier);
        *&v39[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
        v14 = v41;
        v31 = __OFADD__(v40++, 1);
        v18 = v42;
        a1 = v43;
        v17 = v48;
        if (v31)
        {
          __break(1u);
          return sub_1001C0AA4(v39, v37, v40, a1);
        }
      }

      else
      {
        sub_100012DF0(v25, &qword_1006BEF48);
        sub_10002A100(v6, type metadata accessor for FMAnnotationIdentifier);

        v12 = v47;
        sub_10002A100(v47, type metadata accessor for FMAnnotationIdentifier);
        v18 = v42;
        a1 = v43;
        v14 = v41;
        v17 = v48;
      }
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 >= v18)
      {
        return sub_1001C0AA4(v39, v37, v40, a1);
      }

      v21 = *(v14 + 8 * v8);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  sub_1004031E4(v33, v12, a1);
  v35 = v34;

  if (!v2)
  {
    return v35;
  }

  return result;
}

void sub_1004031E4(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v38 = sub_10007EBC0(&qword_1006BEF48);
  v5 = __chkstk_darwin(v38);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for FMAnnotationIdentifier();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v32 = a1;
    v33 = 0;
    v31 = a2;
    v13 = 0;
    v14 = v39 + 64;
    v15 = 1 << *(v39 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v39 + 64);
    v18 = (v15 + 63) >> 6;
    v35 = v39 + 64;
    v36 = v18;
    while (v17)
    {
      v19 = __clz(__rbit64(v17));
      v40 = (v17 - 1) & v17;
LABEL_14:
      v22 = v19 | (v13 << 6);
      v34 = v22;
      v23 = v39;
      sub_100027BE0(*(v39 + 48) + *(v37 + 72) * v22, v12, type metadata accessor for FMAnnotationIdentifier);
      v24 = *(*(v23 + 56) + 8 * v22);
      sub_100027BE0(v12, v9, type metadata accessor for FMAnnotationIdentifier);
      v25 = v38;
      *&v9[*(v38 + 48)] = v24;
      sub_100007204(v9, v7, &qword_1006BEF48);
      v41 = *&v7[*(v25 + 48)];
      v26 = *&v41[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier];
      v27 = *&v41[OBJC_IVAR____TtC6FindMy12FMAnnotation_fmClusterIdentifier + 8];
      v28 = v24;
      sub_10009186C(v26, v27);

      if (v27)
      {
        if (v27 - 1 >= 3)
        {
          sub_100091880(v26, v27);
        }

        sub_100012DF0(v9, &qword_1006BEF48);
        sub_10002A100(v7, type metadata accessor for FMAnnotationIdentifier);

        sub_10002A100(v12, type metadata accessor for FMAnnotationIdentifier);
        v14 = v35;
        *(v32 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v29 = __OFADD__(v33++, 1);
        v18 = v36;
        v17 = v40;
        if (v29)
        {
          __break(1u);
LABEL_21:
          sub_1001C0AA4(v32, v31, v33, v39);

          return;
        }
      }

      else
      {
        sub_100012DF0(v9, &qword_1006BEF48);
        sub_10002A100(v7, type metadata accessor for FMAnnotationIdentifier);

        sub_10002A100(v12, type metadata accessor for FMAnnotationIdentifier);
        v14 = v35;
        v18 = v36;
        v17 = v40;
      }
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_21;
      }

      v21 = *(v14 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

char *sub_1004035A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v12 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_platterContainer;
  *&a6[v12] = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatter;
  type metadata accessor for FMMapOptionsView.FMPlatterViewTransparent();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&a6[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_firstPlatterSeparatorView;
  *&a6[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_secondPlatter;
  *&a6[v16] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_currentPerspectiveButtonState] = 2;
  v17 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton;
  *&a6[v17] = [objc_allocWithZone(UIButton) init];
  v18 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspectiveButtonContainer;
  *&a6[v18] = [objc_allocWithZone(UIStackView) init];
  v19 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective2dButton;
  *&a6[v19] = [objc_allocWithZone(UIButton) init];
  v20 = OBJC_IVAR____TtC6FindMy16FMMapOptionsView_perspective3dButton;
  *&a6[v20] = [objc_allocWithZone(UIButton) init];
  v21 = &a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_selectionSubscription];
  *v21 = 0;
  v21[1] = 0;
  v22 = &a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_locationSubscription];
  *v22 = 0;
  v22[1] = 0;
  *&a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mediator] = a1;
  *&a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapType] = a3;
  v23 = objc_opt_self();

  result = [v23 buttonWithUserTrackingView:a2];
  if (result)
  {
    v25 = result;

    *&a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_userLocationButton] = v25;
    v26 = &a6[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_set3DPerspectiveEnabled];
    *v26 = a4;
    v26[1] = a5;
    v37.receiver = a6;
    v37.super_class = type metadata accessor for FMMapOptionsView();

    v27 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10001582C();
    sub_10001836C();
    v28 = *(a1 + 56);
    v29 = v27;

    v30 = sub_100019200(v29, v28);

    v31 = &v29[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_selectionSubscription];
    *v31 = v30;
    v31[1] = &off_100637420;
    swift_unknownObjectRelease();
    v32 = *(a1 + 40);
    v33 = v29;
    v34 = v32;
    v35 = sub_100019230(v33, v34);

    v36 = &v33[OBJC_IVAR____TtC6FindMy16FMMapOptionsView_locationSubscription];
    *v36 = v35;
    v36[1] = &off_10063F000;

    swift_unknownObjectRelease();
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004038B4(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  *(v12 + 17) = BYTE1(a1) & 1;
  *(v12 + 18) = BYTE2(a1) & 1;
  *(v12 + 24) = v1;
  aBlock[4] = sub_100403EA0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D018;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100403B94(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100403E60;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063CFC8;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_100403E60()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 0;
  sub_1003D92AC(v1);
}

void sub_100403EA0()
{
  if (*(v0 + 18))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1003FAD48(v2 | *(v0 + 16) | v1, *(v0 + 24));
}

void sub_100403ED4()
{
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAnimationEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled) = 1;
  v1 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_selectionSubscription) = 0;
  type metadata accessor for FMSelectedSection();
  swift_storeEnumTagMultiPayload();
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapOptionsView) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView) = 0;
  v3 = v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration;
  *v3 = 0;
  *(v3 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100404030(char a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMMapViewController: didBecomePitched: %{BOOL,public}d", v7, 8u);
  }

  *(v2 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isExiting3DMode) = 0;

  sub_10001ED48(1);
}

void sub_100404148(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v8 = v6;
        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v8 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView);
LABEL_17:
  v9 = v6;
  sub_1003F8748(v6);
  if (i)
  {
    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v11 setAlpha:0.0];

      ++v10;
      if (v13 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v17[4] = sub_100406CF8;
    v17[5] = v15;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_100004AE4;
    v17[3] = &unk_10063D248;
    v16 = _Block_copy(v17);

    [v14 animateWithDuration:v16 animations:0.3];
    _Block_release(v16);
  }
}

id sub_1004043A0(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MKPolylineRenderer);
    swift_unknownObjectRetain();
    v5 = [v4 initWithOverlay:v3];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 redColor];
    [v7 setStrokeColor:v8];

    [v7 setLineWidth:2.0];
    [v7 setLineCap:2];
    sub_10007EBC0(&qword_1006AFC30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100552EE0;
    *(v9 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:5];
    *(v9 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:5];
    sub_10000905C(0, &qword_1006BEF40);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setLineDashPattern:isa];

LABEL_5:
    swift_unknownObjectRelease();
    return v7;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(MKCircleRenderer);
    swift_unknownObjectRetain();
    v14 = [v13 initWithCircle:v12];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 systemBlueColor];
    v18 = [v17 colorWithAlphaComponent:0.2];

    [v16 setFillColor:v18];
    v7 = v16;
    [v7 setAlpha:1.0];

    goto LABEL_5;
  }

  v20 = objc_allocWithZone(MKOverlayRenderer);

  return [v20 initWithOverlay:a1];
}

char *sub_100404674(void *a1)
{
  v188 = type metadata accessor for FMIPUnknownItem();
  v199 = *(v188 - 8);
  __chkstk_darwin(v188);
  v187 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v201 = *(v4 - 8);
  v202 = v4;
  __chkstk_darwin(v4);
  v200 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v6 - 8);
  v194 = &v178 - v7;
  v196 = type metadata accessor for FMFFriend();
  v195 = *(v196 - 1);
  __chkstk_darwin(v196);
  v185 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&qword_1006B07D0);
  v10 = __chkstk_darwin(v9 - 8);
  v197 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v192 = &v178 - v13;
  __chkstk_darwin(v12);
  v184 = &v178 - v14;
  v15 = type metadata accessor for FMIPItem();
  v205 = *(v15 - 8);
  v206 = v15;
  v16 = __chkstk_darwin(v15);
  v181 = &v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v183 = &v178 - v19;
  __chkstk_darwin(v18);
  v189 = &v178 - v20;
  v21 = type metadata accessor for FMSelectedSection();
  v22 = __chkstk_darwin(v21);
  v24 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v178 - v25;
  v27 = sub_10007EBC0(&unk_1006BBCE0);
  v28 = __chkstk_darwin(v27 - 8);
  v180 = &v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v191 = &v178 - v31;
  __chkstk_darwin(v30);
  v190 = &v178 - v32;
  v33 = type metadata accessor for FMIPDevice();
  v203 = *(v33 - 8);
  v204 = v33;
  v34 = __chkstk_darwin(v33);
  v179 = &v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v193 = &v178 - v37;
  __chkstk_darwin(v36);
  v182 = &v178 - v38;
  v209 = type metadata accessor for FMAnnotationIdentifier();
  v186 = *(v209 - 8);
  v39 = __chkstk_darwin(v209);
  v41 = (&v178 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __chkstk_darwin(v39);
  v44 = (&v178 - v43);
  v45 = __chkstk_darwin(v42);
  v208 = &v178 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v178 - v48;
  result = __chkstk_darwin(v47);
  v52 = (&v178 - v51);
  v207 = v1;
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) != 1)
  {
    return result;
  }

  v198 = v21;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100005B14(v53, qword_1006D4630);
  v54 = a1;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v178 = v26;
    v58 = v57;
    v59 = v24;
    v60 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v54;
    *v60 = v54;
    v61 = v54;
    _os_log_impl(&_mh_execute_header, v55, v56, "FMMapViewController: didSelect view %@", v58, 0xCu);
    sub_100012DF0(v60, &unk_1006AF760);
    v24 = v59;

    v26 = v178;
  }

  result = [v54 annotation];
  if (!result)
  {
    return result;
  }

  v62 = result;
  type metadata accessor for FMAnnotation();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {

    return swift_unknownObjectRelease();
  }

  (*((swift_isaMask & *v63) + 0x190))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v73 = *v52;
        v74 = v52[1];
        v76 = v52[2];
        v75 = v52[3];
        v77 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

        v78 = v191;
        sub_1000E512C(v73, v74, v191);

        v79 = v203;
        v80 = v204;
        if ((*(v203 + 48))(v78, 1, v204) == 1)
        {

          swift_unknownObjectRelease();
          return sub_100012DF0(v78, &unk_1006BBCE0);
        }

        (*(v79 + 32))(v193, v78, v80);
        v134 = v79;

        v135 = v184;
        sub_1000E5FF8(v76, v75, v184);

        v69 = v135;

        v136 = v205;
        v137 = v135;
        v138 = v206;
        if ((*(v205 + 48))(v137, 1, v206) == 1)
        {
          (*(v79 + 8))(v193, v80);
          swift_unknownObjectRelease();
          v72 = &qword_1006B07D0;
          return sub_100012DF0(v69, v72);
        }

        (*(v136 + 32))(v189, v69, v138);
        v164 = *(v77 + 56);
        v165 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
        v166 = v193;
        (*(v134 + 16))(v26, v193, v80);
        (*(v136 + 16))(&v26[v165], v189, v138);
        (*(v136 + 56))(&v26[v165], 0, 1, v138);
        swift_storeEnumTagMultiPayload();
        v167 = v136;
        v168 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_100027BE0(v164 + v168, v24, type metadata accessor for FMSelectedSection);
        swift_beginAccess();

        sub_100058530(v26, v164 + v168);
        swift_endAccess();
        sub_100058594(v24);

        swift_unknownObjectRelease();
        sub_10002A100(v24, type metadata accessor for FMSelectedSection);
        sub_10002A100(v26, type metadata accessor for FMSelectedSection);
        (*(v167 + 8))(v189, v138);
        return (*(v134 + 8))(v166, v204);
      }

      else
      {
        v108 = v201;
        v109 = v200;
        (*(v201 + 4))();
        v110 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

        v111 = FMIPManager.unknownItems.getter();
        __chkstk_darwin(v111);
        *(&v178 - 2) = v109;
        if (*(sub_100104884(sub_10017014C, (&v178 - 4), v112) + 16))
        {
          v113 = *(v199 + 16);
          v209 = v110;
          v114 = v187;
          v115 = v188;
          v113();

          v116 = *(v209 + 56);
          (v113)(v26, v114, v115);
          swift_storeEnumTagMultiPayload();
          v117 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
          swift_beginAccess();
          sub_100027BE0(v116 + v117, v24, type metadata accessor for FMSelectedSection);
          swift_beginAccess();

          sub_100058530(v26, v116 + v117);
          swift_endAccess();
          sub_100058594(v24);

          swift_unknownObjectRelease();
          sub_10002A100(v24, type metadata accessor for FMSelectedSection);
          sub_10002A100(v26, type metadata accessor for FMSelectedSection);
          (*(v199 + 8))(v114, v115);
          return (*(v201 + 1))(v200, v202);
        }

        else
        {

          swift_unknownObjectRelease();
          return (*(v108 + 1))(v109, v202);
        }
      }
    }

    if (EnumCaseMultiPayload != 6)
    {
      v120 = *(*(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 56);
      swift_storeEnumTagMultiPayload();
      v121 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100027BE0(v120 + v121, v24, type metadata accessor for FMSelectedSection);
      swift_beginAccess();

      sub_100058530(v26, v120 + v121);
      swift_endAccess();
      sub_100058594(v24);

      swift_unknownObjectRelease();
      sub_10002A100(v24, type metadata accessor for FMSelectedSection);
      v119 = v26;
      v118 = type metadata accessor for FMSelectedSection;
      return sub_10002A100(v119, v118);
    }

    v178 = v26;
    v85 = *(*v52 + 16);
    v86 = *(*v52 + 24);
    v199 = *v52;
    v87 = *(v199 + 32);
    v88 = *(v87 + 16);
    v196 = v86;
    v195 = v85;
    if (v88)
    {
      v194 = v62;
      v200 = v24;
      v89 = v186;
      v90 = v87 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
      sub_10009186C(v85, v86);
      v91 = *(v89 + 72);
      v92 = _swiftEmptyArrayStorage;
      v93 = v90;
      v94 = v88;
      v202 = v91;
      do
      {
        sub_100027BE0(v93, v49, type metadata accessor for FMAnnotationIdentifier);
        sub_10005701C(v49, v44, type metadata accessor for FMAnnotationIdentifier);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v95 = *v44;
          v201 = v44[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_10008B9E4(0, *(v92 + 2) + 1, 1, v92);
          }

          v96 = v92;
          v97 = *(v92 + 2);
          v98 = v96;
          v99 = *(v96 + 3);
          if (v97 >= v99 >> 1)
          {
            v98 = sub_10008B9E4((v99 > 1), v97 + 1, 1, v98);
          }

          *(v98 + 2) = v97 + 1;
          v100 = &v98[16 * v97];
          v92 = v98;
          v101 = v201;
          *(v100 + 4) = v95;
          *(v100 + 5) = v101;
          v91 = v202;
        }

        else
        {
          sub_10002A100(v44, type metadata accessor for FMAnnotationIdentifier);
        }

        v93 += v91;
        --v94;
      }

      while (v94);
      v201 = v92;
      v122 = _swiftEmptyArrayStorage;
      v24 = v200;
      v123 = v197;
      do
      {
        v124 = v208;
        sub_100027BE0(v90, v208, type metadata accessor for FMAnnotationIdentifier);
        sub_10005701C(v124, v41, type metadata accessor for FMAnnotationIdentifier);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v125 = *v41;
          v126 = v41[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v122 = sub_10008B9E4(0, *(v122 + 2) + 1, 1, v122);
          }

          v128 = *(v122 + 2);
          v127 = *(v122 + 3);
          if (v128 >= v127 >> 1)
          {
            v122 = sub_10008B9E4((v127 > 1), v128 + 1, 1, v122);
          }

          *(v122 + 2) = v128 + 1;
          v129 = &v122[16 * v128];
          *(v129 + 4) = v125;
          *(v129 + 5) = v126;
          v24 = v200;
          v91 = v202;
        }

        else
        {
          sub_10002A100(v41, type metadata accessor for FMAnnotationIdentifier);
        }

        v90 += v91;
        --v88;
      }

      while (v88);
      v130 = v201;
    }

    else
    {
      sub_10009186C(v85, v86);
      v130 = _swiftEmptyArrayStorage;
      v122 = _swiftEmptyArrayStorage;
      v123 = v197;
    }

    v146 = v178;
    if (*(v130 + 2))
    {

      if (!*(v130 + 2))
      {
        __break(1u);
        return result;
      }

      v147 = *(v130 + 4);
      v148 = *(v130 + 5);
      v149 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

      sub_1000E5FF8(v147, v148, v123);

      v151 = v205;
      v150 = v206;
      if ((*(v205 + 48))(v123, 1, v206) == 1)
      {
        sub_100012DF0(v123, &qword_1006B07D0);
LABEL_71:
        v169 = *(v149 + 56);
        v170 = v195;
        *v146 = v130;
        v146[1] = v170;
        v146[2] = v196;
LABEL_77:
        swift_storeEnumTagMultiPayload();
        v177 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        sub_100027BE0(v169 + v177, v24, type metadata accessor for FMSelectedSection);
        swift_beginAccess();

        sub_100058530(v146, v169 + v177);
        swift_endAccess();
        sub_100058594(v24);

        swift_unknownObjectRelease();
        sub_10002A100(v24, type metadata accessor for FMSelectedSection);
        sub_10002A100(v146, type metadata accessor for FMSelectedSection);
      }

      v160 = v181;
      (*(v151 + 32))(v181, v123, v150);
      if (*(v130 + 2) != 1)
      {
        (*(v151 + 8))(v160, v150);
        goto LABEL_71;
      }

      sub_100091880(v195, v196);

      v161 = *(v149 + 56);
      (*(v151 + 16))(v146, v160, v150);
      swift_storeEnumTagMultiPayload();
      v162 = v151;
      v163 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_100027BE0(v161 + v163, v24, type metadata accessor for FMSelectedSection);
      swift_beginAccess();

      sub_100058530(v146, v161 + v163);
      swift_endAccess();
      sub_100058594(v24);

      swift_unknownObjectRelease();
      sub_10002A100(v24, type metadata accessor for FMSelectedSection);
      sub_10002A100(v146, type metadata accessor for FMSelectedSection);
      (*(v162 + 8))(v160, v150);
    }

    else
    {

      if (*(v122 + 2))
      {
        v152 = *(v122 + 4);
        v153 = *(v122 + 5);
        v154 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

        v155 = v180;
        sub_1000E512C(v152, v153, v180);

        v156 = v155;

        v157 = v203;
        v158 = v155;
        v159 = v204;
        if ((*(v203 + 48))(v158, 1, v204) == 1)
        {
          sub_100012DF0(v156, &unk_1006BBCE0);
        }

        else
        {
          v171 = v179;
          (*(v157 + 32))(v179, v156, v159);
          if (*(v122 + 2) == 1)
          {
            sub_100091880(v195, v196);

            v172 = v157;
            v173 = *(v154 + 56);
            v174 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
            (*(v172 + 16))(v146, v171, v159);
            (*(v205 + 56))(v146 + v174, 1, 1, v206);
            swift_storeEnumTagMultiPayload();
            v175 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
            swift_beginAccess();
            sub_100027BE0(v173 + v175, v24, type metadata accessor for FMSelectedSection);
            swift_beginAccess();

            sub_100058530(v146, v173 + v175);
            swift_endAccess();
            sub_100058594(v24);

            swift_unknownObjectRelease();
            sub_10002A100(v24, type metadata accessor for FMSelectedSection);
            sub_10002A100(v146, type metadata accessor for FMSelectedSection);
            (*(v172 + 8))(v171, v159);
          }

          (*(v157 + 8))(v171, v159);
        }

        v169 = *(v154 + 56);
        v176 = v195;
        *v146 = v122;
        v146[1] = v176;
        v146[2] = v196;
        goto LABEL_77;
      }

      swift_unknownObjectRelease();
      sub_100091880(v195, v196);
    }
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v81 = *v52;
      v82 = v52[1];
      v83 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

      v84 = v81;
      v69 = v190;
      sub_1000E512C(v84, v82, v190);

      v70 = v203;
      v71 = v204;
      if ((*(v203 + 48))(v69, 1, v204) == 1)
      {
        swift_unknownObjectRelease();
        v72 = &unk_1006BBCE0;
        return sub_100012DF0(v69, v72);
      }

      v139 = v182;
      (*(v70 + 32))(v182, v69, v71);
      v132 = *(v83 + 56);
      v140 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
      v133 = v139;
      (*(v70 + 16))(v26, v139, v71);
      (*(v205 + 56))(&v26[v140], 1, 1, v206);
      goto LABEL_56;
    }

    swift_unknownObjectRelease();
    v118 = type metadata accessor for FMAnnotationIdentifier;
    v119 = v52;
    return sub_10002A100(v119, v118);
  }

  if (!EnumCaseMultiPayload)
  {
    v65 = *v52;
    v66 = v52[1];
    v67 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

    v68 = v65;
    v69 = v194;
    sub_1000BD300(v68, v66, v194);

    v70 = v195;
    v71 = v196;
    if ((*(v195 + 48))(v69, 1, v196) == 1)
    {
      swift_unknownObjectRelease();
      v72 = &qword_1006B0050;
      return sub_100012DF0(v69, v72);
    }

    v131 = v185;
    (*(v70 + 32))(v185, v69, v71);
    v132 = *(v67 + 56);
    v133 = v131;
    (*(v70 + 16))(v26, v131, v71);
LABEL_56:
    swift_storeEnumTagMultiPayload();
    v141 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027BE0(v132 + v141, v24, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v26, v132 + v141);
    swift_endAccess();
    sub_100058594(v24);

    swift_unknownObjectRelease();
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    sub_10002A100(v26, type metadata accessor for FMSelectedSection);
    return (*(v70 + 8))(v133, v71);
  }

  v102 = *v52;
  v103 = v52[1];
  v104 = *(v207 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator);

  v105 = v192;
  sub_1000E5FF8(v102, v103, v192);

  v107 = v205;
  v106 = v206;
  if ((*(v205 + 48))(v105, 1, v206) == 1)
  {
    swift_unknownObjectRelease();
    return sub_100012DF0(v105, &qword_1006B07D0);
  }

  else
  {
    v142 = v183;
    (*(v107 + 32))(v183, v105, v106);
    v143 = *(v104 + 56);
    (*(v107 + 16))(v26, v142, v106);
    swift_storeEnumTagMultiPayload();
    v144 = v107;
    v145 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100027BE0(v143 + v145, v24, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v26, v143 + v145);
    swift_endAccess();
    sub_100058594(v24);

    swift_unknownObjectRelease();
    sub_10002A100(v24, type metadata accessor for FMSelectedSection);
    sub_10002A100(v26, type metadata accessor for FMSelectedSection);
    return (*(v144 + 8))(v142, v106);
  }
}