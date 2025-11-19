uint64_t sub_100001AD8()
{
  v0 = type metadata accessor for Logger();
  sub_1000067D0(v0, qword_10001A8F0);
  sub_100006744(v0, qword_10001A8F0);
  return Logger.init(subsystem:category:)();
}

void sub_100001B44()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for NotificationViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NotificationView();
    if (!swift_dynamicCastClass())
    {
LABEL_9:

      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setScrollEnabled:1];

      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 setZoomEnabled:1];

        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          [v7 setDelegate:v0];

          v9 = swift_unknownObjectWeakLoadStrong();
          if (v9)
          {
            v10 = v9;
            sub_1000069A0(0, &qword_10001A310);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v12 = String._bridgeToObjectiveC()();
            [v10 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v12];

            v13 = swift_unknownObjectWeakLoadStrong();
            if (v13)
            {
              v14 = v13;
              type metadata accessor for FMPersonAnnotationView();
              v15 = swift_getObjCClassFromMetadata();
              v16 = String._bridgeToObjectiveC()();
              [v14 registerClass:v15 forAnnotationViewWithReuseIdentifier:v16];

              v2 = v16;
              goto LABEL_9;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
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
}

void sub_100001D84(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NotificationViewController();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for NotificationView();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        __break(1u);
        return;
      }

      v6 = Strong;
      [Strong removeFromSuperview];

      v4 = v6;
    }
  }
}

