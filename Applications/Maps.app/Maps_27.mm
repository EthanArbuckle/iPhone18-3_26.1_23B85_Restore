id sub_100338198(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4();

  return v7;
}

id sub_1003382D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RefinementsViewModelFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10033832C(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v12 = __chkstk_darwin(v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v55 = v11;
  v15 = [a1 openAt];
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v54 = v10;
  if (![v15 isSelected])
  {

LABEL_11:
    result = [a1 displayName];
    if (!result)
    {
      return result;
    }

    v25 = result;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v26;
  }

  [v16 timeStamp];
  if (v17 != 0.0 || ![v16 isSelected])
  {
    [v16 timeStamp];
    Date.init(timeIntervalSince1970:)();
    v27 = [objc_allocWithZone(NSDateFormatter) init];
    static Calendar.current.getter();
    isa = Calendar._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(v9, v6);
    [v27 setCalendar:isa];

    static Locale.current.getter();
    v29 = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v27 setLocale:v29];

    v30 = String._bridgeToObjectiveC()();
    [v27 setDateFormat:v30];

    v31 = Date._bridgeToObjectiveC()().super.isa;
    v32 = [v27 stringFromDate:v31];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if ([v16 isNextDay])
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v36._countAndFlagsBits = 0xD000000000000011;
      v37._countAndFlagsBits = 0xD00000000000001ALL;
      v56._object = 0x800000010122F650;
      v37._object = 0x800000010122F610;
      v36._object = 0x800000010122F630;
      v56._countAndFlagsBits = 0xD000000000000054;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, qword_1019600D8, v36, v56);
      sub_1000CE6B8(&unk_10190D5C0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1011E1D30;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000DA61C();
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v26 = String.init(format:_:)();
    }

    else
    {
      v39 = String._bridgeToObjectiveC()();
      [v27 setDateFormat:v39];

      v40 = [objc_allocWithZone(NSNumberFormatter) init];
      v41 = Date._bridgeToObjectiveC()().super.isa;
      v42 = [v27 stringFromDate:v41];

      if (!v42)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = String._bridgeToObjectiveC()();
      }

      v43 = [v40 numberFromString:v42];

      if (v43 && (v44 = [v43 integerValue], v43, v44 == 1))
      {
        v45 = "ample Open At 21:30";
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v46.super.isa = qword_1019600D8;
        v47 = 0xD00000000000001BLL;
      }

      else
      {
        v45 = "or refinement view.";
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v46.super.isa = qword_1019600D8;
        v47 = 0xD000000000000019;
      }

      v57._object = 0x800000010122F5A0;
      v48 = v45 | 0x8000000000000000;
      v49._countAndFlagsBits = 0x207441206E65704FLL;
      v49._object = 0xEA00000000004025;
      v57._countAndFlagsBits = 0xD000000000000043;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v47, 0, v46, v49, v57);
      sub_1000CE6B8(&unk_10190D5C0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1011E1D30;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_1000DA61C();
      *(v50 + 32) = v33;
      *(v50 + 40) = v35;
      v26 = static String.localizedStringWithFormat(_:_:)();
    }

    (*(v55 + 8))(v14, v54);
    return v26;
  }

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100021540(v18, qword_101960018);
  v19 = v16;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    [v19 timeStamp];
    *(v22 + 4) = v23;
    *(v22 + 12) = 1024;
    *(v22 + 14) = [v19 isSelected];

    _os_log_impl(&_mh_execute_header, v20, v21, "The openAt timestamp is %f and openAt selection is %{BOOL}d.", v22, 0x12u);
  }

  else
  {

    v20 = v19;
  }

  v51 = [a1 displayName];
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v53;
  }

  return 0;
}

uint64_t sub_100338B88(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191A398);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100338BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_100338C58(id result)
{
  if (result)
  {
    result = [result openAt];
    if (result)
    {
      v1 = result;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v12._object = 0x800000010122F550;
      v2._countAndFlagsBits = 0xE27461206E65704FLL;
      v3._object = 0x800000010122F530;
      v12._countAndFlagsBits = 0xD000000000000023;
      v3._countAndFlagsBits = 0xD000000000000011;
      v2._object = 0xAA0000000000A680;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v2, v12);
      [v1 timeStamp];
      v5 = v4;
      v6 = [v1 isSelected];
      v7 = [v1 isNextDay];
      v8 = objc_allocWithZone(AllRefinementsViewModelOpenAt);
      v9 = String._bridgeToObjectiveC()();

      v10 = v1;
      v11 = [v8 initWithDisplayName:v9 timeStamp:v6 isSelected:v7 isNextDay:v10 data:v5];

      return v11;
    }
  }

  return result;
}

id sub_100338DF8(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = &stru_10185C000;
  if ([a1 showEqualWidthButtonsOnFilterView])
  {
    v4 = [v2 multiSelect];
    sub_100014C84(0, &unk_10191A370);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v62 = v6 == 0;
    if (v6)
    {
      v7 = 0;
      v8 = 0.0;
      v9 = 1;
LABEL_6:
      v10 = v8;
      v11 = v7;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v12 = *(v5 + 8 * v11 + 32);
        }

        v13 = v12;
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v14 = [v12 displayName];
        if (!v14)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = String._bridgeToObjectiveC()();
        }

        v15 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v14 _maps_sizeWithFont:v15];
        v8 = v16;

        if (v9)
        {
          if (v8 > 0.0)
          {
LABEL_19:
            v9 = 0;
            if (v7 != v6)
            {
              goto LABEL_6;
            }

            v10 = v8;
            goto LABEL_23;
          }
        }

        else if (v8 > v10)
        {
          goto LABEL_19;
        }

        ++v11;
        if (v7 == v6)
        {
          v62 = v9;
LABEL_23:
          v2 = a1;
          v3 = &stru_10185C000;
          goto LABEL_25;
        }
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v10 = 0.0;
LABEL_25:
  }

  else
  {
    v62 = 1;
    v10 = 0.0;
  }

  v17 = [v2 v3[172].name];
  sub_100014C84(0, &unk_10191A370);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64 = _swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
LABEL_71:
    v61 = v6 & 0xFFFFFFFFFFFFFF8;
    v63 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_28;
  }

  v61 = v6 & 0xFFFFFFFFFFFFFF8;
  v63 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
  v18 = 0;
  v60 = _swiftEmptyArrayStorage;
  while (v63 != v18)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *(v61 + 16))
      {
        goto LABEL_68;
      }

      v24 = *(v6 + 8 * v18 + 32);
    }

    v25 = v24;
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v27 = [v24 displayName];
    if (!v27)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = String._bridgeToObjectiveC()();
    }

    v28 = [v25 isSelected];
    if (v62)
    {
      v29 = 0;
    }

    else
    {
      v29 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
    }

    v30 = [v25 refinementKey];
    if (v30)
    {
      v19 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_allocWithZone(AllRefinementsViewModelMultiSelectElement);
    v22 = v25;
    v23 = [v21 initWithDisplayName:v27 isSelected:v28 optionalLabelWidth:v29 refinementKey:v20 data:v22];

    ++v18;
    if (v23)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v60 = v64;
      v18 = v26;
    }
  }

  if (!(v60 >> 62))
  {
    v31 = a1;
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_49;
    }

LABEL_73:

    return 0;
  }

  v31 = a1;
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_73;
  }

LABEL_49:
  v32 = [v31 clauseType] == 1;
  v33 = [v31 maximumNumberOfSelectElements];
  v34 = [v31 showEqualWidthButtonsOnFilterView];
  v35 = [v31 displayNameForMultiSelected];
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = [a1 multiSelectIdentifier];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_100014C84(0, &qword_101922A20);
  v43.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (!v38)
  {
    v44 = 0;
    if (v42)
    {
      goto LABEL_57;
    }

LABEL_59:
    v45 = 0;
    goto LABEL_60;
  }

  v44 = String._bridgeToObjectiveC()();

  if (!v42)
  {
    goto LABEL_59;
  }

LABEL_57:
  v45 = String._bridgeToObjectiveC()();

LABEL_60:
  v46 = [objc_allocWithZone(AllRefinementsViewModelSectionMultiSelect) initWithElements:v43.super.isa displayName:0 maximumNumberOfSelectableElements:v33 clauseType:v32 showEqualWidthButtonsOnFilterView:v34 displayNameForMultiSelected:v44 multiSelectIdentifier:v45];

  sub_1000CE6B8(&qword_101908400);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1011E47B0;
  *(v47 + 32) = v46;
  v48 = v46;
  v49 = [a1 displayName];
  if (v49)
  {
    v50 = v49;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  sub_1000CE6B8(&unk_10191A360);
  v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v52)
  {
    v54 = String._bridgeToObjectiveC()();
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_allocWithZone(AllRefinementsViewModel) initWithSections:v53.super.isa displayName:v54 viewTakesFullHeight:0];

  v56 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
  [v55 setTappedBarButtonIndex:v56];

  return v55;
}

id sub_1003395B4(void *a1, uint64_t a2)
{
  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    return 0;
  }

  result = [a1 openNow];
  if (result)
  {
    v5 = result;
    v6 = sub_100338C58(a1);
    if (v6)
    {
      v7 = v6;
      v8 = [v5 displayName];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      v9 = [v5 isSelected];
      v10 = v5;
      v11 = [v10 refinementKey];
      if (!v11)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = String._bridgeToObjectiveC()();
      }

      v12 = objc_allocWithZone(AllRefinementsViewModelToggle);
      v13 = v10;
      v14 = [v12 initWithDisplayName:v8 isSelected:v9 data:v13 refinementKey:v11];

      v15 = objc_allocWithZone(AllRefinementsViewModelSectionOpenOption);
      v16 = v14;
      v17 = v7;
      v18 = String._bridgeToObjectiveC()();
      v19 = [v15 initWithOpenNow:v16 openAt:v17 displayName:v18];

      sub_1000CE6B8(&qword_101908400);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1011E47B0;
      *(v20 + 32) = v19;
      v21 = v19;
      v22 = [a1 displayName];
      if (v22)
      {
        v23 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      sub_1000CE6B8(&unk_10191A360);
      v26.super.isa = Array._bridgeToObjectiveC()().super.isa;

      if (v25)
      {
        v27 = String._bridgeToObjectiveC()();
      }

      else
      {
        v27 = 0;
      }

      v28 = [objc_allocWithZone(AllRefinementsViewModel) initWithSections:v26.super.isa displayName:v27 viewTakesFullHeight:0];

      v29 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
      [v28 setTappedBarButtonIndex:v29];

      return v28;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceSummaryUnitRatings(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

id sub_100339964(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101923DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for MyRecentsDataProvider.Recent(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10004E374(a1, v14);
  v9 = swift_dynamicCast();
  v10 = *(v6 + 56);
  if (v9)
  {
    v10(v4, 0, 1, v5);
    sub_10027579C(v4, v8);
    v11 = *&v8[*(v5 + 20)];
    result = [objc_opt_self() sharedInstance];
    if (result)
    {
      v13 = result;
      [result displayRoutePlanningForDestination:v11];

      return sub_10017F128(v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10(v4, 1, 1, v5);
    return sub_100339EAC(v4);
  }

  return result;
}

void sub_100339B34(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 carChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + OBJC_IVAR____TtC4Maps9UserGuide_collectionHandler);
    v7 = objc_allocWithZone(type metadata accessor for CarUserGuideViewController());
    v8 = v6;
    v9 = sub_100202DD0(v8);

    v10 = OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers;
    swift_beginAccess();
    v11 = *&v2[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v10] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100356AAC(0, *(v11 + 2) + 1, 1, v11);
      *&v2[v10] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100356AAC((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v11[v14 + 32] = 5;
    *&v2[v10] = v11;
    swift_endAccess();
    v15 = OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers;
    swift_beginAccess();
    v16 = v9;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *&v2[v15];
    *&v2[v15] = 0x8000000000000000;
    sub_10039B554(v16, 5, v17, &v18);
    *&v2[v15] = v18;
    swift_endAccess();
    [v5 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_100339CF4(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 carChromeViewController];
  if (v6)
  {
    v7 = v6;
    v8 = (a1 + 1);
    v9 = OBJC_IVAR____TtC4Maps14CarHomeContext_presentedCardIdentifiers;
    swift_beginAccess();
    v10 = *&v3[v9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v9] = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_100356AAC(0, *(v10 + 2) + 1, 1, v10);
      *&v3[v9] = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_100356AAC((v12 > 1), v13 + 1, 1, v10);
    }

    *(v10 + 2) = v13 + 1;
    v10[v13 + 32] = a1 + 1;
    *&v3[v9] = v10;
    swift_endAccess();
    objc_allocWithZone(type metadata accessor for CarHomeListDetailViewController());

    v14 = sub_100177278(a1, a2);
    v15 = OBJC_IVAR____TtC4Maps14CarHomeContext_cardIdentifiersByViewControllers;
    swift_beginAccess();
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *&v3[v15];
    *&v3[v15] = 0x8000000000000000;
    sub_10039B554(v14, v8, v16, &v17);
    *&v3[v15] = v17;
    swift_endAccess();
    [v7 setNeedsUpdateComponent:@"cards" animated:1];
  }
}

uint64_t sub_100339EAC(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101923DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100339F2C(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      _StringGuts.grow(_:)(23);

      v11 = 0xD000000000000015;
      v7 = a1;
      v8 = a2;
LABEL_15:
      String.append(_:)(*&v7);
      return v11;
    }

    if (a1 | a2)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x2079646165726C41;
    }
  }

  else
  {
    if (!a3)
    {
      v11 = 0;
      if (a1 == 1)
      {
        v4 = 0xEE00736563616C50;
        v5 = 0x2064657469736956;
      }

      else
      {
        if (a1)
        {
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        v5 = 0xD000000000000015;
        v4 = 0x800000010121B3D0;
      }

      v10 = v4;
      String.append(_:)(*&v5);

      v7 = 0x616E4520746F4E20;
      v8 = 0xEC00000064656C62;
      goto LABEL_15;
    }

    result = 0x7A69726F68747541;
    switch(a1)
    {
      case 1:
        return result;
      case 2:
      case 7:
      case 13:
        result = 0xD000000000000014;
        break;
      case 3:
      case 14:
        result = 0xD00000000000001DLL;
        break;
      case 4:
      case 12:
        result = 0xD000000000000018;
        break;
      case 5:
        result = 0xD000000000000021;
        break;
      case 6:
        result = 0xD000000000000010;
        break;
      case 8:
        result = 0xD000000000000015;
        break;
      case 9:
        result = 0xD00000000000001ELL;
        break;
      case 10:
        result = 0xD000000000000015;
        break;
      case 11:
        result = 0xD00000000000001ALL;
        break;
      case 15:
        result = 0xD000000000000019;
        break;
      default:
        result = 0xD00000000000001BLL;
        break;
    }
  }

  return result;
}

uint64_t sub_10033A278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CLServiceSession.Requirement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_101960060);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Maps Warming Sheet: Checking for Learned Routes authorization status.", v16, 2u);
  }

  type metadata accessor for CLServiceSession();
  v17 = enum case for CLServiceSession.LearnedRoutesRequirement.none(_:);
  v18 = type metadata accessor for CLServiceSession.LearnedRoutesRequirement();
  (*(*(v18 - 8) + 104))(v12, v17, v18);
  (*(v10 + 104))(v12, enum case for CLServiceSession.Requirement.learnedRoutes(_:), v9);
  v19 = CLServiceSession.__allocating_init(requirement:)();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0xD00000000000001CLL;
  v22[6] = 0x800000010122F7F0;
  v22[7] = v19;
  v22[8] = v3;
  v22[9] = sub_10033D6D0;
  v22[10] = v20;

  sub_10050D2C8(0, 0, v8, &unk_1011FBAC8, v22);
}

uint64_t sub_10033A5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CLServiceSession.Requirement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100021540(v13, qword_101960060);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Maps Warming Sheet: Checking for visited places authorization status.", v16, 2u);
  }

  type metadata accessor for CLServiceSession();
  v17 = enum case for CLServiceSession.VisitHistoryRequirement.none(_:);
  v18 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
  (*(*(v18 - 8) + 104))(v12, v17, v18);
  (*(v10 + 104))(v12, enum case for CLServiceSession.Requirement.visitHistory(_:), v9);
  v19 = CLServiceSession.__allocating_init(requirement:)();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = xmmword_1011FB8B0;
  *(v22 + 48) = 0x800000010122F810;
  *(v22 + 56) = v19;
  *(v22 + 64) = v3;
  *(v22 + 72) = sub_10033D6F4;
  *(v22 + 80) = v20;

  sub_10050D2C8(0, 0, v8, &unk_1011FBAD0, v22);
}

unint64_t sub_10033A8D0(char a1)
{
  result = 0x7A69726F68747541;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 14:
      v3 = 9;
      goto LABEL_9;
    case 4:
    case 12:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
    case 10:
      result = 0xD000000000000015;
      break;
    case 9:
      v3 = 10;
LABEL_9:
      result = v3 | 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_10033AA94(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10033A8D0(*a1);
  v5 = v4;
  if (v3 == sub_10033A8D0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10033AB1C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10033A8D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10033AB80()
{
  sub_10033A8D0(*v0);
  String.hash(into:)();
}

Swift::Int sub_10033ABD4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10033A8D0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10033AC34@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10033D8C0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10033AC64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10033A8D0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t ShareETAAccessoryModelState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10033ACA4()
{
  result = qword_10191A3A8;
  if (!qword_10191A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A3A8);
  }

  return result;
}

uint64_t sub_10033AD08()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for CLServiceSession.Requirement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLServiceSession();
  v9 = enum case for CLServiceSession.VisitHistoryRequirement.none(_:);
  v10 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  (*(v6 + 104))(v8, enum case for CLServiceSession.Requirement.visitHistory(_:), v5);
  v11 = CLServiceSession.__allocating_init(requirement:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = xmmword_1011FB8C0;
  *(v13 + 48) = 0x800000010122F7D0;
  *(v13 + 56) = v11;
  *(v13 + 64) = v1;
  *(v13 + 72) = sub_10033AF4C;
  *(v13 + 80) = 0;
  sub_10050D2C8(0, 0, v4, &unk_1011FBAC0, v13);
}

void sub_10033AF4C(char a1, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    goto LABEL_14;
  }

  v3 = sub_10033A8D0(a1);
  v5 = v4;
  if (v3 == 0x7A69726F68747541 && v4 == 0xEA00000000006465)
  {

    goto LABEL_6;
  }

  v6 = v3;
  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
    if (v6 == 0xD000000000000014 && 0x80000001012167C0 == v5)
    {

      goto LABEL_12;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
LABEL_12:
      v10 = [objc_opt_self() sharedData];
      if (v10)
      {
        v12 = v10;
        [v10 setMapSettingsVisitedPlaces:2];
        goto LABEL_16;
      }

LABEL_21:
      __break(1u);
      return;
    }

LABEL_14:
    v11 = [objc_opt_self() sharedData];
    if (v11)
    {
      v12 = v11;
      [v11 setMapSettingsVisitedPlaces:1];
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:
  v8 = [objc_opt_self() sharedData];
  if (!v8)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v8;
  [v8 setMapSettingsVisitedPlaces:3];
LABEL_16:
}

uint64_t sub_10033B138()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for CLServiceSession.Requirement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLServiceSession();
  v9 = enum case for CLServiceSession.LearnedRoutesRequirement.none(_:);
  v10 = type metadata accessor for CLServiceSession.LearnedRoutesRequirement();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  (*(v6 + 104))(v8, enum case for CLServiceSession.Requirement.learnedRoutes(_:), v5);
  v11 = CLServiceSession.__allocating_init(requirement:)();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = 0xD000000000000018;
  v13[6] = 0x800000010122F7B0;
  v13[7] = v11;
  v13[8] = v1;
  v13[9] = sub_10033B37C;
  v13[10] = 0;
  sub_10050D2C8(0, 0, v4, &unk_1011FBAB8, v13);
}

void sub_10033B37C(char a1, uint64_t a2, char a3)
{
  if (a3 != 1)
  {
    return;
  }

  v3 = sub_10033A8D0(a1);
  v5 = v4;
  if (v3 == 0x7A69726F68747541 && v4 == 0xEA00000000006465)
  {
  }

  else
  {
    v6 = v3;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (v6 == 0xD000000000000015 && 0x8000000101216760 == v5)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          return;
        }
      }

      v10 = [objc_opt_self() sharedData];
      if (v10)
      {
        v11 = v10;
        [v10 setMapSettingsFamiliarRoutes:0];
        goto LABEL_8;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  v8 = [objc_opt_self() sharedData];
  if (!v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = v8;
  [v8 setMapSettingsFamiliarRoutes:1];
LABEL_8:
}

uint64_t sub_10033B540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CLServiceSession.Requirement();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CLServiceSession();
  v13 = enum case for CLServiceSession.VisitHistoryRequirement.none(_:);
  v14 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  (*(v10 + 104))(v12, enum case for CLServiceSession.Requirement.visitHistory(_:), v9);
  v15 = CLServiceSession.__allocating_init(requirement:)();
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100021540(v16, qword_101960060);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Checking for Visited History Authorization.", v19, 2u);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = xmmword_1011FB8D0;
  *(v22 + 48) = 0x800000010122F730;
  *(v22 + 56) = v15;
  *(v22 + 64) = v3;
  *(v22 + 72) = sub_10033CAFC;
  *(v22 + 80) = v20;

  sub_10050D2C8(0, 0, v8, &unk_10120AAC0, v22);
}

uint64_t sub_10033B870(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100021540(v8, qword_101960060);
  sub_100335E4C(a1, a2, a3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  sub_100335DFC(a1, a2, a3);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = sub_100339F2C(a1, a2, a3);
    v15 = sub_10004DEB8(v13, v14, &v19);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "The visited history Authorization status is %s.", v11, 0xCu);
    sub_10004E3D0(v12);
  }

  if (a3 == 1)
  {
    if (sub_10033A8D0(a1) == 0x7A69726F68747541 && v16 == 0xEA00000000006465)
    {

      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v17 = 0;
  }

  return a4(v17 & 1);
}

uint64_t sub_10033BB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = v11;
  v7[19] = v12;
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v8 = type metadata accessor for CLServiceSession.Diagnostic();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190A7E0);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_10033BC18, 0, 0);
}

