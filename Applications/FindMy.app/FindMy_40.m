uint64_t sub_10043B64C()
{
  v0 = [objc_opt_self() mainScreen];
  v1 = [v0 traitCollection];

  v2 = [v1 userInterfaceStyle];
  v3 = objc_opt_self();
  v4 = &selRef_systemGray2Color;
  if (v2 != 2)
  {
    v4 = &selRef_quaternaryLabelColor;
  }

  v5 = [v3 *v4];
  sub_10007EBC0(&qword_1006AFC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552EE0;
  *(v6 + 32) = [objc_opt_self() whiteColor];
  *(v6 + 40) = v5;
  return v6;
}

unint64_t sub_10043B754(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v6 = objc_opt_self();
  v7 = [v6 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
  if (!(a3 >> 62))
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = [objc_opt_self() labelColor];
    goto LABEL_10;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = __OFSUB__(v8, 1);
  result = v8 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_20:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
    if (a3 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13 < 2)
    {
      v16 = v7;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000905C(0, &qword_1006C0000);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v15 = [v6 configurationWithPaletteColors:isa];

      v16 = [v7 configurationByApplyingConfiguration:v15];
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();
        v19 = [objc_opt_self() _systemImageNamed:v18 withConfiguration:v17];
        v20 = v17;
LABEL_18:

        return v19;
      }
    }

    v18 = [v6 configurationWithWeight:7];
    v20 = [v16 configurationByApplyingConfiguration:v18];
    v17 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() _systemImageNamed:v17 withConfiguration:v20];

    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a3 + 8 * result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t sub_10043B9F4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = (&v25 - v8);
  sub_1000D5AC4(a1, &v25 - v8);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000D59F8(v9);
    v10 = sub_100438664();
    v12 = v11;
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = sub_100438D78();
        v14 = sub_1004398B4(v13);
      }

      else
      {
        v14 = sub_10043B64C();
      }
    }

    else
    {
      v14 = sub_100438D78();
    }

    v19 = v14;
    sub_1000D5AC4(a1, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 0x1F)
    {
      if (EnumCaseMultiPayload)
      {
        v24 = type metadata accessor for FMFindingTechnology();
        (*(*(v24 - 8) + 8))(v7, v24);
        v21 = 1;
        goto LABEL_13;
      }

      sub_1000D59F8(v7);
    }

    v21 = 0;
LABEL_13:
    v15 = sub_10043B754(v10, v12, v19, v21);
    v18 = v22;

    goto LABEL_14;
  }

  v15 = *v9;
  v16 = v9[1];
  v17 = v9[2];
  if (!a2)
  {

    v18 = v16;
    goto LABEL_14;
  }

  if (a2 != 1)
  {

    if (!v17)
    {
      return v15;
    }

    v18 = v15;
    v15 = v17;
    goto LABEL_14;
  }

  if (v16)
  {
    v18 = v15;
    v15 = v16;
LABEL_14:
  }

  return v15;
}

unint64_t sub_10043BBEC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  sub_1000D5AC4(a1, &v39 - v8);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000D59F8(v9);
    v10 = sub_100438664();
    v9 = v11;
    sub_10007EBC0(&qword_1006AFC30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1005528C0;
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = sub_100438D78();
        v14 = sub_1004398B4(v13);
      }

      else
      {
        v14 = sub_10043B64C();
      }
    }

    else
    {
      v14 = sub_100438D78();
    }

    if (v14 >> 62)
    {
      a2 = v14;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v14 = a2;
      if (v23)
      {
LABEL_21:
        v20 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v20)
        {
          __break(1u);
        }

        else if ((v14 & 0xC000000000000001) == 0)
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v24 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v25 = *(v14 + 8 * v24 + 32);
LABEL_26:
            v26 = v25;

            goto LABEL_47;
          }

          __break(1u);
          goto LABEL_58;
        }

        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_26;
      }
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_21;
      }
    }

    v26 = [objc_opt_self() labelColor];
LABEL_47:
    *(v12 + 32) = v26;
    sub_1000D5AC4(a1, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) >= 0x1F)
    {
      if (EnumCaseMultiPayload)
      {
        v37 = type metadata accessor for FMFindingTechnology();
        (*(*(v37 - 8) + 8))(v7, v37);
        v36 = 1;
        goto LABEL_49;
      }

      sub_1000D59F8(v7);
    }

    v36 = 0;
LABEL_49:
    v7 = sub_10043B754(v10, v9, v12, v36);

    return v7;
  }

  v7 = *v9;
  v15 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!a2)
  {
    result = sub_100438D78();
    if (result >> 62)
    {
      v38 = result;
      v27 = _CocoaArrayWrapper.endIndex.getter();
      result = v38;
      if (!v27)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_34;
      }
    }

    v20 = __OFSUB__(v27, 1);
    v28 = v27 - 1;
    if (v20)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((result & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v28 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v29 = *(result + 8 * v28 + 32);
    }

LABEL_34:

    return v7;
  }

  if (a2 == 1)
  {
    a2 = *(v9 + 8);
    if (!v15)
    {
      v16 = v7;
      a2 = v7;
    }

    v9 = v15;
    v17 = sub_100438D78();
    v18 = sub_1004398B4(v17);
    v10 = v18;
    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
LABEL_59:

        return a2;
      }

      goto LABEL_11;
    }

LABEL_58:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      goto LABEL_59;
    }

LABEL_11:
    v20 = __OFSUB__(v19, 1);
    result = v19 - 1;
    if (!v20)
    {
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v22 = *(v10 + 8 * result + 32);
LABEL_16:

            return a2;
          }

          goto LABEL_74;
        }

        __break(1u);
        goto LABEL_72;
      }

LABEL_68:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_66;
  }

  a2 = *(v9 + 16);
  if (!v12)
  {
    v30 = v7;
    a2 = v7;
  }

  v31 = v12;
  v32 = sub_10043B64C();
  v9 = v32;
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_39;
    }

LABEL_63:

    return a2;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  if (!v33)
  {
    goto LABEL_63;
  }

LABEL_39:
  v20 = __OFSUB__(v33, 1);
  result = v33 - 1;
  if (v20)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_44;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v9 + 8 * result + 32);
LABEL_44:

    return a2;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10043C104(uint64_t a1)
{
  v2 = sub_10007EBC0(&unk_1006C0028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10043C16C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10007EC08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10043C1C0(double a1, double a2)
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

id sub_10043C384(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {

    return sub_10043C1C0(a1, a2);
  }

  else
  {
    v14 = a2 / 6.0;
    v5 = a1 + a1;
    v16 = a1 * 0.448;
    v15 = a1 * 0.385;
    v6 = a3 * 0.5;
    v7 = a2 / 3.0;
    v10 = [objc_allocWithZone(UIBezierPath) init];
    [v10 moveToPoint:{v5 + a3, a1}];
    [v10 addCurveToPoint:? controlPoint1:? controlPoint2:?];
    v11 = v6 + a1;
    v12 = a2 * 0.5;
    [v10 addLineToPoint:{v7 + a2 * 0.5 + v11, v5}];
    v13 = v5 + a2;
    [v10 addCurveToPoint:v11 controlPoint1:v13 controlPoint2:{v7 + v11, v5 + v7, v14 + v11, v13}];
    [v10 addCurveToPoint:v11 - (v12 + v7) controlPoint1:v5 controlPoint2:{v11 - v14, v13, v11 - v7, v5 + v7}];
    [v10 addLineToPoint:{a1, v5}];
    [v10 addCurveToPoint:0.0 controlPoint1:a1 controlPoint2:{v15, v5 - v7, 0.0, a1 * 1.5}];
    [v10 addCurveToPoint:a1 controlPoint1:0.0 controlPoint2:{0.0, v16, v16, 0.0}];
    [v10 addLineToPoint:{v7 + v12 + a1 + a3, 0.0}];
    [v10 addCurveToPoint:v5 + a3 controlPoint1:a1 controlPoint2:{v5 + a3 - v16, 0.0, v5 + a3, v16}];
    [v10 closePath];
    return v10;
  }
}

uint64_t sub_10043C5F4(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 == 3;
  if (*a1 != 2)
  {
    v3 = 0;
  }

  v4 = 0xCu >> (v2 & 0xF);
  if (!*a1)
  {
    LOBYTE(v4) = 1;
  }

  if (*a1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return v5 & 1;
}

uint64_t sub_10043C634(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = v2 != 3;
  if (*a2 != 2)
  {
    v3 = 1;
  }

  v4 = 3u >> (v2 & 0xF);
  if (!*a2)
  {
    LOBYTE(v4) = 0;
  }

  if (*a2 > 1u)
  {
    LOBYTE(v4) = v3;
  }

  return v4 & 1;
}

uint64_t sub_10043C674(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 != 3;
  if (*a1 != 2)
  {
    v3 = 1;
  }

  v4 = 3u >> (v2 & 0xF);
  if (!*a1)
  {
    LOBYTE(v4) = 0;
  }

  if (*a1 <= 1u)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  return v5 & 1;
}

uint64_t sub_10043C6B4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = v2 == 3;
  if (*a2 != 2)
  {
    v3 = 0;
  }

  v4 = 0xCu >> (v2 & 0xF);
  if (!*a2)
  {
    LOBYTE(v4) = 1;
  }

  if (*a2 > 1u)
  {
    LOBYTE(v4) = v3;
  }

  return v4 & 1;
}

uint64_t sub_10043C6F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_100244650(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043C718()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10044B1A0(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);

    if (v7 >= 4)
    {
      sub_100091880(v6, v7);
      return 0;
    }

    else
    {
      return 1u >> (v7 & 0xF);
    }
  }

  else
  {
    sub_10044B208(v3, type metadata accessor for FMSelectedSection);
    return 1;
  }
}

void sub_10043C84C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32[0] = v8;
    *v7 = 136315138;
    if (v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100005B4C(v9, v10, v32);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemsListDataSource: updatesEnabled: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled;
  if (v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled] == 1)
  {
    v13 = *&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator];
    v14 = *(v13 + 24);
    type metadata accessor for FMDevicesSubscription();
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10063F240;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 16);

    os_unfair_lock_lock((v16 + 24));
    sub_10000E7C0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    *&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_deviceSubscription] = v15;

    v17 = *(v13 + 40);
    v18 = sub_1003CB6AC(v4, v17);

    *&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_locationSubscription] = v18;

    LOBYTE(v16) = v4[v12] ^ a1;

    v19 = FMIPManager.items.getter();

    v20 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v21 = *(*(v13 + 24) + 64);
    v22 = v20;

    sub_10043EC28(v19, v21, v20, v16 & 1);

    return;
  }

  if (*&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_deviceSubscription])
  {
    v23 = *(*(*&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator] + 24) + 16);

    os_unfair_lock_lock((v23 + 24));
    sub_10008FB6C((v23 + 16));
    os_unfair_lock_unlock((v23 + 24));
  }

  v24 = *&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_locationSubscription];
  if (v24)
  {
    v25 = *(*&v4[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator] + 40);
    v26 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v27 = v25;
    v28 = sub_1003CEA10(&v25[v26], v24);
    v29 = *&v25[v26];
    if (v29 >> 62)
    {
      v31 = v28;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v31;
      if (v30 >= v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v28)
      {
LABEL_20:
        sub_1003CEA44(v28, v30);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

char *sub_10043CCC8(uint64_t a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v40 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_deviceSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_locationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_itemAger;
  type metadata accessor for FMItemAger();
  swift_allocObject();
  *&v2[v8] = sub_10002BE70();
  v35 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updateQueue;
  sub_10000905C(0, &qword_1006AEDC0);
  static DispatchQoS.utility.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_10000A588(&unk_1006B0620, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10007EBC0(&unk_1006AEDD0);
  sub_100004044(&unk_1006B0630, &unk_1006AEDD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  *&v2[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delayedUpdateWorkItem] = 0;
  v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_isRemovingCell] = 0;
  v9 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableViewFooter;
  *&v2[v9] = [objc_allocWithZone(type metadata accessor for FMListFooterActionsView()) init];
  v10 = &v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource__listTitle];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled] = 0;
  v11 = &v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_listSubtitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMItemsListDataSource: initialized", v15, 2u);
  }

  v16 = v39;
  *&v3[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator] = v40;
  *&v3[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView] = v16;
  v17 = type metadata accessor for FMItemsListDataSource();
  v41.receiver = v3;
  v41.super_class = v17;

  v18 = v16;
  v19 = objc_msgSendSuper2(&v41, "init");
  v20 = v18;
  v21 = v19;
  v22 = String._bridgeToObjectiveC()();
  [v20 setAccessibilityIdentifier:v22];

  sub_10007EBC0(&qword_1006C01C8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = String._bridgeToObjectiveC()();
  [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v24];

  sub_10007EBC0(&unk_1006C01D0);
  v25 = swift_getObjCClassFromMetadata();
  v26 = String._bridgeToObjectiveC()();
  [v20 registerClass:v25 forCellReuseIdentifier:v26];

  *(*&v21[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_itemAger] + 24) = &off_10063F200;
  swift_unknownObjectWeakAssign();

  sub_100442ACC();
  sub_10043FD04();
  v27 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator;

  v28 = FMIPManager.items.getter();

  v29 = *&v21[v27];
  v30 = *(*(v29 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v31 = *(*(v29 + 24) + 64);
  v32 = v30;

  sub_10043EC28(v28, v31, v30, 0);

  return v21;
}

unint64_t sub_10043D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for FMItemCellViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = *(v11 + 16);
  v37 = a1;
  v15(v13, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = v2;
    v21 = v20;
    v38 = v20;
    *v19 = 136315138;
    v22 = IndexPath.debugDescription.getter();
    v34 = v9;
    v23 = v7;
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_100005B4C(v22, v25, &v38);
    v7 = v23;
    v9 = v34;

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemsListDataSource: item for indexPath %s", v19, 0xCu);
    sub_100006060(v21);
    v3 = v35;

    a2 = v36;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel;
  if (result >= *(*(v3 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel) + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v3 + v28);
  if (result >= *(v29 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = *(v29 + 16 * result + 40);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < *(v30 + 16))
  {
    sub_10044B1A0(v30 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v9, type metadata accessor for FMItemCellViewModel);

    v31 = *(v9 + 2);
    v32 = *(v9 + 3);

    sub_1000E5FF8(v31, v32, a2);

    return sub_10044B208(v9, type metadata accessor for FMItemCellViewModel);
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10043D6B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);

  v2 = FMIPManager.items.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = *(*(v1 + 24) + 64);
  v5 = v3;

  sub_10043EC28(v2, v4, v3, 0);
}

unint64_t sub_10043D7D8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v92 = a1;
  v5 = type metadata accessor for FMItemCellViewModel();
  v91 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v89 = v7;
  v90 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v81 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v85 = v12;
  v86 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v81 - v13;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);
  v83 = *(v10 + 16);
  v84 = v10 + 16;
  v83(v14, a2, v9);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v87 = v10;
  v88 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v81 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v82 = a2;
    v22 = v2;
    v23 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    v24 = IndexPath.debugDescription.getter();
    v26 = v25;
    (*(v10 + 8))(v14, v9);
    v27 = sub_100005B4C(v24, v26, aBlock);

    *(v20 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemsListDataSource: cellForRowAt %s", v20, 0xCu);
    sub_100006060(v23);
    v3 = v22;
    a2 = v82;
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  result = IndexPath.section.getter();
  v29 = v93;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v30 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel;
  v31 = *(v3 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
  if (result >= *(v31 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v32 = *(v31 + 16 * result + 40);

  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (result >= *(v32 + 16))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v33 = *(v91 + 80);
  sub_10044B1A0(v32 + ((v33 + 32) & ~v33) + v91[9] * result, v29, type metadata accessor for FMItemCellViewModel);

  v34 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v36 = [v92 dequeueReusableCellWithIdentifier:v34 forIndexPath:isa];

  sub_10007EBC0(&qword_1006C01C8);
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
LABEL_25:

    v38 = [objc_allocWithZone(UITableViewCell) init];
    sub_10044B208(v29, type metadata accessor for FMItemCellViewModel);
    return v38;
  }

  v38 = v37;
  v39 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v40 = *(v3 + v30);
  if (result >= *(v40 + 16))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v39 >= *(*(v40 + 16 * result + 40) + 16))
  {
    goto LABEL_25;
  }

  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v41 = *(v3 + v30);
  v42 = *(v41 + 16);
  if (result >= v42)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v82 = v3;
  v92 = ~v33;
  v43 = *(*(v41 + 16 * result + 40) + 16);
  v44 = qword_1006B72C8;
  v38[qword_1006B72C8] = 0;
  v45 = [v38 containerView];
  [v45 bounds];
  v47 = v46;

  v48 = qword_1006B72B8;
  v49 = *&v38[qword_1006B72B8];
  v50 = sub_10052B310();
  sub_100046EA0();
  [v49 setFrame:{v50, v47 + -1.0, v51, 1.0}];
  v52 = IndexPath.row.getter() == v43 - 1;
  v53 = qword_1006B72D0;
  v38[qword_1006B72D0] = v52;
  [*&v38[v48] setHidden:?];
  v54 = [v38 containerView];
  [v54 bounds];
  v56 = v55;

  v57 = *&v38[v48];
  v58 = sub_10052B310();
  sub_100046EA0();
  [v57 setFrame:{v58, v56 + -1.0, v59, 1.0}];
  v60 = IndexPath.section.getter() == v42 - 1;
  v38[qword_1006B72E0] = v60;
  if (v60)
  {
    v61 = 0;
  }

  else
  {
    v61 = v38[v53];
  }

  if (v38[v44])
  {
    v62 = v61;
  }

  else
  {
    v62 = v38[v53];
  }

  [*&v38[v48] setHidden:v62];
  v91 = objc_opt_self();
  v63 = v93;
  v64 = v90;
  sub_10044B1A0(v93, v90, type metadata accessor for FMItemCellViewModel);
  v65 = (v33 + 24) & v92;
  v66 = swift_allocObject();
  *(v66 + 16) = v38;
  sub_10019AA14(v64, v66 + v65);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_10044B5DC;
  *(v67 + 24) = v66;
  aBlock[4] = sub_10000964C;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000095FC;
  aBlock[3] = &unk_10063F880;
  v68 = _Block_copy(aBlock);
  v69 = v36;

  [v91 performWithoutAnimation:v68];
  _Block_release(v68);
  sub_10044B208(v63, type metadata accessor for FMItemCellViewModel);
  LOBYTE(v68) = swift_isEscapingClosureAtFileLocation();

  if ((v68 & 1) == 0)
  {
    sub_10007EBC0(&unk_1006C01D0);
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      v72 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v73 = v86;
      v74 = v88;
      v83(v86, a2, v88);
      v75 = v87;
      v76 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v77 = swift_allocObject();
      *(v77 + 16) = v72;
      (*(v75 + 32))(v77 + v76, v73, v74);
      v78 = (v71 + *((swift_isaMask & *v71) + 0x198));
      v79 = *v78;
      *v78 = sub_10044B678;
      v78[1] = v77;
      v80 = v69;
      sub_10001835C(v79);
    }

    else
    {
    }

    return v38;
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_10043E138(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a1;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for FMItemCellViewModel();
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  sub_10044B1A0(a2, v16, type metadata accessor for FMItemCellViewModel);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v37 = a3;
    v23 = v22;
    v42 = v22;
    *v21 = 136315394;
    v38 = a4;
    v40 = v9;
    v24 = v8;
    v25 = v10;
    v26 = v7;
    v27 = *(v16 + 13);
    v28 = *(v16 + 14);

    sub_10044B208(v16, type metadata accessor for FMItemCellViewModel);
    v29 = sub_100005B4C(v27, v28, &v42);
    v7 = v26;
    v10 = v25;
    v8 = v24;

    *(v21 + 4) = v29;
    a4 = v38;
    *(v21 + 12) = 1024;
    v30 = v41;
    *(v21 + 14) = v41 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMItemsListDataSource: accept action for %s: %{BOOL}d", v21, 0x12u);
    sub_100006060(v23);

    v13 = v39;
  }

  else
  {

    sub_10044B208(v16, type metadata accessor for FMItemCellViewModel);
    v30 = v41;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (v30)
  {
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    (*(v8 + 16))(v10, a4, v7);
    type metadata accessor for MainActor();
    v33 = Strong;
    v34 = static MainActor.shared.getter();
    v35 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = v34;
    *(v36 + 3) = &protocol witness table for MainActor;
    *(v36 + 4) = v33;
    (*(v8 + 32))(&v36[v35], v10, v7);
    sub_100170C90(0, 0, v13, &unk_100561E40, v36);
  }

  else
  {
    sub_100445568();
  }
}

uint64_t sub_10043E71C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWallTime();
  v20 = *(v2 - 8);
  v21 = v2;
  v3 = __chkstk_darwin(v2);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v19 = &v17 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delayedUpdateWorkItem;
  if (*(a1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delayedUpdateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10044A504;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F3A8;
  _Block_copy(aBlock);
  v22 = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v9 = DispatchWorkItem.init(flags:block:)();

  *(a1 + v7) = v9;

  sub_10000905C(0, &qword_1006AEDC0);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = v18;
  static DispatchWallTime.now()();
  v12 = v19;
  + infix(_:_:)();
  v13 = *(v20 + 8);
  v14 = v11;
  v15 = v21;
  v13(v14, v21);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  return (v13)(v12, v15);
}

uint64_t sub_10043EA7C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator;
    v2 = result;

    v3 = FMIPManager.items.getter();

    v4 = *&v2[v1];
    v5 = *(*(v4 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v6 = *(*(v4 + 24) + 64);
    v7 = v5;

    sub_10043EC28(v3, v6, v5, 0);
  }

  return result;
}

uint64_t sub_10043EB64(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);

  v4 = FMIPManager.items.getter();

  v5 = *(*(v3 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v6 = *(*(v3 + 24) + 64);
  v7 = v5;

  sub_10043EC28(v4, v6, v5, a2);
}

void sub_10043EC28(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v51 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100005B14(v13, qword_1006D4630);
  v15 = a3;

  v52 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v50 = v15;

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v44 = v10;
    v21 = v20;
    aBlock[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = *(a1 + 16);

    *(v19 + 12) = 2080;
    v53 = a3;
    sub_10007EBC0(&qword_1006C0250);
    v22 = Optional.debugDescription.getter();
    v24 = v9;
    v25 = sub_100005B4C(v22, v23, aBlock);

    *(v19 + 14) = v25;
    v9 = v24;
    *(v19 + 22) = 1024;
    *(v19 + 24) = a4 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "FMItemsListDataSource: update items %ld, location: %s, forceUpdate: %{BOOL}d", v19, 0x1Cu);
    sub_100006060(v21);
    v10 = v44;

    v5 = v45;
  }

  else
  {
  }

  v26 = FMIPManager.isInitialized.getter();

  if ((v26 & 1) == 0)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "FMItemsListDataSource: devicesProvider is not initialized, hiding items";
      goto LABEL_13;
    }

LABEL_14:

    return;
  }

  if (v5[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled] != 1)
  {
    return;
  }

  if ([*&v5[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView] isEditing])
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "FMItemsListDataSource: Ignoring data source update due to editing mode";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v27, v28, v30, v29, 2u);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v31 = *&v5[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel];
  v32 = swift_allocObject();
  v33 = a4;
  v34 = v32;
  *(v32 + 16) = v5;
  *(v32 + 24) = a1;
  *(v32 + 32) = v51;
  *(v32 + 40) = a3;
  *(v32 + 48) = v31;
  v35 = v33 & 1;
  *(v32 + 56) = v33 & 1;
  if (*(a1 + 16) < 0xBuLL || (v33 & 1) != 0)
  {
    swift_bridgeObjectRetain_n();

    v42 = v50;
    v43 = v51;

    sub_10043F2A8(v5, a1, v43, a3, v31, v35);
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = sub_10044B588;
    *(v36 + 24) = v34;
    aBlock[4] = sub_100009624;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_10063F790;
    v37 = _Block_copy(aBlock);
    swift_retain_n();

    v38 = v50;

    v39 = v5;
    v40 = v46;
    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
    v41 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v10 + 8))(v41, v9);
    (*(v47 + 8))(v40, v49);
  }
}

uint64_t sub_10043F2A8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v54 = a6;
  v55 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v50 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchQoS();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004402F4(a2, a3, a4);
  v14 = v13;
  v15 = v13[2];
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v17 = 0;
    v18 = v13 + 5;
    do
    {
      if (v17 >= *(v14 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        swift_once();
LABEL_25:
        v31 = type metadata accessor for Logger();
        sub_100005B14(v31, qword_1006D4630);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          *(v34 + 4) = *(v14 + 16);

          *(v34 + 12) = 2048;
          *(v34 + 14) = *(v15 + 16);

          _os_log_impl(&_mh_execute_header, v32, v33, "FMItemsListDataSource: reloading table view new: %ld, old: %ld", v34, 0x16u);
        }

        else
        {
        }

        v35 = swift_allocObject();
        *(v35 + 16) = v14;
        *(v35 + 24) = a1;
        v36 = objc_opt_self();

        v37 = a1;
        v38 = [v36 currentThread];
        v39 = [v38 isMainThread];

        if (v39)
        {
          sub_10043F990(v14, v37);

          sub_100442ACC();
        }

        else
        {

          sub_10000905C(0, &qword_1006AEDC0);
          v40 = static OS_dispatch_queue.main.getter();
          v41 = swift_allocObject();
          v41[2] = sub_10044B59C;
          v41[3] = v35;
          v41[4] = v37;
          aBlock[4] = sub_10044B5A4;
          aBlock[5] = v41;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_10063F808;
          v42 = _Block_copy(aBlock);
          v43 = v37;

          v44 = v48;
          static DispatchQoS.unspecified.getter();
          v56 = _swiftEmptyArrayStorage;
          sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10007EBC0(&unk_1006B0640);
          sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
          v45 = v50;
          v46 = v53;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v42);

          (*(v52 + 8))(v45, v46);
          (*(v49 + 8))(v44, v51);
        }
      }

      v19 = *v18;
      v20 = *(*v18 + 16);
      v21 = v16[2];
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= v16[3] >> 1)
      {
        if (*(v19 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v16 = sub_10008BB7C(isUniquelyReferenced_nonNull_native, v24, 1, v16);
        if (*(v19 + 16))
        {
LABEL_15:
          v25 = (v16[3] >> 1) - v16[2];
          type metadata accessor for FMItemCellViewModel();
          if (v25 < v20)
          {
            goto LABEL_36;
          }

          swift_arrayInitWithCopy();

          if (v20)
          {
            v26 = v16[2];
            v27 = __OFADD__(v26, v20);
            v28 = v26 + v20;
            if (v27)
            {
              goto LABEL_37;
            }

            v16[2] = v28;
          }

          goto LABEL_4;
        }
      }

      if (v20)
      {
        goto LABEL_35;
      }

LABEL_4:
      ++v17;
      v18 += 2;
    }

    while (v15 != v17);
  }

  v29 = sub_10052A7E8(v16);

  sub_100036B80(v29);

  v15 = v55;
  if (sub_100244EFC(v14, v55) & 1) == 0 || (v54)
  {
    if (qword_1006AEBE0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }
}

void sub_10043F990(uint64_t a1, uint64_t a2)
{
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
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = Array.debugDescription.getter();
    v11 = sub_100005B4C(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemsListDataSource: model update with %s", v7, 0xCu);
    sub_100006060(v8);
  }

  *(a2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel) = a1;

  sub_100037FA8();
  sub_100440160();
  v12 = a2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(a2, &off_10063F158, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  sub_10043FB88();
}

void sub_10043FB88()
{
  v1 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel) + 16))
  {
    goto LABEL_4;
  }

  v4 = *(*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator) + 56);
  v5 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10044B1A0(v4 + v5, v3, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v6 = *(v3 + 1);
    v7 = *(v3 + 2);

    sub_100091880(v6, v7);
LABEL_4:
    [*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView) setTableFooterView:0];
    return;
  }

  sub_10044B208(v3, type metadata accessor for FMSelectedSection);
  [*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView) setTableFooterView:*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableViewFooter)];
  sub_10052AE74();
}