void sub_100001E8C(void *a1)
{
  v2 = v1;
  v4 = [a1 request];
  v5 = [v4 content];

  v6 = [v5 userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000024C8(v7);

  if (v8)
  {
    v9 = [a1 request];
    v10 = [v9 content];

    v11 = [v10 body];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_defaultNotificationText];
    *v15 = v12;
    v15[1] = v14;

    if (*(v8 + 16) && (v16 = sub_10000719C(0x6F4C796150666D66, 0xEA00000000006461), (v17 & 1) != 0) && (sub_100006678(*(v8 + 56) + 32 * v16, v58), swift_dynamicCast()))
    {
      v18 = v57;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1000058D0(v8, v18 != 0);
    v20 = v19;
    if (v19)
    {
      [v19 coordinate];
      *(&v22 + 1) = v21;
    }

    else
    {
      v22 = 0uLL;
    }

    v27 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_fenceTriggerLocationCoordinates];
    *v27 = v22;
    v27[16] = v20 == 0;
    v28 = sub_10000280C(v8, v18 != 0);
    v56 = sub_100002AF0(v8, v18 != 0, a1);
    if (qword_10001A090 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006744(v29, qword_10001A8F0);
    v30 = v28;
    v31 = v20;
    v32 = v56;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    v55 = v30;
    v54 = v31;
    if (os_log_type_enabled(v33, v34))
    {
      v52 = v34;
      v35 = swift_slowAlloc();
      v58[0] = swift_slowAlloc();
      *v35 = 136315650;
      v36 = v31;
      sub_100006530(&qword_10001A2E0);
      v37 = String.init<A>(describing:)();
      v53 = v28;
      v39 = sub_100005328(v37, v38, v58);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v40 = v32;
      sub_100006530(&qword_10001A2E8);
      v41 = String.init<A>(describing:)();
      v43 = sub_100005328(v41, v42, v58);

      *(v35 + 14) = v43;
      v28 = v53;
      *(v35 + 22) = 2080;
      v44 = v30;
      v45 = String.init<A>(describing:)();
      v47 = sub_100005328(v45, v46, v58);

      *(v35 + 24) = v47;
      _os_log_impl(&_mh_execute_header, v33, v52, "fence trigger location [%s], contact [%s], fence location [%s] for notification", v35, 0x20u);
      swift_arrayDestroy();
    }

    v48 = [v2 view];
    if (v48)
    {
      v49 = v48;
      type metadata accessor for NotificationView();
      v50 = swift_dynamicCastClass();
      if (v50)
      {
        v51 = v50;
        sub_100002E60(a1, v50, v8, v20 != 0);

        sub_100005B60(v28);
        sub_100003C6C(v20, v56);
        sub_100005D90(v28, v20, v51);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_10001A090 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006744(v23, qword_10001A8F0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "User info is not available in notification", v26, 2u);
    }

    sub_100003FBC();
  }
}

unint64_t sub_1000024C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006530(&qword_10001A300);
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000068D4(*(a1 + 48) + 40 * v12, v27);
        sub_100006678(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000068D4(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100006678(v25 + 8, v20);
        sub_100006930(v24, &qword_10001A308);
        v21 = v18;
        sub_100006990(v20, v22);
        v13 = v21;
        sub_100006990(v22, v23);
        sub_100006990(v23, &v21);
        result = sub_10000719C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100006834(v10);
          result = sub_100006990(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_100006990(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100006930(v24, &qword_10001A308);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_10000280C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0xE800000000000000;
  }

  else
  {
    v2 = 0xED00006E6F697461;
  }

  if (!*(a1 + 16))
  {

LABEL_17:
    if (qword_10001A090 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100006744(v13, qword_10001A8F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Location is not available in notification", v16, 2u);
    }

    sub_100003FBC();
    return 0;
  }

  if (a2)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v4 = 0x636F4C65636E6566;
  }

  v5 = sub_10000719C(v4, v2);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100006678(*(a1 + 56) + 32 * v5, v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_1000069A0(0, &qword_10001A2D0);
  sub_1000069A0(0, &qword_10001A2D8);
  v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v8)
  {
    if (qword_10001A090 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006744(v9, qword_10001A8F0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error decoding fence locations data", v12, 2u);
    }

    sub_100003FBC();
    sub_10000677C(v19, v20);
    return 0;
  }

  v18 = v8;
  sub_10000677C(v19, v20);
  return v18;
}

id sub_100002AF0(uint64_t a1, char a2, id a3)
{
  if (a2)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    v4 = a3;
    v5 = sub_10000719C(0x6148646E65697266, 0xEC000000656C646ELL);
    if (v6)
    {
      sub_100006678(*(a1 + 56) + 32 * v5, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    a3 = v4;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v7 = [a3 request];
  v8 = [v7 content];

  v9 = [v8 categoryIdentifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 0xD000000000000010 && 0x8000000100010240 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v15 = [objc_allocWithZone(ACAccountStore) init];
  v16 = [v15 aa_primaryAppleAccount];

  if (v16)
  {
    v17 = [v16 username];

    if (v17)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v17 = &type metadata for String;
    }

    else
    {
      v16 = 0;
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0;
  }

  sub_100006930(&v27, &qword_10001A2C8);
  *&v27 = v16;
  *(&v27 + 1) = v19;
  *&v28 = 0;
  *(&v28 + 1) = v17;
LABEL_21:
  sub_1000066D4(&v27, v25);
  if (!v26)
  {
    sub_100006930(&v27, &qword_10001A2C8);
    v24 = v25;
LABEL_32:
    sub_100006930(v24, &qword_10001A2C8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = &v27;
    goto LABEL_32;
  }

  v20 = dispatch thunk of FMFContactsDataController.searchInStore(handle:keysToFetch:)();

  if (!v20)
  {
LABEL_37:
    v23 = 0;
    goto LABEL_38;
  }

  if (v20 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_26:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
LABEL_29:
    v23 = v22;

LABEL_38:
    sub_100006930(&v27, &qword_10001A2C8);
    return v23;
  }

  __break(1u);
  return result;
}

void sub_100002E60(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v88 = a3;
  v86 = a4;
  v90 = a2;
  v87 = a1;
  v4 = type metadata accessor for PersonNameComponents();
  v84 = *(v4 - 8);
  v85 = v4;
  (__chkstk_darwin)();
  v83 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006530(&qword_10001A2B0);
  (__chkstk_darwin)();
  v7 = &v82 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (__chkstk_darwin)();
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v82 - v13;
  v15 = type metadata accessor for TimeZone();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v16 + 8))(v18, v15);
  v21 = v87;
  [v19 setTimeZone:isa];

  v91 = v19;
  [v19 setTimeStyle:1];
  v22 = [v21 request];
  v23 = [v22 content];

  v24 = [v23 date];
  if (v24)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = *(v9 + 32);
    v25(v7, v12, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v25(v14, v7, v8);
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    v26 = [v21 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_100006930(v7, &qword_10001A2B0);
    }
  }

  v27 = Date._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v14, v8);
  v28 = v91;
  v29 = [v91 stringFromDate:v27];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = [v21 request];
  v34 = [v33 content];

  v35 = [v34 categoryIdentifier];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = v88;
  if (*(v88 + 16) && (v40 = sub_10000719C(0x6F4C796150666D66, 0xEA00000000006461), (v41 & 1) != 0) && (sub_100006678(*(v39 + 56) + 32 * v40, v93), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v92;
    v43 = sub_100002AF0(v39, v92 != 0, v21);
    if (v42)
    {

LABEL_26:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v45 = Strong;
      v72 = [v21 request];
      v73 = [v72 content];

      v51 = [v73 body];
      if (!v51)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v51 = String._bridgeToObjectiveC()();
      }

      [v45 setText:v51];
LABEL_30:

      v74 = swift_unknownObjectWeakLoadStrong();
      if (v74)
      {
        v75 = v74;

        [v75 sizeToFit];

        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    if ((v86 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v43 = sub_100002AF0(v39, 0, v21);
    if ((v86 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v36 == 0xD000000000000010 && 0x8000000100010240 == v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v89 = v43;
    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v45 = v44;
    v46 = [objc_opt_self() mainBundle];
    v94._object = 0xE000000000000000;
    v47._countAndFlagsBits = 0xD00000000000002BLL;
    v47._object = 0x80000001000102E0;
    v48.value._object = 0x8000000100010290;
    v48.value._countAndFlagsBits = 0xD000000000000012;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v94);

    sub_100006530(&qword_10001A2B8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_10000F660;
    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100006624();
    *(v50 + 32) = v30;
    *(v50 + 40) = v32;

    String.init(format:_:)();

    v51 = String._bridgeToObjectiveC()();

    [v45 setText:v51];
    v28 = v91;
    v43 = v89;
    goto LABEL_30;
  }

  if (v43)
  {
    v52 = v43;
    v53 = v83;
    PersonNameComponents.init()();
    if ([v52 isKeyAvailable:CNContactNicknameKey])
    {
      v54 = [v52 nickname];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.nickname.setter();
    }

    if ([v52 isKeyAvailable:CNContactGivenNameKey])
    {
      v55 = [v52 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.setter();
    }

    if ([v52 isKeyAvailable:CNContactFamilyNameKey])
    {
      v56 = [v52 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.familyName.setter();
    }

    v89 = v30;
    v57 = objc_opt_self();
    v58 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v59 = [v57 localizedStringFromPersonNameComponents:v58 style:1 options:0];

    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v61;

    (*(v84 + 8))(v53, v85);
    v63 = swift_unknownObjectWeakLoadStrong();
    if (!v63)
    {
      goto LABEL_38;
    }

    v45 = v63;
    v64 = [objc_opt_self() mainBundle];
    v95._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0xD00000000000002DLL;
    v65._object = 0x80000001000102B0;
    v66.value._object = 0x8000000100010290;
    v66.value._countAndFlagsBits = 0xD000000000000012;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v95._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, v66, v64, v67, v95);

    sub_100006530(&qword_10001A2B8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10000F650;
    *(v68 + 56) = &type metadata for String;
    v69 = sub_100006624();
    *(v68 + 32) = v60;
    *(v68 + 40) = v62;
    *(v68 + 96) = &type metadata for String;
    *(v68 + 104) = v69;
    v70 = v89;
    *(v68 + 64) = v69;
    *(v68 + 72) = v70;
    *(v68 + 80) = v32;

    String.init(format:_:)();

    v51 = String._bridgeToObjectiveC()();

    [v45 setText:v51];
    goto LABEL_34;
  }

  v76 = swift_unknownObjectWeakLoadStrong();
  if (v76)
  {
    v45 = v76;
    v77 = [objc_opt_self() mainBundle];
    v96._object = 0xE000000000000000;
    v78._countAndFlagsBits = 0xD00000000000002ELL;
    v78._object = 0x8000000100010260;
    v79.value._object = 0x8000000100010290;
    v79.value._countAndFlagsBits = 0xD000000000000012;
    v80._countAndFlagsBits = 0;
    v80._object = 0xE000000000000000;
    v96._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v96);

    sub_100006530(&qword_10001A2B8);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_10000F660;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = sub_100006624();
    *(v81 + 32) = v30;
    *(v81 + 40) = v32;

    String.init(format:_:)();

    v51 = String._bridgeToObjectiveC()();

    [v45 setText:v51];
    v43 = 0;
LABEL_34:
    v28 = v91;
    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
}

void sub_100003ABC(unint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    return;
  }

  if (a1)
  {
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v13 = a1;
      v8 = a3;
      v9 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v8;
      v10 = v9;
      a1 = v13;
      if (v10)
      {
LABEL_5:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = a3;
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v3 + 16))
          {
            __break(1u);
            return;
          }

          v4 = a3;
          v5 = *(a1 + 32);
        }

        v6 = v5;
        v11 = [v5 name];

        v7 = v11;
        a3 = v4;
        if (v11)
        {
          goto LABEL_10;
        }
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_10:
  v12 = v7;
  [a3 setTitle:v7];
}

uint64_t sub_100003BC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000069A0(0, &qword_10001A2F8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_100003C6C(void *a1, uint64_t a2)
{
  v5 = sub_100006530(&qword_10001A2A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  if (a1)
  {
    v8 = *(v2 + OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_monogrammer);
    if (a2)
    {
      if (!v8)
      {
        v13 = a1;
        v12 = 0;
LABEL_8:
        v14 = v12;
        [a1 coordinate];
        v16 = v15;
        v18 = v17;
        [a1 horizontalAccuracy];
        v20 = v19;
        v21 = type metadata accessor for FMFFriend();
        (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
        v22 = objc_allocWithZone(type metadata accessor for FMPersonAnnotation());
        v23 = sub_100008408(v7, v12, 0, v16, v18, v20);

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v25 = Strong;
          [Strong addAnnotation:v23];

          [a1 coordinate];
          v27 = v26;
          v29 = v28;
          [a1 horizontalAccuracy];
          v31 = [objc_opt_self() circleWithCenterCoordinate:v27 radius:{v29, v30}];
          v32 = swift_unknownObjectWeakLoadStrong();
          if (v32)
          {
            v33 = v32;
            v34 = v31;
            [v33 addOverlay:v34];

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v9 = a1;
      v10 = [v8 monogramForContact:a2];
    }

    else
    {
      v11 = a1;
      v10 = [v8 silhouetteMonogram];
    }

    v12 = v10;
    goto LABEL_8;
  }
}

void sub_100003EE8(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setRegion:0 animated:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100003F78(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100003FBC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000069A0(0, &qword_10001A278);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100006510;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003F78;
  aBlock[3] = &unk_100014BC0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100004F14(&qword_10001A280, &type metadata accessor for DispatchWorkItemFlags);
  sub_100006530(&qword_10001A288);
  sub_100006578();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_100004280(char *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    return;
  }

  v22 = v2;
  type metadata accessor for NotificationView();
  if (swift_dynamicCastClass())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setTranslatesAutoresizingMaskIntoConstraints:0];

      sub_100006530(&qword_10001A298);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_10000F670;
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 widthAnchor];

        v9 = [v8 constraintEqualToConstant:0.0];
        *(v5 + 32) = v9;
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          v12 = objc_opt_self();
          v13 = [v11 heightAnchor];

          v14 = [v13 constraintEqualToConstant:0.0];
          *(v5 + 40) = v14;
          sub_1000069A0(0, &qword_10001A2A0);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v12 activateConstraints:isa];

          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            if (*&a1[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_defaultNotificationText + 8])
            {

              v18 = String._bridgeToObjectiveC()();
            }

            else
            {
              v18 = 0;
            }

            [v17 setText:v18];

            v20 = swift_unknownObjectWeakLoadStrong();
            if (v20)
            {
              v21 = v20;
              [v20 sizeToFit];

              v19 = v21;
              goto LABEL_14;
            }

LABEL_21:
            __break(1u);
            return;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v19 = v22;
LABEL_14:
}

id sub_100004540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_monogrammer;
  *&v4[v7] = [objc_allocWithZone(CNMonogrammer) initWithStyle:0 diameter:128.0];
  v8 = OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_contactsDataController;
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();
  *&v4[v8] = FMFContactsDataController.init(isSnapshotMode:)();
  v9 = &v4[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_fenceTriggerLocationCoordinates];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v4[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_defaultNotificationText];
  *v10 = 0;
  *(v10 + 1) = 0;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for NotificationViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_1000046BC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_monogrammer;
  *&v2[v4] = [objc_allocWithZone(CNMonogrammer) initWithStyle:0 diameter:128.0];
  v5 = OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_contactsDataController;
  type metadata accessor for FMFContactsDataController();
  swift_allocObject();
  *&v2[v5] = FMFContactsDataController.init(isSnapshotMode:)();
  v6 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_fenceTriggerLocationCoordinates];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_defaultNotificationText];
  v8 = type metadata accessor for NotificationViewController();
  *v7 = 0;
  *(v7 + 1) = 0;
  v11.receiver = v2;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1000047D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100004978(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000049E0(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100004A34(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100004A8C@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_100004AC0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004B38(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004BB8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004BFC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100004C38()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004C8C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100004D10()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100004D9C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004DC8()
{
  sub_100004F14(&qword_10001A208, type metadata accessor for TraitKey);
  sub_100004F14(&qword_10001A210, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004F14(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100004FA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_100004FB4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100004FC0()
{
  sub_100004F14(&qword_10001A1F0, type metadata accessor for Weight);
  sub_100004F14(&qword_10001A1F8, type metadata accessor for Weight);
  sub_1000052D4();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005118@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100005160()
{
  sub_100004F14(&qword_10001A358, type metadata accessor for AttributeName);
  sub_100004F14(&qword_10001A360, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_100005224()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100005260(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_1000052D4()
{
  result = qword_10001A200;
  if (!qword_10001A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A200);
  }

  return result;
}

unint64_t sub_100005328(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000053F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006678(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006834(v11);
  return v7;
}

unint64_t sub_1000053F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100005500(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100005500(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000554C(a1, a2);
  sub_10000567C(&off_100014AA0);
  return v3;
}

char *sub_10000554C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005768(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005768(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10000567C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000057DC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100005768(uint64_t a1, uint64_t a2)
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

  sub_100006530(&qword_10001A2F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000057DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006530(&qword_10001A2F0);
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

uint64_t sub_1000058D0(uint64_t a1, char a2)
{
  result = 0;
  if ((a2 & 1) == 0)
  {
    if (*(a1 + 16) && (v4 = sub_10000719C(0xD000000000000014, 0x8000000100010360), (v5 & 1) != 0) && (sub_100006678(*(a1 + 56) + 32 * v4, v18), (swift_dynamicCast() & 1) != 0))
    {
      sub_1000069A0(0, &qword_10001A2D0);
      sub_1000069A0(0, &qword_10001A2D8);
      v6 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      if (v6)
      {
        v15 = v6;
        sub_10000677C(v16, v17);
        return v15;
      }

      if (qword_10001A090 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100006744(v7, qword_10001A8F0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Error decoding fence trigger location data", v10, 2u);
      }

      sub_10000677C(v16, v17);
    }

    else
    {
      if (qword_10001A090 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006744(v11, qword_10001A8F0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Trigger location is not available in notification", v14, 2u);
      }
    }

    return 0;
  }

  return result;
}

void sub_100005B60(void *a1)
{
  if (a1)
  {
    v2 = objc_allocWithZone(MKPointAnnotation);
    v3 = a1;
    v4 = [v2 init];
    [v3 coordinate];
    [v4 setCoordinate:?];
    v5 = [objc_allocWithZone(CLGeocoder) init];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v19[4] = sub_1000068CC;
    v19[5] = v6;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_100003BC8;
    v19[3] = &unk_100014C60;
    v7 = _Block_copy(v19);
    v8 = v4;

    [v5 reverseGeocodeLocation:v3 completionHandler:v7];
    _Block_release(v7);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      [Strong addAnnotation:v8];

      [v3 coordinate];
      v12 = v11;
      v14 = v13;
      [v3 horizontalAccuracy];
      v16 = [objc_opt_self() circleWithCenterCoordinate:v12 radius:{v14, v15}];
      v17 = swift_unknownObjectWeakLoadStrong();
      if (v17)
      {
        v18 = v17;
        [v17 addOverlay:v16];

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

void *sub_100005D90(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v54 = v10;
    [a1 coordinate];
    latitude = v14;
    longitude = v16;
    [a1 horizontalAccuracy];
    v19 = v18 * 5.0;
    if (a2)
    {
      v20 = a1;
      v21 = a2;
      [v21 distanceFromLocation:v20];
      v23 = v22;
      [v20 horizontalAccuracy];
      if (v23 <= v24)
      {
      }

      else
      {
        [v20 coordinate];
        v26 = v25;
        [v21 coordinate];
        v28 = (v26 + v27) * 0.5;
        [v20 coordinate];
        v30 = v29;
        [v21 coordinate];
        v32 = CLLocationCoordinate2DMake(v28, (v30 + v31) * 0.5);
        latitude = v32.latitude;
        longitude = v32.longitude;
        [v20 distanceFromLocation:v21];
        v34 = v33;

        v19 = v34 + v34;
      }
    }

    v10 = v54;
  }

  else
  {
    latitude = 0.0;
    v19 = 2000.0;
    longitude = 0.0;
  }

  v56.latitude = latitude;
  v56.longitude = longitude;
  v57 = MKCoordinateRegionMakeWithDistance(v56, v19, v19);
  v35 = v57.center.latitude;
  v36 = v57.center.longitude;
  latitudeDelta = v57.span.latitudeDelta;
  longitudeDelta = v57.span.longitudeDelta;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v40 = result;
    [result regionThatFits:{v35, v36, latitudeDelta, longitudeDelta}];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_1000069A0(0, &qword_10001A278);
    v49 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    v50[2] = a3;
    v50[3] = v42;
    v50[4] = v44;
    v50[5] = v46;
    v50[6] = v48;
    aBlock[4] = sub_1000068BC;
    aBlock[5] = v50;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003F78;
    aBlock[3] = &unk_100014C10;
    v51 = _Block_copy(aBlock);
    v52 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004F14(&qword_10001A280, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006530(&qword_10001A288);
    sub_100006578();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006204(void *a1, uint64_t a2)
{
  type metadata accessor for FMPersonAnnotation();
  if (swift_dynamicCastClass())
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [a1 dequeueReusableAnnotationViewWithIdentifier:v4];

    result = 0;
    if (!v5)
    {
      return result;
    }

    type metadata accessor for FMPersonAnnotationView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {

      return 0;
    }

    v8 = v7;
    [v7 setSelected:1 animated:0];
  }

  else
  {
    v9 = objc_allocWithZone(MKMarkerAnnotationView);
    v10 = String._bridgeToObjectiveC()();
    v8 = [v9 initWithAnnotation:a2 reuseIdentifier:v10];
  }

  return v8;
}

id sub_100006328(uint64_t a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MKCircleRenderer);
    swift_unknownObjectRetain();
    v6 = [v5 initWithCircle:v4];
    [v4 coordinate];
    v8 = v1 + OBJC_IVAR____TtC26FindMyNotificationsContent26NotificationViewController_fenceTriggerLocationCoordinates;
    if (*(v8 + 16) & 1) != 0 || v7 != *v8 || ([v4 coordinate], (*(v8 + 16)) || v9 != *(v8 + 8))
    {
      v12 = objc_opt_self();
      v13 = v6;
      v10 = [v12 systemRedColor];
    }

    else
    {
      v10 = [objc_opt_self() systemBlueColor];
      v11 = v6;
    }

    [v6 setFillColor:v10];

    v14 = v6;
    [v14 setAlpha:0.2];

    swift_unknownObjectRelease();
    return v14;
  }

  else
  {
    v16 = objc_allocWithZone(MKOverlayRenderer);

    return [v16 initWithOverlay:a1];
  }
}

uint64_t sub_1000064D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006530(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006578()
{
  result = qword_10001A290;
  if (!qword_10001A290)
  {
    sub_1000065DC(&qword_10001A288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A290);
  }

  return result;
}

uint64_t sub_1000065DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100006624()
{
  result = qword_10001A2C0;
  if (!qword_10001A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A2C0);
  }

  return result;
}

uint64_t sub_100006678(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000066D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006530(&qword_10001A2C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006744(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000677C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_1000067D0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006834(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006884()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100006930(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006530(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_100006990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000069A0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 sub_100006A10(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006A1C(uint64_t a1, int a2)
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

uint64_t sub_100006A3C(uint64_t result, int a2, int a3)
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

uint64_t sub_100006A88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006AA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100006BD0(uint64_t a1, int a2)
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

uint64_t sub_100006BF0(uint64_t result, int a2, int a3)
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

void sub_100006C2C(uint64_t a1, unint64_t *a2)
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

UIImage *sub_100006CBC(void *a1)
{
  v3 = [v1 imageWithRenderingMode:2];
  [v1 size];
  v5 = v4;
  v7 = v6;
  [v1 scale];
  v9 = v8;
  v15.width = v5;
  v15.height = v7;
  UIGraphicsBeginImageContextWithOptions(v15, 0, v9);
  [a1 set];
  [v1 size];
  [v3 drawInRect:{0.0, 0.0, v10, v11}];

  result = UIGraphicsGetImageFromCurrentImageContext();
  if (result)
  {
    v13 = result;
    v14 = result;

    UIGraphicsEndImageContext();
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100006DD0(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  sub_100006530(&qword_10001A3E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F660;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  *(inited + 64) = sub_100006530(&qword_10001A3F0);
  *(inited + 40) = a1;
  v5 = UIFontDescriptorTraitsAttribute;

  sub_100007550(inited);
  swift_setDeallocating();
  sub_100006930(inited + 32, &qword_10001A3F8);
  type metadata accessor for AttributeName(0);
  sub_10000775C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:0.0];
  return v8;
}

uint64_t sub_100006F54(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:a1];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(61);
    v7._object = 0x80000001000103B0;
    v7._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v7);
    type metadata accessor for SymbolicTraits(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1000070A4(void *a1)
{
  sub_100006530(&qword_10001A3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F660;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = *a1;
  v3 = UIFontWeightTrait;
  v4 = sub_100007460(inited);
  swift_setDeallocating();
  sub_100006930(inited + 32, &qword_10001A3D8);
  v5 = sub_100006DD0(v4);

  return v5;
}

unint64_t sub_10000719C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000072A4(a1, a2, v4);
}

unint64_t sub_100007214(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000735C(a1, v2);
}

unint64_t sub_1000072A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000735C(uint64_t a1, uint64_t a2)
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

unint64_t sub_100007460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006530(&qword_10001A408);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100007214(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100007550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006530(&qword_10001A400);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077B4(v4, &v11);
      v5 = v11;
      result = sub_100007214(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006990(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100007658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006530(&qword_10001A3E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10000719C(v5, v6);
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

unint64_t sub_10000775C()
{
  result = qword_10001A358;
  if (!qword_10001A358)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A358);
  }

  return result;
}

uint64_t sub_1000077B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006530(&qword_10001A3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100007824(double a1, double a2)
{
  v4 = a2 / 6.0;
  v11 = a1 * 0.448;
  v10 = a1 * 0.385;
  v5 = a2 / 3.0;
  v6 = [objc_allocWithZone(UIBezierPath) init];
  [v6 moveToPoint:{a1 + a1, a1}];
  v7 = a2 * 0.5;
  [v6 addCurveToPoint:v5 + a2 * 0.5 + a1 controlPoint1:a1 + a1 controlPoint2:a1 + a1];
  v8 = a1 + a1 + a2;
  [v6 addCurveToPoint:a1 controlPoint1:v8 controlPoint2:{v5 + a1, a1 + a1 + v5, v4 + a1, v8}];
  [v6 addCurveToPoint:a1 - (v7 + v5) controlPoint1:a1 + a1 controlPoint2:{a1 - v4, v8, a1 - v5, a1 + a1 + v5}];
  [v6 addCurveToPoint:0.0 controlPoint1:a1 controlPoint2:{v10, a1 + a1 - v5, 0.0, a1 * 1.5}];
  [v6 addCurveToPoint:a1 controlPoint1:0.0 controlPoint2:{0.0, v11, v11, 0.0}];
  [v6 addCurveToPoint:a1 + a1 controlPoint1:a1 controlPoint2:{a1 + a1 - v11, 0.0, a1 + a1, v11}];
  [v6 closePath];
  return v6;
}

void sub_1000079E8(uint64_t a1)
{
  v2 = sub_100006530(&qword_10001A460);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = type metadata accessor for FMFLocationSource();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v32 = &v32 - v12;
  v13 = sub_100006530(&qword_10001A2A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FMFFriend();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000091A8(a1, v15, &qword_10001A2A8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100006930(v15, &qword_10001A2A8);
LABEL_8:
    v30 = 0;
    goto LABEL_9;
  }

  (*(v17 + 32))(v19, v15, v16);
  FMFFriend.location.getter();
  v20 = type metadata accessor for FMFLocation();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    (*(v17 + 8))(v19, v16);
    sub_100006930(v4, &qword_10001A460);
    goto LABEL_8;
  }

  FMFLocation.locationSource.getter();
  (*(v21 + 8))(v4, v20);
  v22 = v32;
  v23 = v33;
  v24 = v11;
  v25 = v34;
  (*(v33 + 32))(v32, v24, v34);
  (*(v23 + 104))(v8, enum case for FMFLocationSource.stewie(_:), v25);
  sub_100009280(&qword_10001A468);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = *(v23 + 8);
  v26(v8, v25);
  if (v37 != v36)
  {
    v26(v22, v25);
    (*(v17 + 8))(v19, v16);
    goto LABEL_8;
  }

  v27 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:1];
  v28 = v22;
  v29 = String._bridgeToObjectiveC()();
  v30 = [objc_opt_self() _systemImageNamed:v29 withConfiguration:v27];

  v26(v28, v25);
  (*(v17 + 8))(v19, v16);
LABEL_9:
  v31 = *(v35 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage);
  *(v35 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage) = v30;
}

uint64_t sub_100007F08()
{
  sub_1000069A0(0, &qword_10001A458);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

id sub_100007F8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personImage);
  if (v3)
  {
    v4 = *(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personImage);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImage) init];
    v3 = 0;
  }

  *a2 = v4;
  return v3;
}

uint64_t sub_100008064@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FMFFriend();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100006530(&qword_10001A2A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personLock);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v11 + v13));
  sub_1000091A8(v11 + v12, v10, &qword_10001A2A8);
  os_unfair_lock_unlock((v11 + v13));

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_100006930(v10, &qword_10001A2A8);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_100006930(v10, &qword_10001A2A8);
    v14 = FMFFriend.identifier.getter();
    v15 = v16;
    (*(v5 + 8))(v7, v4);
  }

  *a2 = v14;
  a2[1] = v15;
  type metadata accessor for FMAnnotationIdentifier();
  return swift_storeEnumTagMultiPayload();
}

void sub_1000082CC()
{

  v1 = *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_updateQueue);
}

id sub_10000831C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008408(uint64_t a1, void *a2, int a3, double a4, double a5, double a6)
{
  v7 = *&v6;
  LODWORD(v104) = a3;
  v101 = a2;
  v108 = a1;
  v107 = a6;
  v97 = type metadata accessor for FMFLocationSource();
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v90 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100006530(&qword_10001A470);
  __chkstk_darwin(v96);
  v99 = &v88 - v12;
  v13 = sub_100006530(&qword_10001A2A8);
  v14 = __chkstk_darwin(v13 - 8);
  v106 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v91 = &v88 - v17;
  __chkstk_darwin(v16);
  v95 = &v88 - v18;
  v19 = sub_100006530(&qword_10001A460);
  v20 = __chkstk_darwin(v19 - 8);
  v89 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = &v88 - v22;
  v23 = sub_100006530(&qword_10001A478);
  v24 = __chkstk_darwin(v23 - 8);
  v93 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v94 = &v88 - v27;
  __chkstk_darwin(v26);
  v98 = &v88 - v28;
  v29 = type metadata accessor for FMFConfigValue();
  v102 = *(v29 - 8);
  v103 = v29;
  __chkstk_darwin(v29);
  v31 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v36 - 8);
  v37 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v37 - 8);
  v105 = OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personImage;
  *&v6[OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personImage] = 0;
  v38 = OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_updateQueue;
  sub_1000069A0(0, &qword_10001A278);
  static DispatchQoS.userInteractive.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  (*(v33 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v6[v38] = result;
  if ((*&v107 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (a6 < 9.22337204e18)
  {
    v41 = v102;
    v40 = v103;
    (*(v102 + 104))(v31, enum case for FMFConfigValue.inaccuracyRadiusThreshold(_:), v103);
    v110 = 0x7FFFFFFFFFFFFFFFLL;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v41 + 8))(v31, v40);
    v42 = v111;
    if (v104)
    {
      v43 = 0;
      v44 = v101;
LABEL_23:
      v71 = v42 < a6;
      v72 = v108;
      v73 = v106;
      sub_1000091A8(v108, v106, &qword_10001A2A8);
      sub_100006530(&qword_10001A480);
      v74 = swift_allocObject();
      *(v74 + ((*(*v74 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_100009210(v73, v74 + *(*v74 + class metadata base offset for ManagedBuffer + 16));
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_personLock) = v74;
      v75 = *(*&v7 + v105);
      *(*&v7 + v105) = v44;
      v76 = v44;

      v77 = (*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent18FMPersonAnnotation_tempCoordinate);
      *v77 = a4;
      v77[1] = a5;
      v78 = (*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title);
      *v78 = 0;
      v78[1] = 0;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_badgeImage) = 0;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage) = 0;
      v79 = (*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_fmClusterIdentifier);
      *v79 = 0;
      v79[1] = 0;
      v80 = (*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_coordinate);
      *v80 = a4;
      v80[1] = a5;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_horizontalAccuracy) = a6;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) = 0;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate) = v71;
      *(*&v7 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isLive) = v43 & 1;
      v81 = type metadata accessor for FMAnnotation();
      *&v109.receiver = v7;
      v109.super_class = v81;
      v82 = objc_msgSendSuper2(&v109, "init");
      sub_1000079E8(v72);

      sub_100006930(v72, &qword_10001A2A8);
      return v82;
    }

    v104 = v111;
    v107 = v7;
    v45 = v95;
    sub_1000091A8(v108, v95, &qword_10001A2A8);
    v46 = type metadata accessor for FMFFriend();
    v47 = *(v46 - 8);
    v103 = *(v47 + 48);
    v48 = v103(v45, 1, v46);
    v102 = v47;
    if (v48 == 1)
    {
      sub_100006930(v45, &qword_10001A2A8);
      v49 = 1;
      v50 = v98;
      v51 = v94;
    }

    else
    {
      v52 = v92;
      FMFFriend.location.getter();
      (*(v47 + 8))(v45, v46);
      v53 = type metadata accessor for FMFLocation();
      v54 = *(v53 - 8);
      v55 = (*(v54 + 48))(v52, 1, v53);
      v50 = v98;
      v51 = v94;
      if (v55 == 1)
      {
        sub_100006930(v52, &qword_10001A460);
        v49 = 1;
      }

      else
      {
        FMFLocation.locationSource.getter();
        (*(v54 + 8))(v52, v53);
        v49 = 0;
      }
    }

    v56 = v100;
    v57 = *(v100 + 56);
    v58 = v97;
    v57(v50, v49, 1, v97);
    (*(v56 + 104))(v51, enum case for FMFLocationSource.secureLive(_:), v58);
    v57(v51, 0, 1, v58);
    v59 = v58;
    v60 = *(v96 + 48);
    v61 = v99;
    sub_1000091A8(v50, v99, &qword_10001A478);
    v62 = v61;
    sub_1000091A8(v51, v61 + v60, &qword_10001A478);
    v63 = *(v56 + 48);
    if (v63(v61, 1, v59) == 1)
    {
      sub_100006930(v51, &qword_10001A478);
      v62 = v99;
      sub_100006930(v50, &qword_10001A478);
      if (v63(v62 + v60, 1, v59) == 1)
      {
        sub_100006930(v62, &qword_10001A478);
LABEL_19:
        v70 = v91;
        sub_1000091A8(v108, v91, &qword_10001A2A8);
        if (v103(v70, 1, v46) != 1)
        {
          v83 = v89;
          FMFFriend.location.getter();
          (*(v102 + 8))(v70, v46);
          v84 = type metadata accessor for FMFLocation();
          v85 = *(v84 - 8);
          v86 = (*(v85 + 48))(v83, 1, v84);
          v44 = v101;
          if (v86 == 1)
          {
            sub_100006930(v83, &qword_10001A460);
            v43 = 1;
          }

          else
          {
            v87 = FMFLocation.isLivePaused.getter();
            (*(v85 + 8))(v83, v84);
            v43 = v87 ^ 1;
          }

          v7 = v107;
          goto LABEL_22;
        }

        sub_100006930(v70, &qword_10001A2A8);
        v43 = 1;
LABEL_21:
        v7 = v107;
        v44 = v101;
LABEL_22:
        v42 = v104;
        goto LABEL_23;
      }
    }

    else
    {
      v64 = v93;
      sub_1000091A8(v61, v93, &qword_10001A478);
      if (v63(v61 + v60, 1, v59) != 1)
      {
        v65 = v100;
        v66 = v61 + v60;
        v67 = v90;
        (*(v100 + 32))(v90, v66, v59);
        sub_100009280(&qword_10001A488);
        v68 = dispatch thunk of static Equatable.== infix(_:_:)();
        v69 = *(v65 + 8);
        v69(v67, v59);
        sub_100006930(v51, &qword_10001A478);
        sub_100006930(v98, &qword_10001A478);
        v69(v93, v59);
        sub_100006930(v61, &qword_10001A478);
        if (v68)
        {
          goto LABEL_19;
        }

LABEL_17:
        v43 = 0;
        goto LABEL_21;
      }

      sub_100006930(v51, &qword_10001A478);
      sub_100006930(v50, &qword_10001A478);
      (*(v100 + 8))(v64, v59);
    }

    sub_100006930(v62, &qword_10001A470);
    goto LABEL_17;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000091A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006530(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006530(&qword_10001A2A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FMFLocationSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000092C4()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  v2 = [v1 CGColor];
  xmmword_10001A910 = xmmword_10000FDD0;
  *&qword_10001A920 = xmmword_10000FDE0;
  xmmword_10001A930 = xmmword_10000FDF0;
  unk_10001A940 = xmmword_10000FE00;
  __asm
  {
    FMOV            V0.2D, #20.0
    FMOV            V1.2D, #15.0
  }

  xmmword_10001A950 = _Q0;
  unk_10001A960 = _Q1;
  xmmword_10001A970 = xmmword_10000FE10;
  *&qword_10001A980 = vdupq_n_s64(0x3FD999999999999AuLL);
  __asm { FMOV            V0.2D, #30.0 }

  xmmword_10001A990 = result;
  unk_10001A9A0 = xmmword_10000FE20;
  qword_10001A9B0 = v2;
  byte_10001A9B8 = 1;
  return result;
}

id sub_1000093BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle;
  *&v3[v6] = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder;
  *&v3[v7] = [objc_allocWithZone(CALayer) init];
  v8 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage;
  *&v3[v8] = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer;
  *&v3[v9] = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage;
  *&v3[v10] = [objc_allocWithZone(CALayer) init];
  v11 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer;
  *&v3[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeBackground;
  *&v3[v12] = [objc_allocWithZone(CAShapeLayer) init];
  v13 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeImageLayer;
  *&v3[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer;
  *&v3[v14] = [objc_allocWithZone(CALayer) init];
  v15 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeBackground;
  *&v3[v15] = [objc_allocWithZone(CAShapeLayer) init];
  v16 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeCircleLayer;
  *&v3[v16] = [objc_allocWithZone(CAShapeLayer) init];
  v17 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeImageLayer;
  *&v3[v17] = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_accuracyLayer;
  *&v3[v18] = [objc_allocWithZone(CAShapeLayer) init];
  *&v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isShowingInaccurate] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCallout] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCenterCircle] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_applyShadowToBalloonTail] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated] = 0;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_canShowBalloon] = 1;
  v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isPulsating] = 0;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v23.receiver = v3;
  v23.super_class = type metadata accessor for FMMapAnnotationView();
  v20 = objc_msgSendSuper2(&v23, "initWithAnnotation:reuseIdentifier:", a1, v19);

  v21 = v20;
  sub_1000096D4();
  sub_10000B460();

  swift_unknownObjectRelease();
  return v21;
}

void sub_1000096D4()
{
  if (qword_10001A098 != -1)
  {
    swift_once();
  }

  v68 = xmmword_10001A990;
  *v69 = unk_10001A9A0;
  *&v69[9] = *(&qword_10001A9A8 + 1);
  v64 = xmmword_10001A950;
  v65 = unk_10001A960;
  v66 = xmmword_10001A970;
  v67 = *&qword_10001A980;
  v60 = xmmword_10001A910;
  v61 = *&qword_10001A920;
  v62 = xmmword_10001A930;
  v63 = unk_10001A940;
  v1 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
  v2 = byte_10001A9B8;
  v3 = xmmword_10001A910;
  v4 = *(&xmmword_10001A910 + 1) + *(&xmmword_10001A910 + 1);
  if (byte_10001A9B8)
  {
    v5 = *&xmmword_10001A910 - (*(&xmmword_10001A910 + 1) + *(&xmmword_10001A910 + 1));
  }

  else
  {
    v5 = *&xmmword_10001A910;
  }

  [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle] setFrame:{*(&xmmword_10001A910 + 1), *(&xmmword_10001A910 + 1), v5, v5}];
  [v1 setCornerRadius:v5 * 0.5];
  [v1 setAnchorPoint:{0.5, 0.5}];
  v6 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder];
  [v6 setCornerRadius:(v5 + -4.0) * 0.5];
  [v1 addSublayer:v6];
  [v1 addSublayer:*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage]];
  v7 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_accuracyLayer];
  v8 = objc_opt_self();
  v56 = v8;
  v9 = [v8 bezierPathWithOvalInRect:{0.0, 0.0, 0.0, 0.0}];
  v10 = [v9 CGPath];

  [v7 setPath:v10];
  [v7 setFillColor:*&v69[16]];
  if (v2)
  {
    v11 = *&v62 - v4;
  }

  else
  {
    v11 = *&v62;
  }

  v58 = sub_100007824(*&v62 * 0.5, *&v62 * 0.125);
  v12 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer];
  v13 = [v58 CGPath];
  [v12 setPath:v13];

  [v12 setFrame:{*(&v3 + 1) + *&v61 - (*&v3 - *&v61) * 0.5 + 1.0, v11 * -0.25 - *&v62 * 0.125 + -2.0, *&v62, *&v62}];
  [v12 setAnchorPoint:{0.5, 1.0}];
  v57 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage];
  [v12 addSublayer:?];
  [v1 bounds];
  sub_10000C038(v1, v14, v15, v16, v17);
  [v12 bounds];
  sub_10000C038(v12, v18, v19, v20, v21);
  v22 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeBackground];
  v23 = *(&v66 + 1);
  v24 = [v8 bezierPathWithOvalInRect:{0.0, 0.0, *&v65 + v23 + v23, *(&v65 + 1) + v23 + v23}];
  v25 = [v24 CGPath];

  [v22 setPath:v25];
  v26 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer];
  [v26 addSublayer:v22];
  v27 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeImageLayer];
  [v26 addSublayer:v27];
  [v26 setFrame:{*&v3 - *&v64, *&v3 - *(&v64 + 1), v65}];
  [v22 setFrame:{0.0, 0.0, v65}];
  [v27 setFrame:{v23, v23, v65}];
  v28 = [v0 layer];
  [v28 setFrame:{0.0, 0.0, *&v3, *&v3}];

  v29 = [v0 layer];
  [v29 addSublayer:v7];

  v30 = [v0 layer];
  [v30 addSublayer:v1];

  v31 = [v0 layer];
  [v31 addSublayer:v12];

  v32 = [v0 layer];
  [v32 addSublayer:v26];

  v33 = *v69;
  v34 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer];
  [v34 setFrame:{(*&v3 - *&v68) * 0.5 + *&v3 * *&v67, (*&v3 - *(&v68 + 1)) * 0.5 + *&v3 * *(&v67 + 1), v68}];
  v35 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeBackground];
  v36 = [v56 bezierPathWithOvalInRect:{0.0, 0.0, v68}];
  v37 = [v36 CGPath];

  [v35 setPath:v37];
  v38 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeCircleLayer];
  v39 = [v56 bezierPathWithOvalInRect:{0.0, 0.0, *&v68 - (v33 + v33), *(&v68 + 1) - (v33 + v33)}];
  v40 = [v39 CGPath];

  [v38 setPath:v40];
  [v35 setFrame:{0.0, 0.0, v68}];
  v41 = objc_opt_self();
  v42 = [v41 whiteColor];
  v43 = [v42 CGColor];

  [v35 setFillColor:v43];
  [v35 frame];
  [v38 setFrame:{sub_10000C19C(v44, v45, v46, v47, v33, v33)}];
  v48 = [v41 blackColor];
  v49 = [v48 CGColor];

  [v38 setFillColor:v49];
  v50 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeImageLayer];
  [v38 frame];
  [v50 setFrame:{sub_10000C19C(v51, v52, v53, v54, v33, v33)}];
  [v50 setContentsGravity:kCAGravityResizeAspectFill];
  [v34 addSublayer:v35];
  [v34 addSublayer:v38];
  [v34 addSublayer:v50];
  v55 = [v0 layer];
  [v55 addSublayer:v34];

  sub_100009F24(&v60);
  CATransform3DMakeScale(&v59, 0.0, 0.0, 1.0);
  [v12 setTransform:&v59];
  [v12 setOpacity:0.0];
  [v57 setOpacity:0.0];
  [v7 setOpacity:0.0];
}

id sub_100009F24(uint64_t a1)
{
  v3 = *(a1 + 168);
  v4 = *a1;
  v5 = *a1;
  if (v3)
  {
    v5 = v4 - (*(a1 + 8) + *(a1 + 8));
  }

  [*(v1 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage) setFrame:{(v5 - *(a1 + 24)) * 0.5, (v5 - *(a1 + 24)) * 0.5, *(a1 + 24), *(a1 + 24)}];
  if (v3)
  {
    v4 = v4 - (*(a1 + 8) + *(a1 + 8));
  }

  [*(v1 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder) setFrame:{2.0, 2.0, v4 + -4.0, v4 + -4.0}];
  v6 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage);
  v7 = (*(a1 + 32) - *(a1 + 40)) * 0.5;

  return [v6 setFrame:{v7, v7}];
}

void sub_10000A00C(void *a1)
{
  v2 = v1;
  if (qword_10001A098 != -1)
  {
    swift_once();
  }

  v35[8] = xmmword_10001A990;
  v36[0] = unk_10001A9A0;
  *(v36 + 9) = *(&qword_10001A9A8 + 1);
  v35[4] = xmmword_10001A950;
  v35[5] = unk_10001A960;
  v35[6] = xmmword_10001A970;
  v35[7] = *&qword_10001A980;
  v35[0] = xmmword_10001A910;
  v35[1] = *&qword_10001A920;
  v35[2] = xmmword_10001A930;
  v35[3] = unk_10001A940;
  v4 = sub_100009F24(v35);
  v5 = *&v1[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage];
  v6 = *((swift_isaMask & *a1) + 0x188);
  v7 = (v6)(v4);
  v8 = [v7 CGImage];

  [v5 setContents:v8];
  v9 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage];
  v10 = v6();
  v11 = [v10 CGImage];

  [v9 setContents:v11];
  v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_canShowBalloon] = 1;
  LODWORD(v12) = 1132068864;
  [v2 setDisplayPriority:v12];
  [v2 setCollisionMode:1];
  v13 = OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou;
  if (*(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) == 1 && ([v2 isSelected] & 1) != 0)
  {
    v14 = 0.65;
  }

  else
  {
    v14 = 0.5;
  }

  v15 = [v2 layer];
  [v15 setAnchorPoint:{0.5, v14}];

  [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder] setOpacity:0.0];
  v16 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
  [v16 setHidden:*(a1 + v13)];
  if (v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCenterCircle] == 1)
  {
    [v16 setHidden:1];
  }

  [v2 _updateFromMap];
  [v2 setUserInteractionEnabled:1];
  v17 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeImageLayer];
  v18 = *(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_badgeImage);
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemGrayColor];
  v22 = sub_100006CBC(v21);

  if (v22)
  {
    v23 = [v22 CGImage];

    if (v23)
    {
      type metadata accessor for CGImage(0);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();

      goto LABEL_14;
    }

LABEL_13:
    v22 = 0;
  }

LABEL_14:
  [v17 setContents:v22];
  swift_unknownObjectRelease();
  v24 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeImageLayer];
  v25 = *(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 whiteColor];
  v29 = sub_100006CBC(v28);

  if (!v29)
  {
    goto LABEL_19;
  }

  v30 = [v29 CGImage];

  if (v30)
  {
    type metadata accessor for CGImage(0);
    v29 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
LABEL_18:
    v29 = 0;
  }

LABEL_19:
  [v24 setContents:v29];
  swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isLive))
  {
    v31 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated];
    v32 = v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated];
    v33 = (*(a1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate) & 1) == 0;
    v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated] = v33;
    if (v32 == v33)
    {
      return;
    }
  }

  else
  {
    v31 = &v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated];
    v34 = v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated];
    v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated] = 0;
    if ((v34 & 1) == 0)
    {
      return;
    }
  }

  if (([v2 isSelected] & 1) != 0 && *v31 == 1)
  {
    sub_10000B908();
  }

  else
  {
    sub_10000BE24();
  }
}

id sub_10000A5C0()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v37, "_updateFromMap");
  result = [v0 annotation];
  if (result)
  {
    type metadata accessor for FMAnnotation();
    v2 = swift_dynamicCastClass();
    if (!v2)
    {
      return swift_unknownObjectRelease();
    }

    v3 = v2;
    if (qword_10001A098 != -1)
    {
      swift_once();
    }

    v4 = xmmword_10001A910;
    v5 = *&qword_10001A928;
    v6 = *&qword_10001A9A8;
    [v0 _pointsForDistance:*(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_horizontalAccuracy)];
    v8 = v7;
    v9 = v7 + v7;
    v10 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_accuracyLayer];
    v11 = [objc_opt_self() bezierPathWithOvalInRect:{1.0, 1.0, v9, v9}];
    v12 = [v11 CGPath];

    [v10 setPath:v12];
    [v10 setFrame:{*&v4 * 0.5 - v8, *&v4 * 0.5 - v8, v9, v9}];
    [v0 _mapPitchRadians];
    CATransform3DMakeRotation(&v36, v13, 1.0, 0.0, 0.0);
    [v10 setTransform:&v36];
    [v10 setZPosition:-100.0];
    v14 = OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate;
    if (v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isShowingInaccurate] == *(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate))
    {
      if (!*(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate))
      {
        goto LABEL_14;
      }
    }

    else
    {
      [v0 setSelected:objc_msgSend(v0 animated:{"isSelected"), 0}];
      if ((*(v3 + v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if ([v0 isSelected])
    {
      [v10 setLineWidth:v6];
      v15 = [objc_opt_self() whiteColor];
      v16 = [v15 CGColor];

      [v10 setStrokeColor:v16];
      v17 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer];
      [v17 setOpacity:0.0];
      v18 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage];
      [v18 setOpacity:0.0];
      v19 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
      [v19 setOpacity:0.0];
      if ((*(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) & 1) == 0)
      {
        LODWORD(v20) = 1.0;
        [v10 setOpacity:v20];
      }

      if (v9 >= *(&v4 + 1) + v5)
      {
        goto LABEL_18;
      }

      v21 = *&CATransform3DIdentity.m33;
      *&v36.m31 = *&CATransform3DIdentity.m31;
      *&v36.m33 = v21;
      v22 = *&CATransform3DIdentity.m43;
      *&v36.m41 = *&CATransform3DIdentity.m41;
      *&v36.m43 = v22;
      v23 = *&CATransform3DIdentity.m13;
      *&v36.m11 = *&CATransform3DIdentity.m11;
      *&v36.m13 = v23;
      v24 = *&CATransform3DIdentity.m23;
      *&v36.m21 = *&CATransform3DIdentity.m21;
      *&v36.m23 = v24;
      [v19 setTransform:&v36];
      CATransform3DMakeScale(&v36, 0.0, 0.0, 1.0);
      [v17 setTransform:&v36];
      v25 = 0.0;
      [v17 setOpacity:0.0];
      [v18 setOpacity:0.0];
      LODWORD(v26) = 1.0;
      [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage] setOpacity:v26];
      LODWORD(v27) = 1.0;
      [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder] setOpacity:v27];
      LODWORD(v28) = 1.0;
      [v19 setOpacity:v28];
LABEL_17:
      *&v29 = v25;
      [v10 setOpacity:v29];
LABEL_18:
      if (*(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_badgeImage))
      {
        *&v20 = 1.0;
      }

      else
      {
        *&v20 = 0.0;
      }

      [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer] setOpacity:v20];
      if (*(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage))
      {
        *&v35 = 1.0;
      }

      else
      {
        *&v35 = 0.0;
      }

      [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer] setOpacity:v35];
      return swift_unknownObjectRelease();
    }