uint64_t sub_10033BC18()
{
  v21 = v0;
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 192) = sub_100021540(v1, qword_101960060);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (!os_log_type_enabled(v2, v3))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 112);
  v5 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  *v5 = 136315394;
  if (v4 == 1)
  {
    v7 = 0xEE00736563616C50;
    v6 = 0x2064657469736956;
    goto LABEL_8;
  }

  if (!v4)
  {
    v6 = 0xD000000000000015;
    v7 = 0x800000010121B3D0;
LABEL_8:
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = sub_10004DEB8(v6, v7, &v20);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10004DEB8(v9, v8, &v20);
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for CLService session updates for %s. Source : %s", v5, 0x16u);
    swift_arrayDestroy();

LABEL_9:

    v11 = CLServiceSession._locationIntelligenceDiagnostics.getter();
    v14 = *(v0 + 80);
    if (v14)
    {
      v15 = sub_10005E838((v0 + 56), *(v0 + 80));
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      (*(v16 + 16))(v17, v15, v14);
      *(v0 + 40) = swift_getAssociatedTypeWitness();
      *(v0 + 48) = swift_getAssociatedConformanceWitness();
      sub_10001A848((v0 + 16));
      dispatch thunk of AsyncSequence.makeAsyncIterator()();

      sub_10004E3D0(v0 + 56);
      *(v0 + 224) = 2;
      *(v0 + 200) = 0xD000000000000018;
      *(v0 + 208) = 0x800000010122F750;
      sub_1000FA458(v0 + 16, *(v0 + 40));
      v18 = swift_task_alloc();
      *(v0 + 216) = v18;
      *v18 = v0;
      v18[1] = sub_10033C010;
      v11 = *(v0 + 184);
      v12 = 0;
      v13 = 0;
    }

    else
    {
      __break(1u);
    }

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v11, v12, v13);
  }

  *(v0 + 104) = *(v0 + 112);

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_10033C010()
{

  if (!v0)
  {

    return _swift_task_switch(sub_10033C120, 0, 0);
  }

  return result;
}

uint64_t sub_10033C120()
{
  v33 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  if (v4 != 1)
  {
    v8 = *(v0 + 176);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    sub_100335DFC(*(v0 + 200), *(v0 + 208), *(v0 + 224));
    (*(v3 + 32))(v8, v1, v2);
    sub_10033CB04(v8, v10, v9);
    if (CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 3;
    }

    else if (CLServiceSession.Diagnostic.authorizationDenied.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 2;
    }

    else if (CLServiceSession.Diagnostic.learnedRoutesDeniedGlobally.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 9;
    }

    else if (CLServiceSession.Diagnostic.learnedRoutesDenied.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 10;
    }

    else if (CLServiceSession.Diagnostic.learnedRoutesUnsupported.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 11;
    }

    else if (CLServiceSession.Diagnostic.visitHistoryDeniedGlobally.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 14;
    }

    else if (CLServiceSession.Diagnostic.visitHistoryDenied.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 13;
    }

    else if (CLServiceSession.Diagnostic.visitHistoryUnsupported.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 15;
    }

    else if (CLServiceSession.Diagnostic.authorizationRestricted.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 4;
    }

    else if (CLServiceSession.Diagnostic.accuracyLimited.getter())
    {
      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 6;
    }

    else
    {
      if ((CLServiceSession.Diagnostic.fullAccuracyDenied.getter() & 1) == 0)
      {
        if (CLServiceSession.Diagnostic.insufficientlyInUse.getter())
        {
          v23 = 8;
        }

        else
        {
          if ((CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1) == 0)
          {
            v27 = *(v0 + 168);
            v26 = *(v0 + 176);
            v28 = *(v0 + 160);
            v29 = CLServiceSession.Diagnostic.serviceSessionRequired.getter();
            (*(v27 + 8))(v26, v28);
            v6 = 0;
            if (v29)
            {
              v7 = 12;
            }

            else
            {
              v7 = 1;
            }

            v5 = 1;
            goto LABEL_24;
          }

          v23 = 5;
        }

        (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
        *(v0 + 224) = 1;
        *(v0 + 200) = v23;
        *(v0 + 208) = 0;
        sub_1000FA458(v0 + 16, *(v0 + 40));
        v24 = swift_task_alloc();
        *(v0 + 216) = v24;
        *v24 = v0;
        v24[1] = sub_10033C010;
        v25 = *(v0 + 184);

        return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v25, 0, 0);
      }

      (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
      v6 = 0;
      v5 = 1;
      v7 = 7;
    }
  }

LABEL_24:
  sub_10004E3D0(v0 + 16);

  sub_100335E4C(v7, v6, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_100335DFC(v7, v6, v5);

  if (!os_log_type_enabled(v11, v12))
  {
LABEL_30:

    (*(v0 + 144))(v7, v6, v5);
    sub_100335DFC(v7, v6, v5);

    v21 = *(v0 + 8);

    return v21();
  }

  v13 = *(v0 + 112);
  v14 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  *v14 = 136315650;
  if (v13 == 1)
  {
    v15 = 0xEE00736563616C50;
    v16 = 0x2064657469736956;
    goto LABEL_29;
  }

  if (!v13)
  {
    v15 = 0x800000010121B3D0;
    v16 = 0xD000000000000015;
LABEL_29:
    v30 = *(v0 + 120);
    v31 = *(v0 + 128);
    v17 = sub_10004DEB8(v16, v15, &v32);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = sub_100339F2C(v7, v6, v5);
    v20 = sub_10004DEB8(v18, v19, &v32);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_10004DEB8(v30, v31, &v32);
    _os_log_impl(&_mh_execute_header, v11, v12, "Session updates for %s is %s. Source: %s", v14, 0x20u);
    swift_arrayDestroy();

    goto LABEL_30;
  }

  *(v0 + 96) = *(v0 + 112);

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t sub_10033C7E0(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, const char *a6)
{
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100021540(v11, qword_101960060);
  sub_100335E4C(a1, a2, a3);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  sub_100335DFC(a1, a2, a3);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = a4;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sub_100339F2C(a1, a2, a3);
    v19 = sub_10004DEB8(v17, v18, &v23);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, a6, v15, 0xCu);
    sub_10004E3D0(v16);

    a4 = v14;
  }

  if (a3 == 1)
  {
    if (sub_10033A8D0(a1) == 0xD000000000000018 && 0x80000001012167A0 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v21 = 0;
  }

  return a4(v21 & 1);
}

id sub_10033CA3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsWarmingSheetHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10033CAA8()
{
  result = qword_10191A3D8;
  if (!qword_10191A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A3D8);
  }

  return result;
}

void sub_10033CB04(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v69 = a2;
  v5 = type metadata accessor for CLServiceSession.Diagnostic();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v66[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v78 = &v66[-v9];
  __chkstk_darwin(v10);
  v77 = &v66[-v11];
  __chkstk_darwin(v12);
  v76 = &v66[-v13];
  __chkstk_darwin(v14);
  v75 = &v66[-v15];
  __chkstk_darwin(v16);
  v74 = &v66[-v17];
  __chkstk_darwin(v18);
  v73 = &v66[-v19];
  __chkstk_darwin(v20);
  v72 = &v66[-v21];
  __chkstk_darwin(v22);
  v71 = &v66[-v23];
  __chkstk_darwin(v24);
  v70 = &v66[-v25];
  __chkstk_darwin(v26);
  v28 = &v66[-v27];
  __chkstk_darwin(v29);
  v31 = &v66[-v30];
  __chkstk_darwin(v32);
  v34 = &v66[-v33];
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100021540(v35, qword_101960060);
  v36 = *(v6 + 16);
  v36(v34, a1, v5);
  v36(v31, a1, v5);
  v36(v28, a1, v5);
  v36(v70, a1, v5);
  v36(v71, a1, v5);
  v36(v72, a1, v5);
  v36(v73, a1, v5);
  v36(v74, a1, v5);
  v36(v75, a1, v5);
  v36(v76, a1, v5);
  v36(v77, a1, v5);
  v36(v78, a1, v5);
  v36(v79, a1, v5);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v80 = v68;
    *v39 = 136318466;
    *(v39 + 4) = sub_10004DEB8(v69, a3, &v80);
    v69 = v37;
    *(v39 + 12) = 1024;
    v67 = v38;
    v40 = CLServiceSession.Diagnostic.serviceSessionRequired.getter() & 1;
    v41 = *(v6 + 8);
    v41(v34, v5);
    *(v39 + 14) = v40;
    *(v39 + 18) = 1024;
    v42 = CLServiceSession.Diagnostic.accuracyLimited.getter() & 1;
    v41(v31, v5);
    *(v39 + 20) = v42;
    *(v39 + 24) = 1024;
    v43 = CLServiceSession.Diagnostic.authorizationDenied.getter() & 1;
    v41(v28, v5);
    *(v39 + 26) = v43;
    *(v39 + 30) = 1024;
    v44 = v70;
    v45 = CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter() & 1;
    v41(v44, v5);
    *(v39 + 32) = v45;
    *(v39 + 36) = 1024;
    v46 = v71;
    v47 = CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1;
    v41(v46, v5);
    *(v39 + 38) = v47;
    *(v39 + 42) = 1024;
    v48 = v72;
    v49 = CLServiceSession.Diagnostic.fullAccuracyDenied.getter() & 1;
    v41(v48, v5);
    *(v39 + 44) = v49;
    *(v39 + 48) = 1024;
    v50 = v73;
    v51 = CLServiceSession.Diagnostic.insufficientlyInUse.getter() & 1;
    v41(v50, v5);
    *(v39 + 50) = v51;
    *(v39 + 54) = 1024;
    v52 = v74;
    v53 = CLServiceSession.Diagnostic.learnedRoutesDeniedGlobally.getter() & 1;
    v41(v52, v5);
    *(v39 + 56) = v53;
    *(v39 + 60) = 1024;
    v54 = v75;
    v55 = CLServiceSession.Diagnostic.learnedRoutesDenied.getter() & 1;
    v41(v54, v5);
    *(v39 + 62) = v55;
    *(v39 + 66) = 1024;
    v56 = v76;
    v57 = CLServiceSession.Diagnostic.learnedRoutesUnsupported.getter() & 1;
    v41(v56, v5);
    *(v39 + 68) = v57;
    *(v39 + 72) = 1024;
    v58 = v77;
    v59 = CLServiceSession.Diagnostic.visitHistoryDeniedGlobally.getter() & 1;
    v41(v58, v5);
    *(v39 + 74) = v59;
    *(v39 + 78) = 1024;
    v60 = v78;
    v61 = CLServiceSession.Diagnostic.visitHistoryDenied.getter() & 1;
    v41(v60, v5);
    *(v39 + 80) = v61;
    *(v39 + 84) = 1024;
    v62 = v79;
    v63 = CLServiceSession.Diagnostic.visitHistoryUnsupported.getter() & 1;
    v41(v62, v5);
    *(v39 + 86) = v63;
    v64 = v69;
    _os_log_impl(&_mh_execute_header, v69, v67, "Service session updates for %s:\n    required: %{BOOL}d\n    accuracyLimited: %{BOOL}d\n    authorizationDenied: %{BOOL}d\n    authorizationDeniedGlobally: %{BOOL}d\n    authorizationRequestInProgress: %{BOOL}d\n    fullAccuracyDenied: %{BOOL}d\n    insufficientlyInUse: %{BOOL}d\n    learnedRoutesDeniedGlobally: %{BOOL}d\n    learnedRoutesDenied: %{BOOL}d\n    learnedRoutesUnsupported: %{BOOL}d\n    visitHistoryDeniedGlobally: %{BOOL}d\n    visitHistoryDenied: %{BOOL}d\n    visitHistoryUnsupported: %{BOOL}d", v39, 0x5Au);
    sub_10004E3D0(v68);
  }

  else
  {
    v65 = *(v6 + 8);
    v65(v79, v5);
    v65(v78, v5);
    v65(v77, v5);
    v65(v76, v5);
    v65(v75, v5);
    v65(v74, v5);
    v65(v73, v5);
    v65(v72, v5);
    v65(v71, v5);
    v65(v70, v5);
    v65(v28, v5);
    v65(v31, v5);
    v65(v34, v5);
  }
}

uint64_t sub_10033D320()
{
  result = GEOConfigGetArray();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1002B0174(v2);

  if (!v3)
  {
    return 0;
  }

  v4 = v3[2];
  if (!v4)
  {
LABEL_16:

    return 0;
  }

  v5 = 0;
  v6 = v3 + 5;
  while (v5 < v3[2])
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v9 = objc_opt_self();

    result = [v9 sharedConfiguration];
    if (!result)
    {
      goto LABEL_22;
    }

    v10 = result;
    v11 = [result countryCode];

    if (v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (v12 == v8 && v14 == v7)
      {

LABEL_19:

        return 1;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    ++v5;
    v6 += 2;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10033D4E8(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_10033BB10(a1, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_10033D5DC(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_10033BB10(a1, v11, v4, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for CoreLocationSession(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreLocationSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10033D86C()
{
  result = qword_10191A3E0;
  if (!qword_10191A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A3E0);
  }

  return result;
}

unint64_t sub_10033D8C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101600C98, v2);

  if (v3 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

id sub_10033D9AC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *&v4[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView] = 0;
  swift_unknownObjectWeakInit();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for RefinementsBarUIView();
  v10 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [objc_opt_self() defaultCenter];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = sub_10033E67C;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1004DFC88;
  v21[3] = &unk_101612468;
  v16 = _Block_copy(v21);
  v17 = v12;

  v18 = [v14 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v16];
  _Block_release(v16);
  swift_unknownObjectRelease();

  v19 = String._bridgeToObjectiveC()();
  [v17 setAccessibilityIdentifier:v19];

  return v17;
}

void sub_10033DC0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView);

    [v2 invalidateIntrinsicContentSize];
  }
}

void sub_10033DDE4(_BYTE *a1)
{
  if (a1)
  {
    v3 = (v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar);
    v4 = *(v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 8);
    if (v4)
    {
      v5 = *v3;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10033E59C(v5, v4);
      v6 = v4;
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();

      v6[OBJC_IVAR____TtC4Maps23RefinementsBarViewModel_tapInteractionEnabled] = a1[OBJC_IVAR____TtC4Maps23RefinementsBarViewModel_tapInteractionEnabled];
    }

    else
    {
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = a1;
      type metadata accessor for RefinementsBarViewModel(0);
      sub_10033E624();
      v13 = a1;
      v14 = ObservedObject.init(wrappedValue:)();
      v15 = *v3;
      v16 = v3[1];
      *v3 = v14;
      v3[1] = v17;
      v3[2] = sub_10033E61C;
      v3[3] = v12;
      sub_10033E5DC(v15, v16);
    }

    sub_10033E1A4();
  }

  else
  {
    v7 = (v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar);
    v8 = *(v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar);
    v9 = *(v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 8);
    *v7 = 0u;
    v7[1] = 0u;
    sub_10033E5DC(v8, v9);
    v10 = *(v1 + OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView);

    [v10 removeFromSuperview];
  }
}

void sub_10033E008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();

    if (v11)
    {
      v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      sub_100240034(a2, v8);
      v13 = type metadata accessor for UUID();
      v14 = *(v13 - 8);
      isa = 0;
      if ((*(v14 + 48))(v8, 1, v13) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v8, v13);
      }

      [v11 refinementBarButtonTappedWithRefinementID:v12.super.isa submenuElementID:isa viewModel:a4];

      swift_unknownObjectRelease();
    }
  }
}

void sub_10033E1A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView;
  [*&v0[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_hostingView] removeFromSuperview];
  v3 = *&v0[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 8];
  v24 = *&v0[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar];
  v25 = *&v0[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 16];
  v26 = *&v0[OBJC_IVAR____TtC4Maps20RefinementsBarUIView_refinementBar + 24];
  objc_allocWithZone(sub_1000CE6B8(&qword_10191A488));
  sub_10033E59C(v24, v3);
  v4 = UIHostingController.init(rootView:)();
  v5 = [v4 view];

  v6 = *&v1[v2];
  *&v1[v2] = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v7];
    v9 = objc_opt_self();
    sub_1000CE6B8(&qword_101908400);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1011E5C00;
    v11 = [v1 leadingAnchor];
    v12 = [v7 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    *(v10 + 32) = v13;
    v14 = [v1 trailingAnchor];
    v15 = [v7 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v10 + 40) = v16;
    v17 = [v1 topAnchor];
    v18 = [v7 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v10 + 48) = v19;
    v20 = [v1 bottomAnchor];
    v21 = [v7 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v10 + 56) = v22;
    sub_10009B534();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 activateConstraints:isa];
  }
}

id sub_10033E4E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RefinementsBarUIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10033E59C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
  }

  return result;
}

uint64_t sub_10033E5DC(uint64_t a1, void *a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10033E624()
{
  result = qword_10191A490;
  if (!qword_10191A490)
  {
    type metadata accessor for RefinementsBarViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A490);
  }

  return result;
}