uint64_t sub_10043FD04()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v6, v7, "FMItemsListDataSource: updateListTitle", v8, 2u);
  }

  v9 = *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
  if (*(*(v9 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision))
  {
    goto LABEL_12;
  }

  v10 = *(v9 + 56);
  v11 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10044B1A0(v10 + v11, v4, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_10044B208(v4, type metadata accessor for FMSelectedSection);
    goto LABEL_12;
  }

  v12 = *(v4 + 1);
  v13 = *(v4 + 2);

  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        v15 = [objc_opt_self() mainBundle];
        v16 = 0xD000000000000012;
        v30 = 0x8000000100579A00;
        v17 = 0x8000000100599AE0;
        v18 = 0x80000001005799E0;
        v19 = 0xD000000000000018;
LABEL_13:
        v20 = 0xD000000000000013;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, *(&v18 - 1), v15, v21, *&v19);
        countAndFlagsBits = v22._countAndFlagsBits;
        object = v22._object;
LABEL_14:

        v25 = (v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource__listTitle);
        *v25 = countAndFlagsBits;
        v25[1] = object;
      }

LABEL_18:
      v15 = [objc_opt_self() mainBundle];
      v32._object = 0x8000000100579A00;
      v26._countAndFlagsBits = 0x41545F534D455449;
      v26._object = 0xEE00454D4F485F42;
      v27.value._object = 0x80000001005799E0;
      v32._countAndFlagsBits = 0xD000000000000018;
      v27.value._countAndFlagsBits = 0xD000000000000013;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v15, v28, v32);
      countAndFlagsBits = v29._countAndFlagsBits;
      object = v29._object;
      sub_100091880(v12, v13);
      goto LABEL_14;
    }

LABEL_12:
    v15 = [objc_opt_self() mainBundle];
    v30 = 0x8000000100579A00;
    v16 = 0x41545F534D455449;
    v18 = 0x80000001005799E0;
    v19 = 0xD000000000000018;
    v17 = 0xE900000000000042;
    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v15 = [objc_opt_self() mainBundle];
    v30 = 0x8000000100579A00;
    v17 = 0x8000000100599AC0;
    v18 = 0x80000001005799E0;
    v19 = 0xD000000000000018;
    v16 = 0xD000000000000013;
    goto LABEL_13;
  }

  if (v13 != 3)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_100440160()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
  v4 = (v3 + 40);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = *v4;
    v4 += 2;
    v7 = *(v6 + 16);
    v8 = __OFADD__(v2, v7);
    v2 += v7;
    if (v8)
    {
      __break(1u);
      break;
    }
  }

  v9 = [objc_opt_self() mainBundle];
  v21._object = 0x8000000100599A80;
  v10._object = 0x8000000100599A50;
  v21._countAndFlagsBits = 0xD000000000000034;
  v10._countAndFlagsBits = 0xD000000000000022;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v21);

  sub_10007EBC0(&unk_1006B20B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100552220;
  v13 = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10008EE84();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = String.init(format:_:)();
  v18 = v17;

  v19 = (v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_listSubtitle);
  *v19 = v16;
  v19[1] = v18;
}