LABEL_14:
    [v10 setLineWidth:0.0];
    v30 = [objc_opt_self() clearColor];
    v31 = [v30 CGColor];

    [v10 setStrokeColor:v31];
    [v10 setLineWidth:0.0];
    v25 = 1.0;
    LODWORD(v32) = 1.0;
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer] setOpacity:v32];
    LODWORD(v33) = 1.0;
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage] setOpacity:v33];
    LODWORD(v34) = 1.0;
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle] setOpacity:v34];
    if (![v0 isSelected] || *(v3 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) == 1)
    {
      v25 = 0.0;
    }

    goto LABEL_17;
  }

  return result;
}

void sub_10000ABA0(char a1, char a2)
{
  v62.receiver = v2;
  v62.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v62, "setSelected:animated:", a1 & 1, a2 & 1);
  if (qword_10001A098 != -1)
  {
    swift_once();
  }

  v6 = *(&xmmword_10001A910 + 1);
  v5 = *&xmmword_10001A910;
  v58 = *&qword_10001A920;
  v7 = *&xmmword_10001A930;
  v9 = *(&xmmword_10001A950 + 1);
  v8 = *&xmmword_10001A950;
  v10 = *&xmmword_10001A970;
  v11 = qword_10001A980;
  v12 = unk_10001A988;
  v13 = byte_10001A9B8;
  if ([v2 annotation])
  {
    type metadata accessor for FMAnnotation();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v15 = v14;
      v55 = v6;
      v16 = v8;
      v17 = v5;
      v18 = v10;
      v19 = v7;
      v20 = v9;
      v21 = v12;
      v22 = v11;
      if (*(v14 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) == 1 && ([v2 isSelected] & 1) != 0)
      {
        v23 = 0.65;
      }

      else
      {
        v23 = 0.5;
      }

      v24 = [v2 layer];
      [v24 setAnchorPoint:{0.5, v23}];

      v25 = *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate);
      swift_unknownObjectRelease();
      v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isShowingInaccurate] = v25;
      v11 = v22;
      v12 = v21;
      v9 = v20;
      v7 = v19;
      v10 = v18;
      v5 = v17;
      v8 = v16;
      v6 = v55;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v26 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer];
  if (a2)
  {
    sub_100006530(&qword_10001A568);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10000F660;
    *(v27 + 32) = 0x726F66736E617274;
    *(v27 + 40) = 0xE90000000000006DLL;
    *(v27 + 48) = [objc_opt_self() springAnimationWithDuration:0.638 dampingRatio:0.7 velocity:0.0];
    sub_100007658(v27);
    swift_setDeallocating();
    sub_10000C1B8(v27 + 32);
    swift_deallocClassInstance();
    sub_100006530(&qword_10001A578);
    v28.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setActions:v28.super.isa];

  if ((a1 & 1) != 0 && (v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isShowingInaccurate] & 1) == 0 && v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_canShowBalloon] == 1)
  {
    v29 = v5 - (v6 + v6);
    if (!v13)
    {
      v29 = v5;
    }

    v56 = *&v11;
    v30 = v58 / v29;
    v31 = (v29 - v58) * 0.5 + v6 * -4.0 + -1.0;
    CATransform3DMakeTranslation(&v61, v31, v31, 1.0);
    CATransform3DScale(&v60, &v61, v30, v30, 1.0);
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle] setTransform:&v60];
    v32 = *&CATransform3DIdentity.m33;
    *&v61.m31 = *&CATransform3DIdentity.m31;
    *&v61.m33 = v32;
    v33 = *&CATransform3DIdentity.m43;
    *&v61.m41 = *&CATransform3DIdentity.m41;
    *&v61.m43 = v33;
    v34 = *&CATransform3DIdentity.m13;
    *&v61.m11 = *&CATransform3DIdentity.m11;
    *&v61.m13 = v34;
    v35 = *&CATransform3DIdentity.m23;
    *&v61.m21 = *&CATransform3DIdentity.m21;
    *&v61.m23 = v35;
    [v26 setTransform:&v61];
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage] setOpacity:0.0];
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder] setOpacity:0.0];
    CATransform3DMakeTranslation(&v61, (v5 - v8) * 0.25, -((v5 - v9) * v10), 1.0);
    v36 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer];
    CATransform3DScale(&v60, &v61, v10, v10, 1.0);
    [v36 setTransform:&v60];
    LODWORD(v37) = 1.0;
    [v36 setOpacity:v37];
    CATransform3DMakeTranslation(&v61, (v7 - v5) * 0.5 * v56, (v7 - v5) * 0.5 * v12 - (v7 * 0.5 + v7 * 0.125 + v7 * 0.125), 1.0);
    v38 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer];
    [v38 setTransform:&v61];
  }

  else
  {
    v38 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
    v57 = *&CATransform3DIdentity.m33;
    *&v61.m31 = *&CATransform3DIdentity.m31;
    v59 = *&v61.m31;
    *&v61.m33 = v57;
    v52 = *&CATransform3DIdentity.m43;
    *&v61.m41 = *&CATransform3DIdentity.m41;
    *&v61.m43 = v52;
    v49 = *&CATransform3DIdentity.m13;
    *&v61.m11 = *&CATransform3DIdentity.m11;
    *&v61.m13 = v49;
    v46 = *&CATransform3DIdentity.m23;
    *&v61.m21 = *&CATransform3DIdentity.m21;
    *&v61.m23 = v46;
    [v38 setTransform:{&v61, v46, *&v61.m21, *&v61.m22, v49, *&v61.m11, *&v61.m12, v52, *&v61.m41, *&v61.m42}];
    CATransform3DMakeScale(&v61, 0.0, 0.0, 1.0);
    [v26 setTransform:&v61];
    [v26 setOpacity:0.0];
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage] setOpacity:0.0];
    v40 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer];
    *&v61.m31 = v59;
    *&v61.m33 = v57;
    *&v61.m41 = v54;
    *&v61.m43 = v53;
    *&v61.m11 = v51;
    *&v61.m13 = v50;
    *&v61.m21 = v48;
    *&v61.m23 = v47;
    [v40 setTransform:&v61];
    LODWORD(v41) = 1.0;
    [v40 setOpacity:v41];
    v42 = *&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer];
    *&v61.m31 = v59;
    *&v61.m33 = v57;
    *&v61.m41 = v54;
    *&v61.m43 = v53;
    *&v61.m11 = v51;
    *&v61.m13 = v50;
    *&v61.m21 = v48;
    *&v61.m23 = v47;
    [v42 setTransform:&v61];
    LODWORD(v43) = 1.0;
    [v42 setOpacity:v43];
    LODWORD(v44) = 1.0;
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage] setOpacity:v44];
    LODWORD(v45) = 1.0;
    [*&v2[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder] setOpacity:v45];
  }

  LODWORD(v39) = 1.0;
  [v38 setOpacity:v39];
  sub_10000B460();
}