uint64_t sub_10033E684(uint64_t a1)
{
  v2 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:a1];
  v3 = *(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
  v4 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
  v6 = type metadata accessor for PlaceCardContextConfiguration();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
  *&v7[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v2;
  v7[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = v4;
  *&v7[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = v5;
  v7[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v2;
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100504028(v9);

  return 1;
}

uint64_t sub_10033E7E4(void *a1)
{
  v3 = [a1 parkedCar];
  if (v3)
  {

    return 0;
  }

  else
  {
    result = [a1 searchResult];
    if (result)
    {
      v5 = result;
      result = [result mapItem];
      if (result)
      {
        v6 = result;
        v7 = [result _geoMapItem];

        v8 = OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration;
        v9 = [*(*(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem) mapItem];
        v10 = [v9 _geoMapItem];

        if ((GEOMapItemIsEqualToMapItemForPurpose() & 1) == 0)
        {
          v11 = [objc_allocWithZone(PlaceCardItem) initWithSearchResult:v5];
          v12 = *(v1 + v8);
          v13 = *(v12 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory);
          v14 = *(v12 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
          v15 = type metadata accessor for PlaceCardContextConfiguration();
          v16 = objc_allocWithZone(v15);
          v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
          *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v11;
          v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = v13;
          *&v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = v14;
          v16[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
          v19.receiver = v16;
          v19.super_class = v15;
          v17 = v11;
          v18 = objc_msgSendSuper2(&v19, "init");
          sub_100504028(v18);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return 1;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10033EA40(void *a1)
{
  result = [a1 annotation];
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [objc_allocWithZone(PlaceCardItem) initWithSearchResult:v3];
      v5 = *(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
      v6 = *(v5 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory);
      v7 = *(v5 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
      v8 = type metadata accessor for PlaceCardContextConfiguration();
      v9 = objc_allocWithZone(v8);
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v4;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = v6;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = v7;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
      v12.receiver = v9;
      v12.super_class = v8;
      v10 = v4;
      v11 = objc_msgSendSuper2(&v12, "init");
      sub_100504028(v11);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

BOOL sub_10033EBF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    if ([Strong isTopContext:v0])
    {
      v3 = *(v0 + OBJC_IVAR____TtC4Maps16PlaceCardContext_cardStack);
      swift_beginAccess();
      if (!*(*(v3 + 16) + 16))
      {
        [v2 popContext:v0 animated:1 completion:0];
      }
    }
  }

  return v2 != 0;
}

uint64_t sub_10033ECF4(uint64_t a1, uint64_t a2)
{
  *&v6 = a1;
  swift_unknownObjectRetain();
  sub_1000CE6B8(&qword_101909860);
  if (!swift_dynamicCast())
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    v4 = &v10;
LABEL_6:
    sub_100024F64(v4, &qword_10191A570);
    v3 = 0;
    return v3 & 1;
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v9 = a2;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005BF8C(v13);
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    v4 = &v6;
    goto LABEL_6;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v3 = static AnyHashable.== infix(_:_:)();
  sub_10005BF8C(&v10);
  sub_10005BF8C(v13);
  return v3 & 1;
}

uint64_t sub_10033EE38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10005EB40(a1, v14);
  sub_1000CE6B8(a3);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v6 = &v11;
LABEL_6:
    sub_100024F64(v6, &qword_10191A570);
    v5 = 0;
    return v5 & 1;
  }

  v16[0] = v11;
  v16[1] = v12;
  v17 = v13;
  sub_10005EB40(a2, &v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10005BF8C(v16);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    v6 = &v8;
    goto LABEL_6;
  }

  v14[0] = v8;
  v14[1] = v9;
  v15 = v10;
  v5 = static AnyHashable.== infix(_:_:)();
  sub_10005BF8C(v14);
  sub_10005BF8C(v16);
  return v5 & 1;
}

id sub_10033EF70()
{
  sub_100340568(v0, &v23);
  v1 = v26;
  v2 = v23;
  if (v26 <= 2u)
  {
    if (!v26)
    {
      v3 = [objc_opt_self() cellModelForSharedTripSummary:v23];
      goto LABEL_16;
    }

    if (v26 != 1)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v27._object = 0x800000010122F990;
      v11._countAndFlagsBits = 0xD000000000000024;
      v11._object = 0x800000010122F940;
      v12._object = 0x800000010122F970;
      v27._countAndFlagsBits = 0xD000000000000040;
      v12._countAndFlagsBits = 0xD000000000000018;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, qword_1019600D8, v12, v27);
      v13 = [v2 title];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      v14 = objc_opt_self();
      v15 = String._bridgeToObjectiveC()();

      v4 = [v14 cellModelForMapsSuggestionEntry:v2 title:v13 subtitle:v15 menuProvider:0];

      goto LABEL_24;
    }

    sub_1000F11C4(&v24, v22, &qword_10191A550);
    v4 = [objc_opt_self() cellModelForMapsSuggestionEntry:v2 menuProvider:0];
    if (MapsFeature_IsEnabled_LagunaBeach() && ([v2 type] == 21 || GEOConfigGetBOOL()))
    {
      v5 = [objc_allocWithZone(UGCProactiveCallToActionButtonView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      height = UILayoutFittingCompressedSize.height;
      v7 = v5;
      [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, height}];
      [v7 setFrame:{0.0, 0.0, v8, v9}];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = swift_dynamicCastObjCProtocolConditional();
        if (!v10)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

      [v7 setDelegate:v10];
      swift_unknownObjectRelease();
      v21 = [v2 uniqueIdentifier];
      if (!v21)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = String._bridgeToObjectiveC()();
      }

      [v7 setLookupIdentifier:v21];

      [v4 setCustomAccessoryView:v7];
    }

    sub_100024F64(v22, &qword_10191A550);
    sub_100024F64(&v25, &unk_10191A5F0);
    return v4;
  }

  if (v26 > 4u)
  {
LABEL_13:
    if (v1 != 5)
    {
      v16 = objc_opt_self();

      v17 = String._bridgeToObjectiveC()();

      v18 = String._bridgeToObjectiveC()();

      v19 = String._bridgeToObjectiveC()();

      v4 = [v16 cellModelForVisitedPlacesWithTitle:v17 subTitle:v18 imageSymbol:v19];

      goto LABEL_24;
    }

    v3 = [objc_opt_self() cellModelForRecentContact:v2];
LABEL_16:
    v4 = v3;
LABEL_24:

    return v4;
  }

  if (v26 == 3)
  {
    v3 = [objc_opt_self() cellModelForDroppedPinFromSearchResult:v23];
    goto LABEL_16;
  }

  v4 = [objc_opt_self() cellModelForHistoryEntryRecentsItemProtocol:v23 showAutocompleteClientSource:0];
  swift_unknownObjectRelease();
  return v4;
}

id sub_10033F4D4()
{
  sub_100340568(v0, &v2);
  if (v5 > 2u)
  {
    if (v5 <= 4u)
    {
      if (v5 == 3)
      {
        goto LABEL_9;
      }

      return v2;
    }

    if (v5 == 5)
    {
      return v2;
    }

LABEL_9:
    sub_1003405A8(&v2);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_9;
  }

  sub_100024F64(&v4, &unk_10191A5F0);
  sub_100024F64(&v3, &qword_10191A550);
  return 0;
}

uint64_t sub_10033F58C(void *a1)
{
  [a1 setViewModel:sub_10033EF70()];

  return swift_unknownObjectRelease();
}

uint64_t sub_10033F5E0()
{
  sub_100340568(v0, &v3);
  v1 = v3;
  if (v5[8] == 1)
  {
    sub_100024F64(v5, &unk_10191A5F0);
    sub_100024F64(&v4, &qword_10191A550);
  }

  return v1;
}

uint64_t sub_10033F658()
{
  sub_100340568(v0, &v16);
  if (v19 <= 2u)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v9 = v16;
        sub_100024F64(&v18, &unk_10191A5F0);
        sub_100024F64(&v17, &qword_10191A550);
        return v9;
      }

      return v16;
    }
  }

  else
  {
    if (v19 <= 4u)
    {
      if (v19 != 3)
      {
        v1 = v16;
        v2 = swift_allocObject();
        *(v2 + 16) = v1;
        v3 = [swift_unknownObjectRetain() mspHistoryEntry];
        v14 = UIView.annotateView(with:);
        v15 = 0;
        v10 = _NSConcreteStackBlock;
        v11 = 1107296256;
        v12 = sub_100340A6C;
        v13 = &unk_101612558;
        v4 = _Block_copy(&v10);
        v14 = sub_1003405D8;
        v15 = v2;
        v10 = _NSConcreteStackBlock;
        v11 = 1107296256;
        v12 = sub_100340A6C;
        v13 = &unk_101612580;
        v5 = _Block_copy(&v10);

        v14 = UIView.annotateView(with:);
        v15 = 0;
        v10 = _NSConcreteStackBlock;
        v11 = 1107296256;
        v12 = sub_100340A6C;
        v13 = &unk_1016125A8;
        v6 = _Block_copy(&v10);
        [v3 ifSearch:v4 ifRoute:v5 ifPlaceDisplay:v6 ifTransitLineItem:0];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _Block_release(v6);
        _Block_release(v5);
        _Block_release(v4);
        swift_beginAccess();
        v7 = *(v2 + 16);
        swift_unknownObjectRetain();

        return v7;
      }

      return v16;
    }

    if (v19 == 5)
    {
      return v16;
    }
  }

  sub_1003405A8(&v16);
  return 0;
}

void sub_10033F910(void *a1, uint64_t a2)
{
  v3 = [a1 endWaypoint];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();

  if (v4)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    swift_unknownObjectRelease();
  }
}

id sub_10033F99C()
{
  sub_100340568(v0, &v31);
  if (v34 <= 2u)
  {
    if (v34)
    {
      if (v34 == 1)
      {
        v6 = v31;
        v7 = [v31 geoMapItem];
        if (v7)
        {
          v8 = v7;
          v9 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v7 isPlaceHolderPlace:1];
          if (v9)
          {
            v10 = v9;
            v11 = [objc_allocWithZone(DragAndDropMapItem) initWithMapItem:v9];

            sub_100024F64(&v33, &unk_10191A5F0);
            sub_100024F64(&v32, &qword_10191A550);
            return v11;
          }
        }

        sub_100024F64(&v33, &unk_10191A5F0);
        sub_100024F64(&v32, &qword_10191A550);
        return 0;
      }

      v1 = v31;
      v14 = [v31 geoMapItem];
      if (v14)
      {
        v15 = v14;
        v16 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v14 isPlaceHolderPlace:1];
        if (v16)
        {
          v17 = v16;
          v18 = [objc_allocWithZone(DragAndDropMapItem) initWithMapItem:v16];

          return v18;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    if (v34 <= 4u)
    {
      if (v34 == 3)
      {
        v1 = v31;
        v2 = [v31 mapItem];
        if (v2)
        {
          v3 = v2;
          v4 = [objc_allocWithZone(DragAndDropMapItem) initWithMapItem:v2];

          return v4;
        }

LABEL_22:

        return 0;
      }

      v19 = [v31 mspHistoryEntry];
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v29 = UIView.annotateView(with:);
      v30 = 0;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100340A6C;
      v28 = &unk_1016124B8;
      v21 = _Block_copy(&v25);
      v29 = UIView.annotateView(with:);
      v30 = 0;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100340A6C;
      v28 = &unk_1016124E0;
      v22 = _Block_copy(&v25);
      v29 = sub_1003405A0;
      v30 = v20;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100340A6C;
      v28 = &unk_101612508;
      v23 = _Block_copy(&v25);

      [v19 ifSearch:v21 ifRoute:v22 ifPlaceDisplay:v23 ifTransitLineItem:0];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v23);
      _Block_release(v22);
      _Block_release(v21);
      swift_beginAccess();
      v13 = *(v20 + 16);
      v24 = v13;

      return v13;
    }

    if (v34 == 5)
    {
      v12 = v31;
      v13 = [objc_allocWithZone(DragAndDropMapItem) initWithRecentContact:v31];

      return v13;
    }
  }

  sub_1003405A8(&v31);
  return 0;
}

void sub_10033FDF8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:objc_msgSend(a1 isPlaceHolderPlace:{"geoMapItem"), 1}];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [objc_allocWithZone(DragAndDropMapItem) initWithMapItem:v3];

    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }
}

uint64_t sub_10033FEB4()
{
  sub_100340568(v0, &v4);
  if (v6[8] != 1)
  {
    sub_1003405A8(&v4);
    return 0;
  }

  sub_1000F11C4(v6, v3, &unk_10191A5F0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100024F64(v3, &unk_10191A5F0);
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    sub_100024F64(v3, &unk_10191A5F0);
    swift_unknownObjectRelease();
LABEL_7:
    sub_100024F64(&v5, &qword_10191A550);
    return Strong;
  }

  swift_unknownObjectRelease();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100340010()
{
  sub_100340568(v0, &v13);
  v1 = v13;
  if (v16 <= 2u)
  {
    if (!v16)
    {
      v2 = 0;
      goto LABEL_18;
    }

    if (v16 != 1)
    {
      v2 = 2;
      goto LABEL_18;
    }

    sub_1000F11C4(&v14, &v9, &qword_10191A550);
    sub_1000F11C4(&v15, v5, &unk_10191A5F0);
    Hasher._combine(_:)(1uLL);
    NSObject.hash(into:)();
    if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
    {
      if (*(&v7 + 1))
      {
        v10 = v6;
        v11 = v7;
        v12 = v8;
        AnyHashable.hash(into:)();
        sub_10005BF8C(&v10);
        goto LABEL_23;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }

    sub_100024F64(&v6, &qword_10191A570);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Hasher._combine(_:)(Strong);
      swift_unknownObjectRelease();
    }

LABEL_23:
    if (swift_unknownObjectWeakLoadStrong() && (swift_dynamicCast() & 1) != 0)
    {
      if (*(&v7 + 1))
      {
        v10 = v6;
        v11 = v7;
        v12 = v8;
        AnyHashable.hash(into:)();

        sub_10005BF8C(&v10);
LABEL_31:
        sub_100024F64(v5, &unk_10191A5F0);
        sub_100024F64(&v9, &qword_10191A550);
        return;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }

    sub_100024F64(&v6, &qword_10191A570);
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      Hasher._combine(_:)(v4);
      swift_unknownObjectRelease();
    }

    goto LABEL_31;
  }

  if (v16 > 4u)
  {
    if (v16 == 5)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_18;
  }

  if (v16 == 3)
  {
    v2 = 3;
LABEL_18:
    Hasher._combine(_:)(v2);
    NSObject.hash(into:)();

    return;
  }

  Hasher._combine(_:)(4uLL);
  v9 = v1;
  swift_unknownObjectRetain();
  sub_1000CE6B8(&qword_101909860);
  if (swift_dynamicCast())
  {
    v10 = v6;
    v11 = v7;
    v12 = v8;
    AnyHashable.hash(into:)();
    swift_unknownObjectRelease();
    sub_10005BF8C(&v10);
  }

  else
  {
    swift_unknownObjectRelease();
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_100024F64(&v6, &qword_10191A570);
  }
}

uint64_t sub_100340350@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906770 != -1)
  {
    swift_once();
  }

  v2 = sub_1000CE6B8(&qword_10191A558);
  v3 = sub_100021540(v2, qword_1019600E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

Swift::Int sub_100340410()
{
  Hasher.init(_seed:)();
  sub_100340010();
  return Hasher._finalize()();
}

Swift::Int sub_100340454()
{
  Hasher.init(_seed:)();
  sub_100340010();
  return Hasher._finalize()();
}

unint64_t sub_100340498()
{
  result = qword_10191A4A0;
  if (!qword_10191A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A4A0);
  }

  return result;
}

unint64_t sub_1003404EC(uint64_t a1)
{
  result = sub_100340514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100340514()
{
  result = qword_10191A4E0;
  if (!qword_10191A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A4E0);
  }

  return result;
}

uint64_t sub_1003405E0(uint64_t a1, uint64_t a2)
{
  sub_100340568(a1, v17);
  sub_100340568(a2, &v19);
  if (v18 > 2u)
  {
    if (v18 > 4u)
    {
      if (v18 == 5)
      {
        sub_100340568(v17, &v14);
        v3 = v14;
        if (v22 == 5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_100340568(v17, &v14);
        v3 = v14;
        if (v22 == 6)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      if (v18 != 3)
      {
        sub_100340568(v17, &v14);
        if (v22 == 4)
        {
          v7 = sub_10033ECF4(v14, v19);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      sub_100340568(v17, &v14);
      v3 = v14;
      if (v22 == 3)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_16;
  }

  if (!v18)
  {
    sub_100340568(v17, &v14);
    v3 = v14;
    if (!v22)
    {
LABEL_20:
      v8 = v19;
      sub_100014C84(0, &qword_10190B2D0);
      v7 = static NSObject.== infix(_:_:)();

      goto LABEL_21;
    }

LABEL_16:

LABEL_17:
    sub_100024F64(v17, &qword_10191A578);
    goto LABEL_18;
  }

  if (v18 != 1)
  {
    sub_100340568(v17, &v14);
    v3 = v14;
    if (v22 == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  sub_100340568(v17, &v14);
  v4 = v14;
  if (v22 != 1)
  {

    sub_100024F64(v16, &unk_10191A5F0);
    sub_100024F64(&v15, &qword_10191A550);
    goto LABEL_17;
  }

  v5 = v19;
  sub_1000F11C4(&v15, v13, &qword_10191A550);
  sub_1000F11C4(v16, v12, &unk_10191A5F0);
  sub_1000F11C4(&v20, v11, &qword_10191A550);
  sub_1000F11C4(&v21, &v10, &unk_10191A5F0);
  sub_100014C84(0, &qword_10190B2D0);
  v6 = static NSObject.== infix(_:_:)();

  if (v6 & 1) != 0 && (sub_10010ED08(v13, v11))
  {
    v7 = sub_10010ED08(v12, &v10);
    sub_100024F64(&v10, &unk_10191A5F0);
    sub_100024F64(v11, &qword_10191A550);
    sub_100024F64(v12, &unk_10191A5F0);
    sub_100024F64(v13, &qword_10191A550);
LABEL_21:
    sub_1003405A8(v17);
    return v7 & 1;
  }

  sub_100024F64(&v10, &unk_10191A5F0);
  sub_100024F64(v11, &qword_10191A550);
  sub_100024F64(v12, &unk_10191A5F0);
  sub_100024F64(v13, &qword_10191A550);
  sub_1003405A8(v17);
LABEL_18:
  v7 = 0;
  return v7 & 1;
}

uint64_t sub_100340998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 25))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 24);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003409D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_100340A20(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100340A70(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_10033D4D0, v4);
}

id sub_100340B04()
{
  v1 = OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___visitedPlacesDataProvider;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___visitedPlacesDataProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController____lazy_storage___visitedPlacesDataProvider);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = type metadata accessor for VisitedPlacesDataProvider();
    v6 = objc_allocWithZone(v5);
    v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_hasInitialData] = 1;
    v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_active] = 0;
    v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces] = 0;
    v7 = &v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_updateHandler];
    *v7 = sub_100345CF4;
    v7[1] = v4;
    v8 = objc_allocWithZone(GEOObserverHashTable);

    v9 = [v8 initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    *&v6[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_observers] = v9;
    v14.receiver = v6;
    v14.super_class = v5;
    v10 = objc_msgSendSuper2(&v14, "init");

    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100340C6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v5);
    v2 = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v5);
    if (v2)
    {
      sub_1000CE6B8(&qword_10191A630);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E1D30;
      *(inited + 32) = v1;
      *(inited + 40) = &off_101612678;
      v4 = v1;
      sub_10005B5D4(inited, 1);

      swift_unknownObjectRelease();
      swift_setDeallocating();
    }

    else
    {
    }
  }
}