void *sub_1004402F4(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a2;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v42 = &v42 - v11;
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v14 = *(a1 + 16);
  v52 = v3;
  v15 = _swiftEmptyArrayStorage;
  v51 = v7;
  if (v14)
  {
    v18 = *(v7 + 16);
    v16 = v7 + 16;
    v17 = v18;
    v19 = *(v16 + 56);
    v44 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v45 = v18;
    v20 = a1 + v44;
    v43 = (v16 - 8);
    v47 = a3;
    v48 = (v16 + 16);
    v46 = v16;
    do
    {
      v17(v13, v20, v6);
      if (sub_100441628(v13))
      {
        v21 = *v48;
        (*v48)(v50, v13, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10016704C(0, v15[2] + 1, 1);
          v15 = v53[0];
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          sub_10016704C(v23 > 1, v24 + 1, 1);
          v15 = v53[0];
        }

        v15[2] = v24 + 1;
        v21(v15 + v44 + v24 * v19, v50, v6);
        a3 = v47;
        v17 = v45;
      }

      else
      {
        (*v43)(v13, v6);
      }

      v20 += v19;
      --v14;
    }

    while (v14);
  }

  v53[0] = _swiftEmptyArrayStorage;
  v25 = v15[2];
  if (v25)
  {
    v26 = 0;
    v27 = v51;
    v28 = (v51 + 8);
    v29 = v42;
    while (v26 < v15[2])
    {
      (*(v27 + 16))(v29, v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26, v6);
      sub_100440800(v29, v52, v49, a3, &v54);
      ++v26;
      (*v28)(v29, v6);
      sub_100493D7C(v54);
      v27 = v51;
      if (v25 == v26)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_15:

  sub_1004470F0(v53);

  v6 = sub_1001ADA70(v53[0]);

  v28 = *(v6 + 16);
  if (v28)
  {
    v30 = sub_10008CA34(*(v6 + 16), 0);
    v31 = sub_1004A2634(v53, (v30 + 4), v28, v6);
    v29 = v53[1];

    sub_10000BEC8();
    if (v31 != v28)
    {
LABEL_28:
      __break(1u);

      (*v28)(v29, v6);

      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v30 = _swiftEmptyArrayStorage;
  }

  v53[0] = v30;
  sub_100447084(v53);
  v32 = v53[0];
  v33 = v53[0][2];
  if (v33)
  {
    v53[0] = _swiftEmptyArrayStorage;
    sub_100167204(0, v33, 0);
    v34 = v53[0];
    v35 = v32 + 5;
    do
    {
      v36 = *(v35 - 8);
      v37 = *v35;
      v53[0] = v34;
      v38 = v34[2];
      v39 = v34[3];

      if (v38 >= v39 >> 1)
      {
        sub_100167204((v39 > 1), v38 + 1, 1);
        v34 = v53[0];
      }

      v34[2] = v38 + 1;
      v40 = &v34[2 * v38];
      *(v40 + 32) = v36;
      v40[5] = v37;
      v35 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v34;
}

void sub_100440800(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v102 = a4;
  v103 = a5;
  v107 = a3;
  v7 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v7 - 8);
  v98 = &v91 - v8;
  v9 = type metadata accessor for FMIPItem();
  v95 = *(v9 - 8);
  v96 = v9;
  __chkstk_darwin(v9);
  v97 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for FMIPBeaconShare();
  v112 = *(v109 - 8);
  v11 = __chkstk_darwin(v109);
  v111 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v108 = &v91 - v13;
  v14 = type metadata accessor for FMIPItemImageSize();
  v105 = *(v14 - 8);
  v106 = v14;
  __chkstk_darwin(v14);
  v104 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v91 - v17;
  v19 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v19 - 8);
  v21 = &v91 - v20;
  v22 = type metadata accessor for FMIPSafeLocationType();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a2;
  v26 = *(a2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
  (*(v23 + 104))(v25, enum case for FMIPSafeLocationType.home(_:), v22);

  FMIPItem.location.getter();
  sub_1000E698C(v25, v21, v18);

  sub_100012DF0(v21, &unk_1006C0220);
  (*(v23 + 8))(v25, v22);
  v27 = a1;
  v28 = type metadata accessor for FMIPSafeLocation();
  LODWORD(v22) = (*(*(v28 - 8) + 48))(v18, 1, v28);
  sub_100012DF0(v18, &unk_1006BB1B0);
  v29 = v104;
  v30 = v105;
  v31 = v106;
  (*(v105 + 104))(v104, enum case for FMIPItemImageSize.list(_:), v106);
  v32 = objc_opt_self();

  v33 = [v32 currentTraitCollection];
  v34 = [v33 userInterfaceStyle];

  v101 = sub_1001C8A1C(v27, v29, v34 == 2);

  (*(v30 + 8))(v29, v31);
  v114 = v27;
  v35 = v107;

  v36 = v35;
  v37 = v110;
  v38 = sub_1001048C4(sub_10044B540, v113, v36);
  v39 = v38;
  v104 = v37;
  v94 = v26;
  v40 = *(*(v26 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isUnderAgeUser);
  v100 = v22;
  if (v40)
  {
    v41 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v92 = v27;
  v42 = *(v38 + 16);
  if (!v42)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_15:
    v41 = v44;
    v27 = v92;
LABEL_16:
    v99 = v39;
    v55 = v102;
    if (!v41[2])
    {
      v64 = v100 != 1;

      sub_10007EBC0(&unk_1006AF8A0);
      v65 = *(type metadata accessor for FMItemCellViewModel() - 8);
      v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_100552220;
      v68 = v97;
      (*(v95 + 16))(v97, v27, v96);
      v69 = v98;
      (*(v112 + 56))(v98, 1, 1, v109);
      v70 = v55;
      v71 = v94;

      v72 = v101;
      v73 = v101;
      sub_100344B8C(v71, v68, v69, v99, v72, v55, v64, (v67 + v66));

LABEL_25:
      *v103 = v67;
      return;
    }

    v111 = v41;
    v56 = FMIPItem.owner.getter();
    v58 = v57;
    v59 = [objc_opt_self() SPOwner];
    v60 = [v59 destination];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if (v56 == v61 && v58 == v63)
    {
    }

    else
    {
      v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v74 & 1) == 0)
      {

        v77 = _swiftEmptyArrayStorage;
        v82 = v27;
        v83 = v55;
        v84 = v101;
        v87 = v101;
        goto LABEL_24;
      }
    }

    LODWORD(v110) = v100 != 1;
    sub_10007EBC0(&unk_1006AF8A0);
    v75 = *(type metadata accessor for FMItemCellViewModel() - 8);
    v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v77 = swift_allocObject();
    *(v77 + 1) = xmmword_100552220;
    v78 = v97;
    (*(v95 + 16))(v97, v27, v96);
    v79 = v98;
    (*(v112 + 56))(v98, 1, 1, v109);
    v80 = v55;
    v81 = v94;

    v82 = v27;
    v83 = v55;
    v84 = v101;
    v85 = v101;
    v86 = v79;
    v87 = v85;
    v88 = sub_100344B8C(v81, v78, v86, v99, v84, v83, v110, (v77 + v76));
LABEL_24:
    __chkstk_darwin(v88);
    *(&v91 - 6) = v93;
    *(&v91 - 5) = v82;
    *(&v91 - 4) = v84;
    *(&v91 - 3) = v83;
    *(&v91 - 16) = v89;
    v90 = sub_1001909A4(sub_10044B560, (&v91 - 8), v111);

    v115 = v77;
    sub_100493D7C(v90);

    v67 = v115;
    goto LABEL_25;
  }

  v43 = 0;
  v105 = v112 + 8;
  v110 = (v112 + 32);
  v44 = _swiftEmptyArrayStorage;
  v46 = v108;
  v45 = v109;
  v106 = v112 + 16;
  v107 = v42;
  while (v43 < v39[2])
  {
    v47 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v48 = *(v112 + 72);
    (*(v112 + 16))(v46, v39 + v47 + v48 * v43, v45);
    if (FMIPBeaconShare.requiresResponse.getter())
    {
      v49 = v39;
      v50 = *v110;
      (*v110)(v111, v46, v45);
      v51 = v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v115 = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10016717C(0, v44[2] + 1, 1);
        v51 = v115;
      }

      v54 = v51[2];
      v53 = v51[3];
      if (v54 >= v53 >> 1)
      {
        sub_10016717C(v53 > 1, v54 + 1, 1);
        v51 = v115;
      }

      v51[2] = v54 + 1;
      v44 = v51;
      v45 = v109;
      v50(v51 + v47 + v54 * v48, v111, v109);
      v39 = v49;
      v42 = v107;
      v46 = v108;
    }

    else
    {
      (*v105)(v46, v45);
    }

    if (v42 == ++v43)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1004412EC()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.beaconIdentifier.getter();
  v4 = UUID.uuidString.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v4 == FMIPItem.identifier.getter() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10044142C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v27 = a6;
  v13 = sub_10007EBC0(&unk_1006C0240);
  __chkstk_darwin(v13 - 8);
  v15 = &v26[-v14];
  v16 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(a2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
  (*(v20 + 16))(v18, a3);
  v21 = type metadata accessor for FMIPBeaconShare();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v15, a1, v21);
  (*(v22 + 56))(v15, 0, 1, v21);
  v23 = a5;

  v24 = a4;
  return sub_100344B8C(v19, v18, v15, _swiftEmptyArrayStorage, a4, a5, v27, a7);
}

uint64_t sub_100441628(uint64_t a1)
{
  v97 = type metadata accessor for FMIPItemState();
  v96 = *(v97 - 8);
  v2 = __chkstk_darwin(v97);
  v95 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v94 = v84 - v4;
  v5 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v5 - 8);
  v98 = v84 - v6;
  v7 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v7 - 8);
  v93 = v84 - v8;
  v88 = type metadata accessor for FMIPSafeLocationType();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v89 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FMSelectedSection();
  v10 = __chkstk_darwin(v92);
  v87 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = v84 - v12;
  v111 = type metadata accessor for UUID();
  v101 = *(v111 - 8);
  __chkstk_darwin(v111);
  v102 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B22E8);
  __chkstk_darwin(v14);
  v16 = v84 - v15;
  v17 = sub_10007EBC0(&unk_1006B20C0);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v84 - v22;
  __chkstk_darwin(v21);
  v25 = v84 - v24;
  v26 = type metadata accessor for FMIPBeaconShare();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = FMIPItem.groupIdentifier.getter();
  if (v31)
  {
LABEL_2:

    goto LABEL_3;
  }

  v109 = v29;
  v104 = v27;
  v113 = v26;
  v105 = v25;
  v112 = v23;
  v103 = v20;
  v110 = v14;
  v85 = *(v118 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
  v34 = *(*(v85 + 24) + 64);
  __chkstk_darwin(v30);
  v108 = a1;
  v84[-2] = a1;

  v35 = sub_1001048C4(sub_1001098B0, &v84[-4], v34);
  v84[1] = 0;

  result = v35;
  v118 = *(v35 + 16);
  if (!v118)
  {
LABEL_19:

    v58 = *(v85 + 56);
    v59 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v60 = v58 + v59;
    v61 = v91;
    sub_10044B1A0(v60, v91, type metadata accessor for FMSelectedSection);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v63 = v98;
    v64 = v97;
    v65 = v96;
    v66 = v95;
    v67 = v94;
    v68 = v93;
    if (EnumCaseMultiPayload != 5)
    {
      sub_10044B208(v61, type metadata accessor for FMSelectedSection);
      v32 = 1;
      return v32 & 1;
    }

    v69 = *(v61 + 8);
    v70 = *(v61 + 16);

    if (v70 > 1)
    {
      v72 = v90;
      v73 = v89;
      if (v70 == 2)
      {
        v78 = *(v85 + 56);
        v79 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        v80 = v78 + v79;
        v81 = v87;
        sub_10044B1A0(v80, v87, type metadata accessor for FMSelectedSection);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v82 = *v81;
          sub_100091880(*(v81 + 8), *(v81 + 16));
          v119[0] = FMIPItem.identifier.getter();
          v119[1] = v83;
          __chkstk_darwin(v119[0]);
          v84[-2] = v119;
          v32 = sub_10008A40C(sub_10011F7D4, &v84[-4], v82);

          return v32 & 1;
        }

        sub_10044B208(v81, type metadata accessor for FMSelectedSection);
        goto LABEL_3;
      }

      v71 = v88;
      if (v70 == 3)
      {
LABEL_3:
        v32 = 0;
        return v32 & 1;
      }
    }

    else
    {
      v71 = v88;
      v72 = v90;
      v73 = v89;
      if (!v70)
      {
        v32 = 1;
        return v32 & 1;
      }

      if (v70 == 1)
      {
        FMIPItem.state.getter();
        static FMIPItemState.isBTConnected.getter();
        sub_10000A588(&qword_1006C0350, &type metadata accessor for FMIPItemState);
        v32 = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v74 = *(v65 + 8);
        v74(v66, v64);
        v74(v67, v64);
        return v32 & 1;
      }
    }

    v75 = v72;
    v76 = v73;
    (*(v72 + 104))(v73, enum case for FMIPSafeLocationType.home(_:), v71);

    FMIPItem.location.getter();
    sub_1000E698C(v76, v68, v63);

    sub_100091880(v69, v70);
    sub_100012DF0(v68, &unk_1006C0220);
    (*(v75 + 8))(v76, v71);
    v77 = type metadata accessor for FMIPSafeLocation();
    v32 = (*(*(v77 - 8) + 48))(v63, 1, v77) != 1;
    sub_100012DF0(v63, &unk_1006BB1B0);
    return v32 & 1;
  }

  v36 = 0;
  v37 = v104;
  v116 = v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v114 = (v104 + 8);
  v115 = v104 + 16;
  v107 = (v101 + 7);
  v38 = (v101 + 6);
  v86 = (v101 + 4);
  ++v101;
  v39 = v110;
  v40 = v111;
  v42 = v112;
  v41 = v113;
  v43 = v105;
  v44 = v109;
  v117 = result;
  v106 = v38;
  while (v36 < *(result + 16))
  {
    (*(v37 + 16))(v44, v116 + *(v37 + 72) * v36, v41);
    if (FMIPBeaconShare.isSharedLostItem.getter())
    {
      FMIPBeaconShare.beaconIdentifier.getter();
      (*v107)(v43, 0, 1, v40);
      FMIPItem.identifier.getter();
      UUID.init(uuidString:)();

      v45 = *(v39 + 48);
      v46 = v40;
      sub_100007204(v43, v16, &unk_1006B20C0);
      sub_100007204(v42, &v16[v45], &unk_1006B20C0);
      v47 = *v106;
      if ((*v106)(v16, 1, v40) == 1)
      {
        sub_100012DF0(v42, &unk_1006B20C0);
        v48 = v43;
        sub_100012DF0(v43, &unk_1006B20C0);
        v44 = v109;
        (*v114)(v109, v113);
        v49 = v47(&v16[v45], 1, v40);
        v39 = v110;
        v50 = v16;
        if (v49 == 1)
        {
          sub_100012DF0(v16, &unk_1006B20C0);
          goto LABEL_2;
        }

        goto LABEL_16;
      }

      v51 = v103;
      sub_100007204(v16, v103, &unk_1006B20C0);
      v50 = v16;
      if (v47(&v16[v45], 1, v40) == 1)
      {
        sub_100012DF0(v112, &unk_1006B20C0);
        v52 = v105;
        sub_100012DF0(v105, &unk_1006B20C0);
        v44 = v109;
        (*v114)(v109, v113);
        v53 = v46;
        v48 = v52;
        (*v101)(v51, v53);
        v39 = v110;
        v37 = v104;
        v40 = v53;
LABEL_16:
        sub_100012DF0(v50, &qword_1006B22E8);
        v16 = v50;
        v42 = v112;
        v41 = v113;
        v43 = v48;
        goto LABEL_8;
      }

      v54 = &v16[v45];
      v55 = v102;
      (*v86)(v102, v54, v111);
      sub_10000A588(&qword_1006B22F0, &type metadata accessor for UUID);
      v100 = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = *v101;
      v56 = v111;
      v99(v55, v111);
      v57 = v112;
      sub_100012DF0(v112, &unk_1006B20C0);
      v43 = v105;
      sub_100012DF0(v105, &unk_1006B20C0);
      v41 = v113;
      v44 = v109;
      (*v114)(v109, v113);
      v40 = v56;
      v99(v51, v56);
      sub_100012DF0(v16, &unk_1006B20C0);
      v39 = v110;
      v37 = v104;
      v42 = v57;
      if (v100)
      {
        goto LABEL_2;
      }
    }

    else
    {
      (*v114)(v44, v41);
    }

LABEL_8:
    ++v36;
    result = v117;
    if (v118 == v36)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_1004423F8(uint64_t a1)
{
  v2 = v1;
  v45 = type metadata accessor for FMSelectedSection();
  v4 = __chkstk_darwin(v45);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v48 = &v45 - v6;
  v7 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for IndexPath();
  v13 = *(v50 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v50);
  v47 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v18 - 8);
  v20 = &v45 - v19;
  v21 = IndexPath.section.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = *&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel];
  if (v21 >= *(v22 + 16))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (!*(v22 + 16 * v21 + 32))
  {
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
    v35 = v50;
    (*(v13 + 16))(v17, a1, v50);
    type metadata accessor for MainActor();
    v36 = v2;
    v37 = static MainActor.shared.getter();
    v38 = (*(v13 + 80) + 40) & ~*(v13 + 80);
    v39 = swift_allocObject();
    *(v39 + 2) = v37;
    *(v39 + 3) = &protocol witness table for MainActor;
    *(v39 + 4) = v36;
    (*(v13 + 32))(&v39[v38], v17, v35);
    sub_100170C90(0, 0, v20, &unk_100561E10, v39);

    return;
  }

  v14 = a1;
  sub_10043D2EC(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v40 = v46;
    (*(v11 + 32))(v46, v9, v10);
    v41 = *(*&v2[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator] + 56);
    v42 = v48;
    (*(v11 + 16))(v48, v40, v10);
    swift_storeEnumTagMultiPayload();
    v43 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v44 = v49;
    sub_10044B1A0(v41 + v43, v49, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v42, v41 + v43);
    swift_endAccess();
    sub_100058594(v44);

    sub_10044B208(v44, type metadata accessor for FMSelectedSection);
    sub_10044B208(v42, type metadata accessor for FMSelectedSection);
    (*(v11 + 8))(v40, v10);
    return;
  }

  sub_100012DF0(v9, &qword_1006B07D0);
  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v23 = type metadata accessor for Logger();
  sub_100005B14(v23, qword_1006D4630);
  v24 = v47;
  v25 = v50;
  (*(v13 + 16))(v47, v14, v50);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v51[0] = v29;
    *v28 = 136315138;
    sub_10000A588(&qword_1006C01F0, &type metadata accessor for IndexPath);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v13 + 8))(v24, v25);
    v33 = sub_100005B4C(v30, v32, v51);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "FMItemsListDataSource: cannnot select device at indexPath: %s", v28, 0xCu);
    sub_100006060(v29);
  }

  else
  {

    (*(v13 + 8))(v24, v25);
  }
}

void sub_100442ACC()
{
  sub_10000905C(0, &qword_1006AF730);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x8000000100579A00;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v3._object = 0x80000001005845C0;
  v4.value._object = 0x80000001005799E0;
  v17._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v17);

  String._bridgeToObjectiveC()();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = [v1 mainBundle];
  v18._object = 0x8000000100579A00;
  v9._countAndFlagsBits = 0xD000000000000019;
  v9._object = 0x8000000100584580;
  v10.value._object = 0x80000001005799E0;
  v18._countAndFlagsBits = 0xD000000000000018;
  v10.value._countAndFlagsBits = 0xD000000000000013;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v18);

  String._bridgeToObjectiveC()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableViewFooter);
  v14 = OBJC_IVAR____TtC6FindMy23FMListFooterActionsView_actions;
  swift_beginAccess();
  *(v13 + v14) = _swiftEmptyArrayStorage;

  v15 = sub_1000E4BAC();

  v16 = *(v15 + 16);

  if (v16)
  {
    sub_1004169A8(v12);
  }

  sub_1004169A8(v7);
}

void sub_100442DC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_100442E1C()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = *(*(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v8 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10044B1A0(v7 + v8, v4, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v6, v7 + v8);
  swift_endAccess();
  sub_100058594(v4);

  sub_10044B208(v4, type metadata accessor for FMSelectedSection);
  return sub_10044B208(v6, type metadata accessor for FMSelectedSection);
}

uint64_t sub_100443014(char a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  v4 = __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  v9 = *(*(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator) + 56);
  v12[-v7] = a1;
  swift_storeEnumTagMultiPayload();
  v10 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_10044B1A0(v9 + v10, v6, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v8, v9 + v10);
  swift_endAccess();
  sub_100058594(v6);

  sub_10044B208(v6, type metadata accessor for FMSelectedSection);
  return sub_10044B208(v8, type metadata accessor for FMSelectedSection);
}

uint64_t sub_1004431BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_10007EBC0(&qword_1006C01F8);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for FMIPBeaconShareState();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for FMIPBeaconShare();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  sub_10007EBC0(&qword_1006C0200);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = *(type metadata accessor for FMItemCellViewModel() - 8);
  v5[16] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B07D0);
  v5[17] = swift_task_alloc();
  v8 = type metadata accessor for FMIPItem();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100443490, v10, v9);
}

unint64_t sub_100443490()
{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView);
  do
  {
    v3 = v2;
    v2 = [v2 nextResponder];

    if (!v2)
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
        _os_log_impl(&_mh_execute_header, v10, v11, "FMDevicesListDataSource: Cannot remove device without a view controller", v12, 2u);
      }

      goto LABEL_28;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
  }

  while (!v4);
  v82 = v4;
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  sub_10043D2EC(v0[3], v7);
  if ((*(v6 + 48))(v7, 1, v5) != 1)
  {
    v13 = v0[2];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v13 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
      if (result < *(v15 + 16))
      {
        v16 = *(v15 + 16 * result + 40);

        result = IndexPath.row.getter();
        if ((result & 0x8000000000000000) == 0)
        {
          if (result < *(v16 + 16))
          {
            v17 = v0[16];
            v18 = v0[2];
            sub_10044B1A0(v16 + ((*(v0[15] + 80) + 32) & ~*(v0[15] + 80)) + *(v0[15] + 72) * result, v17, type metadata accessor for FMItemCellViewModel);

            v79 = *(v18 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
            v19 = *(*(v79 + 24) + 64);
            v20 = swift_task_alloc();
            *(v20 + 16) = v17;

            v21 = sub_1001048C4(sub_10044B3C0, v20, v19);

            v81 = v21;
            if (*(v21 + 16))
            {
              v23 = v0[10];
              v22 = v0[11];
              v25 = v0[8];
              v24 = v0[9];
              v27 = v0[6];
              v26 = v0[7];
              (*(v23 + 16))(v22, v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v24);
              FMIPBeaconShare.state.getter();
              (*(v23 + 8))(v22, v24);
              FMIPBeaconShareState.baseState.getter();
              (*(v26 + 8))(v25, v27);
              v28 = 0;
            }

            else
            {
              v28 = 1;
            }

            v30 = v0[13];
            v29 = v0[14];
            v32 = v0[6];
            v31 = v0[7];
            v34 = v0[4];
            v33 = v0[5];
            v35 = *(v31 + 56);
            v35(v29, v28, 1, v32);
            (*(v31 + 104))(v30, enum case for FMIPBeaconShareState.invitationReceived(_:), v32);
            v35(v30, 0, 1, v32);
            v36 = *(v34 + 48);
            sub_100007204(v29, v33, &qword_1006C0200);
            sub_100007204(v30, v33 + v36, &qword_1006C0200);
            v37 = *(v31 + 48);
            v38 = v37(v33, 1, v32);
            v39 = v0[6];
            if (v38 == 1)
            {
              v40 = v0[14];
              sub_100012DF0(v0[13], &qword_1006C0200);
              sub_100012DF0(v40, &qword_1006C0200);
              if (v37(v33 + v36, 1, v39) == 1)
              {
                sub_100012DF0(v0[5], &qword_1006C0200);
                v41 = 2;
LABEL_27:
                v52 = v79;
                v53 = v0[20];
                v54 = v0[19];
                v76 = v0[18];
                v78 = v0[21];
                v80 = v0[16];
                (*(v54 + 16))(v53);
                v55 = objc_allocWithZone(type metadata accessor for FMItemSharingLandingViewController(0));

                v56 = sub_1003C494C(v53, v52, 0, v41);
                v57 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v58 = swift_allocObject();
                *(v58 + 2) = v57;
                *(v58 + 3) = v81;
                *(v58 + 4) = v82;
                *(v58 + 5) = v56;
                v59 = &v56[qword_1006D48B0];
                v60 = *&v56[qword_1006D48B0];
                *v59 = sub_10044B3E0;
                v59[1] = v58;

                v61 = v2;
                v62 = v56;
                sub_10001835C(v60);

                v63 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v64 = swift_allocObject();
                *(v64 + 2) = v63;
                *(v64 + 3) = v81;
                *(v64 + 4) = v62;
                v65 = &v62[qword_1006D48B8];
                v66 = *&v62[qword_1006D48B8];
                *v65 = sub_10044B3EC;
                v65[1] = v64;
                v67 = v62;

                sub_10001835C(v66);

                v68 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v69 = &v67[qword_1006D48C0];
                v70 = *&v67[qword_1006D48C0];
                *v69 = sub_10044B3F8;
                v69[1] = v68;

                sub_10001835C(v70);

                v71 = objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
                v72 = v67;
                v73 = sub_1000CC510(v72, 2);
                [v82 presentViewController:v73 animated:1 completion:0];

                (*(v54 + 8))(v78, v76);
                sub_10044B208(v80, type metadata accessor for FMItemCellViewModel);
                goto LABEL_28;
              }
            }

            else
            {
              sub_100007204(v0[5], v0[12], &qword_1006C0200);
              v42 = v37(v33 + v36, 1, v39);
              v44 = v0[13];
              v43 = v0[14];
              v45 = v0[12];
              if (v42 != 1)
              {
                v48 = v0[7];
                v49 = v0[8];
                v50 = v0[6];
                v77 = v0[5];
                (*(v48 + 32))(v49, v33 + v36, v50);
                sub_10000A588(&qword_1006C0208, &type metadata accessor for FMIPBeaconShareState);
                v75 = dispatch thunk of static Equatable.== infix(_:_:)();
                v51 = *(v48 + 8);
                v51(v49, v50);
                sub_100012DF0(v44, &qword_1006C0200);
                sub_100012DF0(v43, &qword_1006C0200);
                v51(v45, v50);
                sub_100012DF0(v77, &qword_1006C0200);
                if (v75)
                {
                  v41 = 2;
                }

                else
                {
                  v41 = 3;
                }

                goto LABEL_27;
              }

              v46 = v0[6];
              v47 = v0[7];
              sub_100012DF0(v0[13], &qword_1006C0200);
              sub_100012DF0(v43, &qword_1006C0200);
              (*(v47 + 8))(v45, v46);
            }

            sub_100012DF0(v0[5], &qword_1006C01F8);
            v41 = 3;
            goto LABEL_27;
          }

LABEL_34:
          __break(1u);
          return result;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v8 = v0[17];

  sub_100012DF0(v8, &qword_1006B07D0);
LABEL_28:

  v74 = v0[1];

  return v74();
}

void sub_100443DF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v60 = a4;
  v67 = a3;
  v69 = type metadata accessor for FMIPBeaconShare();
  v5 = *(v69 - 1);
  __chkstk_darwin(v69);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  *&v61 = &v57 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  v58 = v15;
  v59 = v12;
  v19 = *(a2 + 16);
  v62 = Strong;
  if (!v19)
  {
    v20 = _swiftEmptyArrayStorage;
    v31 = _swiftEmptyArrayStorage[2];
    if (v31)
    {
      goto LABEL_8;
    }

LABEL_25:

    v39 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_11;
    }

LABEL_26:
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_12;
    }

LABEL_27:

    [v60 dismissViewControllerAnimated:1 completion:0];

    return;
  }

  v71 = _swiftEmptyArrayStorage;
  sub_10016748C(0, v19, 0);
  v20 = v71;
  v21 = v5 + 16;
  v22 = *(v5 + 16);
  v23 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v64 = *(v21 + 56);
  v65 = v22;
  v66 = v21;
  v24 = (v21 - 8);
  v68 = v9;
  v63 = v9 + 32;
  v25 = v61;
  do
  {
    v26 = v8;
    v27 = v69;
    (v65)(v7, v23, v69);
    FMIPBeaconShare.identifier.getter();
    (*v24)(v7, v27);
    v71 = v20;
    v29 = v20[2];
    v28 = v20[3];
    if (v29 >= v28 >> 1)
    {
      sub_10016748C(v28 > 1, v29 + 1, 1);
      v20 = v71;
    }

    v20[2] = v29 + 1;
    v30 = v20 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v29;
    v8 = v26;
    (*(v68 + 32))(v30, v25, v26);
    v23 += v64;
    --v19;
  }

  while (v19);
  v18 = v62;
  v9 = v68;
  v31 = v20[2];
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_8:
  v71 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v33 = *(v9 + 16);
  v32 = v9 + 16;
  v34 = v20 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v68 = *(v32 + 56);
  v69 = v33;
  v66 = v32 - 8;
  v36 = v58;
  v35 = v59;
  do
  {
    v37 = v69;
    (v69)(v36, v34, v8);
    v37(v35, v36, v8);
    type metadata accessor for FMIPAcceptShareAction();
    swift_allocObject();
    FMIPAcceptShareAction.init(shareIdentifier:)();
    (*v66)(v36, v8);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v34 += v68;
    --v31;
  }

  while (v31);

  v39 = v71;
  v18 = v62;
  if (v71 >> 62)
  {
    goto LABEL_26;
  }

LABEL_11:
  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_27;
  }