char *sub_10000B270(uint64_t a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for FMMapAnnotationView();
  result = objc_msgSendSuper2(&v17, "hitTest:withEvent:", a1, a2, a3);
  if (!result)
  {
    v8 = [v3 rightCalloutAccessoryView];
    if (v8)
    {
      v9 = v8;
      [v3 convertPoint:v8 toCoordinateSpace:{a2, a3}];
      v10 = [v9 hitTest:a1 withEvent:?];

      return v10;
    }

    else
    {
      if (qword_10001A098 != -1)
      {
        swift_once();
      }

      v11 = *&xmmword_10001A910;
      [*&v3[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle] frame];
      if (sqrt((a2 - (v13 + v12 * 0.5)) * (a2 - (v13 + v12 * 0.5)) + (a3 - (v15 + v14 * 0.5)) * (a3 - (v15 + v14 * 0.5))) >= v11 * 0.5)
      {
        return 0;
      }

      else
      {
        v16 = v3;
        return v3;
      }
    }
  }

  return result;
}

void sub_10000B460()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = [v0 isSelected];
  v4 = objc_opt_self();
  if (v2 == 2)
  {
    v5 = &selRef_systemGray2Color;
    if (v3)
    {
      v5 = &selRef_systemGray3Color;
    }

    v6 = [v4 *v5];
    v7 = [v6 CGColor];

    v8 = [objc_opt_self() systemGray3Color];
    v9 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
    v10 = v7;
    [v9 setBackgroundColor:v10];
    v11 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder];
    v12 = [v8 CGColor];
    [v11 setBackgroundColor:v12];

    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer] setFillColor:v10];
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeBackground] setFillColor:v10];
  }

  else
  {
    v13 = &selRef_systemGray6Color;
    if (v3)
    {
      v13 = &selRef_whiteColor;
    }

    v14 = [v4 *v13];
    v15 = [v14 CGColor];

    v16 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle];
    v10 = v15;
    [v16 setBackgroundColor:v10];
    v17 = *&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder];
    v18 = [objc_opt_self() whiteColor];
    v19 = [v18 CGColor];

    [v17 setBackgroundColor:v19];
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer] setFillColor:v10];
    [*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeBackground] setFillColor:v10];
  }

  if ([v0 isSelected] && v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated] == 1)
  {

    sub_10000B908();
  }

  else
  {

    sub_10000BE24();
  }
}