char *sub_100340D64()
{
  if (!MSPSharedTripReceivingAvailable())
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [*(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_sharedTripsDataProvider) sharedTripSummaries];
  sub_100014C84(0, &unk_1019115C0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    v19 = i;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 _maps_diffableDataSourceIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = sub_100062A9C();
        v12 = [v11 identifierPathByAppendingIdentifier:v10];

        v13 = sub_1000D6778();
        v14 = swift_allocObject();
        *(v14 + 16) = v7;
        *(v14 + 40) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100355784(0, *(v5 + 2) + 1, 1, v5);
        }

        v16 = *(v5 + 2);
        v15 = *(v5 + 3);
        if (v16 >= v15 >> 1)
        {
          v5 = sub_100355784((v15 > 1), v16 + 1, 1, v5);
        }

        *(v5 + 2) = v16 + 1;
        v17 = &v5[48 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        *(v17 + 3) = v20;
        *(v17 + 8) = &type metadata for HomeListTwoLinesCellModel;
        *(v17 + 9) = v13;
        i = v19;
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_23:

  return v5;
}

char *sub_100340FC0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 48) suggestions];
  sub_100014C84(0, &qword_101912650);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      sub_1003411BC(v6, v15);

      if (*&v15[0])
      {
        v16 = v15[0];
        v17 = v15[1];
        v18 = v15[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100355784(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_100355784((v9 > 1), v10 + 1, 1, v5);
        }

        *(v5 + 2) = v10 + 1;
        v11 = &v5[48 * v10];
        v12 = v16;
        v13 = v18;
        *(v11 + 3) = v17;
        *(v11 + 4) = v13;
        *(v11 + 2) = v12;
      }

      else
      {
        sub_100024F64(v15, &qword_101916000);
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_21:

  return v5;
}

void sub_1003411BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [a1 _maps_diffableDataSourceIdentifier];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = sub_100062A9C();
  v9 = [v8 identifierPathByAppendingIdentifier:v7];

  if ([a1 type] != 21)
  {
    if ([a1 type] != 25)
    {
      goto LABEL_18;
    }

    v12 = [a1 geoMapItem];
    if (!v12)
    {

      v27 = *(v3 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider);
      *(v3 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider) = 0;

      goto LABEL_8;
    }

    v13 = v12;
    v14 = OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider;
    v15 = *(v3 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider);
    if (v15)
    {
      v16 = v15;
      if (GEOMapItemIsEqualToMapItemForPurpose())
      {
        goto LABEL_15;
      }
    }

    v17 = objc_allocWithZone(type metadata accessor for CurrentLocationSuggestionMenuProvider());
    v16 = sub_10045D274(a1, v13);
LABEL_15:
    v18 = *(v3 + v14);
    *(v3 + v14) = v16;
    v19 = v16;

    sub_10003E48C(v3 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v29);
    swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(&v29);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100345C9C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
    v32 = a1;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v31 = sub_1000CE6B8(&unk_10191A620);
    v29 = v19;
    v30 = &off_101619FF0;
    sub_10005E838(&v29, v31);
    DynamicType = swift_getDynamicType();
    v22 = v19;
    v23 = a1;
    v24 = v22;
    sub_10004E3D0(&v29);
    if (swift_isClassType() && DynamicType)
    {
      v29 = v24;
      v30 = &off_101619FF0;
      _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }

    v33 = 1;
    goto LABEL_23;
  }

  if (![objc_opt_self() shouldShowRatingRequestSuggestionsOnProactiveTray])
  {
    goto LABEL_7;
  }

  v10 = sub_1000615F0();
  v11 = [v10 resultForSuggestionsEntry:a1];

  if (!v11)
  {
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v32 = a1;
    v25 = 2;
    goto LABEL_19;
  }

  if (v11 != 2)
  {
LABEL_7:

LABEL_8:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

LABEL_18:
  v32 = a1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v25 = 1;
LABEL_19:
  v33 = v25;
  v26 = a1;
LABEL_23:
  *(a2 + 32) = &type metadata for HomeListTwoLinesCellModel;
  *(a2 + 40) = sub_1000D6778();
  v28 = swift_allocObject();
  *(a2 + 8) = v28;
  sub_1000D671C(&v32, v28 + 16);
  *a2 = v9;
}

void *sub_1003415E8()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, &v26);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(&v26);
  if (!Strong)
  {
    goto LABEL_9;
  }

  v2 = sub_100059F34();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v3 = v26;
  if (!v26)
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    goto LABEL_10;
  }

  if (!*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
  {

    goto LABEL_8;
  }

  v4 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

  sub_100368890(v3, 2, 0, 2, v4, &v13);

  swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_10:
    sub_100024F64(&v13, &qword_101916000);
    return _swiftEmptyArrayStorage;
  }

  v30[0] = v13;
  v30[1] = v14;
  v30[2] = v15;
  memset(v28, 0, sizeof(v28));
  v29 = -1;
  sub_1000D2DFC(v30 + 8, &v13, &unk_10191C220);
  sub_10005E7BC(&v13, &v26);
  sub_1000CE6B8(&unk_101911D30);
  if (swift_dynamicCast())
  {
    sub_100024F64(v28, &qword_101909870);
    sub_1000D671C(&v13, &v23);
    sub_1000D671C(&v23, v28);
    goto LABEL_19;
  }

  v13 = 0uLL;
  *&v14 = 0;
  BYTE8(v14) = -1;
  sub_100024F64(&v13, &qword_101909870);
  sub_1000D2DFC(v30 + 8, &v13, &unk_10191C220);
  sub_10005E7BC(&v13, &v23);
  if (swift_dynamicCast())
  {
    sub_1003455D4(&v13, &v26);
    sub_1000D2DFC(&v27, &v23, &unk_10191C220);
    sub_100345C20(&v26);
    sub_10005E7BC(&v23, &v13);
    if (swift_dynamicCast())
    {
      sub_100024F64(v28, &qword_101909870);
      sub_1000D671C(&v23, v12);
      sub_1000D671C(v12, v28);
      goto LABEL_19;
    }

    v23 = 0uLL;
    v24 = 0;
    v25 = -1;
    v6 = &qword_101909870;
    v7 = &v23;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = &unk_10191A610;
    v7 = &v13;
  }

  sub_100024F64(v7, v6);
LABEL_19:
  sub_1000D2DFC(v28, &v13, &qword_101909870);
  if (BYTE8(v14) == 255)
  {
    sub_100024F64(&v13, &qword_101909870);
    sub_100024F64(v28, &qword_101909870);
    sub_10019D044(v30);
  }

  else
  {
    sub_1000D671C(&v13, &v26);
    sub_100340568(&v26, &v13);
    if (BYTE8(v14) > 1u)
    {
      if (BYTE8(v14) == 2)
      {
        v8 = v13;
        goto LABEL_31;
      }

      if (BYTE8(v14) == 6)
      {
        sub_1003405A8(&v13);
        v9 = sub_100341AEC(v30);
        sub_1003405A8(&v26);
        sub_100024F64(v28, &qword_101909870);
        sub_10019D044(v30);
        return v9;
      }
    }

    else
    {
      if (!BYTE8(v14))
      {
        v8 = v13;
        v10 = sub_100341C68(v13, v30);
LABEL_32:
        v11 = v10;

        sub_1003405A8(&v26);
        sub_100024F64(v28, &qword_101909870);
        sub_10019D044(v30);
        return v11;
      }

      if (BYTE8(v14) == 1)
      {
        v8 = v13;
        sub_100024F64(&v14, &unk_10191A5F0);
        sub_100024F64(&v13 + 8, &qword_10191A550);
LABEL_31:
        v10 = sub_100341F48(v8, v30);
        goto LABEL_32;
      }
    }

    sub_1003405A8(&v26);
    sub_100024F64(v28, &qword_101909870);
    sub_10019D044(v30);
    sub_1003405A8(&v13);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100341AEC(uint64_t a1)
{
  v11 = _swiftEmptyArrayStorage;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100098118(a1, v10);
  v3 = swift_allocObject();
  v4 = v10[1];
  *(v3 + 24) = v10[0];
  *(v3 + 16) = v2;
  *(v3 + 40) = v4;
  *(v3 + 56) = v10[2];
  aBlock[4] = sub_100345C74;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100340A70;
  aBlock[3] = &unk_1016129B8;
  v5 = _Block_copy(aBlock);

  v6 = sub_100DCC9E8(v5);
  _Block_release(v5);
  v7 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v11;
}

void *sub_100341C68(void *a1, uint64_t a2)
{
  v3 = a1;
  v19 = _swiftEmptyArrayStorage;
  v4 = [a1 sharedTrips];
  sub_100014C84(0, &qword_10191D050);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_14:

    return _swiftEmptyArrayStorage;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = *(v5 + 32);
  }

  v4 = v6;

  v7 = [v3 sharedTrips];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 == 1 && ([v4 hasGroupIdentifier] & 1) != 0)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100098118(a2, v18);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v3;
    v12 = v18[1];
    *(v11 + 32) = v18[0];
    *(v11 + 48) = v12;
    *(v11 + 64) = v18[2];
    aBlock[4] = sub_100345BEC;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100340A70;
    aBlock[3] = &unk_101612968;
    v13 = _Block_copy(aBlock);
    v14 = v3;

    v15 = sub_100DCC9E8(v13);
    _Block_release(v13);
    v3 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_11:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v19;
    }

LABEL_20:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_11;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100341F48(void *a1, uint64_t a2)
{
  v4 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  if ([a1 availableRemovalBehaviors])
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100098118(a2, &v29);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = v30;
    *(v6 + 32) = v29;
    *(v6 + 48) = v7;
    *(v6 + 64) = v31;
    v27 = sub_100345B54;
    v28 = v6;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100340A70;
    v26 = &unk_101612878;
    v8 = _Block_copy(&aBlock);
    v9 = a1;

    v10 = sub_100DCC9E8(v8);
    _Block_release(v8);
    v11 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = v32;
  }

  if ([a1 type] == 7)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100098118(a2, &v29);
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1;
    v14 = v30;
    *(v13 + 32) = v29;
    *(v13 + 48) = v14;
    *(v13 + 64) = v31;
    v27 = sub_100345BE0;
    v28 = v13;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100340A70;
    v26 = &unk_1016128C8;
    v15 = _Block_copy(&aBlock);
    v16 = a1;

    v17 = sub_100DCCB50(v15);
    _Block_release(v15);
    v18 = v17;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = v32;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = sub_10053E380(a2, sub_100345B88, v19);

  if (v20)
  {
    v21 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v32;
  }

  return v4;
}

void sub_100342308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    a6(a4, a5, a1, a2);
  }
}

void sub_100342398(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1(1);
    v4 = [objc_opt_self() sharedManager];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100345DA4;
    aBlock[5] = v5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100271778;
    aBlock[3] = &unk_1016128F0;
    v6 = _Block_copy(aBlock);

    [v4 fetchParkedCar:v6];
    _Block_release(v6);
  }
}

id sub_1003424D8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v1 = objc_opt_self();
    [v1 captureUserAction:2037 target:8 value:0];
    return [v1 captureUserAction:2040 target:8 value:0];
  }

  return result;
}

void sub_100342564(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a4;
  v45 = a1;
  v8 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(&v4[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration], v48);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v48);
  v43 = a2;
  if (Strong)
  {
    v42 = a3;
    swift_getObjectType();
    if (!swift_conformsToProtocol2() || !v4)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v17 = *a2;
    v18 = v4;
    v19 = sub_100059F34();
    v48[0] = v17;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    swift_unknownObjectRelease();
    v20 = (*(v12 + 48))(v10, 1, v11);
    a3 = v42;
    if (v20 != 1)
    {
      (*(v12 + 32))(v14, v10, v11);
      v21 = *&v5[v15];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v23 = [v21 cellForItemAtIndexPath:isa];

      (*(v12 + 8))(v14, v11);
      goto LABEL_8;
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_100024F64(v10, &qword_1019174A0);
  v23 = 0;
LABEL_8:
  sub_10003E48C(&v5[v15], v48);
  v24 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v48);
  if (v24)
  {
    v25 = [v24 homeDeleteDelegate];
    swift_unknownObjectRelease();
    if (v25)
    {
      if (v23)
      {
        v26 = v23;
        [v26 bounds];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;
      }

      else
      {
        v26 = 0;
        v28 = 0.0;
        v30 = 0.0;
        v32 = 0.0;
        v34 = 0.0;
      }

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100098118(v43, v47);
      v36 = swift_allocObject();
      v37 = v47[1];
      *(v36 + 24) = v47[0];
      *(v36 + 16) = v35;
      *(v36 + 40) = v37;
      *(v36 + 56) = v47[2];
      v38 = v44;
      *(v36 + 72) = a3;
      *(v36 + 80) = v38;
      v39 = v45;
      *(v36 + 88) = v45;
      aBlock[4] = sub_100345B40;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002ABAC8;
      aBlock[3] = &unk_101612828;
      v40 = _Block_copy(aBlock);

      v41 = v39;

      [v25 confirmDeleteSharedTripWithSummary:v41 sourceView:v26 sourceRect:v40 completion:{v28, v30, v32, v34}];
      swift_unknownObjectRelease();

      _Block_release(v40);
    }
  }
}

void sub_100342A4C(char a1, uint64_t a2, uint64_t *a3, void (*a4)(void), uint64_t a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v12 = Strong;
  if ((a1 & 1) == 0)
  {

LABEL_11:
    a4(0);
    return;
  }

  v13 = sub_10053DB34(a3, a4, a5);
  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E47B0;
  *(inited + 32) = v13;
  v15 = v13;
  sub_10053D114(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v16 = [a6 sharedTrips];
  sub_100014C84(0, &qword_10191D050);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = [v19 groupIdentifier];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() sharedInstance];
    [v22 blockSharedTripWithIdentifier:v21];

    return;
  }

LABEL_15:
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1011E47B0;
  *(v23 + 32) = v15;
  sub_100345AEC();
  swift_allocError();
  *v24 = 0;
  v25 = v15;
  sub_10053DA24(v23);

  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_100342D08(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v49 = a3;
  v8 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MapsSuggestionsEngineForMapsProcess();
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v47 = a1;
  [v15 feedbackForEntry:a1 action:5];

  v17 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  sub_10003E48C(&v5[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration], v57);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v57);
  v48 = a2;
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v5)
  {
LABEL_18:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v19 = *a2;
  v20 = v5;
  v21 = sub_100059F34();
  v57[0] = v19;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  swift_unknownObjectRelease();
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v22 = *&v5[v17];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [v22 cellForItemAtIndexPath:isa];

    (*(v12 + 8))(v14, v11);
    goto LABEL_9;
  }

LABEL_8:
  sub_100024F64(v10, &qword_1019174A0);
  v24 = 0;
LABEL_9:
  v25 = sub_10053DB34(v48, v49, v50);
  sub_10003E48C(&v5[v17], v57);
  v26 = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v57);
  if (v26 && (v27 = [v26 homeDeleteDelegate], swift_unknownObjectRelease(), v27))
  {
    if (v24)
    {
      v48 = v24;
      [v48 bounds];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;
    }

    else
    {
      v48 = 0;
      v29 = 0.0;
      v31 = 0.0;
      v33 = 0.0;
      v35 = 0.0;
    }

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = v25;
    v55 = sub_100345AD4;
    v56 = v37;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100039C64;
    v54 = &unk_101612788;
    v38 = _Block_copy(&aBlock);
    v39 = v25;

    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = swift_allocObject();
    v41[2] = v40;
    v41[3] = v39;
    v42 = v50;
    v41[4] = v49;
    v41[5] = v42;
    v43 = v47;
    v41[6] = v47;
    v55 = sub_100345ADC;
    v56 = v41;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_10034372C;
    v54 = &unk_1016127D8;
    v44 = _Block_copy(&aBlock);
    v45 = v39;

    v46 = v43;

    [v27 viewController:0 removeMapsSuggestionsEntry:v46 sourceView:v48 sourceRect:v38 startBlock:v44 completionBlock:{v29, v31, v33, v35}];
    swift_unknownObjectRelease();

    _Block_release(v44);
    _Block_release(v38);
  }

  else
  {
  }
}

uint64_t sub_1003432E8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1000CE6B8(&qword_101908400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E47B0;
    *(inited + 32) = a2;
    v6 = a2;
    sub_10053D114(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

void sub_1003433A4(char a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if ((a1 & 1) == 0)
    {
      sub_1000CE6B8(&qword_101908400);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1011E47B0;
      *(inited + 32) = a4;
      sub_100345AEC();
      swift_allocError();
      *v15 = 1;
      v16 = a4;
      sub_10053DA24(inited);

      swift_setDeallocating();
      swift_arrayDestroy();
      a5(0);
    }

    v17 = [a7 proactiveItemType];
    switch(v17)
    {
      case 0:
        v18 = @"PROACTIVE_TYPE_UNKNOWN";
        v19 = @"PROACTIVE_TYPE_UNKNOWN";
        break;
      case 1:
        v18 = @"PROACTIVE_TYPE_ADDRESS";
        v30 = @"PROACTIVE_TYPE_ADDRESS";
        break;
      case 2:
        v18 = @"PROACTIVE_TYPE_FAVORITE";
        v26 = @"PROACTIVE_TYPE_FAVORITE";
        break;
      case 3:
        v18 = @"PROACTIVE_TYPE_PARKED_CAR";
        v28 = @"PROACTIVE_TYPE_PARKED_CAR";
        break;
      case 4:
        v18 = @"PROACTIVE_TYPE_CALENDAR";
        v23 = @"PROACTIVE_TYPE_CALENDAR";
        break;
      case 5:
        v18 = @"PROACTIVE_TYPE_BOOKED_CAR";
        v33 = @"PROACTIVE_TYPE_BOOKED_CAR";
        break;
      case 6:
        v18 = @"PROACTIVE_TYPE_TABLE_RESERVATION";
        v36 = @"PROACTIVE_TYPE_TABLE_RESERVATION";
        break;
      case 7:
        v18 = @"PROACTIVE_TYPE_TABLE_QUEUE";
        v29 = @"PROACTIVE_TYPE_TABLE_QUEUE";
        break;
      case 8:
        v18 = @"PROACTIVE_TYPE_APP_CONNECTION";
        v39 = @"PROACTIVE_TYPE_APP_CONNECTION";
        break;
      case 9:
        v18 = @"PROACTIVE_TYPE_RESUME_NAV";
        v25 = @"PROACTIVE_TYPE_RESUME_NAV";
        break;
      case 10:
        v18 = @"PROACTIVE_TYPE_TRANSIT_NAV";
        v38 = @"PROACTIVE_TYPE_TRANSIT_NAV";
        break;
      case 11:
        v18 = @"PROACTIVE_TYPE_RECENTS_AND_PINS";
        v22 = @"PROACTIVE_TYPE_RECENTS_AND_PINS";
        break;
      case 12:
        v18 = @"PROACTIVE_TYPE_LOW_GAS";
        v24 = @"PROACTIVE_TYPE_LOW_GAS";
        break;
      case 13:
        v18 = @"PROACTIVE_TYPE_VENUES";
        v35 = @"PROACTIVE_TYPE_VENUES";
        break;
      case 14:
        v18 = @"PROACTIVE_TYPE_FIM_HOTEL";
        v21 = @"PROACTIVE_TYPE_FIM_HOTEL";
        break;
      case 15:
        v18 = @"PROACTIVE_TYPE_FIM_CAR_RENTAL";
        v27 = @"PROACTIVE_TYPE_FIM_CAR_RENTAL";
        break;
      case 16:
        v18 = @"PROACTIVE_TYPE_FIM_FLIGHT";
        v20 = @"PROACTIVE_TYPE_FIM_FLIGHT";
        break;
      case 17:
        v18 = @"PROACTIVE_TYPE_FIM_TICKETED_EVENT";
        v31 = @"PROACTIVE_TYPE_FIM_TICKETED_EVENT";
        break;
      case 18:
        v18 = @"PROACTIVE_TYPE_PORTRAIT";
        v37 = @"PROACTIVE_TYPE_PORTRAIT";
        break;
      case 19:
        v18 = @"PROACTIVE_TYPE_USERPLACE";
        v41 = @"PROACTIVE_TYPE_USERPLACE";
        break;
      case 20:
        v18 = @"PROACTIVE_TYPE_VEHICLEADVERTISEMENT";
        v32 = @"PROACTIVE_TYPE_VEHICLEADVERTISEMENT";
        break;
      case 21:
        v18 = @"PROACTIVE_TYPE_RATING_REQUEST";
        v34 = @"PROACTIVE_TYPE_RATING_REQUEST";
        break;
      case 22:
        v18 = @"PROACTIVE_TYPE_FAVORITE_BUTTON";
        v40 = @"PROACTIVE_TYPE_FAVORITE_BUTTON";
        break;
      default:
        v18 = [NSString stringWithFormat:@"(unknown: %i)", v17];
        break;
    }

    v42 = v18;
    if (a2 <= 8 && ((0x117u >> a2) & 1) != 0)
    {
      v43 = dword_1011FBFC4[a2];
      v44 = dword_1011FBFE8[a2];
      v45 = objc_opt_self();
      [v45 captureUserAction:v43 target:8 value:0];
      [v45 captureUserAction:v44 target:8 value:v42];
    }
  }
}

uint64_t sub_10034372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_10034378C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      sub_10003E48C(Strong + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v7);
      v4 = swift_unknownObjectWeakLoadStrong();
      v5 = a1;
      sub_10003E4E8(v7);
      if (v4)
      {
        v6 = [v4 homeParkedCarActionDelegate];
        swift_unknownObjectRelease();
        if (v6)
        {
          v5 = v5;
          [v6 editLocationForParkedCar:v5];
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_10034387C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps36HomeListSuggestionsSectionController_currentLocationSuggestionMenuProvider);
}

id sub_1003438DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeListSuggestionsSectionController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    +[VisitedPlacesDataProvider markVisitedPlacesEntrySeen]_0();
    v9 = sub_10053DB34(a4, a1, a2);
    sub_1000CE6B8(&qword_101908400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1011E47B0;
    *(inited + 32) = v9;
    v11 = v9;
    sub_10053D114(inited);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_100343A60@<X0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() isEnabled])
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v13._object = 0x800000010122FB60;
    v2._countAndFlagsBits = 0xD000000000000023;
    v2._object = 0x800000010122FB10;
    v3._object = 0x800000010122FB40;
    v13._countAndFlagsBits = 0xD000000000000037;
    v3._countAndFlagsBits = 0xD000000000000010;
    v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v13);
    object = v6._object;
    countAndFlagsBits = v6._countAndFlagsBits;
    v7 = 0xEF736E6F69747365;
    v8 = 0x67677553656D6F48;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v14._object = 0x800000010122FAD0;
    v9._countAndFlagsBits = 0x5420646572616853;
    v9._object = 0xEC00000073706972;
    v10._countAndFlagsBits = 0xD000000000000024;
    v10._object = 0x800000010122FAA0;
    v14._countAndFlagsBits = 0xD000000000000034;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, qword_1019600D8, v9, v14);
    object = v11._object;
    countAndFlagsBits = v11._countAndFlagsBits;
    v7 = 0xEF73706972546465;
    v8 = 0x72616853656D6F48;
  }

  *a1 = countAndFlagsBits;
  *(a1 + 8) = object;
  *(a1 + 16) = 0;
  swift_unknownObjectWeakInit();
  result = swift_unknownObjectWeakAssign();
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;
  return result;
}