LABEL_12:
  v41 = 0;
  v64 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator;
  v68 = v39 & 0xC000000000000001;
  v66 = v39 & 0xFFFFFFFFFFFFFF8;
  *&v38 = 136315138;
  v61 = v38;
  v63 = v39;
  v65 = v40;
  while (v68)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      goto LABEL_29;
    }

LABEL_17:
    v69 = v44;
    v45 = swift_allocObject();
    v46 = v67;
    *(v45 + 16) = v67;
    v47 = qword_1006AEBE0;

    v48 = v46;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005B14(v49, qword_1006D4630);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v70 = v43;
      v71 = v53;
      *v52 = v61;
      type metadata accessor for FMIPItemSharingAction();
      sub_10000A588(&unk_1006C01E0, &type metadata accessor for FMIPItemSharingAction);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = sub_100005B4C(v54, v55, &v71);

      *(v52 + 4) = v56;
      v39 = v63;
      _os_log_impl(&_mh_execute_header, v50, v51, "FMDevicesActionController: perform item share action %s", v52, 0xCu);
      sub_100006060(v53);
      v18 = v62;
    }

    v42 = swift_allocObject();
    *(v42 + 16) = sub_10044B400;
    *(v42 + 24) = v45;

    FMIPManager.perform(action:completion:)();

    ++v41;
    if (v69 == v65)
    {
      goto LABEL_27;
    }
  }

  if (v41 >= *(v66 + 16))
  {
    goto LABEL_30;
  }

  v43 = *(v39 + 8 * v41 + 32);

  v44 = (v41 + 1);
  if (!__OFADD__(v41, 1))
  {
    goto LABEL_17;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_10044451C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPItemActionStatus();
  v21 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v14 = a3;
  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v18 + v16, v9, v21);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_100170C90(0, 0, v12, &unk_100561E30, v18);
}

uint64_t sub_100444754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for FMIPItemActionStatus();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10044484C, v9, v8);
}

uint64_t sub_10044484C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 104))(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_10000A588(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v1, v2);
  if ((v4 & 1) == 0)
  {
    v5 = v0 + 2;
    v6 = v0[17];
    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v42._object = 0x800000010058A600;
    v9._object = 0xED0000454C544954;
    v42._countAndFlagsBits = 0xD00000000000001FLL;
    v9._countAndFlagsBits = 0x5F4552554C494146;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v42);

    v11 = [v7 mainBundle];
    v43._object = 0x800000010057D450;
    v12._object = 0xEF4547415353454DLL;
    v43._countAndFlagsBits = 0xD000000000000021;
    v12._countAndFlagsBits = 0x5F4552554C494146;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v43);

    if (!v6)
    {
LABEL_12:
      v29 = v0[18];
      v30 = String._bridgeToObjectiveC()();

      v31 = String._bridgeToObjectiveC()();

      v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

      v33 = [v7 mainBundle];
      v46._object = 0x8000000100579B60;
      v34._countAndFlagsBits = 0x4F545455425F4B4FLL;
      v34._object = 0xEF454C5449545F4ELL;
      v46._countAndFlagsBits = 0xD000000000000021;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v46);

      v36 = String._bridgeToObjectiveC()();

      v0[6] = State.rawValue.getter;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100017328;
      v0[5] = &unk_10063F718;
      v37 = _Block_copy(v5);

      v38 = [objc_opt_self() actionWithTitle:v36 style:0 handler:v37];
      _Block_release(v37);

      [v32 addAction:v38];
      [v29 presentViewController:v32 animated:1 completion:0];

      goto LABEL_13;
    }

    swift_getErrorValue();
    v14 = v0[9];
    swift_errorRetain();
    v15 = sub_100271E80(v14);
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v5 = v0 + 2;
LABEL_11:

        goto LABEL_12;
      }
    }

    swift_getErrorValue();
    v20 = sub_100271D20(v0[12]);
    v5 = v0 + 2;
    if (v20 <= 0xD && ((1 << v20) & 0x3080) != 0)
    {

      v21 = [v7 mainBundle];
      v44._object = 0x800000010057D3F0;
      v22._countAndFlagsBits = 0xD00000000000002BLL;
      v22._object = 0x8000000100581260;
      v23.value._object = 0x800000010057D3D0;
      v44._countAndFlagsBits = 0xD000000000000018;
      v23.value._countAndFlagsBits = 0xD000000000000013;
      v24._countAndFlagsBits = 0;
      v24._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v44);

      v25 = [v7 mainBundle];
      v45._object = 0x800000010057D3F0;
      v26._countAndFlagsBits = 0xD00000000000002DLL;
      v26._object = 0x8000000100581290;
      v27.value._object = 0x800000010057D3D0;
      v45._countAndFlagsBits = 0xD000000000000018;
      v27.value._countAndFlagsBits = 0xD000000000000013;
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v45);
    }

    goto LABEL_11;
  }

LABEL_13:

  v39 = v0[1];

  return v39();
}

void sub_100444E34(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a3;
  v60 = type metadata accessor for FMIPBeaconShare();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v52 - v13;
  __chkstk_darwin(v12);
  v16 = &v52 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v52 = v11;
  v53 = v14;
  v55 = Strong;
  v18 = *(a2 + 16);
  v61 = v7;
  if (v18)
  {
    v63 = _swiftEmptyArrayStorage;
    sub_10016748C(0, v18, 0);
    v19 = v63;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v57 = *(v20 + 56);
    v58 = v21;
    v59 = v20;
    v23 = (v20 - 8);
    *&v56 = v8 + 32;
    do
    {
      v24 = v60;
      v58(v6, v22, v60);
      FMIPBeaconShare.identifier.getter();
      (*v23)(v6, v24);
      v63 = v19;
      v25 = v16;
      v27 = v19[2];
      v26 = v19[3];
      if (v27 >= v26 >> 1)
      {
        sub_10016748C(v26 > 1, v27 + 1, 1);
        v19 = v63;
      }

      v19[2] = v27 + 1;
      v7 = v61;
      (*(v8 + 32))(v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v27, v25, v61);
      v22 += v57;
      --v18;
      v16 = v25;
    }

    while (v18);
    v28 = v19[2];
    if (v28)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v28 = _swiftEmptyArrayStorage[2];
    if (v28)
    {
LABEL_8:
      v63 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v30 = *(v8 + 16);
      v29 = v8 + 16;
      v31 = v19 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v59 = *(v29 + 56);
      v60 = v30;
      v32 = v52;
      v33 = v53;
      do
      {
        v34 = v60;
        (v60)(v33, v31, v7);
        v34(v32, v33, v7);
        type metadata accessor for FMIPDeclineShareAction();
        swift_allocObject();
        FMIPDeclineShareAction.init(shareIdentifier:)();
        (*(v29 - 8))(v33, v7);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v7 = v61;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v31 += v59;
        --v28;
      }

      while (v28);

      v36 = v63;
      goto LABEL_13;
    }
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_13:
  v37 = v55;
  if (v36 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v39 = 0;
    v58 = OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator;
    v60 = v36 & 0xFFFFFFFFFFFFFF8;
    v61 = v36 & 0xC000000000000001;
    *&v35 = 136315138;
    v56 = v35;
    v57 = v36;
    v59 = i;
    while (v61)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_26;
      }

LABEL_20:
      v43 = qword_1006AEBE0;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100005B14(v44, qword_1006D4630);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v62 = v41;
        v63 = v48;
        *v47 = v56;
        type metadata accessor for FMIPItemSharingAction();
        sub_10000A588(&unk_1006C01E0, &type metadata accessor for FMIPItemSharingAction);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v51 = sub_100005B4C(v49, v50, &v63);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "FMDevicesActionController: perform item share action %s", v47, 0xCu);
        sub_100006060(v48);

        v36 = v57;
        v37 = v55;
      }

      v40 = swift_allocObject();
      *(v40 + 16) = State.rawValue.getter;
      *(v40 + 24) = 0;
      FMIPManager.perform(action:completion:)();

      ++v39;
      if (v42 == v59)
      {
        goto LABEL_29;
      }
    }

    if (v39 >= *(v60 + 16))
    {
      goto LABEL_27;
    }

    v41 = *(v36 + 8 * v39 + 32);

    v42 = v39 + 1;
    if (!__OFADD__(v39, 1))
    {
      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  [v54 dismissViewControllerAnimated:1 completion:0];
}

void sub_1004454FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView) reloadData];
  }
}

uint64_t sub_100445568()
{
  v67 = type metadata accessor for FMIPBeaconShare();
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v2 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v69 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - v8;
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  v12 = type metadata accessor for FMItemCellViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = IndexPath.section.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v17 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
  if (v16 >= *(v17 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v61 = v9;
  v62 = v6;
  v18 = *(v17 + 16 * v16 + 40);

  v19 = IndexPath.row.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v19 >= *(v18 + 16))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (v44)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

  v68 = v3;
  sub_10044B1A0(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v19, v15, type metadata accessor for FMItemCellViewModel);

  v64 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);
  v21 = *(*(v64 + 24) + 64);
  __chkstk_darwin(v20);
  v63 = v15;
  *(&v60 - 2) = v15;

  v22 = sub_1001048C4(sub_10044B958, (&v60 - 4), v21);
  v23 = *(v22 + 16);
  if (v23)
  {
    v72 = _swiftEmptyArrayStorage;
    sub_10016748C(0, v23, 0);
    v24 = v72;
    v25 = *(v70 + 16);
    v26 = *(v70 + 80);
    v60 = v22;
    v27 = v22 + ((v26 + 32) & ~v26);
    v65 = *(v70 + 72);
    *&v66 = v25;
    v70 += 16;
    v28 = (v70 - 8);
    do
    {
      v29 = v67;
      (v66)(v2, v27, v67);
      FMIPBeaconShare.identifier.getter();
      (*v28)(v2, v29);
      v72 = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_10016748C(v30 > 1, v31 + 1, 1);
        v24 = v72;
      }

      v24[2] = v31 + 1;
      v32 = v69;
      v33 = v24 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v69 + 72) * v31;
      v34 = v68;
      (*(v69 + 32))(v33, v11, v68);
      v27 += v65;
      --v23;
    }

    while (v23);

    v35 = v24[2];
    if (v35)
    {
      goto LABEL_11;
    }

LABEL_15:

    v43 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v24 = _swiftEmptyArrayStorage;
  v34 = v68;
  v32 = v69;
  v35 = _swiftEmptyArrayStorage[2];
  if (!v35)
  {
    goto LABEL_15;
  }

LABEL_11:
  v72 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v37 = *(v32 + 16);
  v36 = v32 + 16;
  v38 = v24 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
  v69 = *(v36 + 56);
  v70 = v37;
  v68 = (v36 - 8);
  v40 = v61;
  v39 = v62;
  do
  {
    v41 = v70;
    (v70)(v40, v38, v34);
    v41(v39, v40, v34);
    type metadata accessor for FMIPDeclineShareAction();
    swift_allocObject();
    FMIPDeclineShareAction.init(shareIdentifier:)();
    (*v68)(v40, v34);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v38 += v69;
    --v35;
  }

  while (v35);

  v43 = v72;
LABEL_16:
  v70 = v43;
  if (v43 >> 62)
  {
    goto LABEL_35;
  }

  v44 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v44)
  {
LABEL_18:
    v45 = 0;
    v46 = v70 & 0xC000000000000001;
    v69 = v70 & 0xFFFFFFFFFFFFFF8;
    *&v42 = 136315138;
    v66 = v42;
    v67 = v70 & 0xC000000000000001;
    v68 = v44;
    do
    {
      if (v46)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v45 >= *(v69 + 16))
        {
          goto LABEL_30;
        }

        v48 = *(v70 + 8 * v45 + 32);

        v49 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      v50 = qword_1006AEBE0;

      if (v50 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100005B14(v51, qword_1006D4630);

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v71 = v48;
        v72 = v55;
        *v54 = v66;
        type metadata accessor for FMIPItemSharingAction();
        sub_10000A588(&unk_1006C01E0, &type metadata accessor for FMIPItemSharingAction);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = sub_100005B4C(v56, v57, &v72);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "FMDevicesActionController: perform item share action %s", v54, 0xCu);
        sub_100006060(v55);
        v46 = v67;

        v44 = v68;
      }

      v47 = swift_allocObject();
      *(v47 + 16) = State.rawValue.getter;
      *(v47 + 24) = 0;
      FMIPManager.perform(action:completion:)();

      ++v45;
    }

    while (v49 != v44);
  }

LABEL_36:

  return sub_10044B208(v63, type metadata accessor for FMItemCellViewModel);
}

uint64_t sub_100445DA0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B22E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  v9 = sub_10007EBC0(&unk_1006B20C0);
  v10 = __chkstk_darwin(v9 - 8);
  v24 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  FMIPBeaconShare.identifier.getter();
  (*(v3 + 56))(v13, 0, 1, v2);
  v14 = *(type metadata accessor for FMItemCellViewModel() + 76);
  v15 = *(v6 + 56);
  sub_100007204(v13, v8, &unk_1006B20C0);
  sub_100007204(v25 + v14, &v8[v15], &unk_1006B20C0);
  v16 = *(v3 + 48);
  if (v16(v8, 1, v2) != 1)
  {
    v18 = v24;
    sub_100007204(v8, v24, &unk_1006B20C0);
    if (v16(&v8[v15], 1, v2) != 1)
    {
      v19 = v23;
      (*(v3 + 32))(v23, &v8[v15], v2);
      sub_10000A588(&qword_1006B22F0, &type metadata accessor for UUID);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v3 + 8);
      v20(v19, v2);
      sub_100012DF0(v13, &unk_1006B20C0);
      v20(v18, v2);
      sub_100012DF0(v8, &unk_1006B20C0);
      return v17 & 1;
    }

    sub_100012DF0(v13, &unk_1006B20C0);
    (*(v3 + 8))(v18, v2);
    goto LABEL_6;
  }

  sub_100012DF0(v13, &unk_1006B20C0);
  if (v16(&v8[v15], 1, v2) != 1)
  {
LABEL_6:
    sub_100012DF0(v8, &qword_1006B22E8);
    v17 = 0;
    return v17 & 1;
  }

  sub_100012DF0(v8, &unk_1006B20C0);
  v17 = 1;
  return v17 & 1;
}