void sub_10000B81C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FMMapAnnotationView();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  [v0 setUserInteractionEnabled:1];
  v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_canShowBalloon] = 1;
  v1 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated;
  v2 = v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated];
  v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated] = 0;
  if (v2 == 1)
  {
    if (([v0 isSelected] & 1) != 0 && v0[v1] == 1)
    {
      sub_10000B908();
    }

    else
    {
      sub_10000BE24();
    }
  }
}

void sub_10000B908()
{
  if (!*&v0[OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer])
  {
    v28 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer;
    v1 = [objc_opt_self() systemGreenColor];
    v2 = [v1 CGColor];

    if (qword_10001A098 != -1)
    {
      swift_once();
    }

    v3 = *&xmmword_10001A910;
    v4 = [objc_allocWithZone(CAShapeLayer) init];
    v5 = [objc_opt_self() bezierPathWithOvalInRect:{0.0, 0.0, v3, v3}];
    v6 = [v5 CGPath];

    [v4 setPath:v6];
    v7 = v4;
    [v7 setAnchorPoint:{0.5, 0.5}];
    [v7 setFrame:{0.0, -v3, v3, v3}];
    [v7 setFillColor:v2];
    [v7 setOpacity:0.0];

    v8 = String._bridgeToObjectiveC()();
    v9 = objc_opt_self();
    v10 = [v9 animationWithKeyPath:v8];

    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v10 setFromValue:isa];

    v12 = Double._bridgeToObjectiveC()().super.super.isa;
    [v10 setToValue:v12];

    v13 = v10;
    [v13 setRemovedOnCompletion:0];
    [v13 setDuration:1.5];
    v14 = String._bridgeToObjectiveC()();
    v15 = [v9 animationWithKeyPath:v14];

    v16 = Float._bridgeToObjectiveC()().super.super.isa;
    [v15 setFromValue:v16];

    v17 = Float._bridgeToObjectiveC()().super.super.isa;
    [v15 setToValue:v17];

    v18 = v15;
    [v18 setRemovedOnCompletion:0];
    [v18 setDuration:1.5];
    v19 = [objc_allocWithZone(CAAnimationGroup) init];
    sub_100006530(&qword_10001A298);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10000F670;
    *(v20 + 32) = v13;
    *(v20 + 40) = v18;
    sub_10000BFEC();
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setAnimations:v21];

    v22 = v19;
    [v22 setDuration:1.5];
    [v22 setRepeatCount:0.0];
    v23 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
    [v22 setTimingFunction:v23];

    [v22 setRemovedOnCompletion:0];
    LODWORD(v24) = 2139095040;
    [v22 setRepeatCount:v24];

    v25 = [v0 layer];
    [v25 insertSublayer:v7 atIndex:0];

    v26 = String._bridgeToObjectiveC()();
    [v7 addAnimation:v22 forKey:v26];

    v27 = *&v0[v28];
    *&v0[v28] = v7;
  }
}