char *sub_100343C38()
{
  v1 = v0;
  v42 = _swiftEmptyArrayStorage;
  v2 = sub_100340D64();
  sub_100247438(v2);
  v3 = sub_100340FC0();
  sub_100247438(v3);
  v4 = sub_100340B04();
  v5 = v4[OBJC_IVAR____TtC4Maps25VisitedPlacesDataProvider_showVisitedPlaces];

  if (v5 == 1)
  {
    v6 = [objc_allocWithZone(type metadata accessor for MapsHomeVisitedPlacesListViewModel()) init];
    v7 = sub_100062A9C();

    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 identifierPathByAppendingIdentifier:v8];

    v10 = sub_1000D6778();
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 40) = 6;
    v12 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100355784(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    v15 = v14 + 1;
    if (v14 >= v13 >> 1)
    {
      v12 = sub_100355784((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v15;
    v16 = &v12[48 * v14];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
    *(v16 + 3) = v40[0];
    *(v16 + 8) = &type metadata for HomeListTwoLinesCellModel;
    *(v16 + 9) = v10;
    v42 = v12;
  }

  else
  {
    v12 = v42;
    v15 = *(v42 + 2);
    if (!v15)
    {

      return _swiftEmptyArrayStorage;
    }
  }

  v17 = (v12 + 32);
  v18 = _swiftEmptyArrayStorage;
  do
  {
    sub_100098118(v17, v41);
    sub_100098118(v41, v39);
    sub_100098118(v39, &v36);
    swift_unknownObjectWeakInit();
    v19 = sub_1000CE6B8(&qword_10191A5D8);
    v34 = v19;
    v32 = v1;
    v33 = &off_101612660;
    sub_10005E838(&v32, v19);
    DynamicType = swift_getDynamicType();
    v21 = v1;
    sub_10004E3D0(&v32);
    if (swift_isClassType() && DynamicType)
    {
      v32 = v21;
      v33 = &off_101612660;
      _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }

    sub_1004D8CDC(&v36, v35, v40);
    swift_unknownObjectWeakInit();
    v38 = v19;
    v36 = v21;
    v37 = &off_101612660;
    sub_10005E838(&v36, v19);
    v22 = swift_getDynamicType();
    v23 = v21;
    sub_10004E3D0(&v36);
    if (swift_isClassType() && v22)
    {
      v36 = v23;
      v37 = &off_101612660;
      _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_10019D044(v39);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10019D044(v39);

      swift_unknownObjectWeakAssign();
    }

    v24 = v41[0];
    v25 = sub_100345580();
    v26 = swift_allocObject();
    sub_1003455D4(v40, v26 + 16);
    v27 = v24;
    sub_10019D044(v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_100355784(0, *(v18 + 2) + 1, 1, v18);
    }

    v29 = *(v18 + 2);
    v28 = *(v18 + 3);
    if (v29 >= v28 >> 1)
    {
      v18 = sub_100355784((v28 > 1), v29 + 1, 1, v18);
    }

    *(v18 + 2) = v29 + 1;
    v30 = &v18[48 * v29];
    *(v30 + 4) = v27;
    *(v30 + 5) = v26;
    *(v30 + 3) = v40[0];
    *(v30 + 8) = &type metadata for HomePlaceCollectionViewCellModel;
    *(v30 + 9) = v25;
    v17 += 48;
    --v15;
  }

  while (v15);

  return v18;
}

uint64_t sub_1003440A8(uint64_t a1)
{
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v4 + 104))(v6, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v3);

  v8 = sub_10053C9C8(a1, sub_100345578, v7, v6, 1);

  (*(v4 + 8))(v6, v3);

  sub_10003E48C(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v29);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v29);
  if (!Strong)
  {
    return v8;
  }

  swift_getObjectType();
  if (swift_conformsToProtocol2() && v1)
  {
    v10 = v1;
    v11 = sub_10053C718();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot);
    if (v15)
    {
      v16 = v12;
      v17 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

      v18 = v11;
      sub_1000F0120(v15);
      sub_100368A2C(v18, v16, v14, 0, v17, v29);

      swift_bridgeObjectRelease_n();
      if (*&v29[0])
      {
        sub_100024F64(v29, &unk_101915FD0);
        v19 = objc_opt_self();
        v20 = [v19 fractionalWidthDimension:1.0];
        [objc_opt_self() estimatedHeight];
        v21 = [v19 estimatedDimension:?];
        v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

        v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:UICollectionElementKindSectionHeader alignment:1];
        swift_unknownObjectRelease();

        static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
        [v8 contentInsets];
        v24 = v23;
        [v24 contentInsets];
        [v24 setContentInsets:?];
        [v24 contentInsets];
        [v24 setContentInsets:?];

        sub_1000CE6B8(&qword_101908400);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1011E47B0;
        *(v25 + 32) = v24;
        sub_100014C84(0, &unk_101910E10);
        v26 = v24;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v8 setBoundarySupplementaryItems:isa];

        return v8;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      memset(v29, 0, 64);
    }

    sub_100024F64(v29, &unk_101915FD0);
    return v8;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1003445AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1003415E8();
  }

  sub_100014C84(0, &qword_10191A5D0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithActions:isa];

  return v3;
}

void sub_100344698(void *a1)
{
  v22 = v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
  v2 = [*(v1 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration + 48) suggestions];
  sub_100014C84(0, &qword_101912650);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_25:

    return;
  }

LABEL_24:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_3:
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
        goto LABEL_23;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v6 uniqueIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [a1 lookupIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v10 == v14 && v12 == v16)
    {
      break;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_17;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_25;
    }
  }

LABEL_17:

  sub_10003E48C(v22, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v24);
  if (Strong && (v20 = [Strong homePOIEnrichmentActionDelegate], swift_unknownObjectRelease(), v20))
  {
    v21 = [v7 geoMapItem];
    [v20 addRatingsForMapItem:v21];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100344ACC(uint64_t a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v28.receiver = v2;
  v28.super_class = type metadata accessor for HomeListSuggestionsSectionController();
  objc_msgSendSuper2(&v28, "collectionView:didSelectItemAtIndexPath:", a1, isa);

  sub_10003E48C(v2 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v27);
  if (Strong)
  {
    v6 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    receiver = v27[0].receiver;
    if (v27[0].receiver)
    {
      if (*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
      {
        v8 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

        sub_100368890(receiver, 2, 0, 2, v8, v27);

        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();
  }

  memset(v27, 0, 48);
LABEL_8:
  sub_1000D2DFC(v27, &v25, &qword_101916000);
  if (v25)
  {
    sub_1000D2DFC(v26, v21, &unk_10191C220);
    sub_10005E7BC(v21, v22);
    sub_10019D044(&v25);
    v9 = v23;
    v10 = v24;
    sub_10005E838(v22, v23);
    v11 = (*(v10 + 32))(v9, v10);
    sub_10004E3D0(v22);
    if (v11)
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        sub_100345A00(v12);
        swift_unknownObjectRelease();
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100024F64(&v25, &qword_101916000);
  }

  sub_1000D2DFC(v27, &v25, &qword_101916000);
  if (!v25)
  {
    sub_100024F64(v27, &qword_101916000);
    v19 = &v25;
    return sub_100024F64(v19, &qword_101916000);
  }

  sub_1000D2DFC(v26, v21, &unk_10191C220);
  sub_10005E7BC(v21, v22);
  sub_10019D044(&v25);
  v13 = v23;
  v14 = v24;
  sub_10005E838(v22, v23);
  v15 = (*(v14 + 32))(v13, v14);
  sub_10004E3D0(v22);
  if (v15)
  {
    type metadata accessor for MapsHomeVisitedPlacesListViewModel();
    v16 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v16)
    {
      +[VisitedPlacesDataProvider markVisitedPlacesEntrySeen]_0();
      v17 = objc_opt_self();
      v18 = String._bridgeToObjectiveC()();
      [v17 captureUserAction:2039 target:8 value:v18];
    }
  }

LABEL_18:
  v19 = v27;
  return sub_100024F64(v19, &qword_101916000);
}

uint64_t sub_100344F50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_1019174A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-1] - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2DFC(a1, v21, &qword_101916000);
  if (v21[0])
  {
    v11 = v21[0];
    sub_10019D044(v21);
    v12 = OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration;
    sub_10003E48C(&v2[OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration], v21);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003E4E8(v21);
    if (Strong)
    {
      v14 = sub_100059F34();
      v21[0] = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      swift_unknownObjectRelease();
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v10, v6, v7);
        v18 = *&v2[v12];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v2 collectionView:v18 didSelectItemAtIndexPath:isa];

        return (*(v8 + 8))(v10, v7);
      }
    }

    else
    {

      (*(v8 + 56))(v6, 1, 1, v7);
    }

    v15 = &qword_1019174A0;
    v16 = v6;
  }

  else
  {
    v15 = &qword_101916000;
    v16 = v21;
  }

  return sub_100024F64(v16, v15);
}

uint64_t sub_1003451E0(uint64_t a1, char a2, uint64_t a3)
{
  sub_1000D2DFC(a1, &aBlock, &qword_101916000);
  if (!aBlock)
  {
    return sub_100024F64(&aBlock, &qword_101916000);
  }

  v18[0] = aBlock;
  v18[1] = v16;
  v18[2] = v17;
  sub_1000D2DFC(v18 + 8, &v11, &unk_10191C220);
  sub_10005E7BC(&v11, &aBlock);
  sub_1000CE6B8(&unk_101911D30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10019D044(v18);
    v12 = 0;
    v11 = 0uLL;
    v13 = -1;
    return sub_100024F64(&v11, &qword_101909870);
  }

  sub_1000D671C(&v11, v14);
  sub_100340568(v14, &aBlock);
  if (BYTE8(v16) == 2)
  {
    v5 = aBlock;
  }

  else
  {
    if (BYTE8(v16) != 1)
    {
      if (BYTE8(v16))
      {
        sub_1003405A8(v14);
        sub_10019D044(v18);
        return sub_1003405A8(&aBlock);
      }

      v5 = aBlock;
      if (a2 == 9)
      {
        sub_100342564(aBlock, v18, UIView.annotateView(with:), 0);
      }

      goto LABEL_20;
    }

    v5 = aBlock;
    sub_100024F64(&v16, &unk_10191A5F0);
    sub_100024F64(&aBlock + 8, &qword_10191A550);
  }

  if (a2 == 2)
  {

    sub_10053E580(v18, a3);
    v10 = objc_opt_self();
    [v10 captureUserAction:2037 target:8 value:0];
    [v10 captureUserAction:2040 target:8 value:0];
    goto LABEL_21;
  }

  if (a2 == 9)
  {
    if ([v5 availableRemovalBehaviors])
    {
      sub_100342D08(v5, v18, UIView.annotateView(with:), 0);
    }

    goto LABEL_20;
  }

  if (a2 != 6 || [v5 type] != 7)
  {
LABEL_20:

    goto LABEL_21;
  }

  v7 = [objc_opt_self() sharedManager];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v17 = sub_100345630;
  *(&v17 + 1) = v8;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v16 = sub_100271778;
  *(&v16 + 1) = &unk_101612738;
  v9 = _Block_copy(&aBlock);

  [v7 fetchParkedCar:v9];

  _Block_release(v9);
LABEL_21:
  sub_1003405A8(v14);
  return sub_10019D044(v18);
}

unint64_t sub_100345580()
{
  result = qword_10191A5E0;
  if (!qword_10191A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A5E0);
  }

  return result;
}

uint64_t sub_100345638()
{
  sub_10003E48C(v0 + OBJC_IVAR____TtC4Maps25HomeListSectionController_configuration, v25);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10003E4E8(v25);
  if (Strong)
  {
    v2 = sub_100059F34();
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v3 = *&v25[0];
    if (*&v25[0])
    {
      if (*(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot))
      {
        v4 = *(Strong + OBJC_IVAR____TtC4Maps22HomeListRootController_rootSnapshot + 8);

        sub_100368890(v3, 2, 0, 2, v4, v25);

        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    swift_unknownObjectRelease();
  }

  memset(v25, 0, 48);
LABEL_8:
  sub_1000D2DFC(v25, &v23, &qword_101916000);
  if (v23)
  {
    sub_1000D2DFC(v24, v19, &unk_10191C220);
    sub_10005E7BC(v19, v20);
    sub_10019D044(&v23);
    v5 = v21;
    v6 = v22;
    sub_10005E838(v20, v21);
    v7 = (*(v6 + 32))(v5, v6);
    sub_10004E3D0(v20);
    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 analyticsGrouping];
        if (!v10)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = String._bridgeToObjectiveC()();
        }

        [objc_opt_self() captureUserAction:359 target:8 value:v10];

        [objc_opt_self() captureDisplayActionForSuggestionsEntry:v9];
        swift_unknownObjectRelease();
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100024F64(&v23, &qword_101916000);
  }

  sub_1000D2DFC(v25, &v23, &qword_101916000);
  if (!v23)
  {
    sub_100024F64(v25, &qword_101916000);
    v17 = &v23;
    return sub_100024F64(v17, &qword_101916000);
  }

  sub_1000D2DFC(v24, v19, &unk_10191C220);
  sub_10005E7BC(v19, v20);
  sub_10019D044(&v23);
  v11 = v21;
  v12 = v22;
  sub_10005E838(v20, v21);
  v13 = (*(v12 + 32))(v11, v12);
  sub_10004E3D0(v20);
  if (v13)
  {
    type metadata accessor for MapsHomeVisitedPlacesListViewModel();
    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v14)
    {
      +[VisitedPlacesDataProvider markVisitedPlacesEntrySeen]_0();
      v15 = objc_opt_self();
      v16 = String._bridgeToObjectiveC()();
      [v15 captureUserAction:359 target:8 value:v16];
    }
  }

LABEL_20:
  v17 = v25;
  return sub_100024F64(v17, &qword_101916000);
}

id sub_100345A00(void *a1)
{
  v2 = [a1 analyticsGrouping];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = objc_opt_self();
  [v3 captureUserAction:2039 target:8 value:v2];

  result = [a1 type];
  if (result == 25)
  {

    return [v3 captureUserAction:2007 target:0 value:0];
  }

  return result;
}

unint64_t sub_100345AEC()
{
  result = qword_10191A600;
  if (!qword_10191A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A600);
  }

  return result;
}

uint64_t sub_100345B90()
{

  sub_10004E3D0(v0 + 40);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100345C9C()
{
  result = qword_101921B10;
  if (!qword_101921B10)
  {
    type metadata accessor for CurrentLocationSuggestionMenuProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101921B10);
  }

  return result;
}

unint64_t sub_100345D10()
{
  result = qword_10191A638;
  if (!qword_10191A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A638);
  }

  return result;
}

double sub_100345DA8()
{
  result = 390.0;
  xmmword_10191A640 = xmmword_1011FC010;
  return result;
}

void sub_100345DC0()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note];
  v2 = *&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note + 8];
  if (v2)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
    if ((v2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(v2) & 0xF;
    }

    if (!v3)
    {
      *v1 = 0;
      *(v1 + 1) = 0;
    }
  }

  if ([v0 isViewLoaded])
  {
    v4 = sub_1003469EC();
    [v4 setRightButtonEnabled:*(v1 + 1) != 0];
  }
}

uint64_t MacPlaceNoteEditViewController.dismissHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1000CD9D4(*v1);
  return v2;
}

uint64_t MacPlaceNoteEditViewController.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000D3B90(v6, v7);
}

id sub_100346128()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v8._object = 0x80000001012300C0;
  v1._countAndFlagsBits = 0x746F4E2074696445;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001012300A0;
  v1._object = 0xE900000000000065;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v1, v8);
  v3 = String._bridgeToObjectiveC()();

  [v0 setText:v3];

  v4 = [objc_opt_self() system22Bold];
  [v0 setFont:v4];

  v5 = v0;
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

id sub_1003462C4(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_100346324()
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v1];

  v2 = [v0 layer];
  [v2 setCornerRadius:10.0];

  [v0 setClipsToBounds:1];
  v3 = v0;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  return v3;
}

id sub_100346444(uint64_t a1)
{
  v2 = [objc_allocWithZone(UITextView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = objc_opt_self();
  v4 = [objc_msgSend(v3 "sharedManager")];
  swift_unknownObjectRelease();
  [v2 setFont:v4];

  [v2 setAdjustsFontForContentSizeCategory:1];
  v5 = [objc_opt_self() labelColor];
  [v2 setTextColor:v5];

  v6 = [objc_opt_self() addANotePromptText];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  sub_1000CE6B8(&qword_10191BE70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  *(inited + 32) = NSFontAttributeName;
  v8 = NSFontAttributeName;
  v9 = [objc_msgSend(v3 "sharedManager")];
  swift_unknownObjectRelease();
  *(inited + 64) = sub_100014C84(0, &qword_10191A720);
  *(inited + 40) = v9;
  sub_1000D131C(inited);
  swift_setDeallocating();
  sub_1001A1AFC(inited + 32);
  v10 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10026AB84();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v10 initWithString:v6 attributes:isa];

  [v2 _maps_setAttributedPlaceholder:v12];
  [v2 setDelegate:a1];
  [v2 setScrollEnabled:1];
  v13 = v2;
  v14 = String._bridgeToObjectiveC()();
  [v13 setAccessibilityIdentifier:v14];

  return v13;
}

id sub_100346758(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1003467BC(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType:1];
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v13._object = 0x8000000101230030;
  v3._countAndFlagsBits = 0x6574656C6544;
  v4._object = 0x8000000101230010;
  v13._countAndFlagsBits = 0xD000000000000024;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v3._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, qword_1019600D8, v3, v13);
  v5 = String._bridgeToObjectiveC()();

  [v2 setTitle:v5 forState:0];

  v6 = objc_opt_self();
  v7 = [v6 systemRedColor];
  [v2 setTintColor:v7];

  v8 = [v6 systemRedColor];
  [v2 setTitleColor:v8 forState:0];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v2 titleLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [v6 systemRedColor];
    [v10 setTextColor:v11];
  }

  [v2 setRole:3];
  [v2 addTarget:a1 action:"deleteTapped" forControlEvents:64];
  return v2;
}