void *sub_100446188(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v61 = &v52 - v3;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v56 = v7;
  v57 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = type metadata accessor for FMItemCellViewModel();
  v58 = *(v10 - 8);
  v59 = v10;
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = *(v14 + 16);
  v60 = a1;
  v18(v16, a1, v13);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = v12;
    v24 = v23;
    aBlock[0] = v23;
    *v22 = 136315138;
    v25 = IndexPath.debugDescription.getter();
    v55 = v5;
    v26 = v4;
    v28 = v27;
    v30 = *(v14 + 8);
    v29 = v14 + 8;
    v30(v16, v13);
    v16 = sub_100005B4C(v25, v28, aBlock);
    v4 = v26;
    v5 = v55;

    *(v22 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemsListDataSource: trailingSwipeActions for index path %s", v22, 0xCu);
    sub_100006060(v24);
    v12 = v53;

    v9 = v54;
  }

  else
  {

    v31 = *(v14 + 8);
    v29 = v14 + 8;
    v31(v16, v13);
  }

  v64 = _swiftEmptyArrayStorage;
  v32 = v60;
  v33 = IndexPath.section.getter();
  v34 = v61;
  v35 = v62;
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v36 = *&v62[OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel];
  if (v33 >= *(v36 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *(v36 + 16 * v33 + 40);

  v37 = IndexPath.row.getter();
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v37 >= v16[2])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_10044B1A0(v16 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v37, v12, type metadata accessor for FMItemCellViewModel);

  v38 = v12[*(v59 + 88)];
  sub_10043D2EC(v32, v34);
  if ((*(v5 + 48))(v34, 1, v4) != 1)
  {
    v29 = v12;
    v39 = *(v5 + 32);
    v39(v9, v34, v4);
    if (!v38)
    {
      (*(v5 + 8))(v9, v4);
      sub_10044B208(v29, type metadata accessor for FMItemCellViewModel);
      return _swiftEmptyArrayStorage;
    }

    v40 = v57;
    (*(v5 + 16))(v57, v9, v4);
    v34 = v9;
    v41 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v35;
    v39((v42 + v41), v40, v4);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_10044B104;
    *(v43 + 24) = v42;
    aBlock[4] = sub_10044B190;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10052BC74;
    aBlock[3] = &unk_10063F5B0;
    v44 = _Block_copy(aBlock);
    v45 = objc_opt_self();
    v46 = v35;
    v47 = [v45 contextualActionWithStyle:1 title:0 handler:v44];
    _Block_release(v44);

    v48 = String._bridgeToObjectiveC()();
    v49 = [objc_opt_self() systemImageNamed:v48];

    [v47 setImage:v49];
    v50 = [objc_opt_self() systemRedColor];
    [v47 setBackgroundColor:v50];

    v16 = v47;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_14:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v5 + 8))(v34, v4);
      sub_10044B208(v29, type metadata accessor for FMItemCellViewModel);
      return v64;
    }

LABEL_21:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_14;
  }

  sub_10044B208(v12, type metadata accessor for FMItemCellViewModel);
  sub_100012DF0(v34, &qword_1006B07D0);
  return _swiftEmptyArrayStorage;
}

void sub_10044693C(uint64_t a1)
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
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemsListDataSource: Remove button pressed", v7, 2u);
  }

  v8 = *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_tableView);
  while (1)
  {
    v9 = v8;
    oslog = [v8 nextResponder];

    if (!oslog)
    {
      break;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v8 = oslog;
    if (v10)
    {
      v11 = v10;
      v12 = FMIPItem.owner.getter();
      v14 = v13;
      v15 = [objc_opt_self() SPOwner];
      v16 = [v15 destination];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          v22 = *(v2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);

          sub_1000DEF40(a1, v22, v11);
LABEL_18:

          goto LABEL_19;
        }
      }

      v25 = *(v2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_mediator);

      sub_1000E1DC0(a1, v25, v11);
      goto LABEL_18;
    }
  }

  oslog = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v23, "FMDevicesListDataSource: Cannot remove device without a view controller", v24, 2u);
  }

LABEL_19:
}

id sub_100446C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemsListDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100446DAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100446DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100446F00()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource__listTitle);

  return v1;
}

uint64_t sub_100446F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_listSubtitle);

  return v1;
}

void sub_100446F78(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled);
  *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_updatesEnabled) = a1;
  sub_10043C84C(v2);
}

uint64_t sub_100446F90()
{

  v0 = FMIPManager.isInitialized.getter();

  return v0 & 1;
}