void sub_10000BE24()
{
  v1 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer;
  v2 = *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer);
  if (v2)
  {
    [v2 removeAllAnimations];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 removeFromSuperlayer];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

id sub_10000BE88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMapAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000BFEC()
{
  result = qword_10001A560;
  if (!qword_10001A560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001A560);
  }

  return result;
}

id sub_10000C038(void *a1, double a2, double a3, double a4, double a5)
{
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v6 = CGPathCreateWithEllipseInRect(*&a2, &transform);
  [a1 setShadowPath:v6];

  v7 = [objc_opt_self() blackColor];
  v8 = [v7 CGColor];

  [a1 setShadowColor:v8];
  [a1 setShadowOffset:{0.0, 0.0}];
  LODWORD(v9) = 1045220557;
  [a1 setShadowOpacity:v9];
  if (qword_10001A098 != -1)
  {
    swift_once();
  }

  return [a1 setShadowRadius:*(&xmmword_10001A910 + 1)];
}

uint64_t sub_10000C1B8(uint64_t a1)
{
  v2 = sub_100006530(&qword_10001A570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000C220()
{
  v1 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerCircle;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerPlaceholder;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_centerImage;
  *(v0 + v3) = [objc_allocWithZone(CALayer) init];
  v4 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonLayer;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_balloonImage;
  *(v0 + v5) = [objc_allocWithZone(CALayer) init];
  v6 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeLayer;
  *(v0 + v6) = [objc_allocWithZone(CALayer) init];
  v7 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeBackground;
  *(v0 + v7) = [objc_allocWithZone(CAShapeLayer) init];
  v8 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_badgeImageLayer;
  *(v0 + v8) = [objc_allocWithZone(CALayer) init];
  v9 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeLayer;
  *(v0 + v9) = [objc_allocWithZone(CALayer) init];
  v10 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeBackground;
  *(v0 + v10) = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeCircleLayer;
  *(v0 + v11) = [objc_allocWithZone(CAShapeLayer) init];
  v12 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_stewieBadgeImageLayer;
  *(v0 + v12) = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_accuracyLayer;
  *(v0 + v13) = [objc_allocWithZone(CAShapeLayer) init];
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_pulseLayer) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isShowingInaccurate) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCallout) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_shouldHideCenterCircle) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_applyShadowToBalloonTail) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isLiveAnimated) = 0;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_canShowBalloon) = 1;
  *(v0 + OBJC_IVAR____TtC26FindMyNotificationsContent19FMMapAnnotationView_isPulsating) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10000C65C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000C824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPersonAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10000C880()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10000C938()
{
  v1 = *(v0 + 8);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      Hasher._combine(_:)(v2);
      return;
    }
  }

  Hasher._combine(_:)(4uLL);

  String.hash(into:)();
}