id sub_1003469EC()
{
  v1 = OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView);
  }

  else
  {
    v4 = [objc_allocWithZone(MacFooterView) initWithNoBlurRightSideButtonsOfType:16];
    [v4 setDelegate:v0];
    v5 = v4;
    v6 = String._bridgeToObjectiveC()();
    [v5 setAccessibilityIdentifier:v6];

    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id MacPlaceNoteEditViewController.init(note:)(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView] = 0;
  *&v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___deleteButton] = 0;
  *&v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView] = 0;
  if (a2)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8;
  }

  if (v10)
  {

    v11 = a2;
  }

  else
  {
    a1 = 0;
    v11 = 0;
  }

  v12 = &v2[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_originalNote];
  *v12 = a1;
  *(v12 + 1) = v11;
  *v6 = a1;
  *(v6 + 1) = v11;
  swift_bridgeObjectRetain_n();

  v16.receiver = v2;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  result = [v13 cardPresentationController];
  if (result)
  {
    v15 = result;

    [v15 setTakesAvailableHeight:1];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall MacPlaceNoteEditViewController.viewDidLoad()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [v0 cardPresentationController];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setTakesAvailableHeight:1];

  v6 = [v0 cardPresentationController];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  [v6 setPresentedModally:1];

  v8 = [v0 cardPresentationController];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setAllowsSwipeToDismiss:0];

  sub_100346EAC();
  sub_1003471CC();
  if ([v0 isViewLoaded])
  {
    v10 = sub_1003469EC();
    [v10 setRightButtonEnabled:*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note + 8] != 0];
  }
}

void sub_100346EAC()
{
  v1 = [v0 headerView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  if (qword_101906778 != -1)
  {
    swift_once();
  }

  [v0 setPreferredContentSize:xmmword_10191A640];
  v3 = sub_1003462C4(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView, sub_100346128);
  [v2 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  v6 = sub_1003462C4(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView, sub_100346324);
  [v5 addSubview:v6];

  v7 = *&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView];
  v8 = sub_100346758(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView, sub_100346444);
  [v7 addSubview:v8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [v9 keyboardLayoutGuide];

  [v11 setFollowsUndockedKeyboard:1];
  v12 = *&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView];
  if (*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note + 8])
  {
    v13 = v12;

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = v12;
    v14 = 0;
  }

  [v13 setText:v14];

  v15 = [v0 view];
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = v15;
  v17 = sub_1003469EC();
  [v16 addSubview:v17];

  v18 = *&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView];
  v19 = sub_100346758(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___deleteButton, sub_1003467BC);
  [v18 addSubview:v19];
}

void sub_1003471CC()
{
  v1 = [v0 headerView];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000CE6B8(&qword_101908400);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1011FC020;
  v4 = sub_1003462C4(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView, sub_100346128);
  v5 = [v4 leadingAnchor];

  v6 = [v2 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:26.0];

  *(v3 + 32) = v7;
  v8 = OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView;
  v9 = [*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView] topAnchor];
  v10 = [v2 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:28.0];

  *(v3 + 40) = v11;
  v12 = [*&v0[v8] trailingAnchor];
  v13 = [v2 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:-26.0];

  *(v3 + 48) = v14;
  v15 = [*&v0[v8] bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-16.0];

  *(v3 + 56) = v17;
  v18 = sub_1003462C4(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView, sub_100346324);
  v19 = [v18 leadingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = v20;
  v22 = [v20 layoutMarginsGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v19 constraintEqualToAnchor:v23];

  *(v3 + 64) = v24;
  v25 = OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView;
  v26 = [*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView] topAnchor];
  v77 = v2;
  v27 = [v2 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v3 + 72) = v28;
  v29 = [*&v0[v25] trailingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = v30;
  v32 = [v30 layoutMarginsGuide];

  v33 = [v32 trailingAnchor];
  v34 = [v29 constraintEqualToAnchor:v33];

  *(v3 + 80) = v34;
  v35 = [*&v0[v25] bottomAnchor];
  v36 = sub_1003469EC();
  v37 = [v36 topAnchor];

  v38 = [v35 constraintEqualToAnchor:v37 constant:-16.0];
  *(v3 + 88) = v38;
  v39 = sub_100346758(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView, sub_100346444);
  v40 = [v39 leadingAnchor];

  v41 = [*&v0[v25] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v3 + 96) = v42;
  v43 = OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView;
  v44 = [*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView] topAnchor];
  v45 = [*&v0[v25] topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v3 + 104) = v46;
  v47 = [*&v0[v43] trailingAnchor];
  v48 = [*&v0[v25] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v3 + 112) = v49;
  v50 = [*&v0[v43] bottomAnchor];
  v51 = [*&v0[v25] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v3 + 120) = v52;
  v53 = OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView;
  v54 = [*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView] leadingAnchor];
  v55 = [v0 view];
  if (!v55)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v56 = v55;
  v57 = [v55 leadingAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v3 + 128) = v58;
  v59 = [*&v0[v53] trailingAnchor];
  v60 = [v0 view];
  if (!v60)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v61 = v60;
  v62 = [v60 trailingAnchor];

  v63 = [v59 constraintEqualToAnchor:v62];
  *(v3 + 136) = v63;
  v64 = [*&v0[v53] bottomAnchor];
  v65 = [v0 view];
  if (!v65)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v66 = v65;
  v67 = objc_opt_self();
  v68 = [v66 bottomAnchor];

  v69 = [v64 constraintEqualToAnchor:v68];
  *(v3 + 144) = v69;
  v70 = sub_100346758(&OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___deleteButton, sub_1003467BC);
  v71 = [v70 leadingAnchor];

  v72 = [*&v0[v53] leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:16.0];

  *(v3 + 152) = v73;
  v74 = [*&v0[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___deleteButton] centerYAnchor];
  v75 = [*&v0[v53] centerYAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v3 + 160) = v76;
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];
}

uint64_t _s4Maps30MacPlaceNoteEditViewControllerC09macFooterF17RightButtonTappedyySo0biF0CF_0()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler;
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);
    v5 = *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_originalNote + 8);
    v7 = *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note);
    v6 = *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note + 8);
    v8 = (v5 | v6) == 0;
    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (*(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_originalNote) == v7 && v5 == v6)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    sub_1000CD9D4(v3);

    v3((v8 & 1) == 0, v7, v6);
    sub_1000D3B90(v3, v4);
  }

  return result;
}

uint64_t sub_100347CA4(char *a1, uint64_t a2, char a3)
{
  v5 = &a1[OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler];
  result = swift_beginAccess();
  v7 = *v5;
  if (*v5)
  {
    v8 = *(v5 + 1);
    v9 = a1;
    sub_1000CD9D4(v7);
    v7(a3 & 1, 0, 0);

    return sub_1000D3B90(v7, v8);
  }

  return result;
}

Swift::Void __swiftcall MacPlaceNoteEditViewController.textViewDidChange(_:)(UITextView a1)
{
  v2 = [(objc_class *)a1.super.super.super.super.isa text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note);
  *v7 = v4;
  v7[1] = v6;

  sub_100345DC0();
}

Swift::Void __swiftcall MacPlaceNoteEditViewController.macFooterViewLeftButtonTapped(_:)(MacFooterView *a1)
{
  v2 = v1 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler;
  swift_beginAccess();
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v2 + 8);

    v3(0, 0, 0);
    sub_1000D3B90(v3, v4);
  }
}

void sub_1003481AC()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_note);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController_dismissHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___textView) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___deleteButton) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps30MacPlaceNoteEditViewController____lazy_storage___macFooterView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL _s4Maps30MacPlaceNoteEditViewControllerC04textF0_18shouldChangeTextIn011replacementK0SbSo06UITextF0C_So8_NSRangeVSStF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = [a1 text];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = Range<>.init(_:in:)();
  if (v14)
  {

    return 0;
  }

  else
  {
    sub_10043FDA0(v12, v13, a4, a5, v9, v11);

    v16 = String.count.getter();

    return v16 < 10001;
  }
}

uint64_t sub_10034837C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003483C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10034843C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InsetGroupedListStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000CE6B8(&qword_10191A730);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  v23 = a1;
  sub_1000CE6B8(&qword_10191A738);
  sub_1000414C8(&qword_10191A740, &qword_10191A738);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_10034A708();
  View.listStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  sub_100024F64(v12, &qword_10191A730);
  v26 = *(a1 + 40);
  v13 = *(a1 + 32);
  v25 = v13;
  if (v26 == 1)
  {
    v14 = v13;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v16 = v20;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v25, &qword_101918608);
    (*(v21 + 8))(v16, v22);
    v14 = v24;
  }

  *(a2 + *(sub_1000CE6B8(&qword_10191A760) + 36)) = v14;
  v17 = a2 + *(sub_1000CE6B8(&qword_10191A768) + 36);
  sub_100349B84(a1, v17);
  result = sub_1000CE6B8(&qword_101910FB8);
  *(v17 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_1003487C4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1000CE6B8(&qword_10191A780);
  return sub_10034881C(a1, a2 + *(v4 + 44));
}

uint64_t sub_10034881C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10191A788);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  __chkstk_darwin(v4);
  v46 = (&v45 - v6);
  v7 = sub_1000CE6B8(&qword_10191A790);
  __chkstk_darwin(v7 - 8);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v45 - v10;
  v56 = static VerticalAlignment.center.getter();
  v63 = 1;
  sub_100348E50(a1, &v59);
  v72 = *&v60[112];
  v73 = *&v60[128];
  v68 = *&v60[48];
  v69 = *&v60[64];
  v70 = *&v60[80];
  v71 = *&v60[96];
  v64 = v59;
  v65 = *v60;
  v66 = *&v60[16];
  v67 = *&v60[32];
  v75[8] = *&v60[112];
  v75[9] = *&v60[128];
  v75[4] = *&v60[48];
  v75[5] = *&v60[64];
  v75[6] = *&v60[80];
  v75[7] = *&v60[96];
  v75[0] = v59;
  v75[1] = *v60;
  v74 = v60[144];
  v76 = v60[144];
  v75[2] = *&v60[16];
  v75[3] = *&v60[32];
  sub_1000D2DFC(&v64, &v57, &qword_10191A798);
  sub_100024F64(v75, &qword_10191A798);
  *&v62[119] = v71;
  *&v62[135] = v72;
  *&v62[151] = v73;
  *&v62[55] = v67;
  *&v62[71] = v68;
  *&v62[87] = v69;
  *&v62[103] = v70;
  *&v62[7] = v64;
  *&v62[23] = v65;
  v62[167] = v74;
  *&v62[39] = v66;
  v55 = v63;
  v59 = *a1;
  sub_1000CE6B8(&qword_10191A778);
  State.wrappedValue.getter();
  v11 = v57;
  v12 = sub_10034B638();
  v14 = v13;

  if (v14)
  {
    *&v59 = v12;
    *(&v59 + 1) = v14;
    sub_1000E5580();
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    KeyPath = swift_getKeyPath();
    v23 = v15;
    v50 = v17;
    v24 = v17;
    v25 = v19 & 1;
    sub_1001C8AFC(v15, v24, v19 & 1);
    v49 = v21;

    v48 = KeyPath;

    v47 = 1;
  }

  else
  {
    v23 = 0;
    v49 = 0;
    v50 = 0;
    v25 = 0;
    v48 = 0;
    v47 = 0;
  }

  v59 = *a1;
  State.wrappedValue.getter();
  v26 = a1;
  v27 = v57;
  swift_getKeyPath();
  *&v59 = v27;
  sub_10034AD40(&qword_10191A920, type metadata accessor for TrafficIncidentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v27[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting];

  if (v28 == 1)
  {
    v29 = static VerticalAlignment.center.getter();
    v30 = v46;
    *v46 = v29;
    v30[1] = 0x4020000000000000;
    *(v30 + 16) = 0;
    v31 = sub_1000CE6B8(&qword_10191A7B0);
    sub_100349538(v26, v30 + *(v31 + 44));
    v32 = v30;
    v33 = v53;
    sub_1000B26D8(v32, v53);
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v53;
  }

  (*(v52 + 56))(v33, v34, 1, v51);
  v35 = v54;
  sub_1000B2668(v33, v54);
  *(&v58[7] + 1) = *&v62[112];
  *(&v58[8] + 1) = *&v62[128];
  *(&v58[9] + 1) = *&v62[144];
  *(&v58[3] + 1) = *&v62[48];
  *(&v58[4] + 1) = *&v62[64];
  *(&v58[5] + 1) = *&v62[80];
  *(&v58[6] + 1) = *&v62[96];
  *(v58 + 1) = *v62;
  v57 = v56;
  LOBYTE(v58[0]) = v55;
  *(&v58[10] + 1) = *&v62[160];
  *(&v58[1] + 1) = *&v62[16];
  *(&v58[2] + 1) = *&v62[32];
  v36 = v58[8];
  *(a2 + 128) = v58[7];
  *(a2 + 144) = v36;
  *(a2 + 160) = v58[9];
  *(a2 + 169) = *(&v58[9] + 9);
  v37 = v58[4];
  *(a2 + 64) = v58[3];
  *(a2 + 80) = v37;
  v38 = v58[6];
  *(a2 + 96) = v58[5];
  *(a2 + 112) = v38;
  v39 = v58[0];
  *a2 = v57;
  *(a2 + 16) = v39;
  v40 = v58[2];
  *(a2 + 32) = v58[1];
  *(a2 + 48) = v40;
  v41 = v49;
  v42 = v50;
  *(a2 + 192) = v23;
  *(a2 + 200) = v42;
  *(a2 + 208) = v25;
  *(a2 + 216) = v41;
  *(a2 + 224) = v48;
  *(a2 + 232) = 0;
  *(a2 + 240) = v47;
  v43 = a2 + *(sub_1000CE6B8(&qword_10191A7A0) + 64);
  sub_1000B2668(v35, v43);
  sub_1000D2DFC(&v57, &v59, &qword_10191A7A8);
  sub_10034A7C8(v23, v42, v25, v41);
  sub_10034A818(v23, v42, v25, v41);
  sub_100024F64(v33, &qword_10191A790);
  sub_100024F64(v35, &qword_10191A790);
  sub_10034A818(v23, v42, v25, v41);
  *&v60[113] = *&v62[112];
  *&v60[129] = *&v62[128];
  *&v60[145] = *&v62[144];
  *&v60[49] = *&v62[48];
  *&v60[65] = *&v62[64];
  *&v60[81] = *&v62[80];
  *&v60[97] = *&v62[96];
  *&v60[1] = *v62;
  *&v60[17] = *&v62[16];
  v59 = v56;
  v60[0] = v55;
  v61 = *&v62[160];
  *&v60[33] = *&v62[32];
  return sub_100024F64(&v59, &qword_10191A7A8);
}

void sub_100348E50(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = *a1;
  sub_1000CE6B8(&qword_10191A778);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v33 = v31[0];
  sub_10034AD40(&qword_10191A920, type metadata accessor for TrafficIncidentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v31[0] + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  if (!*(v31[0] + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8))
  {
    v4 = v3;
    v5 = 0;
    v22 = v3;
LABEL_5:

    KeyPath = swift_getKeyPath();
    sub_1000CE6B8(&qword_101918610);
    State.init(wrappedValue:)();
    v8 = v33;
    v31[0] = 0;
    sub_1000CE6B8(&unk_101916610);
    State.init(wrappedValue:)();
    v9 = v33;
    v28 = 0;
    v27 = v5;
    v10 = static HorizontalAlignment.leading.getter();
    LOBYTE(v33) = 0;
    sub_10034923C(v29);
    *&v26[55] = v30;
    *&v26[39] = v29[2];
    *&v26[23] = v29[1];
    *&v26[7] = v29[0];
    v11 = v33;
    v31[0] = v10;
    v31[1] = 0;
    v12 = v10;
    v32[0] = v33;
    v13 = *&v26[16];
    *&v32[1] = *v26;
    *&v32[64] = *(&v30 + 1);
    *&v32[49] = *&v26[48];
    v15 = *&v26[32];
    v14 = *&v26[48];
    *&v32[33] = *&v26[32];
    v16 = *v26;
    *&v32[17] = *&v26[16];
    *&v25[23] = *v32;
    *&v25[7] = v10;
    *&v25[71] = *&v32[48];
    *&v25[87] = *&v32[64];
    *&v25[55] = *&v32[32];
    *&v25[39] = *&v32[16];
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    v17 = *v25;
    *(a2 + 73) = *&v25[16];
    *(a2 + 57) = v17;
    v18 = *&v25[64];
    *(a2 + 136) = *&v25[79];
    *(a2 + 121) = v18;
    v19 = *&v25[32];
    *(a2 + 105) = *&v25[48];
    *(a2 + 89) = v19;
    v20 = v28;
    LOBYTE(v10) = v27;
    v24[88] = 1;
    *a2 = KeyPath;
    *(a2 + 8) = v20;
    *(a2 + 48) = v22;
    *(a2 + 56) = v10;
    *(a2 + 152) = 0;
    *(a2 + 160) = 1;
    v33 = v12;
    v34 = v11;
    v35 = v16;
    *&v38[15] = *&v26[63];
    *v38 = v14;
    v37 = v15;
    v36 = v13;
    sub_1001D31A8(KeyPath, v20 & 1);

    v21 = v9;
    sub_1002BAD44(v22, v10 & 1);
    sub_1000D2DFC(v31, v24, &qword_10191A7D0);
    sub_100024F64(&v33, &qword_10191A7D0);
    sub_1000F1230(KeyPath, v20 & 1);

    sub_1002BAA0C(v22, v10 & 1);
    return;
  }

  if (*(v31[0] + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8) == 1)
  {
    v6 = objc_opt_self();
    v7 = v3;
    v22 = [v6 VKTrafficIncidentTypeForGEOTrafficIncidentType:{objc_msgSend(v7, "incidentType")}];

    v5 = 1;
    goto LABEL_5;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10034923C@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_10191A778);
  State.wrappedValue.getter();
  sub_10034AF04();

  sub_1000E5580();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.Weight.semibold.getter();
  v7 = Text.fontWeight(_:)();
  v38 = v8;
  v10 = v9;
  v12 = v11;
  sub_1000F0A40(v2, v4, v6 & 1);

  State.wrappedValue.getter();
  sub_10034B03C();
  v14 = v13;

  if (v14)
  {
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    static Font.subheadline.getter();
    v37 = v12;
    v36 = v7;
    v20 = Text.font(_:)();
    v22 = v21;
    v24 = v23;

    sub_1000F0A40(v15, v17, v19 & 1);

    v25 = [objc_opt_self() secondaryLabelColor];
    Color.init(uiColor:)();
    v26 = Text.foregroundStyle<A>(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = v20;
    v7 = v36;
    sub_1000F0A40(v33, v22, v24 & 1);

    v14 = v30 & 1;
    v12 = v37;
    sub_1001C8AFC(v26, v28, v14);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v32 = 0;
  }

  v34 = v10 & 1;
  sub_1001C8AFC(v7, v38, v34);

  sub_10034A91C(v26, v28, v14, v32);
  sub_10034A960(v26, v28, v14, v32);
  *a1 = v7;
  *(a1 + 8) = v38;
  *(a1 + 16) = v34;
  *(a1 + 24) = v12;
  *(a1 + 32) = v26;
  *(a1 + 40) = v28;
  *(a1 + 48) = v14;
  *(a1 + 56) = v32;
  sub_10034A960(v26, v28, v14, v32);
  sub_1000F0A40(v7, v38, v34);
}

uint64_t sub_100349538@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000CE6B8(&qword_10191D8F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v37 - v5;
  v7 = sub_1000CE6B8(&qword_10191A7B8);
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v42 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v41 = v37 - v10;
  __chkstk_darwin(v11);
  v40 = v37 - v12;
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v16.super.isa = qword_1019600D8;
  v50._object = 0x80000001012301C0;
  v17._countAndFlagsBits = 0x6548206C6C697453;
  v18._countAndFlagsBits = 0xD00000000000001ELL;
  v18._object = 0x80000001012301A0;
  v50._countAndFlagsBits = 0xD000000000000031;
  v17._object = 0xEA00000000006572;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v50);
  v19 = *a1;
  v49 = *(a1 + 8);
  v48 = *(a1 + 16);
  v46 = *(a1 + 32);
  v47 = *(a1 + 40);
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  v20[1] = *a1;
  v20[2] = v21;
  *(v20 + 41) = *(a1 + 25);
  v38 = v19;
  sub_1000D2DFC(&v49, v44, &qword_10191A770);
  sub_1000D2DFC(&v48, v44, &qword_10190A140);
  sub_1000D2DFC(&v46, v44, &qword_101918608);
  v37[1] = sub_1000E5580();
  Button<>.init<A>(_:action:)();
  LOBYTE(v45._countAndFlagsBits) = 0;
  sub_1000414C8(&qword_10190C668, &qword_10191D8F0);
  sub_10034A898();
  View.buttonStyle<A>(_:)();
  v22 = *(v4 + 8);
  v22(v6, v3);
  v51._object = 0x8000000101230220;
  v23._countAndFlagsBits = 0x64657261656C43;
  v24._object = 0x8000000101230200;
  v51._countAndFlagsBits = 0xD00000000000002ELL;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  v23._object = 0xE700000000000000;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, 0, v16, v23, v51);
  v25 = swift_allocObject();
  v26 = *(a1 + 16);
  v25[1] = *a1;
  v25[2] = v26;
  *(v25 + 41) = *(a1 + 25);
  v27 = v38;
  sub_1000D2DFC(&v49, v44, &qword_10191A770);
  sub_1000D2DFC(&v48, v44, &qword_10190A140);
  sub_1000D2DFC(&v46, v44, &qword_101918608);
  Button<>.init<A>(_:action:)();
  LOBYTE(v45._countAndFlagsBits) = 1;
  v28 = v40;
  View.buttonStyle<A>(_:)();
  v22(v6, v3);
  v29 = v39;
  v30 = *(v39 + 16);
  v31 = v41;
  v30(v41, v15, v7);
  v32 = v42;
  v30(v42, v28, v7);
  v33 = v43;
  v30(v43, v31, v7);
  v34 = sub_1000CE6B8(&qword_10191A7C8);
  v30(&v33[*(v34 + 48)], v32, v7);
  v35 = *(v29 + 8);
  v35(v28, v7);
  v35(v15, v7);
  v35(v32, v7);
  return (v35)(v31, v7);
}