uint64_t sub_100446FE0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Int sub_100447084(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10025F304(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100447198(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_1004470F0(void **a1)
{
  v2 = *(type metadata accessor for FMItemCellViewModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F318(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1004472A0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100447198(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10007EBC0(&unk_1006C0230);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100447754(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_1004473CC(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_1004472A0(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMItemCellViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMItemCellViewModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100447D70(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_10044746C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1004473CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (v7 > 1)
      {
        if (v7 != 2 || v10 != 3)
        {
LABEL_4:
          ++a3;
          v5 += 16;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v7 && v10 < 2)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      v11 = *(v9 + 3);
      *(v9 + 1) = *v9;
      *v9 = v7;
      *(v9 + 1) = v11;
      v9 -= 16;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10044746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMItemCellViewModel();
  v9 = __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v44 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v44 - v17;
  v46 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v52 = v8;
    v53 = -v20;
    v22 = a1 - a3;
    v58 = v19;
    v45 = v20;
    v23 = v19 + v20 * a3;
    v51 = v11;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v47 = v23;
    v48 = v22;
    while (1)
    {
      sub_10044B1A0(v23, v18, type metadata accessor for FMItemCellViewModel);
      sub_10044B1A0(v21, v14, type metadata accessor for FMItemCellViewModel);
      v24 = *(v18 + 10);
      v25 = *(v14 + 10);
      v26 = v24 < v25;
      if (v24 == v25 && (v27 = *(v18 + 9), v28 = *(v14 + 9), v26 = v27 < v28, v27 == v28))
      {
        v29 = *(v18 + 14);
        v30 = *(v18 + 2);
        v31 = *(v18 + 3);
        v56 = *(v18 + 13);
        v57 = v29;

        v32._countAndFlagsBits = v30;
        v32._object = v31;
        String.append(_:)(v32);
        v34 = v56;
        v33 = v57;
        v35 = *(v14 + 14);
        v36 = *(v14 + 2);
        v37 = *(v14 + 3);
        v56 = *(v14 + 13);
        v57 = v35;

        v38._countAndFlagsBits = v36;
        v38._object = v37;
        String.append(_:)(v38);
        v39 = v56;
        v40 = v57;
        v56 = v34;
        v57 = v33;
        v54 = v39;
        v55 = v40;
        sub_100035F3C();
        v41 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v11 = v51;

        v42 = v41 == -1;
      }

      else
      {
        v42 = v26;
      }

      sub_10044B208(v14, type metadata accessor for FMItemCellViewModel);
      result = sub_10044B208(v18, type metadata accessor for FMItemCellViewModel);
      if (!v42)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + v45;
        v22 = v48 - 1;
        v23 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      sub_10019AA14(v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10019AA14(v11, v21);
      v21 += v53;
      v23 += v53;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100447754(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_110:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v80 = v8 + 2;
      v81 = v8[2];
      if (v81 >= 2)
      {
        while (*a3)
        {
          v82 = &v8[2 * v81];
          v83 = *v82;
          v84 = &v80[2 * v81];
          v85 = v84[1];
          sub_1004489A0((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
          if (v4)
          {
          }

          if (v85 < v83)
          {
            goto LABEL_136;
          }

          if (v81 - 2 >= *v80)
          {
            goto LABEL_137;
          }

          *v82 = v83;
          v82[1] = v85;
          v86 = *v80 - v81;
          if (*v80 < v81)
          {
            goto LABEL_138;
          }

          v81 = *v80 - 1;
          result = memmove(v84, v84 + 2, 16 * v86);
          *v80 = v81;
          if (v81 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_10025EFD4(v8);
    v8 = result;
    goto LABEL_112;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v87 = a4;
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_37;
    }

    v10 = *(*a3 + 16 * v7);
    v11 = 16 * v9;
    v12 = *(*a3 + 16 * v9);
    if (v10 > 1)
    {
      v13 = v10 == 2 && v12 == 3;
    }

    else
    {
      v13 = 0xCu >> (v12 & 0xF);
      if (!*(*a3 + 16 * v7))
      {
        v13 = 1;
      }
    }

    v7 = v9 + 2;
    if (v9 + 2 >= v6)
    {
      goto LABEL_27;
    }

    v14 = (*a3 + 16 * v9 + 32);
    do
    {
      v15 = v10;
      v16 = *v14;
      v14 += 16;
      v10 = v16;
      if (v16 > 1)
      {
        if (v10 != 2)
        {
          goto LABEL_14;
        }

        if ((v13 ^ (v15 == 3)))
        {
          goto LABEL_27;
        }
      }

      else if (v10)
      {
        if (v15 <= 1)
        {
LABEL_14:
          if (v13)
          {
            goto LABEL_28;
          }

          goto LABEL_15;
        }

        if ((v13 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if ((v13 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_15:
      ++v7;
    }

    while (v6 != v7);
    v7 = v6;
LABEL_27:
    if (v13)
    {
LABEL_28:
      if (v7 < v9)
      {
        goto LABEL_141;
      }

      if (v9 < v7)
      {
        v17 = 0;
        v18 = 16 * v7;
        v19 = v9;
        do
        {
          if (v19 != v7 + v17 - 1)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_147;
            }

            v20 = (v24 + v11);
            v21 = v24 + v18;
            v22 = *v20;
            v23 = *(v20 + 1);
            *v20 = *(v21 - 16);
            *(v21 - 16) = v22;
            *(v21 - 8) = v23;
          }

          ++v19;
          --v17;
          v18 -= 16;
          v11 += 16;
        }

        while (v19 < v7 + v17);
        v6 = a3[1];
      }
    }

LABEL_37:
    if (v7 >= v6)
    {
      goto LABEL_59;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_140;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_59;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_142;
    }

    if (v9 + a4 < v6)
    {
      v6 = v9 + a4;
    }

    if (v6 < v9)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v7 == v6)
    {
LABEL_59:
      if (v7 < v9)
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10008B8B8(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v5 = v8[2];
      v34 = v8[3];
      v35 = v5 + 1;
      if (v5 >= v34 >> 1)
      {
        result = sub_10008B8B8((v34 > 1), v5 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v35;
      v36 = v8 + 4;
      v37 = &v8[2 * v5 + 4];
      *v37 = v9;
      v37[1] = v7;
      v89 = *v88;
      if (!*v88)
      {
        goto LABEL_149;
      }

      if (!v5)
      {
LABEL_3:
        v6 = a3[1];
        a4 = v87;
        if (v7 >= v6)
        {
          goto LABEL_110;
        }

        continue;
      }

      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = v8[4];
          v39 = v8[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_79:
          if (v41)
          {
            goto LABEL_126;
          }

          v54 = &v8[2 * v35];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_128;
          }

          v60 = &v36[2 * v5];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_133;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v35 < 2)
        {
          goto LABEL_134;
        }

        v64 = &v8[2 * v35];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_94:
        if (v59)
        {
          goto LABEL_130;
        }

        v67 = &v36[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_132;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_101:
        if (v5 - 1 >= v35)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v75 = &v36[2 * v5 - 2];
        v76 = *v75;
        v77 = &v36[2 * v5];
        v78 = v77[1];
        sub_1004489A0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_121;
        }

        if (v5 > v8[2])
        {
          goto LABEL_122;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v8[2];
        if (v5 >= v79)
        {
          goto LABEL_123;
        }

        v35 = v79 - 1;
        result = memmove(&v36[2 * v5], v77 + 2, 16 * (v79 - 1 - v5));
        v8[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v36[2 * v35];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_124;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_125;
      }

      v49 = &v8[2 * v35];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_127;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_129;
      }

      if (v53 >= v45)
      {
        v71 = &v36[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_135;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

    break;
  }

  v25 = *a3;
  v26 = *a3 + 16 * v7 - 16;
  v27 = v9 - v7;
LABEL_47:
  v28 = *(v25 + 16 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *v30;
    if (v28 > 1)
    {
      if (v28 == 2 && v31 == 3)
      {
        goto LABEL_54;
      }

LABEL_46:
      ++v7;
      v26 += 16;
      --v27;
      if (v7 == v6)
      {
        v7 = v6;
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    if (v28 && v31 < 2)
    {
      goto LABEL_46;
    }

LABEL_54:
    if (!v25)
    {
      break;
    }

    v32 = *(v30 + 3);
    *(v30 + 1) = *v30;
    *v30 = v28;
    *(v30 + 1) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_100447D70(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v179 = a1;
  v191 = type metadata accessor for FMItemCellViewModel();
  v186 = *(v191 - 8);
  v8 = __chkstk_darwin(v191);
  v182 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v193 = &v172 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v172 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v172 - v16;
  v18 = __chkstk_darwin(v15);
  v190 = (&v172 - v19);
  v20 = __chkstk_darwin(v18);
  v187 = &v172 - v21;
  v22 = __chkstk_darwin(v20);
  v174 = &v172 - v23;
  result = __chkstk_darwin(v22);
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_111:
    v30 = *v179;
    if (!*v179)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_10025EFD4(v28);
      v28 = result;
    }

    v199 = v28;
    v167 = *(v28 + 16);
    if (v167 >= 2)
    {
      while (*a3)
      {
        v168 = *(v28 + 16 * v167);
        v169 = v28;
        v170 = *(v28 + 16 * (v167 - 1) + 32);
        v28 = *(v28 + 16 * (v167 - 1) + 40);
        sub_100448BDC(*a3 + *(v186 + 72) * v168, *a3 + *(v186 + 72) * v170, *a3 + *(v186 + 72) * v28, v30);
        if (v5)
        {
        }

        if (v28 < v168)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_10025EFD4(v169);
        }

        if (v167 - 2 >= *(v169 + 2))
        {
          goto LABEL_137;
        }

        v171 = &v169[16 * v167];
        *v171 = v168;
        *(v171 + 1) = v28;
        v199 = v169;
        result = sub_10025EF48(v167 - 1);
        v28 = v199;
        v167 = *(v199 + 16);
        if (v167 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v175 = &v172 - v25;
  v173 = a4;
  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v180 = a3;
  v194 = v14;
  while (1)
  {
    v29 = v27;
    v30 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v184 = v26;
    v31 = *a3;
    v32 = *(v186 + 72);
    v188 = v27 + 1;
    v33 = v175;
    sub_10044B1A0(v31 + v32 * v30, v175, type metadata accessor for FMItemCellViewModel);
    v189 = v32;
    v34 = v31 + v32 * v29;
    v35 = v174;
    sub_10044B1A0(v34, v174, type metadata accessor for FMItemCellViewModel);
    v36 = *(v33 + 80);
    v37 = *(v35 + 80);
    v176 = v28;
    v177 = v5;
    if (v36 == v37)
    {
      v38 = *(v33 + 72);
      v39 = *(v35 + 72);
      v40 = v33;
      if (v38 == v39)
      {
        v41 = *(v33 + 112);
        v43 = *(v33 + 16);
        v42 = *(v33 + 24);
        v197 = *(v33 + 104);
        v198 = v41;

        v44._countAndFlagsBits = v43;
        v44._object = v42;
        String.append(_:)(v44);
        v46 = v197;
        v45 = v198;
        v47 = *(v35 + 112);
        v48 = v29;
        v49 = *(v35 + 16);
        v50 = *(v35 + 24);
        v197 = *(v35 + 104);
        v198 = v47;

        v51._countAndFlagsBits = v49;
        v51._object = v50;
        String.append(_:)(v51);
        v52 = v197;
        v53 = v198;
        v197 = v46;
        v198 = v45;
        v40 = v175;
        v195 = v52;
        v196 = v53;
        sub_100035F3C();
        v54 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v29 = v48;

        v55 = v54 == -1;
      }

      else
      {
        v55 = v38 < v39;
      }

      LODWORD(v185) = v55;
    }

    else
    {
      LODWORD(v185) = v36 < v37;
      v40 = v33;
    }

    sub_10044B208(v35, type metadata accessor for FMItemCellViewModel);
    result = sub_10044B208(v40, type metadata accessor for FMItemCellViewModel);
    v178 = v29;
    v56 = v29 + 2;
    v57 = v188;
    v58 = v189 * (v29 + 2);
    v30 = v31 + v58;
    v59 = v189 * v188;
    v60 = v31 + v189 * v188;
    do
    {
      v5 = v56;
      v63 = v57;
      a3 = v59;
      v28 = v58;
      if (v56 >= v184)
      {
        break;
      }

      v192 = v56;
      v64 = v187;
      sub_10044B1A0(v30, v187, type metadata accessor for FMItemCellViewModel);
      v65 = v190;
      sub_10044B1A0(v60, v190, type metadata accessor for FMItemCellViewModel);
      v66 = v65;
      v67 = *(v64 + 80);
      v68 = *(v65 + 10);
      v69 = v67 < v68;
      if (v67 == v68 && (v70 = *(v64 + 72), v71 = *(v65 + 9), v69 = v70 < v71, v70 == v71))
      {
        v72 = *(v64 + 112);
        v73 = *(v64 + 16);
        v74 = *(v64 + 24);
        v197 = *(v64 + 104);
        v198 = v72;

        v75._countAndFlagsBits = v73;
        v75._object = v74;
        String.append(_:)(v75);
        v76 = v198;
        v188 = v197;
        v183 = v198;
        v77 = v190[14];
        v78 = v190[2];
        v79 = v190[3];
        v197 = v190[13];
        v198 = v77;

        v80._countAndFlagsBits = v78;
        v80._object = v79;
        String.append(_:)(v80);
        v81 = v197;
        v82 = v198;
        v197 = v188;
        v198 = v76;
        v64 = v187;
        v195 = v81;
        v196 = v82;
        sub_100035F3C();
        v83 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v66 = v190;
        v61 = v83 == -1;
      }

      else
      {
        v61 = v69;
      }

      sub_10044B208(v66, type metadata accessor for FMItemCellViewModel);
      result = sub_10044B208(v64, type metadata accessor for FMItemCellViewModel);
      v5 = v192;
      v56 = v192 + 1;
      v30 += v189;
      v60 += v189;
      v57 = v63 + 1;
      v59 = a3 + v189;
      v58 = v28 + v189;
      v62 = v185 == v61;
      v14 = v194;
    }

    while (v62);
    if (!v185)
    {
      goto LABEL_35;
    }

    v29 = v178;
    if (v5 < v178)
    {
      goto LABEL_140;
    }

    if (v178 < v5)
    {
      v84 = v178 * v189;
      do
      {
        if (v29 != v63)
        {
          v86 = *v180;
          if (!*v180)
          {
            goto LABEL_146;
          }

          sub_10019AA14(v86 + v84, v182);
          if (v84 < a3 || v86 + v84 >= (v86 + v28))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v84 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_10019AA14(v182, a3 + v86);
          v14 = v194;
        }

        ++v29;
        a3 = (a3 - v189);
        v28 -= v189;
        v84 += v189;
      }

      while (v29 < v63--);
LABEL_35:
      v30 = v5;
      v5 = v177;
      a3 = v180;
      v28 = v176;
      v29 = v178;
      goto LABEL_37;
    }

    v30 = v5;
    v5 = v177;
    a3 = v180;
    v28 = v176;
LABEL_37:
    v87 = a3[1];
    if (v30 < v87)
    {
      if (__OFSUB__(v30, v29))
      {
        goto LABEL_139;
      }

      if (v30 - v29 < v173)
      {
        v88 = v29 + v173;
        if (__OFADD__(v29, v173))
        {
          goto LABEL_141;
        }

        if (v88 >= v87)
        {
          v88 = a3[1];
        }

        if (v88 < v29)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v30 != v88)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v30 < v29)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v188 = v30;
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v120 = *(v28 + 16);
    v119 = *(v28 + 24);
    v121 = v120 + 1;
    if (v120 >= v119 >> 1)
    {
      result = sub_10008B8B8((v119 > 1), v120 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v121;
    v122 = v28 + 16 * v120;
    v123 = v188;
    *(v122 + 32) = v29;
    *(v122 + 40) = v123;
    v30 = *v179;
    if (!*v179)
    {
      goto LABEL_148;
    }

    if (v120)
    {
      while (1)
      {
        v124 = v121 - 1;
        if (v121 >= 4)
        {
          break;
        }

        if (v121 == 3)
        {
          v125 = *(v28 + 32);
          v126 = *(v28 + 40);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_80:
          if (v128)
          {
            goto LABEL_127;
          }

          v141 = (v28 + 16 * v121);
          v143 = *v141;
          v142 = v141[1];
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_130;
          }

          v147 = (v28 + 32 + 16 * v124);
          v149 = *v147;
          v148 = v147[1];
          v135 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v135)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v145, v150))
          {
            goto LABEL_134;
          }

          if (v145 + v150 >= v127)
          {
            if (v127 < v150)
            {
              v124 = v121 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v151 = (v28 + 16 * v121);
        v153 = *v151;
        v152 = v151[1];
        v135 = __OFSUB__(v152, v153);
        v145 = v152 - v153;
        v146 = v135;
LABEL_94:
        if (v146)
        {
          goto LABEL_129;
        }

        v154 = v28 + 16 * v124;
        v156 = *(v154 + 32);
        v155 = *(v154 + 40);
        v135 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v135)
        {
          goto LABEL_132;
        }

        if (v157 < v145)
        {
          goto LABEL_3;
        }

LABEL_101:
        v162 = v124 - 1;
        if (v124 - 1 >= v121)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v163 = v28;
        v164 = *(v28 + 32 + 16 * v162);
        v165 = *(v28 + 32 + 16 * v124);
        v28 = *(v28 + 32 + 16 * v124 + 8);
        sub_100448BDC(*a3 + *(v186 + 72) * v164, *a3 + *(v186 + 72) * v165, *a3 + *(v186 + 72) * v28, v30);
        if (v5)
        {
        }

        if (v28 < v164)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_10025EFD4(v163);
        }

        if (v162 >= *(v163 + 2))
        {
          goto LABEL_124;
        }

        v166 = &v163[16 * v162];
        *(v166 + 4) = v164;
        *(v166 + 5) = v28;
        v199 = v163;
        result = sub_10025EF48(v124);
        v28 = v199;
        v121 = *(v199 + 16);
        v14 = v194;
        if (v121 <= 1)
        {
          goto LABEL_3;
        }
      }

      v129 = v28 + 32 + 16 * v121;
      v130 = *(v129 - 64);
      v131 = *(v129 - 56);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_125;
      }

      v134 = *(v129 - 48);
      v133 = *(v129 - 40);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_126;
      }

      v136 = (v28 + 16 * v121);
      v138 = *v136;
      v137 = v136[1];
      v135 = __OFSUB__(v137, v138);
      v139 = v137 - v138;
      if (v135)
      {
        goto LABEL_128;
      }

      v135 = __OFADD__(v127, v139);
      v140 = v127 + v139;
      if (v135)
      {
        goto LABEL_131;
      }

      if (v140 >= v132)
      {
        v158 = (v28 + 32 + 16 * v124);
        v160 = *v158;
        v159 = v158[1];
        v135 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v135)
        {
          goto LABEL_135;
        }

        if (v127 < v161)
        {
          v124 = v121 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v188;
    if (v188 >= v26)
    {
      goto LABEL_111;
    }
  }

  v176 = v28;
  v177 = v5;
  v89 = *a3;
  v90 = *(v186 + 72);
  v91 = *a3 + v90 * (v30 - 1);
  v92 = -v90;
  v178 = v29;
  v93 = v29 - v30;
  v192 = v89;
  v181 = v90;
  v94 = v89 + v30 * v90;
  v183 = v88;
LABEL_47:
  v188 = v30;
  v189 = v91;
  v184 = v94;
  v185 = v93;
  v95 = v94;
  v96 = v91;
  while (1)
  {
    sub_10044B1A0(v95, v17, type metadata accessor for FMItemCellViewModel);
    sub_10044B1A0(v96, v14, type metadata accessor for FMItemCellViewModel);
    v97 = *(v17 + 10);
    v98 = *(v14 + 10);
    v99 = v97 < v98;
    if (v97 == v98 && (v100 = *(v17 + 9), v101 = *(v14 + 9), v99 = v100 < v101, v100 == v101))
    {
      v102 = *(v17 + 14);
      v103 = *(v17 + 2);
      v104 = *(v17 + 3);
      v197 = *(v17 + 13);
      v198 = v102;

      v105._countAndFlagsBits = v103;
      v105._object = v104;
      String.append(_:)(v105);
      v107 = v197;
      v106 = v198;
      v109 = *(v14 + 13);
      v108 = *(v14 + 14);
      v110 = *(v14 + 2);
      v111 = *(v194 + 3);
      v197 = v109;
      v198 = v108;

      v112._countAndFlagsBits = v110;
      v112._object = v111;
      String.append(_:)(v112);
      v113 = v197;
      v114 = v198;
      v197 = v107;
      v198 = v106;
      v195 = v113;
      v196 = v114;
      sub_100035F3C();
      v115 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      v14 = v194;

      v116 = v115 == -1;
    }

    else
    {
      v116 = v99;
    }

    sub_10044B208(v14, type metadata accessor for FMItemCellViewModel);
    result = sub_10044B208(v17, type metadata accessor for FMItemCellViewModel);
    if (!v116)
    {
LABEL_46:
      v30 = v188 + 1;
      v91 = v189 + v181;
      v93 = v185 - 1;
      v94 = v184 + v181;
      if (v188 + 1 != v183)
      {
        goto LABEL_47;
      }

      v30 = v183;
      v5 = v177;
      a3 = v180;
      v28 = v176;
      v29 = v178;
      goto LABEL_60;
    }

    if (!v192)
    {
      break;
    }

    v117 = v193;
    sub_10019AA14(v95, v193);
    swift_arrayInitWithTakeFrontToBack();
    sub_10019AA14(v117, v96);
    v96 += v92;
    v95 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1004489A0(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_56;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v4;
      if (*v6 > 1u)
      {
        v18 = *v6 == 2 && v15 == 3;
        if (v18)
        {
LABEL_20:
          v17 = v6;
          v18 = v7 == v6;
          v6 += 16;
          if (v18)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else
      {
        if (*v6)
        {
          v16 = v15 >= 2;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          goto LABEL_20;
        }
      }

      v17 = v4;
      v18 = v7 == v4;
      v4 += 16;
      if (v18)
      {
        goto LABEL_12;
      }

LABEL_11:
      *v7 = *v17;
LABEL_12:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_35:
    v19 = v6 - 16;
    v5 -= 16;
    v20 = v14;
    do
    {
      v22 = *(v20 - 16);
      v20 -= 16;
      v21 = v22;
      v23 = *v19;
      v24 = v22 == 1;
      if (v22 <= 1)
      {
        if (!v24 || v23 >= 2)
        {
LABEL_50:
          if (v5 + 16 != v6)
          {
            *v5 = *v19;
          }

          if (v14 <= v4 || (v6 -= 16, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_56;
          }

          goto LABEL_35;
        }
      }

      else if (v21 == 2 && v23 == 3)
      {
        goto LABEL_50;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v20;
      }

      v5 -= 16;
      v14 = v20;
    }

    while (v20 > v4);
    v14 = v20;
  }

LABEL_56:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v27 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v27 >> 4));
  }

  return 1;
}

uint64_t sub_100448BDC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v82 = type metadata accessor for FMItemCellViewModel();
  v8 = __chkstk_darwin(v82);
  v9 = __chkstk_darwin(v8);
  v80 = &v75 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v75 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v75 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_73;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_74;
  }

  v21 = (a2 - a1) / v19;
  v90 = a1;
  v89 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    v83 = v15;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v23;
    if (v23 >= 1)
    {
      v47 = -v19;
      v48 = a4 + v23;
      v78 = a4;
      v81 = -v19;
      v49 = v80;
      do
      {
        v75 = v46;
        v50 = a2;
        a2 += v47;
        v76 = a2;
        v79 = v50;
        while (1)
        {
          if (v50 <= a1)
          {
            v90 = v50;
            v88 = v75;
            goto LABEL_71;
          }

          v51 = a3;
          v77 = v46;
          v52 = v81;
          v53 = v48 + v81;
          sub_10044B1A0(v48 + v81, v49, type metadata accessor for FMItemCellViewModel);
          v54 = v83;
          sub_10044B1A0(a2, v83, type metadata accessor for FMItemCellViewModel);
          v55 = v54;
          v56 = *(v49 + 80);
          v57 = *(v54 + 10);
          v58 = v56 < v57;
          if (v56 == v57 && (v59 = *(v49 + 72), v60 = *(v54 + 9), v58 = v59 < v60, v59 == v60))
          {
            v61 = *(v49 + 112);
            v62 = *(v49 + 16);
            v63 = *(v49 + 24);
            v86 = *(v49 + 104);
            v87 = v61;

            v64._countAndFlagsBits = v62;
            v64._object = v63;
            String.append(_:)(v64);
            v66 = v86;
            v65 = v87;
            v67 = v83[14];
            v68 = v83[2];
            v69 = v83[3];
            v86 = v83[13];
            v87 = v67;

            v70._countAndFlagsBits = v68;
            v70._object = v69;
            String.append(_:)(v70);
            v71 = v86;
            v72 = v87;
            v86 = v66;
            v87 = v65;
            a2 = v76;
            v84 = v71;
            v85 = v72;
            sub_100035F3C();
            v73 = StringProtocol.caseInsensitiveCompare<A>(_:)();
            v52 = v81;

            v55 = v83;
            v74 = v73 == -1;
          }

          else
          {
            v74 = v58;
          }

          a3 = v51 + v52;
          sub_10044B208(v55, type metadata accessor for FMItemCellViewModel);
          sub_10044B208(v49, type metadata accessor for FMItemCellViewModel);
          if (v74)
          {
            break;
          }

          v46 = v53;
          if (v51 < v48 || a3 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v53;
          v50 = v79;
          if (v53 <= v78)
          {
            a2 = v79;
            goto LABEL_70;
          }
        }

        if (v51 < v79 || a3 >= v79)
        {
          swift_arrayInitWithTakeFrontToBack();
          v46 = v77;
        }

        else
        {
          v46 = v77;
          if (v51 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v47 = v81;
      }

      while (v48 > v78);
    }

LABEL_70:
    v90 = a2;
    v88 = v46;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = (a4 + v22);
    v88 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v79 = a3;
      v81 = v19;
      do
      {
        sub_10044B1A0(a2, v17, type metadata accessor for FMItemCellViewModel);
        sub_10044B1A0(a4, v13, type metadata accessor for FMItemCellViewModel);
        v25 = *(v17 + 10);
        v26 = *(v13 + 10);
        v27 = v25 < v26;
        if (v25 == v26 && (v28 = *(v17 + 9), v29 = *(v13 + 9), v27 = v28 < v29, v28 == v29))
        {
          v30 = *(v17 + 14);
          v31 = *(v17 + 2);
          v32 = *(v17 + 3);
          v86 = *(v17 + 13);
          v87 = v30;

          v33._countAndFlagsBits = v31;
          v33._object = v32;
          String.append(_:)(v33);
          v34 = v86;
          v35 = v87;
          v36 = *(v13 + 14);
          v37 = a4;
          v38 = a2;
          v39 = *(v13 + 2);
          v40 = *(v13 + 3);
          v86 = *(v13 + 13);
          v87 = v36;

          v41._countAndFlagsBits = v39;
          v41._object = v40;
          String.append(_:)(v41);
          v42 = v86;
          v43 = v87;
          v86 = v34;
          v87 = v35;
          v84 = v42;
          v85 = v43;
          sub_100035F3C();
          v44 = StringProtocol.caseInsensitiveCompare<A>(_:)();
          v19 = v81;

          a2 = v38;
          a4 = v37;
          a3 = v79;

          v45 = v44 == -1;
        }

        else
        {
          v45 = v27;
        }

        sub_10044B208(v13, type metadata accessor for FMItemCellViewModel);
        sub_10044B208(v17, type metadata accessor for FMItemCellViewModel);
        if (v45)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v89 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v90 = a1;
      }

      while (a4 < v83 && a2 < a3);
    }
  }

LABEL_71:
  sub_10025F0F0(&v90, &v89, &v88);
  return 1;
}

uint64_t sub_100449274()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin(v17);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemsListDataSource: provider didInitialize", v11, 2u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  aBlock[4] = sub_10044A530;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F498;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

void sub_100449608(uint64_t a1)
{
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);
  (*(v3 + 16))(v5, a1, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = FMIPItem.debugDescription.getter();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_100005B4C(v11, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMItemsListDataSource: didUpdate single item %s", v9, 0xCu);
    sub_100006060(v10);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10044983C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v35 = a3;
  v8 = v5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v13 = *(v36 - 8);
  __chkstk_darwin(v36);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100005B14(v16, qword_1006D4630);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v15;
    v20 = v12;
    v21 = v10;
    v22 = v13;
    v23 = v8;
    v24 = a4;
    v25 = a5;
    v26 = v19;
    *v19 = 134217984;
    *(v19 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v17, v18, v34, v26, 0xCu);
    a5 = v25;
    a4 = v24;
    v8 = v23;
    v13 = v22;
    v10 = v21;
    v12 = v20;
    v15 = v33;
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = v8;
  aBlock[4] = a4;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a5;
  v29 = _Block_copy(aBlock);
  v30 = v8;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v37 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v36);
}

uint64_t sub_100449C28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4CD8);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v11, v12, "FMItemsListDataSource: didUpdate %ld shares", v13, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  aBlock[4] = sub_100449FF0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F308;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_10044A010(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  (*(v9 + 16))(v11, a1, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v2;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;
    v19 = FMIPItem.debugDescription.getter();
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_100005B4C(v19, v21, aBlock);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMItemsListDataSource: didUpdate image for item %s", v16, 0xCu);
    sub_100006060(v18);
    v2 = v29;

    v4 = v30;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  aBlock[4] = sub_10044A4FC;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F358;
  v25 = _Block_copy(aBlock);
  v26 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v27 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v34 + 8))(v27, v4);
  return (*(v31 + 8))(v7, v33);
}

void sub_10044A550()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    sub_10007EBC0(&unk_1006BBCC0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v2 + 4) = v4;
    v3->super.isa = v4.super.isa;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMItemsListDataSource: itemAger itemsDidAge %@", v2, 0xCu);
    sub_100012DF0(v3, &unk_1006AF760);
  }
}

BOOL sub_10044A6BC(_BOOL8 result)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
  if (*(v2 + 16) > result)
  {
    return *(v2 + 16 * result + 32) > 1u;
  }

  __break(1u);
  return result;
}

uint64_t sub_10044A6EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    sub_10000905C(0, &qword_1006BBCB0);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
    *(v11 + 4) = v13;
    v12->super.isa = v13.super.isa;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemsListDataSource: locationProvider didUpdate locations %@", v11, 0xCu);
    sub_100012DF0(v12, &unk_1006AF760);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_10044B97C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F538;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v19);
}

void sub_10044AB00(unint64_t a1)
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
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemsListDataSource: numberOfRowsInSection %ld", v7, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(*(v2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel) + 16) <= a1)
  {
LABEL_9:
    __break(1u);
  }
}

void sub_10044AC24(unint64_t a1)
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
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemsListDataSource: titleForHeaderInSection %ld", v7, 0xCu);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = *(v2 + OBJC_IVAR____TtC6FindMy21FMItemsListDataSource_cellsViewModel);
  if (*(v8 + 16) <= a1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = *(v8 + 16 * a1 + 32);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = "RED_WITH_ME_SECTION_TITLE";
      v10 = 0xD000000000000027;
    }

    else
    {
      v11 = "FindMy.FMItemsListDataSource";
      v10 = 0xD000000000000029;
    }
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v10 = 0xD000000000000020;
    v11 = "RED_BY_ME_SECTION_TITLE";
  }

  v12 = [objc_opt_self() mainBundle];
  v16._object = 0x800000010057D3F0;
  v13._object = (v11 | 0x8000000000000000);
  v14.value._object = 0x800000010057D3D0;
  v16._countAndFlagsBits = 0xD000000000000018;
  v13._countAndFlagsBits = v10;
  v14.value._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v16);
}

uint64_t sub_10044AE24()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10044B97C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063F4E8;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A588(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_10044B104(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(type metadata accessor for FMIPItem() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  a3(1);
  sub_10044693C(v3 + v6);
}

uint64_t sub_10044B1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10044B208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10044B2C8(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_1004431BC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10044B408(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000EE760;

  return sub_100444754(a1, v7, v8, v1 + v5, v9, v10);
}

void sub_10044B678(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for IndexPath() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10043E138(a1, a2, v6, v7);
}

uint64_t sub_10044B6FC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10044B7C8(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_1004431BC(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10044B8D0()
{
  result = qword_1006C0258;
  if (!qword_1006C0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0258);
  }

  return result;
}

char *sub_10044B9AC()
{
  v1 = v0;
  v2 = type metadata accessor for FMPlatterIcon();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B3298);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v56 - v10;
  v64 = &type metadata for SolariumFeatureFlag;
  v56 = sub_10000BD04();
  v65 = v56;
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v63);
  v12 = 16.0;
  if ((v11 & 1) == 0)
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v12 = *&qword_1006D4798;
  }

  v57 = v5;
  v13 = OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch;
  v14 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *&v1[v13] = sub_100502750(1, v12);
  *&v1[OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v1[OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = [objc_opt_self() mainBundle];
  v66._object = 0x8000000100587910;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEC00000031656C62;
  v18._countAndFlagsBits = 0xD000000000000022;
  v18._object = 0x8000000100599BE0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0xD000000000000017;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v66)._countAndFlagsBits;

  v20 = v60;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v20, 0, 1, v2);
  v21 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v59 = v2;
  *&v1[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleLabel;
  *&v1[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView;
  *&v1[v23] = [objc_allocWithZone(UIStackView) init];
  v24 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackView;
  *&v1[v24] = [objc_allocWithZone(UIStackView) init];
  v25 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_actionButton;
  v26 = objc_opt_self();
  *&v1[v25] = [v26 buttonWithType:1];
  v27 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_secondaryActionButton;
  *&v1[v27] = [v26 buttonWithType:1];
  v28 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_topSeparator;
  *&v1[v28] = [objc_allocWithZone(UIView) init];
  v29 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonSeparator;
  *&v1[v29] = [objc_allocWithZone(UIView) init];
  v30 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentView;
  *&v1[v30] = [objc_allocWithZone(UIView) init];
  v31 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_platterBackgroundView;
  v32 = type metadata accessor for FMPlatterBackgroundView();
  v33 = objc_allocWithZone(v32);
  v33[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v62.receiver = v33;
  v62.super_class = v32;
  v34 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v1[v31] = v34;
  v35 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
  *&v1[v35] = [objc_allocWithZone(UIImageView) init];
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleShowingConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitleHiddenConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_buttonsStackViewTopConstraint] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionEnabled] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isActionButtonHidden] = 1;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isSecondaryActionButtonHidden] = 1;
  v36 = &v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_subtitle];
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_isTransparent] = 0;
  v1[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_fullWidthSeparator] = 0;
  v37 = type metadata accessor for FMPlatterImageAndButtonGroupView();
  v61.receiver = v1;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel;
  v40 = *&v38[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_titleLabel];
  v41 = v38;
  v42 = v40;
  v43 = String._bridgeToObjectiveC()();

  [v42 setText:v43];

  [*&v38[v39] setAdjustsFontForContentSizeCategory:1];
  v44 = *&v38[v39];
  v45 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityIdentifier:v45];

  sub_100243148(v20, v9);
  if ((*(v3 + 48))(v9, 1, v59) == 1)
  {
    v46 = sub_10017D238(v9);
  }

  else
  {
    v47 = v57;
    sub_10015DA28(v9, v57);
    v64 = &type metadata for SolariumFeatureFlag;
    v65 = v56;
    v48 = isFeatureEnabled(_:)();
    sub_100006060(v63);
    if (v48)
    {
      v49 = sub_100438138(0);
      v51 = v50;
      v52 = OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView;
      [*&v41[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView] setImage:v49];
      [*&v41[v52] setTintColor:v51];
      [*&v41[v52] setTintAdjustmentMode:1];
    }

    else
    {
      v49 = *&v41[OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_iconView];
      v51 = sub_10043B9F4(v47, 0);
      [v49 setImage:v51];
    }

    v46 = sub_1000D59F8(v47);
  }

  (*((swift_isaMask & *v41) + 0x1E0))(v46);
  sub_100455CF8();
  (*((swift_isaMask & *v41) + 0x1F8))();
  v53 = v41;
  v54 = String._bridgeToObjectiveC()();
  [v53 setAccessibilityIdentifier:v54];

  sub_10017D238(v60);
  return v53;
}

id sub_10044C204()
{
  sub_100455328();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch);
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber + 8);
  v3 = &v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_title];
  *v3 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber);
  *(v3 + 1) = v2;

  v4 = *&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel];

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  v7 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityIdentifier:v7];

  v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separated] = 0;
  [*&v1[OBJC_IVAR____TtC6FindMy16FMSettingRowView_separator] setHidden:1];
  v8 = *(v0 + OBJC_IVAR____TtC6FindMy32FMPlatterImageAndButtonGroupView_contentStackView);

  return [v8 addArrangedSubview:v1];
}

void sub_10044C3A8()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"showContactDetailsRowTap"];
  [*(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch) addGestureRecognizer:v1];
}

void sub_10044C428(uint64_t a1)
{
  v2 = sub_100123238(a1);
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_phoneNumber);
  *v5 = v2;
  v5[1] = v3;

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch);
  v7 = (v6 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_title);
  *v7 = v2;
  v7[1] = v4;

  v8 = *(v6 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_titleLabel);

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];
}

void sub_10044C510()
{
  if (*(*(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch) + OBJC_IVAR____TtC6FindMy16FMSettingRowView_enabled) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = sub_100208B54();
      v4 = *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController);
      *(v2 + OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_showContactDetailsWelcomeScreenViewController) = v3;
      swift_unknownObjectRelease();
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "FMDeviceShowContactDetailsView: User selected showContactDetails detail label.", v7, 2u);
    }
  }
}