Swift::Int sub_10000C9E8()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000CA9C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        return v6 == 3;
      }

LABEL_10:
      if (v6 >= 4)
      {
        if (v4 != *a2 || v5 != v6)
        {
          return _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        return 1;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        return v6 == 1;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      return 0;
    }
  }

  return 1;
}

void sub_10000CB2C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMAnnotationIdentifier();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  sub_10000E2B8(v2, &v23 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    Hasher._combine(_:)(v16);
    String.hash(into:)();
LABEL_19:

    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      (*(v5 + 32))(v7, v14, v4);
      Hasher._combine(_:)(6uLL);
      sub_10000E57C(&qword_10001A848, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v5 + 8))(v7, v4);
      return;
    }

    Hasher._combine(_:)(5uLL);
    String.hash(into:)();

    String.hash(into:)();
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 6)
  {
    Hasher._combine(_:)(0);
    return;
  }

  v17 = *(*v14 + 24);
  v18 = *(*v14 + 32);
  Hasher._combine(_:)(7uLL);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v19 = 2;
      goto LABEL_27;
    }

    if (v17 == 3)
    {
      v19 = 3;
      goto LABEL_27;
    }
  }

  else
  {
    if (!v17)
    {
      v19 = 0;
      goto LABEL_27;
    }

    if (v17 == 1)
    {
      v19 = 1;
LABEL_27:
      Hasher._combine(_:)(v19);
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(4uLL);
  String.hash(into:)();
LABEL_28:
  Hasher._combine(_:)(*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v22 = *(v9 + 72);
    do
    {
      sub_10000E2B8(v21, v12);
      sub_10000CB2C(a1);
      sub_10000E25C(v12);
      v21 += v22;
      --v20;
    }

    while (v20);
  }
}

Swift::Int sub_10000CEE0()
{
  Hasher.init(_seed:)();
  sub_10000CB2C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000CF24()
{
  Hasher.init(_seed:)();
  sub_10000CB2C(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000D16C(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for FMAnnotationIdentifier();
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  sub_1000066D4(a1, v41);
  if (v42)
  {
    if (swift_dynamicCast())
    {
      v9 = v40;
      v10 = *(v1 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage);
      v11 = *(v40 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_stewieBadgeImage);
      if (v10)
      {
        if (!v11)
        {
          goto LABEL_35;
        }

        sub_1000069A0(0, &qword_10001A458);
        v12 = v11;
        v13 = v10;
        v14 = static NSObject.== infix(_:_:)();

        if ((v14 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v11)
      {
        goto LABEL_35;
      }

      v15 = v1;
      v16 = (*((swift_isaMask & *v1) + 0x190))();
      (*((swift_isaMask & *v9) + 0x190))(v16);
      v17 = sub_10000DBE4(v8, v6);
      sub_10000E25C(v6);
      sub_10000E25C(v8);
      if ((v17 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_1000069A0(0, &unk_10001A760);
      v18 = (*((swift_isaMask & *v15) + 0x188))();
      v19 = (*((swift_isaMask & *v9) + 0x188))();
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_35;
      }

      v21 = (*((swift_isaMask & *v15) + 0x198))();
      if ((v21 ^ (*((swift_isaMask & *v9) + 0x198))()))
      {
        goto LABEL_35;
      }

      [v15 coordinate];
      v23 = v22;
      [v9 coordinate];
      if (v23 != v24)
      {
        goto LABEL_35;
      }

      [v15 coordinate];
      v26 = v25;
      [v9 coordinate];
      if (v26 != v27 || *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_horizontalAccuracy) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_horizontalAccuracy))
      {
        goto LABEL_35;
      }

      v28 = *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_fmClusterIdentifier + 8);
      v29 = *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_fmClusterIdentifier + 8);
      if (v28 > 1)
      {
        if (v28 == 2)
        {
          if (v29 != 2)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        if (v28 == 3)
        {
          if (v29 != 3)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }

      else
      {
        if (!v28)
        {
          if (v29)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }

        if (v28 == 1)
        {
          if (v29 != 1)
          {
            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }

      if (v29 < 4 || (*(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_fmClusterIdentifier) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_fmClusterIdentifier) || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_32:
      if (*(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isInaccurate) || *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isLive) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isLive) || *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_isWithYou))
      {
        goto LABEL_35;
      }

      v32 = *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title + 8);
      v33 = *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title + 8);
      if (v32)
      {
        if (!v33 || (*(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title) != *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_title) || v32 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_45:
        v34 = *(v15 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_badgeImage);
        v35 = *(v9 + OBJC_IVAR____TtC26FindMyNotificationsContent12FMAnnotation_badgeImage);
        if (!v34)
        {
          v38 = v35;

          if (!v35)
          {
            v30 = 1;
            return v30 & 1;
          }

          goto LABEL_36;
        }

        if (v35)
        {
          sub_1000069A0(0, &qword_10001A458);
          v36 = v35;
          v37 = v34;
          v30 = static NSObject.== infix(_:_:)();

          return v30 & 1;
        }

        goto LABEL_35;
      }

      if (!v33)
      {
        goto LABEL_45;
      }

LABEL_35:
    }
  }

  else
  {
    sub_100006930(v41, &qword_10001A2C8);
  }

LABEL_36:
  v30 = 0;
  return v30 & 1;
}

id sub_10000D7BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D888(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000D8A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D8F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10000D950(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_10000D984()
{
  result = qword_10001A750;
  if (!qword_10001A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001A750);
  }

  return result;
}

uint64_t sub_10000D9E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FMAnnotation();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for FMAnnotationIdentifier()
{
  result = qword_10001A7E8;
  if (!qword_10001A7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10000E2B8(v13, v10);
        sub_10000E2B8(v14, v7);
        v16 = sub_10000DBE4(v10, v7);
        sub_10000E25C(v7);
        sub_10000E25C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10000DBE4(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for UUID();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMAnnotationIdentifier();
  v6 = __chkstk_darwin(v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v66 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = (&v66 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = (&v66 - v16);
  v18 = __chkstk_darwin(v15);
  v20 = (&v66 - v19);
  v21 = __chkstk_darwin(v18);
  v23 = (&v66 - v22);
  __chkstk_darwin(v21);
  v25 = (&v66 - v24);
  v26 = sub_100006530(&qword_10001A770);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = (&v66 + *(v27 + 56) - v28);
  v30 = a1;
  v31 = &v66 - v28;
  sub_10000E2B8(v30, &v66 - v28);
  sub_10000E2B8(v69, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_10000E2B8(v31, v20);
        v44 = *v20;
        v43 = v20[1];
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          if (v44 != *v29 || v43 != v29[1])
          {
LABEL_34:
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v52 & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_45;
          }

          goto LABEL_44;
        }
      }

      else
      {
        sub_10000E2B8(v31, v17);
        v34 = *v17;
        v33 = v17[1];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_30;
        }
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_10000E2B8(v31, v23);
      v34 = *v23;
      v33 = v23[1];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_10000E2B8(v31, v25);
      v34 = *v25;
      v33 = v25[1];
      if (!swift_getEnumCaseMultiPayload())
      {
LABEL_30:
        if (v34 != *v29 || v33 != v29[1])
        {
          goto LABEL_34;
        }

LABEL_44:

LABEL_45:
        v59 = v31;
        goto LABEL_46;
      }
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_10000E2B8(v31, v14);
      v36 = *v14;
      v35 = v14[1];
      v38 = v14[2];
      v37 = v14[3];
      if (swift_getEnumCaseMultiPayload() != 4)
      {

LABEL_39:

        goto LABEL_40;
      }

      v40 = v29[2];
      v39 = v29[3];
      if (v36 == *v29 && v35 == v29[1])
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {

LABEL_72:
          sub_10000E25C(v31);
          goto LABEL_41;
        }
      }

      if (v38 == v40 && v37 == v39)
      {

        v59 = v31;
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_72;
        }

        v59 = v31;
      }

LABEL_46:
      sub_10000E25C(v59);
      v57 = 1;
      return v57 & 1;
    }

    sub_10000E2B8(v31, v11);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      (*(v67 + 8))(v11, v68);
      goto LABEL_40;
    }

    v54 = v66;
    v53 = v67;
    v55 = v29;
    v56 = v68;
    (*(v67 + 32))(v66, v55, v68);
    v57 = static UUID.== infix(_:_:)();
    v58 = *(v53 + 8);
    v58(v54, v56);
    v58(v11, v56);
LABEL_75:
    sub_10000E25C(v31);
    return v57 & 1;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_10000E2B8(v31, v8);
    v47 = *(*v8 + 16);
    v46 = *(*v8 + 24);
    v48 = *(*v8 + 32);
    if (swift_getEnumCaseMultiPayload() != 6)
    {

      goto LABEL_40;
    }

    v49 = *(*v29 + 24);
    v50 = *(*v29 + 32);
    if (v46 > 1)
    {
      if (v46 != 2)
      {
        if (v46 == 3)
        {
          if (v49 == 3)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }

LABEL_63:
        if (v49 >= 4)
        {
          if (v47 == *(*v29 + 16) && v46 == v49)
          {
            goto LABEL_74;
          }

          v63 = *(*v29 + 32);
          v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v50 = v63;
          if (v64)
          {
            goto LABEL_74;
          }
        }

        goto LABEL_71;
      }

      if (v49 != 2)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v46)
      {
        if (v46 == 1)
        {
          if (v49 == 1)
          {
            goto LABEL_74;
          }

LABEL_71:

          goto LABEL_72;
        }

        goto LABEL_63;
      }

      if (v49)
      {
        goto LABEL_71;
      }
    }

LABEL_74:
    v57 = sub_10000DA70(v48, v50);

    goto LABEL_75;
  }

  if (swift_getEnumCaseMultiPayload() == 7)
  {
    goto LABEL_45;
  }

LABEL_40:
  sub_100006930(v31, &qword_10001A770);
LABEL_41:
  v57 = 0;
  return v57 & 1;
}

uint64_t sub_10000E25C(uint64_t a1)
{
  v2 = type metadata accessor for FMAnnotationIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E2B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAnnotationIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E31C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_10000E380()
{
  sub_10000E42C();
  if (v0 <= 0x3F)
  {
    sub_10000E45C();
    if (v1 <= 0x3F)
    {
      sub_10000E48C();
      if (v2 <= 0x3F)
      {
        sub_10000E4EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void *sub_10000E42C()
{
  result = qword_10001A7F8;
  if (!qword_10001A7F8)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10001A7F8);
  }

  return result;
}

void *sub_10000E45C()
{
  result = qword_10001A800;
  if (!qword_10001A800)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10001A800);
  }

  return result;
}

void sub_10000E48C()
{
  if (!qword_10001A808)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10001A808);
    }
  }
}

void sub_10000E4EC()
{
  if (!qword_10001A810)
  {
    v0 = type metadata accessor for UUID();
    if (!v1)
    {
      atomic_store(v0, &qword_10001A810);
    }
  }
}

uint64_t sub_10000E57C(unint64_t *a1, void (*a2)(uint64_t))
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

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}