void sub_100349B24(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1000CE6B8(&qword_10191A778);
  v3 = State.wrappedValue.getter();
  a2(v3);
}

uint64_t sub_100349B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = type metadata accessor for CardHeaderSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v28 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v6 - 8);
  v8 = (v27 - v7);
  v29 = type metadata accessor for LeadingCardHeaderViewModel();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v39._object = 0x8000000101230100;
  v15._countAndFlagsBits = 0x6F73697664412031;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  v16._object = 0x80000001012300E0;
  v39._countAndFlagsBits = 0xD000000000000070;
  v15._object = 0xEA00000000007972;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v15, v39);
  v27[1] = v17._object;
  v27[2] = v17._countAndFlagsBits;
  *v8 = 0xD000000000000011;
  v8[1] = 0x8000000101230180;
  v18 = enum case for MapsDesignAccessibilityString.header(_:);
  v19 = type metadata accessor for MapsDesignAccessibilityString();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v8, v18, v19);
  (*(v20 + 56))(v8, 0, 1, v19);
  (*(v4 + 104))(v28, enum case for CardHeaderSize.large(_:), v3);
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v21 = *a1;
  v38 = *(a1 + 8);
  v37 = *(a1 + 16);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  v22 = swift_allocObject();
  v23 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v23;
  *(v22 + 41) = *(a1 + 25);
  v24 = v21;
  sub_1000D2DFC(&v38, v31, &qword_10191A770);
  sub_1000D2DFC(&v37, v31, &qword_10190A140);
  sub_1000D2DFC(&v35, v31, &qword_101918608);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v25 = v29;
  (*(v9 + 16))(v11, v14, v29);
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  return (*(v9 + 8))(v14, v25);
}

void sub_10034A078()
{
  sub_1000CE6B8(&qword_10191A778);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10034AD40(&qword_10191A920, type metadata accessor for TrafficIncidentViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *&v1[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose];
  if (v0)
  {

    v0();

    sub_1000588AC(v0);
  }

  else
  {
  }
}

uint64_t sub_10034A180@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_10191A728);
  return sub_10034843C(&v6, a1 + *(v4 + 44));
}

uint64_t sub_10034A1E8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v48 = a2;
  v43 = type metadata accessor for ButtonStyleConfiguration.Label();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191A7E8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = sub_1000CE6B8(&qword_10191A7F0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v44 = sub_1000CE6B8(&qword_10191A7F8);
  __chkstk_darwin(v44);
  v14 = &v42 - v13;
  v45 = sub_1000CE6B8(&qword_10191A800);
  __chkstk_darwin(v45);
  v16 = &v42 - v15;
  v47 = sub_1000CE6B8(&qword_10191A808);
  __chkstk_darwin(v47);
  v18 = &v42 - v17;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v2 + 32))(v8, v4, v43);
  v19 = &v8[*(v6 + 44)];
  v20 = v54;
  *(v19 + 4) = v53;
  *(v19 + 5) = v20;
  *(v19 + 6) = v55;
  v21 = v50;
  *v19 = v49;
  *(v19 + 1) = v21;
  v22 = v52;
  *(v19 + 2) = v51;
  *(v19 + 3) = v22;
  LOBYTE(v4) = static Edge.Set.all.getter();
  v23 = v8;
  v24 = v46;
  sub_1000F11C4(v23, v12, &qword_10191A7E8);
  v25 = &v12[*(v10 + 44)];
  *v25 = v4;
  *(v25 + 8) = xmmword_1011FC060;
  *(v25 + 24) = xmmword_1011FC060;
  v25[40] = 0;
  if (v24)
  {
    v26 = static Color.secondary.getter();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  v27 = v26;
  v28 = static Edge.Set.all.getter();
  sub_1000F11C4(v12, v14, &qword_10191A7F0);
  v29 = &v14[*(v44 + 36)];
  *v29 = v27;
  v29[8] = v28;
  if (v24)
  {
    v30 = static Color.blue.getter();
  }

  else
  {
    v30 = static Color.white.getter();
  }

  v31 = v30;
  sub_1000F11C4(v14, v16, &qword_10191A7F8);
  *&v16[*(v45 + 36)] = v31;
  v32 = &v18[*(v47 + 36)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v32 = _Q0;
  *&v32[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  sub_1000F11C4(v16, v18, &qword_10191A800);
  static Font.Weight.bold.getter();
  sub_10034A9D0();
  View.fontWeight(_:)();
  return sub_100024F64(v18, &qword_10191A808);
}

uint64_t sub_10034A6AC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10034A708()
{
  result = qword_10191A748;
  if (!qword_10191A748)
  {
    sub_1000D6664(&qword_10191A730);
    sub_1000414C8(&qword_10191A750, &qword_10191A758);
    sub_100109BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A748);
  }

  return result;
}

uint64_t sub_10034A7C8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001C8AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10034A818(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000F0A40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10034A898()
{
  result = qword_10191A7C0;
  if (!qword_10191A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A7C0);
  }

  return result;
}

uint64_t sub_10034A91C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001C8AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10034A960(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000F0A40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10034A9D0()
{
  result = qword_10191A810;
  if (!qword_10191A810)
  {
    sub_1000D6664(&qword_10191A808);
    sub_10034AA88();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A810);
  }

  return result;
}

unint64_t sub_10034AA88()
{
  result = qword_10191A818;
  if (!qword_10191A818)
  {
    sub_1000D6664(&qword_10191A800);
    sub_10034AB40();
    sub_1000414C8(&unk_1019105B0, &qword_10190C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A818);
  }

  return result;
}

unint64_t sub_10034AB40()
{
  result = qword_10191A820;
  if (!qword_10191A820)
  {
    sub_1000D6664(&qword_10191A7F8);
    sub_10034ABF8();
    sub_1000414C8(&qword_10191D9D0, &qword_101910650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A820);
  }

  return result;
}

unint64_t sub_10034ABF8()
{
  result = qword_10191A828;
  if (!qword_10191A828)
  {
    sub_1000D6664(&qword_10191A7F0);
    sub_10034AC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A828);
  }

  return result;
}

unint64_t sub_10034AC84()
{
  result = qword_10191A830;
  if (!qword_10191A830)
  {
    sub_1000D6664(&qword_10191A7E8);
    sub_10034AD40(&qword_101910A80, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A830);
  }

  return result;
}

uint64_t sub_10034AD40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10034AD9C()
{
  result = qword_10191A838;
  if (!qword_10191A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A838);
  }

  return result;
}

id sub_10034ADF8(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) = v2;

    return sub_10034CB7C(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B8D10();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10034AF04()
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8);
  if (!*(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8))
  {
    v3 = v1;
    v4 = [v3 title];
    if (v4)
    {
LABEL_6:
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }

    __break(1u);
  }

  if (v2 == 1)
  {
    v3 = v1;
    v4 = [v3 descriptionText];
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10034B03C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v50 - v7;
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  swift_getKeyPath();
  v52 = v0;
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  if (*(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8) != 1)
    {
      goto LABEL_23;
    }

    v22 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_dateFormatter);
    v23 = v18;
    v24 = [v23 incidentUpdateTime];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    v26 = [v22 lastUpdatedUIStringForDate:isa];

    if (v26)
    {
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v21;
    }

    return 0;
  }

  v19 = v18;
  if ([v19 isRestrictionIncident])
  {
    v20 = [v19 restrictionEffectiveTimeRange];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v21;
  }

  v27 = [v19 endDate];
  if (!v27)
  {
    v44 = [v19 lastUpdatedDate];
    if (v44)
    {
      v45 = v44;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v11, v8, v2);
      v46 = *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_dateFormatter);
      v47 = Date._bridgeToObjectiveC()().super.isa;
      v48 = [v46 lastUpdatedUIStringForDate:v47];

      if (v48)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v3 + 8))(v11, v2);
        return v21;
      }

      (*(v3 + 8))(v11, v2);
    }

    return 0;
  }

  v28 = v27;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v17, v14, v2);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v51 = v2;
  v53._object = 0x8000000101230390;
  v29._countAndFlagsBits = 0xD000000000000016;
  v29._object = 0x8000000101230350;
  v30._object = 0x8000000101230370;
  v53._countAndFlagsBits = 0xD0000000000000A6;
  v30._countAndFlagsBits = 0xD000000000000010;
  v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v30, v53);
  sub_1000CE6B8(&unk_10190D5C0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1011E1D60;
  v32 = *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_dateFormatter);
  v33 = Date._bridgeToObjectiveC()().super.isa;
  v34 = [v32 dateStringForDate:v33];

  if (v34)
  {
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    *(v31 + 56) = &type metadata for String;
    v38 = sub_1000DA61C();
    *(v31 + 64) = v38;
    *(v31 + 32) = v35;
    *(v31 + 40) = v37;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v32 timeStringForDate:v39];

    if (v40)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      *(v31 + 96) = &type metadata for String;
      *(v31 + 104) = v38;
      *(v31 + 72) = v41;
      *(v31 + 80) = v43;
      v21 = static String.localizedStringWithFormat(_:_:)();

      (*(v3 + 8))(v17, v51);
      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10034B638()
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
    if ([v1 isRestrictionIncident])
    {
      v2 = [v1 restrictionCombinedDetails];
LABEL_7:
      v4 = v2;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    v2 = [v1 info];
    if (v2)
    {
      goto LABEL_7;
    }

    v6 = [v1 subtitle];
    if (v6)
    {
      v7 = v6;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8) == 1)
  {
    return 0;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10034B7E0()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  swift_getKeyPath();
  v25 = v0;
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *&v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source];
  if (!v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8])
  {
    v6 = v5;
    UIView.annotateView(with:)([v6 position]);
    v9 = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v7, v8}];
    if (!v9)
    {
LABEL_30:

      return;
    }

    v10 = v9;
    v11 = [objc_allocWithZone(TrafficIncidentReport) initWithIncidentLocation:v9 type:objc_msgSend(objc_opt_self() userPath:{"GEOTrafficIncidentTypeForVKTrafficIncidentType:", objc_msgSend(v6, "type")), 6}];

LABEL_6:
    v12 = v11;
    v13 = objc_opt_self();
    v14 = v6;
    v15 = [v12 incidentType];
    switch(v15)
    {
      case 0:
        v16 = @"UNKNOWN";
        goto LABEL_28;
      case 1:
        v16 = @"ROAD_CLOSURE";
        goto LABEL_28;
      case 2:
        v16 = @"LANE_CLOSURE";
        goto LABEL_28;
      case 3:
        v16 = @"WEATHER";
        goto LABEL_28;
      case 4:
        v16 = @"EVENT";
        goto LABEL_28;
      case 5:
        v16 = @"ACCIDENT";
        goto LABEL_28;
      case 6:
        v16 = @"HAZARD";
        goto LABEL_28;
      case 7:
        v16 = @"ROADWORKS";
        goto LABEL_28;
      case 8:
        v16 = @"RAMP_CLOSURE";
        goto LABEL_28;
      case 9:
        v16 = @"OTHER";
        goto LABEL_28;
      case 10:
        v16 = @"TRAFFIC";
        goto LABEL_28;
      case 11:
        v16 = @"WALKING_CLOSURE";
        goto LABEL_28;
      case 12:
        v16 = @"MANEUVER_CLOSURE";
        goto LABEL_28;
      case 13:
        v16 = @"AREA_ADVISORY";
        goto LABEL_28;
      case 14:
        v16 = @"AREA_CLOSURE";
        goto LABEL_28;
      case 15:
        v16 = @"CONGESTION_ZONE";
        goto LABEL_28;
      case 16:
        v16 = @"SPEED_CHECK";
        goto LABEL_28;
      case 17:
        v16 = @"NO_THOROUGHFARE_CLOSURE";
        goto LABEL_28;
      case 18:
        v16 = @"ROAD_OPEN";
        goto LABEL_28;
      case 19:
        v16 = @"EMERGENCY_VEHICLE";
LABEL_28:
        v17 = v16;
        break;
      default:
        v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
        break;
    }

    v18 = v16;
    [v13 captureUserAction:107 target:741 value:v18];

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
    type metadata accessor for MainActor();
    v6 = v5;
    v20 = v1;
    v21 = v12;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = &protocol witness table for MainActor;
    *(v23 + 32) = v21;
    *(v23 + 40) = 3;
    *(v23 + 48) = v5;
    *(v23 + 56) = v20;
    sub_10020AAE4(0, 0, v4, &unk_1011FC5E0, v23);

    goto LABEL_30;
  }

  if (v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8] == 1)
  {
    v11 = *&v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source];
    v6 = v11;
    v5 = 0;
    goto LABEL_6;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10034BC64()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  swift_getKeyPath();
  v27 = v0;
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *&v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source];
  if (!v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8])
  {
    v6 = v5;
    UIView.annotateView(with:)([v6 position]);
    v9 = [objc_allocWithZone(GEOLocation) initWithGEOCoordinate:{v7, v8}];
    if (!v9)
    {
LABEL_30:

      return;
    }

    v10 = v9;
    v11 = [objc_allocWithZone(TrafficIncidentReport) initWithIncidentLocation:v9 type:objc_msgSend(objc_opt_self() userPath:{"GEOTrafficIncidentTypeForVKTrafficIncidentType:", objc_msgSend(v6, "type")), 6}];
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 sharedInstance];
    [v14 removeTrafficIncidentFeature:v6];

LABEL_6:
    v15 = objc_opt_self();
    v16 = v6;
    v17 = [v13 incidentType];
    switch(v17)
    {
      case 0:
        v18 = @"UNKNOWN";
        goto LABEL_28;
      case 1:
        v18 = @"ROAD_CLOSURE";
        goto LABEL_28;
      case 2:
        v18 = @"LANE_CLOSURE";
        goto LABEL_28;
      case 3:
        v18 = @"WEATHER";
        goto LABEL_28;
      case 4:
        v18 = @"EVENT";
        goto LABEL_28;
      case 5:
        v18 = @"ACCIDENT";
        goto LABEL_28;
      case 6:
        v18 = @"HAZARD";
        goto LABEL_28;
      case 7:
        v18 = @"ROADWORKS";
        goto LABEL_28;
      case 8:
        v18 = @"RAMP_CLOSURE";
        goto LABEL_28;
      case 9:
        v18 = @"OTHER";
        goto LABEL_28;
      case 10:
        v18 = @"TRAFFIC";
        goto LABEL_28;
      case 11:
        v18 = @"WALKING_CLOSURE";
        goto LABEL_28;
      case 12:
        v18 = @"MANEUVER_CLOSURE";
        goto LABEL_28;
      case 13:
        v18 = @"AREA_ADVISORY";
        goto LABEL_28;
      case 14:
        v18 = @"AREA_CLOSURE";
        goto LABEL_28;
      case 15:
        v18 = @"CONGESTION_ZONE";
        goto LABEL_28;
      case 16:
        v18 = @"SPEED_CHECK";
        goto LABEL_28;
      case 17:
        v18 = @"NO_THOROUGHFARE_CLOSURE";
        goto LABEL_28;
      case 18:
        v18 = @"ROAD_OPEN";
        goto LABEL_28;
      case 19:
        v18 = @"EMERGENCY_VEHICLE";
LABEL_28:
        v19 = v18;
        break;
      default:
        v18 = [NSString stringWithFormat:@"(unknown: %i)", v17];
        break;
    }

    v20 = v18;
    [v15 captureUserAction:106 target:741 value:v20];

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
    type metadata accessor for MainActor();
    v6 = v5;
    v22 = v1;
    v23 = v13;
    v24 = static MainActor.shared.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = &protocol witness table for MainActor;
    *(v25 + 32) = v23;
    *(v25 + 40) = 3;
    *(v25 + 48) = v5;
    *(v25 + 56) = v22;
    sub_10020AAE4(0, 0, v4, &unk_1011FC5A8, v25);

    goto LABEL_30;
  }

  if (v0[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8] == 1)
  {
    v6 = v5;
    v5 = 0;
    v13 = v6;
    goto LABEL_6;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10034C12C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting);
  return result;
}

uint64_t sub_10034C1D4(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B8D10();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10034C2BC()
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_10034C34C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_10034C414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1002B8D10();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_10034C540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  *v3 = a2;
  v3[1] = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v4);
}

id sub_10034C598(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = &v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose];
  *v9 = 0;
  v9[1] = 0;
  ObservationRegistrar.init()();
  v10 = &v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source];
  *v10 = a1;
  v10[8] = a2;
  v11 = objc_allocWithZone(TrafficIncidentLayoutManager);
  v12 = a1;
  v13 = [v11 initWithFormType:9];
  *&v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_layoutManager] = v13;
  v14 = [objc_allocWithZone(TrafficIncidentsDateFormatter) init];
  *&v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_dateFormatter] = v14;
  v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting] = 0;
  v2[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive] = 0;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v18 = v15;

  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v17;

  sub_10020AAE4(0, 0, v8, &unk_1011FC610, v20);

  return v18;
}

void sub_10034C7DC(void *a1, char a2)
{
  v5 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source;
  v9 = *(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  *v8 = a1;
  *(v8 + 8) = a2;
  v10 = a1;

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_10020AAE4(0, 0, v7, &unk_1011FC590, v14);
}

void *sub_10034C964()
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  v2 = v1;
  return v1;
}

id sub_10034C9F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  v5 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8);
  *a2 = v4;
  *(a2 + 8) = v5;

  return v4;
}

uint64_t sub_10034CA8C()
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10034CB7C(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive;
  if (*(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) != v3)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + v5);
    v7 = [objc_opt_self() defaultCenter];
    v8 = v7;
    if (v6 == 1)
    {
      [v7 addObserver:v2 selector:"didReceiveIncidentUpdateWithNotification:" name:@"SiriTrafficIncidentUpdateNotification" object:0];
      v9 = &selRef_addObserver_;
    }

    else
    {
      [v7 removeObserver:v2 name:@"SiriTrafficIncidentUpdateNotification" object:0];
      v9 = &selRef_removeObserver_;
    }

    return [*(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_layoutManager) *v9];
  }

  return result;
}

uint64_t sub_10034CD08(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

id sub_10034CD78(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive);
  *(a1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) = a2;
  return sub_10034CB7C(v3);
}