uint64_t sub_10044C6AC()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_delegate);
}

id sub_10044C700()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceShowContactDetailsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10044C7B8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch);
  v4 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v12 = 0x8000000100588AA0;
    v5 = 0x8000000100588A80;
    v6 = 0xD00000000000002FLL;
    v7 = 0xD00000000000001DLL;
  }

  else
  {
    v12 = 0x8000000100588A40;
    v7 = 0xD00000000000001ELL;
    v5 = 0x8000000100588A20;
    v6 = 0xD000000000000030;
  }

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v4, v8, *&v6);

  *(v3 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_subtitle) = v9;

  v10 = *(v3 + OBJC_IVAR____TtC6FindMy16FMSettingRowView_secondaryLabel);

  v11 = v10;
  v13 = String._bridgeToObjectiveC()();

  [v11 setText:v13];
}

uint64_t sub_10044C930()
{
  v1 = v0;
  v8 = &type metadata for SolariumFeatureFlag;
  v9 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
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

  v4 = OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_showContactDetailsSwitch;
  v5 = objc_allocWithZone(type metadata accessor for FMSettingRowView());
  *(v1 + v4) = sub_100502750(1, v3);
  *(v1 + OBJC_IVAR____TtC6FindMy30FMDeviceShowContactDetailsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10044CA40(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() defaultMetrics];
  v7 = objc_opt_self();
  v8 = [v7 systemFontOfSize:a1];
  v9 = [v6 scaledFontForFont:v8];

  [v9 pointSize];
  if (v10 < a1)
  {
    v11 = [v7 systemFontOfSize:a1];

    v9 = v11;
  }

  v12 = [objc_opt_self() configurationWithFont:v9];
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

  if (v14)
  {
    v15 = v14;
    v16 = [v15 imageWithTintColor:a4 renderingMode:1];
  }

  else
  {

    return 0;
  }

  return v16;
}

uint64_t sub_10044CC00()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v15[-v6];
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
    _os_log_impl(&_mh_execute_header, v9, v10, "FMNoPersonView: action tapped", v11, 2u);
  }

  v12 = *(*(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_mediator) + 56);
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v12 + v13, v5);
  swift_beginAccess();

  sub_100058530(v7, v12 + v13);
  swift_endAccess();
  sub_100058594(v5);

  sub_10005D4E4(v5);
  return sub_10005D4E4(v7);
}

id sub_10044CE90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoPersonView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10044CEC4(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136315138;
    if (v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled])
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled])
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100005B4C(v9, v10, v31);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMMultipartEntityListDataSource: updatesEnabled: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v12 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled;
  if (v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled] == 1)
  {
    v13 = *&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator];
    v14 = *(v13 + 24);
    type metadata accessor for FMDevicesSubscription();
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
    swift_unknownObjectWeakInit();

    UUID.init()();
    *(v15 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_10063FAB0;
    swift_unknownObjectWeakAssign();
    v16 = *(v14 + 16);

    os_unfair_lock_lock((v16 + 24));
    sub_10000E7C0((v16 + 16));
    os_unfair_lock_unlock((v16 + 24));

    *&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_deviceSubscription] = v15;

    v17 = *(v13 + 40);
    v18 = sub_1003CB8F4(v4, v17);

    *&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_locationSubscription] = v18;

    LOBYTE(v14) = v4[v12] ^ a1;

    v19 = FMIPManager.devices.getter();

    v20 = *(*(v13 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
    v30 = v20;
    sub_10044E91C(v19, v20, v14 & 1);

    return;
  }

  if (*&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_deviceSubscription])
  {
    v21 = *(*(*&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator] + 24) + 16);

    os_unfair_lock_lock((v21 + 24));
    sub_10008FB6C((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
  }

  v22 = *&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_locationSubscription];
  if (v22)
  {
    v23 = *(*&v4[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator] + 40);
    v24 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v25 = v23;
    v26 = sub_1003CEA10(&v23[v24], v22);
    v27 = *&v23[v24];
    if (v27 >> 62)
    {
      v29 = v26;
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v26 = v29;
      if (v28 >= v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 >= v26)
      {
LABEL_20:
        sub_1003CEA44(v26, v28);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10044D328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_100005B14(v12, qword_1006D4630);
  v14 = *(v6 + 16);
  v14(v11, a1, v5);
  v47 = a1;
  v14(v9, a1, v5);
  v15 = v2;
  v46 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = &qword_1006C0000;
  if (os_log_type_enabled(v16, v17))
  {
    v45 = a2;
    v19 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v48 = v44;
    *v19 = 136315650;
    v20 = IndexPath.debugDescription.getter();
    v22 = v21;
    v43 = *(v6 + 8);
    v43(v11, v5);
    v23 = sub_100005B4C(v20, v22, &v48);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel;
    v25 = *(*&v15[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel] + 16);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2048;
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v27 = *&v15[v24];
    if (result >= *(v27 + 16))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v28 = *(*(v27 + 8 * result + 32) + 16);

    v43(v9, v5);
    *(v19 + 24) = v28;

    _os_log_impl(&_mh_execute_header, v16, v17, "FMMultipartEntityListDataSource: device for index path: %s, section: %ld row: %ld", v19, 0x20u);
    sub_100006060(v44);

    a2 = v45;
    v18 = &qword_1006C0000;
  }

  else
  {

    v29 = *(v6 + 8);
    v29(v9, v5);

    v29(v11, v5);
  }

  v30 = IndexPath.section.getter();
  v31 = v18[93];
  if (v30 >= *(*&v15[v31] + 16))
  {
    goto LABEL_17;
  }

  v32 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v33 = *&v15[v31];
  if (result >= *(v33 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v32 < *(*(v33 + 8 * result + 32) + 16))
  {
    v34 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v34 & 0x8000000000000000) == 0)
    {
      v35 = *&v15[v31];
      if (v34 < *(v35 + 16))
      {
        v36 = result;
        if ((result & 0x8000000000000000) == 0)
        {
          v37 = *(v35 + 8 * v34 + 32);
          if (result < *(v37 + 16))
          {
            v38 = type metadata accessor for FMDeviceCellViewModel();
            return sub_1001104A8(v37 + ((*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80)) + *(*(v38 - 8) + 72) * v36 + *(v38 + 24), a2);
          }

          goto LABEL_27;
        }

LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "FMMultipartEntityListDataSource: Not returning any device... out of bound", v41, 2u);
  }

  v42 = type metadata accessor for FMIPItem();
  return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
}

void sub_10044D830()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator);

  v2 = FMIPManager.devices.getter();

  v3 = *(*(v1 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10044E91C(v2, v3, 0);
}

unint64_t sub_10044D928(void *a1)
{
  v3 = type metadata accessor for FMDeviceCellViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  sub_10007EBC0(&unk_1006BBCD0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = IndexPath.row.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel;
  v15 = *(v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel);
  if (result >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v12 < *(*(v15 + 8 * result + 32) + 16))
  {
    v16 = IndexPath.section.getter();
    result = IndexPath.row.getter();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v17 = *(v1 + v14);
      if (v16 < *(v17 + 16))
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v18 = *(v17 + 8 * v16 + 32);
          if (result < *(v18 + 16))
          {
            sub_100027C48(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * result, v6, type metadata accessor for FMDeviceCellViewModel);
            result = IndexPath.section.getter();
            if ((result & 0x8000000000000000) == 0)
            {
              v19 = *(v1 + v14);
              if (result < *(v19 + 16))
              {
                v20 = *(*(v19 + 8 * result + 32) + 16);
                v21 = IndexPath.row.getter() == v20 - 1;
                *(v11 + qword_1006B72D0) = v21;
                v22 = qword_1006B72B8;
                [*(v11 + qword_1006B72B8) setHidden:?];
                v23 = [v11 containerView];
                [v23 bounds];
                v25 = v24;

                v26 = *(v11 + v22);
                v27 = sub_10052B310();
                sub_100046EA0();
                [v26 setFrame:{v27, v25 + -1.0, v28, 1.0}];
                (*((swift_isaMask & *v11) + 0x168))(v6);
                sub_10002A160(v6, type metadata accessor for FMDeviceCellViewModel);
                return v11;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            return result;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:

  v29 = objc_allocWithZone(UITableViewCell);

  return [v29 init];
}

void sub_10044DDBC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(a1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  v4 = v3;
  sub_10044E91C(a2, v3, 0);
}

uint64_t sub_10044DE3C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  (*(v10 + 16))(v12, a3, v9);
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v6;
    v21 = v20;
    aBlock[0] = v20;
    *v18 = 138412546;
    *(v18 + 4) = v14;
    *v19 = v14;
    *(v18 + 12) = 2080;
    v22 = v14;
    v23 = FMIPDevice.debugDescription.getter();
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMMultipartEntityListDataSource: didUpdate image %@ device %s", v18, 0x16u);
    sub_100012DF0(v19, &unk_1006AF760);

    sub_100006060(v21);
    v6 = v36;

    a1 = v35;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v37;
  *(v28 + 24) = a1;
  aBlock[4] = sub_10045524C;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FD08;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  v32 = v38;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  v33 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v42 + 8))(v33, v6);
  return (*(v39 + 8))(v32, v41);
}

uint64_t sub_10044E39C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWallTime();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = __chkstk_darwin(v4);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22 = &v20 - v7;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delayedUpdateWorkItem;
  if (*(a1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delayedUpdateWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;
  aBlock[4] = sub_100455254;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063FD80;
  _Block_copy(aBlock);
  v25 = _swiftEmptyArrayStorage;
  sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);

  sub_10007EBC0(&unk_1006B0640);
  sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v12 = DispatchWorkItem.init(flags:block:)();

  *(a1 + v9) = v12;

  sub_10000905C(0, &qword_1006AEDC0);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = v21;
  static DispatchWallTime.now()();
  v15 = v22;
  + infix(_:_:)();
  v16 = *(v23 + 8);
  v17 = v14;
  v18 = v24;
  v16(v17, v24);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();

  return (v16)(v15, v18);
}

void sub_10044E720()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = FMIPManager.devices.getter();
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator);
      v5 = v3;

      v6 = *(v4 + 40);

      v7 = *&v6[OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation];
      v8 = v7;
    }

    else
    {
      v7 = 0;
    }

    sub_10044E91C(v2, v7, 0);
  }
}

void sub_10044E820(uint64_t a1, unint64_t a2)
{

  v3 = FMIPManager.devices.getter();

  if (a2 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(a2 + 32);
  }

  v5 = v4;
LABEL_9:
  v6 = v5;
  sub_10044E91C(v3, v5, 0);
}

void sub_10044E91C(uint64_t a1, void *a2, int a3)
{
  v92 = a3;
  v93 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMIPDevice();
  v94 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = __chkstk_darwin(v16);
  v101 = &v77 - v20;
  __chkstk_darwin(v19);
  v22 = __chkstk_darwin(&v77 - v21);
  v100 = v3;
  if (v3[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled] == 1)
  {
    v88 = v22;
    v86 = v26;
    v87 = v25;
    v89 = v24;
    v80 = v12;
    v81 = v10;
    v82 = v8;
    v83 = v9;
    v84 = v6;
    v85 = v5;
    v27 = *(a1 + 16);
    v90 = &v77 - v23;
    v91 = v27;
    v28 = v101;
    if (v27)
    {
      v29 = *(v94 + 16);
      v97 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_selectedDevice;
      v98 = v29;
      v30 = *(v94 + 80);
      v78 = ~v30;
      v79 = v30;
      v31 = (a1 + ((v30 + 32) & ~v30));
      v32 = (v94 + 8);
      v99 = v94 + 16;
      v95 = *(v94 + 72);
      v96 = (v94 + 8);
      v33 = v91;
      while (1)
      {
        v34 = v98;
        v98(v28, v31, v13);
        v35 = FMIPDevice.identifier.getter();
        v37 = v36;
        v34(v18, &v100[v97], v13);
        v38 = FMIPDevice.identifier.getter();
        v40 = v39;
        v41 = *v32;
        v42 = v13;
        v102 = v41;
        v41(v18, v13);
        if (v35 == v38 && v37 == v40)
        {
          break;
        }

        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v43)
        {
          goto LABEL_14;
        }

        v28 = v101;
        v13 = v42;
        v44 = v42;
        v32 = v96;
        v102(v101, v44);
        v31 += v95;
        if (!--v33)
        {
          goto LABEL_8;
        }
      }

LABEL_14:
      v49 = *(v94 + 32);
      v50 = v88;
      v51 = v42;
      v49(v88, v101, v42);
      v52 = v90;
      v49(v90, v50, v42);
      v53 = v100;
      if ([*&v100[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_tableView] isEditing])
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_100005B14(v54, qword_1006D4630);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "FMMultipartEntityListDataSource: Ignoring data source update due to editing mode", v57, 2u);
        }

        v102(v52, v42);
      }

      else
      {
        v58 = *&v53[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel];
        v59 = v87;
        v60 = v98;
        v98(v87, v52, v51);
        v60(v89, v59, v51);
        v61 = (v79 + 24) & v78;
        v62 = (v86 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        v63 = swift_allocObject();
        *(v63 + 16) = v53;
        v49(v63 + v61, v59, v51);
        v64 = v93;
        *(v63 + v62) = v93;
        v65 = v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
        *v65 = v58;
        v66 = v92;
        *(v65 + 8) = v92 & 1;
        v67 = v64;
        v68 = v53;

        if (v91 < 0xB || (v66 & 1) != 0)
        {

          v74 = v68;
          v75 = v89;
          sub_10044F284(v74, v89, v64, v58, v66 & 1);

          v76 = v102;
          v102(v75, v51);
          v76(v90, v51);
        }

        else
        {
          v102(v89, v51);
          v101 = *&v68[OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updateQueue];
          v69 = swift_allocObject();
          *(v69 + 16) = sub_100455144;
          *(v69 + 24) = v63;
          aBlock[4] = sub_100009624;
          aBlock[5] = v69;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004AE4;
          aBlock[3] = &unk_10063FC40;
          v70 = _Block_copy(aBlock);

          v71 = v80;
          static DispatchQoS.unspecified.getter();
          v103 = _swiftEmptyArrayStorage;
          sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
          sub_10007EBC0(&unk_1006B0640);
          sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
          v72 = v82;
          v73 = v85;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v70);

          (*(v84 + 8))(v72, v73);
          (*(v81 + 8))(v71, v83);
          v102(v90, v51);
        }
      }
    }

    else
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_100005B14(v45, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMMultipartEntityListDataSource: Did not update selected device", v48, 2u);
      }
    }
  }
}

uint64_t sub_10044F284(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FMIPDevice();
  v13 = *(v51 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v51);
  v50 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  v49 = a2;
  v18 = sub_10044FF50(a2, a3);

  v20 = sub_10034A06C(v19);

  v21 = sub_10052A81C(v20);

  sub_100036B80(v21);

  if (sub_100245174(v18, a4) & 1) == 0 || (a5)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100005B14(v23, qword_1006D4630);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = *(v18 + 16);

      *(v26 + 12) = 2048;
      *(v26 + 14) = *(a4 + 16);

      _os_log_impl(&_mh_execute_header, v24, v25, "FMMultipartEntityListDataSource: reloading table view new: %ld, old: %ld", v26, 0x16u);
    }

    else
    {
    }

    v27 = v50;
    v28 = *(v13 + 16);
    v29 = v51;
    v28(v17, v49, v51);
    v28(v27, v17, v29);
    v30 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v18;
    *(v31 + 24) = a1;
    (*(v13 + 32))(v31 + v30, v17, v29);
    v32 = objc_opt_self();

    v33 = a1;
    v34 = [v32 currentThread];
    v35 = [v34 isMainThread];

    if (v35)
    {
      sub_10044F938(v18, v33);

      return (*(v13 + 8))(v27, v29);
    }

    else
    {
      (*(v13 + 8))(v27, v29);

      sub_10000905C(0, &qword_1006AEDC0);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1004551E8;
      *(v37 + 24) = v31;
      aBlock[4] = sub_1000CE0E8;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063FCB8;
      v38 = _Block_copy(aBlock);

      v39 = v43;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A5D0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640);
      sub_100004044(&qword_1006AEDF0, &unk_1006B0640);
      v40 = v45;
      v41 = v48;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v47 + 8))(v40, v41);
      return (*(v44 + 8))(v39, v46);
    }
  }

  else
  {
  }
}