uint64_t sub_10034CDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v6;
  v4[25] = v5;

  return _swift_task_switch(sub_10034CE4C, v6, v5);
}

uint64_t sub_10034CE4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_layoutManager;
    v0[27] = OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel_layoutManager;
    v3 = *(Strong + v2);
    v0[28] = v3;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_10034CFD8;
    v4 = swift_continuation_init();
    v0[17] = sub_1000CE6B8(&qword_10191A918);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10034D35C;
    v0[13] = &unk_101612DB0;
    v0[14] = v4;
    [v3 fetchTrafficIncidentsLayout:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10034CFD8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_10034D0E0, v2, v1);
}

uint64_t sub_10034D0E0()
{
  v1 = v0[28];
  v2 = v0[26];

  swift_getKeyPath();
  v0[10] = v2;
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source);
  if (*(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8))
  {
    if (*(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__source + 8) != 1)
    {
      goto LABEL_10;
    }

    v4 = *(v0[26] + v0[27]);
    v5 = v3;
    if ([v4 isIncidentReportingEnabled])
    {
      v6 = *(v0[26] + v0[27]);
      v7 = [v6 containsGEOTrafficIncidentType:{objc_msgSend(v5, "incidentType")}];
      goto LABEL_7;
    }

LABEL_9:

LABEL_10:
    LOBYTE(v9) = 0;
    v12 = v0[26];
    v11 = &v12[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting];
    if ((v12[OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting] & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v8 = *(v0[26] + v0[27]);
  v5 = v3;
  if (([v8 isIncidentReportingEnabled] & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v0[26] + v0[27]);
  v7 = [v6 containsVKTrafficIncidentType:{objc_msgSend(v5, "type")}];
LABEL_7:
  v9 = v7;
  v10 = v0[26];

  v11 = (v10 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting);
  v12 = v0[26];
  if (v9 == *(v10 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__enableIncidentReporting))
  {
LABEL_8:
    *v11 = v9;

    goto LABEL_12;
  }

LABEL_11:
  swift_getKeyPath();
  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v0[10] = v12;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_12:
  v14 = v0[1];

  return v14();
}

uint64_t sub_10034D35C(uint64_t a1)
{
  v1 = *sub_10005E838((a1 + 32), *(a1 + 56));
  sub_100014C84(0, &qword_101919470);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10034D3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 152) = a6;
  *(v7 + 160) = a7;
  *(v7 + 200) = a5;
  *(v7 + 144) = a4;
  type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return _swift_task_switch(sub_10034D480, v9, v8);
}

uint64_t sub_10034D480()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [v1 uniqueIdentifier];
    if (v2)
    {
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  v6 = String._bridgeToObjectiveC()();
  *(v0 + 192) = v6;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10034D5FC;
  v7 = swift_continuation_init();
  *(v0 + 136) = sub_1000CE6B8(&unk_10191A930);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002E6364;
  *(v0 + 104) = &unk_101612E28;
  *(v0 + 112) = v7;
  [v5 submitFeedbackForType:v4 incidentId:v6 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10034D5FC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return _swift_task_switch(sub_10034D704, v2, v1);
}

uint64_t sub_10034D704()
{
  v1 = v0[24];
  v2 = v0[20];

  swift_getKeyPath();
  v0[10] = v2;
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  if (v3)
  {
    v4 = v0[20];

    v3(v4);
    sub_1000588AC(v3);
  }

  v5 = v0[1];

  return v5();
}

void sub_10034D7F4()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_100297058(v5), (v3 & 1) == 0))
  {

    sub_10005BF8C(v5);
LABEL_10:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_11;
  }

  sub_10004E374(*(v1 + 56) + 32 * v2, &v6);
  sub_10005BF8C(v5);

  if (!*(&v7 + 1))
  {
LABEL_11:
    sub_1000DB2F4(&v6);
    return;
  }

  sub_100014C84(0, &qword_101909920);
  if (swift_dynamicCast())
  {
    v4 = v5[0];
    if ([v5[0] BOOLValue])
    {
      sub_10034BC64();
    }

    else
    {
      sub_10034B7E0();
    }
  }
}

uint64_t type metadata accessor for TrafficIncidentViewModel()
{
  result = qword_10191A8A0;
  if (!qword_10191A8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034DB4C()
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

uint64_t sub_10034DD78(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10034DDA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_10034CDB4(a1, v4, v5, v6);
}

void sub_10034DE70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  sub_10034C7DC(v1, v2);
}

uint64_t sub_10034DEB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10034CDB4(a1, v4, v5, v6);
}

uint64_t sub_10034DF6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10003AC40;

  return sub_10034D3E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10034E044()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__onClose);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1000CD9D4(v1);
  return sub_1000588AC(v4);
}

uint64_t sub_10034E09C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10034E0EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive);
  *(v1 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) = *(v0 + 24);
  return sub_10034CB7C(v2);
}

uint64_t sub_10034E148()
{
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void sub_10034E1BC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (!*(v2 + 24))
  {
    v3 = *(v2 + 32);
    *(v2 + 32) = 0;
    v4 = *(v2 + 40);
    *(v2 + 40) = 1;
    sub_1002B30A4(v3, v4);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v2 + 56);
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v2, &off_10160F590, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    sub_1003179CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v1 + 40);
    if (v7)
    {

      v7(v1);
      sub_1000588AC(v7);
    }
  }
}

uint64_t sub_10034E2D4(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (*(v3 + 24))
  {
    v4 = *(v3 + 32);
    *(v3 + 32) = result;
    v5 = *(v3 + 40);
    *(v3 + 40) = 1;
    sub_1002B30A4(v4, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v3 + 56);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v3, &off_10160F590, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    sub_1003179CC();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v2 + 40);
    if (v8)
    {

      v8(v2);
      return sub_1000588AC(v8);
    }
  }

  return result;
}

uint64_t sub_10034E3E0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
  v4 = *(v2 + 40);
  *(v2 + 40) = 2;
  sub_1002B30A4(v3, v4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v2, &off_10160F590, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + 40);
  if (v8)
  {

    v8(v1);
    return sub_1000588AC(v8);
  }

  return result;
}

uint64_t sub_10034E4E0(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *(a1 + 32);
    swift_unknownObjectRetain();
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 2;
  }

  v5 = *(v1 + 16);
  v6 = *(v5 + 32);
  *(v5 + 32) = v3;
  v7 = *(v5 + 40);
  *(v5 + 40) = v4;
  sub_1002B2FCC(v3, v4);
  sub_1002B30A4(v6, v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v5 + 56);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v5, &off_10160F590, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v2 + 56);
  if (v10)
  {

    v10(v2);
    sub_1000588AC(v10);
  }

  return sub_1002B30A4(v3, v4);
}

uint64_t sub_10034E624()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 32))
  {

    Task.cancel()();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *(&v11 - 2) = v0;
  *(&v11 - 1) = 0;
  v12 = v0;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v1;
  v9 = sub_10020AAE4(0, 0, v4, &unk_1011FC808, v8);
  return sub_10034E8C4(v9);
}

uint64_t sub_10034E850()
{
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10034E8C4(uint64_t a1)
{
  if (!*(v1 + 32))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003179CC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 32) = a1;
}

uint64_t sub_10034EA1C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  sub_1000D88A8(v1, *(v3 + 48));
  return v1;
}

uint64_t sub_10034EAA0()
{
  swift_getKeyPath();
  v3 = v0;
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 56);
  sub_1000D88A8(v1, *(v3 + 64));
  return v1;
}

uint64_t sub_10034EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_1000D88A8(a2, a3);
  return sub_1000588AC(v3);
}

uint64_t sub_10034EB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
}

uint64_t sub_10034EBEC()
{
  swift_getKeyPath();
  sub_1003179CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10034EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_10034ED20, v6, v5);
}

uint64_t sub_10034ED20()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_10034EDB4;

  return sub_10034F2A0();
}

uint64_t sub_10034EDB4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    v6 = v4[6];
    v7 = v4[7];

    return _swift_task_switch(sub_10034EF58, v6, v7);
  }

  else
  {
    v4[10] = a1;
    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v5;
    v8[1] = sub_10034F050;

    return (sub_1003D3014)(a1);
  }
}

uint64_t sub_10034EF58()
{
  v1 = v0[4];

  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  v0[2] = v1;
  sub_1003179CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10034F050(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_10034F19C, v4, v3);
}

uint64_t sub_10034F19C()
{
  v1 = v0[12];
  v2 = v0[4];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[3] = v2;
  sub_1003179CC();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_10034F2C0()
{
  v1 = *(v0[9] + 16);
  v2 = [v1 _identifier];
  if (v2 && (v3 = v2, v4 = [v2 mapsIdentifierString], v3, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v0[10] = v5;
    v0[11] = v7;
    [v1 centerCoordinate];
    v9 = v8;
    [v1 centerCoordinate];
    v11 = v10;
    v12 = [objc_opt_self() sharedService];
    if (v12)
    {
      v20 = v12;
      v21 = [v12 ticketForSpatialPlaceLookupWithCenterCoordinate:0 radius:100 pointOfInterestFilter:2 maxResultCount:v9 source:{v11, 800.0}];
      v0[12] = v21;

      v22 = swift_task_alloc();
      v0[13] = v22;
      *(v22 + 16) = v21;
      v23 = swift_task_alloc();
      v0[14] = v23;
      v19 = sub_1000CE6B8(&qword_101919D30);
      *v23 = v0;
      v23[1] = sub_100321B1C;
      v17 = sub_10034FC34;
      v12 = v0 + 8;
      v16 = 0x800000010122E7F0;
      v13 = 0;
      v14 = 0;
      v15 = 0xD000000000000012;
      v18 = v22;
    }

    else
    {
      __break(1u);
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100021540(v24, qword_10195FE70);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[Visit History Correction Picker] not fetching suggestions because place does not have mapsIdentifier", v27, 2u);
    }

    v28 = v0[1];

    return v28(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10034F5B0()
{
  swift_unknownObjectRelease();

  sub_1000588AC(*(v0 + 40));
  sub_1000588AC(*(v0 + 56));

  v1 = OBJC_IVAR____TtC4Maps32VisitLocationCorrectionViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitLocationCorrectionViewModel()
{
  result = qword_10191A980;
  if (!qword_10191A980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10034F6D0()
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

void sub_10034F790(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101919D38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_10034FC3C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_101612FD0;
  v11 = _Block_copy(aBlock);

  sub_100109428();
  v12 = static OS_dispatch_queue.main.getter();
  [a2 submitWithHandler:v11 queue:v12];

  _Block_release(v11);
}

void sub_10034F95C(uint64_t a1)
{
  if (a1 && (v1 = sub_1002B0288(a1)) != 0)
  {
    v10 = v1;
    sub_1000CE6B8(&unk_101919D38);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1000CE6B8(&unk_101919D38);
    CheckedContinuation.resume(returning:)();
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100021540(v2, qword_10195FE70);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_1000CE6B8(&qword_101919D48);
      v7 = String.init<A>(describing:)();
      v9 = sub_10004DEB8(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "[Visit History Correction Picker] Error fetching suggestions: %s", v5, 0xCu);
      sub_10004E3D0(v6);
    }
  }
}

uint64_t sub_10034FB80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_10034EC88(a1, v4, v5, v6);
}

void sub_10034FC3C(uint64_t a1)
{
  sub_1000CE6B8(&unk_101919D38);

  sub_10034F95C(a1);
}

uint64_t sub_10034FCC8()
{
  *(*(v0 + 16) + 72) = *(v0 + 24);
}

uint64_t sub_10034FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for UUID();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101909FF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v54 - v7;
  v9 = type metadata accessor for CarCapsuleButton();
  v68 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = &v54 - v12;
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000CE6B8(&qword_10191AAF0);
  __chkstk_darwin(v17 - 8);
  v60 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = __chkstk_darwin(v19);
  v22 = &v54 - v21;
  v71 = *(a1 + 40);
  v58 = a1;
  v23 = *(a1 + 32);
  v70 = v23;
  v57 = v71;
  v67 = v9;
  v63 = &v54 - v21;
  v56 = v14;
  v55 = v16;
  v59 = v23;
  if (v71 != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v70, &qword_101916668);
    (*(v14 + 8))(v16, v13);
    if ((v69[0] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_4:
    v24 = 1;
    v25 = v68;
    v26 = v58;
    goto LABEL_7;
  }

  if (v23)
  {
    goto LABEL_4;
  }

LABEL_6:
  v54 = v13;
  v28 = enum case for CarButtonVariant.secondary(_:);
  v29 = type metadata accessor for CarButtonVariant();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v8, v28, v29);
  (*(v30 + 56))(v8, 0, 1, v29);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v64 + 8))(v5, v65);
  type metadata accessor for CarButtonViewModel();
  swift_allocObject();
  CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
  v26 = v58;
  v31 = swift_allocObject();
  v32 = v26[1];
  v31[1] = *v26;
  v31[2] = v32;
  *(v31 + 41) = *(v26 + 25);
  sub_1000D2DFC(&v70, v69, &qword_101916668);

  v22 = v63;

  v33 = v66;
  v9 = v67;
  CarCapsuleButton.init(model:tapHandler:)();
  v25 = v68;
  v13 = v54;
  (*(v68 + 32))(v22, v33, v9);
  v24 = 0;
LABEL_7:
  (*(v25 + 56))(v22, v24, 1, v9, v20);
  if (v57)
  {
    if ((v59 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v55;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v70, &qword_101916668);
    (*(v56 + 8))(v35, v13);
    if (v69[0] != 1)
    {
      goto LABEL_14;
    }
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v72._object = 0x80000001012305C0;
  v36._countAndFlagsBits = 0x69726953206B7341;
  v37._object = 0x80000001012305A0;
  v72._countAndFlagsBits = 0xD000000000000021;
  v37._countAndFlagsBits = 0xD000000000000012;
  v36._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, qword_1019600D8, v36, v72);
LABEL_14:
  v38 = enum case for CarButtonVariant.secondary(_:);
  v39 = type metadata accessor for CarButtonVariant();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v8, v38, v39);
  (*(v40 + 56))(v8, 0, 1, v39);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v64 + 8))(v5, v65);
  type metadata accessor for CarButtonViewModel();
  swift_allocObject();
  CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
  v41 = swift_allocObject();
  v42 = v26[1];
  v41[1] = *v26;
  v41[2] = v42;
  *(v41 + 41) = *(v26 + 25);
  sub_1000D2DFC(&v70, v69, &qword_101916668);

  v43 = v66;
  CarCapsuleButton.init(model:tapHandler:)();
  v44 = v63;
  v45 = v60;
  sub_1000D2DFC(v63, v60, &qword_10191AAF0);
  v47 = v67;
  v46 = v68;
  v48 = *(v68 + 16);
  v49 = v61;
  v48(v61, v43, v67);
  v50 = v62;
  sub_1000D2DFC(v45, v62, &qword_10191AAF0);
  v51 = sub_1000CE6B8(&qword_10191AAF8);
  v48((v50 + *(v51 + 48)), v49, v47);
  v52 = *(v46 + 8);
  v52(v43, v47);
  sub_100024F64(v44, &qword_10191AAF0);
  v52(v49, v47);
  return sub_100024F64(v45, &qword_10191AAF0);
}

uint64_t sub_100350734(uint64_t a1, uint64_t (**a2)(uint64_t))
{
  v3 = type metadata accessor for CarInputType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for CarInputType.touch(_:), v3, v5);
  v8 = static CarInputType.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return (*a2)(v9);
}

uint64_t sub_10035084C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CarInputType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for CarInputType.touch(_:), v3, v5);
  v8 = static CarInputType.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return (*(a2 + 16))(v9);
}

uint64_t sub_100350964@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6 = *v1;
  v7[0] = v3;
  *(v7 + 9) = *(v1 + 25);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000CE6B8(&qword_10191AAE8);
  return sub_10034FD48(&v6, a1 + *(v4 + 44));
}

unint64_t sub_1003509E0()
{
  result = qword_10191AB00;
  if (!qword_10191AB00)
  {
    sub_1000D6664(&qword_10191AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191AB00);
  }

  return result;
}

unint64_t sub_100350A44(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_101918E50);
  __chkstk_darwin(v4 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v63 - v8;
  v10 = OBJC_IVAR____TtC4Maps9PlaceItem___observationRegistrar;
  ObservationRegistrar.init()();
  swift_getObjectType();
  v11 = LibraryPlaceItemCompatible.createMapItemFromStorage()();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v17 = type metadata accessor for ObservationRegistrar();
    (*(*(v17 - 8) + 8))(v2 + v10, v17);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = [a1 identifier];
  if (v13)
  {
    v14 = v13;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_100351430(v6, v9);
  type metadata accessor for UUID();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    swift_unknownObjectRelease();

    sub_100192A14(v9);
    goto LABEL_8;
  }

  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v16 + 8))(v9, v15);
  *(v2 + 16) = v18;
  *(v2 + 24) = v20;

  v21 = [a1 mapItemName];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  *(v2 + 32) = v23;
  *(v2 + 40) = v25;
  v26 = [a1 styleAttributes];
  *(v2 + 72) = &type metadata for StyleAttributesImageProvider;
  *(v2 + 80) = sub_10017F24C();
  *(v2 + 48) = v26;
  *(v2 + 56) = 0;
  type metadata accessor for CollectionPlaceItem();
  *(v2 + 88) = swift_dynamicCastClass() == 0;
  v27 = [a1 placeItemNote];
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = v29 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v32 = 0;
    v31 = 0xE000000000000000;
  }

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32;
  }

  *(v2 + 89) = v33 != 0;
  v34 = [v12 _firstLocalizedCategoryName];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0xE000000000000000;
  }

  *(v2 + 96) = v36;
  *(v2 + 104) = v38;
  result = [v12 _geoMapItem];
  if (!result)
  {
    goto LABEL_52;
  }

  v40 = result;

  v41 = [v40 _resultSnippetLocationString];
  swift_unknownObjectRelease();
  if (v41)
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  *(v2 + 112) = v42;
  *(v2 + 120) = v44;
  v45 = [v12 _addressFormattedAsShortenedAddress];
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xE000000000000000;
  }

  *(v2 + 128) = v47;
  *(v2 + 136) = v49;
  v50 = [a1 placeItemNote];
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String._mapsui_nilIfEmpty.getter();
    v53 = v52;

    if (v53)
    {
      v54 = String._mapsui_quotedForLocale.getter();
      v56 = v55;
      swift_unknownObjectRelease();

      v57 = 0;
LABEL_48:
      *(v2 + 144) = v54;
      *(v2 + 152) = v56;
      *(v2 + 160) = v57;
      return v2;
    }
  }

  type metadata accessor for FavoriteItem();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    v56 = 0;
    v57 = 2;
    v54 = 1;
    goto LABEL_48;
  }

  v54 = swift_dynamicCastClass();
  if (!v54)
  {
    swift_unknownObjectRelease();

    v56 = 0;
    v57 = 2;
    goto LABEL_48;
  }

  swift_unknownObjectRetain();
  if (dispatch thunk of CollectionPlaceItem.type.getter())
  {
    if (qword_1019068E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v56 = *(&static FavoriteCollectionHandler.title + 1);
    v54 = static FavoriteCollectionHandler.title;

    swift_unknownObjectRelease_n();

    goto LABEL_45;
  }

  result = dispatch thunk of CollectionItem.fetchCollections()();
  if (result >> 62)
  {
    v61 = result;
    v62 = _CocoaArrayWrapper.endIndex.getter();
    result = v61;
    if (v62)
    {
      goto LABEL_36;
    }

LABEL_47:

    v57 = 2;
    swift_unknownObjectRelease_n();

    v54 = 0;
    v56 = 0;
    goto LABEL_48;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((result & 0xC000000000000001) != 0)
  {
    v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_39:
    v59 = v58;

    v54 = dispatch thunk of Collection.title.getter();
    v56 = v60;
    v57 = 2;
    swift_unknownObjectRelease_n();

    if (!v56)
    {
      v54 = 0;
      goto LABEL_48;
    }

LABEL_45:
    v57 = 1;
    goto LABEL_48;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v58 = *(result + 32);
    goto LABEL_39;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}