uint64_t sub_10044F938(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36 = v11;
    *v10 = 136315138;
    sub_10007EBC0(&unk_1006C0340);
    v12 = Array.debugDescription.getter();
    v14 = sub_100005B4C(v12, v13, &v36);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMMultipartEntityListDataSource: model update with %s", v10, 0xCu);
    sub_100006060(v11);
  }

  *(a2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_cellsViewModel) = a1;

  sub_100037FA8();
  v15 = a2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(a2, &off_10063F9C8, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  FMIPDevice.itemGroup.getter();
  v18 = type metadata accessor for FMIPItemGroup();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_100012DF0(v6, &unk_1006BB1C0);
LABEL_11:
    v33 = (a2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_listSubtitle);
    *v33 = 0;
    v33[1] = 0;
  }

  v20 = FMIPItemGroup.items.getter();
  (*(v19 + 8))(v6, v18);
  v21 = *(v20 + 16);

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = [objc_opt_self() mainBundle];
  v37._object = 0x8000000100599EA0;
  v23._object = 0x8000000100599E70;
  v37._countAndFlagsBits = 0xD000000000000034;
  v23._countAndFlagsBits = 0xD000000000000022;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v37);

  sub_10007EBC0(&unk_1006B20B0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100552220;
  v36 = v21;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_10008EE84();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = String.init(format:_:)();
  v31 = v30;

  v32 = (a2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_listSubtitle);
  *v32 = v29;
  v32[1] = v31;
}

uint64_t sub_10044FD80()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "FMMultipartEntityListDataSource: updateListTitle", v9, 2u);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_selectedDevice, v2);
  v10 = FMIPDevice.name.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13 = (v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource__listTitle);
  *v13 = v10;
  v13[1] = v12;
}

uint64_t sub_10044FF50(uint64_t a1, void *a2)
{
  v168 = a2;
  v3 = type metadata accessor for FMDeviceCellViewModel();
  v137 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v163 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v136 - v6;
  v8 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v8 - 8);
  v160 = &v136 - v9;
  v10 = sub_10007EBC0(&unk_1006C0220);
  __chkstk_darwin(v10 - 8);
  v159 = &v136 - v11;
  v158 = type metadata accessor for FMIPSafeLocationType();
  v12 = *(v158 - 8);
  __chkstk_darwin(v158);
  v157 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for FMIPDevice();
  v184 = *(v177 - 8);
  v14 = __chkstk_darwin(v177);
  v173 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v156 = &v136 - v16;
  v140 = type metadata accessor for FMIPDeviceImageCacheRequest();
  v17 = *(v140 - 8);
  v18 = __chkstk_darwin(v140);
  v136 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v175 = &v136 - v20;
  v21 = type metadata accessor for FMIPDeviceImageSize();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v154 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v136 - v25;
  v180 = type metadata accessor for FMIPItem();
  v162 = *(v180 - 8);
  __chkstk_darwin(v180);
  v182 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10007EBC0(&qword_1006B07D0);
  v29 = __chkstk_darwin(v28 - 8);
  v172 = &v136 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v165 = &v136 - v32;
  __chkstk_darwin(v31);
  v164 = &v136 - v33;
  v34 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v34 - 8);
  v36 = &v136 - v35;
  v186 = &_swiftEmptyDictionarySingleton;
  v179 = a1;
  FMIPDevice.itemGroup.getter();
  v37 = type metadata accessor for FMIPItemGroup();
  v38 = *(v37 - 8);
  v39 = (*(v38 + 48))(v36, 1, v37);
  v155 = v21;
  v178 = v26;
  if (v39 == 1)
  {
    sub_100012DF0(v36, &unk_1006BB1C0);
    v40 = _swiftEmptySetSingleton;
  }

  else
  {
    v40 = FMIPItemGroup.groupedItems.getter();
    (*(v38 + 8))(v36, v37);
  }

  v41 = 0;
  v42 = v40 + 7;
  v43 = 1 << *(v40 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v40[7];
  v153 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator;
  v46 = (v43 + 63) >> 6;
  v174 = (v162 + 48);
  v152 = (v162 + 32);
  v151 = enum case for FMIPDeviceImageSize.list(_:);
  v150 = (v22 + 104);
  v176 = (v184 + 2);
  v149 = (v22 + 16);
  v148 = (v17 + 8);
  v147 = (v22 + 8);
  v146 = enum case for FMIPSafeLocationType.home(_:);
  v145 = (v12 + 104);
  v144 = (v12 + 8);
  v143 = (v162 + 16);
  v142 = (v162 + 56);
  v138 = (v162 + 8);
  v47 = &unk_100552820;
  v141 = v7;
  v48 = v180;
  v49 = v182;
  v50 = v165;
  v51 = v164;
  v171 = v40;
  v170 = v46;
  v139 = v40 + 7;
  while (v45)
  {
LABEL_14:
    v55 = *(v40[6] + ((v41 << 9) | (8 * __clz(__rbit64(v45)))));

    static FMIPItemGroup.primaryPart(group:)();
    sub_1001104A8(v51, v50);
    if ((*v174)(v50, 1, v48) == 1)
    {
      v52 = v47;
      sub_100012DF0(v51, &qword_1006B07D0);

      v53 = v50;
      v40 = v171;
      goto LABEL_8;
    }

    v181 = v55;
    (*v152)(v49, v50, v48);
    v56 = FMIPItem.owner.getter();
    if (v186[2])
    {
      sub_10000726C(v56, v57);
      v59 = v58;

      v60 = v176;
      v61 = v177;
      if (v59)
      {
        goto LABEL_20;
      }
    }

    else
    {

      v60 = v176;
      v61 = v177;
    }

    v62 = FMIPItem.owner.getter();
    v64 = v63;
    v65 = v186;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v185[0] = v65;
    sub_1001BB384(_swiftEmptyArrayStorage, v62, v64, isUniquelyReferenced_nonNull_native);

    v186 = v185[0];
LABEL_20:
    v183 = *(v161 + v153);
    v67 = v178;
    v68 = v155;
    (*v150)(v178, v151, v155);
    v69 = v156;
    v169 = *v60;
    v169(v156, v179, v61);
    v70 = v154;
    v167 = *v149;
    v167(v154, v67, v68);
    v71 = objc_opt_self();

    v166 = v71;
    v72 = [v71 mainScreen];
    [v72 scale];

    FMIPDeviceImageCacheRequest.init(itemParts:device:size:scale:)();
    dispatch thunk of FMImageCache.cachedImage(for:completion:)();
    v73 = v148;
    v184 = v185[0];
    if (v185[0])
    {

      (*v73)(v175, v140);
    }

    else
    {
      v169(v69, v179, v177);
      v167(v70, v178, v68);
      v74 = [v166 mainScreen];
      [v74 scale];

      v75 = v136;
      FMIPDeviceImageCacheRequest.init(device:size:scale:)();
      dispatch thunk of FMImageCache.cachedImage(for:completion:)();
      v76 = *v73;
      v77 = v75;
      v78 = v140;
      (*v73)(v77, v140);

      v184 = v185[5];
      v76(v175, v78);
    }

    (*v147)(v178, v68);
    v79 = v183;

    v167 = FMIPManager.familyMembers.getter();

    v80 = v157;
    v81 = v158;
    (*v145)(v157, v146, v158);

    v82 = v159;
    v49 = v182;
    FMIPItem.location.getter();
    v83 = v160;
    sub_1000E698C(v80, v82, v160);

    sub_100012DF0(v82, &unk_1006C0220);
    v84 = v79;
    (*v144)(v80, v81);
    v85 = type metadata accessor for FMIPSafeLocation();
    LODWORD(v166) = (*(*(v85 - 8) + 48))(v83, 1, v85);
    sub_100012DF0(v83, &unk_1006BB1B0);
    v169(v173, v179, v177);
    v86 = v172;
    v87 = v180;
    (*v143)(v172, v49, v180);
    (*v142)(v86, 0, 1, v87);
    v88 = *(v84[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
    v89 = v181;
    v90 = v181[2];
    if (v90)
    {
      v91 = sub_10008C8B4(v181[2], 0);
      v181 = sub_1004A2330(v185, &v91[(*(v162 + 80) + 32) & ~*(v162 + 80)], v90, v89);
      v92 = v184;
      v93 = v168;

      sub_1002204D4();
      v94 = v141;
      if (v181 != v90)
      {
        goto LABEL_61;
      }

      v95 = v168;
      v49 = v182;
      v96 = v183;
      v97 = v184;
    }

    else
    {
      v97 = v184;
      v98 = v184;
      v95 = v168;
      v99 = v168;

      v96 = v84;
      v91 = _swiftEmptyArrayStorage;
      v94 = v141;
    }

    sub_1003104DC(v96, v173, v172, v97, v95, v88 ^ 1, v167, v166 != 1, v94, v91, 1u);
    v100 = FMIPItem.owner.getter();
    v103 = sub_1004B1E10(v185, v100, v101);
    if (*v102)
    {
      v104 = v102;
      sub_100027C48(v94, v163, type metadata accessor for FMDeviceCellViewModel);
      v105 = *v104;
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *v104 = v105;
      if ((v106 & 1) == 0)
      {
        v105 = sub_10008BBF0(0, v105[2] + 1, 1, v105);
        *v104 = v105;
      }

      v108 = v105[2];
      v107 = v105[3];
      if (v108 >= v107 >> 1)
      {
        v105 = sub_10008BBF0(v107 > 1, v108 + 1, 1, v105);
        *v104 = v105;
      }

      v50 = v165;
      v105[2] = v108 + 1;
      sub_10032AA04(v163, v105 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v108);
      (v103)(v185, 0);

      sub_10002A160(v94, type metadata accessor for FMDeviceCellViewModel);
      v49 = v182;
      v48 = v180;
      (*v138)(v182);
      v51 = v164;
      v53 = v164;
    }

    else
    {
      (v103)(v185, 0);

      sub_10002A160(v94, type metadata accessor for FMDeviceCellViewModel);
      v48 = v180;
      (*v138)(v49);
      v51 = v164;
      v53 = v164;
      v50 = v165;
    }

    v40 = v171;
    v42 = v139;
    v52 = &unk_100552820;
LABEL_8:
    v45 &= v45 - 1;
    sub_100012DF0(v53, &qword_1006B07D0);
    v46 = v170;
    v47 = v52;
  }

  while (1)
  {
    v54 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v54 >= v46)
    {
      break;
    }

    v45 = v42[v54];
    ++v41;
    if (v45)
    {
      v41 = v54;
      goto LABEL_14;
    }
  }

  v109 = v186 + 8;
  v110 = 1 << *(v186 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & v186[8];
  v113 = (v110 + 63) >> 6;
  v183 = v186;

  v114 = 0;
  v181 = _swiftEmptyArrayStorage;
  v182 = v113;
  v184 = _swiftEmptyArrayStorage;
  while (v112)
  {
LABEL_43:
    v116 = v109;
    v117 = __clz(__rbit64(v112)) | (v114 << 6);
    v118 = (v183[6] + 16 * v117);
    v120 = *v118;
    v119 = v118[1];
    v185[0] = *(v183[7] + 8 * v117);
    swift_bridgeObjectRetain_n();

    sub_1004521DC(v185);
    v112 &= v112 - 1;

    v121 = v185[0];
    v122 = [objc_opt_self() SPOwner];
    v123 = [v122 destination];

    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    if (v120 == v124 && v119 == v126)
    {

      v109 = v116;
      v113 = v182;
LABEL_54:

      v181 = v121;
      continue;
    }

    v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v109 = v116;
    v113 = v182;
    if (v128)
    {
      goto LABEL_54;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_10008BBCC(0, v184[2] + 1, 1, v184);
    }

    v130 = v184[2];
    v129 = v184[3];
    if (v130 >= v129 >> 1)
    {
      v184 = sub_10008BBCC((v129 > 1), v130 + 1, 1, v184);
    }

    v131 = v184;
    v184[2] = v130 + 1;
    v131[v130 + 4] = v121;
  }

  while (1)
  {
    v115 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v115 >= v113)
    {

      v185[0] = v184;

      sub_100325E50(v185);

      v132 = v185[0];
      v133 = v185[0][2];
      v134 = swift_isUniquelyReferenced_nonNull_native();
      v185[0] = v132;
      if (!v134 || v133 >= v132[3] >> 1)
      {
        v132 = sub_10008BBCC(v134, v133 + 1, 1, v132);
        v185[0] = v132;
      }

      sub_1003CD648(0, 0, 1, v181);

      return v132;
    }

    v112 = v109[v115];
    ++v114;
    if (v112)
    {
      v114 = v115;
      goto LABEL_43;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_1004512E4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FMIPItemState();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = __chkstk_darwin(v5);
  v68 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v74 = v66 - v8;
  v9 = sub_10007EBC0(&qword_1006B07D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v66 - v13;
  v15 = type metadata accessor for FMIPItem();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v73 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v66 - v19;
  v21 = type metadata accessor for FMDeviceCellViewModel();
  v22 = *(v21 + 60);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 != v24)
  {
    return v23 < v24;
  }

  v25 = v21;
  v79 = a2;
  v71 = a1;
  v72 = v2;
  sub_1001104A8(a1 + *(v21 + 24), v14);
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    v27 = v14;
LABEL_7:
    sub_100012DF0(v27, &qword_1006B07D0);
    v31 = v79;
    v32 = v71;
    goto LABEL_8;
  }

  v29 = v14;
  v30 = *(v16 + 32);
  v30(v20, v29, v15);
  sub_1001104A8(v79 + v25[6], v12);
  if (v26(v12, 1, v15) == 1)
  {
    (*(v16 + 8))(v20, v15);
    v27 = v12;
    goto LABEL_7;
  }

  v30(v73, v12, v15);
  v41 = v74;
  FMIPItem.state.getter();
  v42 = v68;
  static FMIPItemState.isBTConnected.getter();
  v43 = sub_10000A5D0(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v44 = v70;
  v66[1] = v43;
  v67 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v69 + 1);
  v45(v42, v44);
  v69 = v45;
  v45(v41, v44);
  v32 = v71;
  if (v67)
  {
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v47 = v42;
    v48 = v69;
    v69(v47, v44);
    v48(v74, v44);
    v49 = *(v16 + 8);
    v49(v73, v15);
    v49(v20, v15);
    v31 = v79;
    if (v46)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v65 = *(v16 + 8);
    v65(v73, v15);
    v65(v20, v15);
    v31 = v79;
  }

LABEL_8:
  v33 = v25[14];
  v34 = round(*(v32 + v33));
  v35 = v34 > -9.22337204e18;
  if (v34 >= 9.22337204e18)
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = 30 * (v34 / 30);
  }

  else
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v37 = round(*(v31 + v33));
  if (v37 > -9.22337204e18 && v37 < 9.22337204e18)
  {
    v39 = 30 * (v37 / 30);
    if (v36 != v39)
    {
      if (v35)
      {
        v40 = 30 * (v34 / 30);
        return v40 < v39;
      }

LABEL_26:
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      return v40 < v39;
    }

LABEL_25:
    v50 = (v32 + v25[17]);
    v51 = v50[1];
    v53 = *(v32 + 16);
    v52 = *(v32 + 24);
    v77 = *v50;
    v78 = v51;

    v54._countAndFlagsBits = v53;
    v54._object = v52;
    String.append(_:)(v54);
    v56 = v77;
    v55 = v78;
    v57 = (v31 + v25[17]);
    v58 = v57[1];
    v59 = *(v31 + 16);
    v60 = *(v31 + 24);
    v77 = *v57;
    v78 = v58;

    v61._countAndFlagsBits = v59;
    v61._object = v60;
    String.append(_:)(v61);
    v62 = v77;
    v63 = v78;
    v77 = v56;
    v78 = v55;
    v75 = v62;
    v76 = v63;
    sub_100035F3C();
    v64 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    return v64 == -1;
  }

  v39 = 0x7FFFFFFFFFFFFFFFLL;
  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (!v35)
  {
    goto LABEL_26;
  }

  v40 = 30 * (v34 / 30);
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  return v40 < v39;
}

uint64_t sub_100451944(uint64_t a1)
{
  v34 = type metadata accessor for FMSelectedSection();
  v3 = __chkstk_darwin(v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v33 - v6;
  v8 = sub_10007EBC0(&qword_1006B07D0);
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v33 = v1;
  sub_10044D328(a1, &v33 - v15);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  sub_1001104A8(v16, v14);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35[0] = v21;
    *v20 = 136315138;
    sub_1001104A8(v14, v11);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_100012DF0(v14, &qword_1006B07D0);
    v25 = sub_100005B4C(v22, v24, v35);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMMultipartEntityListDataSource: select at indexPath, selectedPart?: %s", v20, 0xCu);
    sub_100006060(v21);
  }

  else
  {

    sub_100012DF0(v14, &qword_1006B07D0);
  }

  v26 = v33;
  v27 = *(*(v33 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_mediator) + 56);
  v28 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
  v29 = OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_selectedDevice;
  v30 = type metadata accessor for FMIPDevice();
  (*(*(v30 - 8) + 16))(v7, v26 + v29, v30);
  sub_1001104A8(v16, &v7[v28]);
  swift_storeEnumTagMultiPayload();
  v31 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027C48(v27 + v31, v5, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v7, v27 + v31);
  swift_endAccess();
  sub_100058594(v5);

  sub_10002A160(v5, type metadata accessor for FMSelectedSection);
  sub_10002A160(v7, type metadata accessor for FMSelectedSection);

  FMIPManager.updateLastActiveTimestamp()();
  sub_100012DF0(v16, &qword_1006B07D0);
}

id sub_100451D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMultipartEntityListDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMMultipartEntityListDataSource()
{
  result = qword_1006C0330;
  if (!qword_1006C0330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100451F48()
{
  result = type metadata accessor for FMIPDevice();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_10045205C()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource__listTitle);

  return v1;
}

uint64_t sub_100452098()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_listSubtitle);

  return v1;
}

void sub_1004520D4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled);
  *(v1 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_updatesEnabled) = a1;
  sub_10044CEC4(v2);
}

uint64_t sub_1004520EC()
{

  v0 = FMIPManager.isInitialized.getter();

  return v0 & 1;
}

uint64_t sub_100452138(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC6FindMy31FMMultipartEntityListDataSource_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100452184(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for FMMultipartEntityListDataSource());
  v5 = sub_100454620(a1, a2);

  return v5;
}

Swift::Int sub_1004521DC(void **a1)
{
  v2 = *(type metadata accessor for FMDeviceCellViewModel() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F368(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100452284(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100452284(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FMDeviceCellViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMDeviceCellViewModel() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1004525E0(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1004523B0(0, v2, 1, a1);
  }

  return result;
}