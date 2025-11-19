uint64_t sub_1002A39F4()
{
  v1 = OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem____lazy_storage___autocompletionStrings;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem____lazy_storage___autocompletionStrings);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1002A3AF0();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1002A4AB4(v4);
  }

  sub_1002A4AC4(v2);
  return v3;
}

uint64_t sub_1002A3AF0()
{
  v0 = [objc_allocWithZone(AutocompleteMatchInfo) initWithType:1];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  sub_1000CE6B8(&qword_101908400);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1011E47B0;
  v3 = objc_allocWithZone(AutocompleteStringMatcher);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4 requiredMatchLength:1 matchInfo:v1];

  *(v2 + 32) = v5;
  return v2;
}

uint64_t sub_1002A3CFC()
{
  v1 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);
  v2._object = 0x800000010122B0F0;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v2);
  v3 = [*(v0 + OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem) name];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v6;
  }

  else
  {
    v5 = 0;
  }

  v7._countAndFlagsBits = v5;
  v7._object = v1;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x756374726F687320;
  v8._object = 0xEF203A6570795474;
  String.append(_:)(v8);
  type metadata accessor for MapsSuggestionsShortcutType(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

id sub_1002A4080()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for MapsSyncStore();
  v3 = static MapsSyncStore.sharedStore.getter();
  v4 = v1;
  dispatch thunk of MapsSyncStore.unsubscribe(_:)();

  v6.receiver = v4;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1002A41F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong _notifyObserversItemsDidChange];
  }
}

uint64_t sub_1002A437C()
{
  **(v0 + 16) = *(*(v0 + 24) + OBJC_IVAR____TtC4Maps30PersonalizedFavoriteItemSource__allItems);
}

id sub_1002A43C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_priority] = 1;
  v9 = OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_mapItem] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_source] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sortOrder] = 0;
  v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_shouldBeClustered] = 0;
  v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_showsBalloonCallout] = 1;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceLabelMarker] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_address] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_searchableStrings] = 0;
  v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_shouldBeHiddenFromMap] = 0;
  v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_hidden] = 0;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem____lazy_storage___autocompletionStrings] = 1;
  v10 = OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__mapItem] = a1;
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_shortcutType] = a2;
  v11 = &v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__title];
  *v11 = a3;
  v11[1] = a4;
  *&v4[v9] = a1;
  sub_1000CE6B8(&qword_101917C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D30;
  v13 = objc_allocWithZone(PersonalizedMapItemKey);
  v14 = a1;

  v29 = [v13 initWithMapItem:v14];
  sub_100014C84(0, &qword_101917C10);
  sub_1001609AC(&qword_101917C18, &qword_101917C10);
  AnyHashable.init<A>(_:)();
  v15 = sub_1004552C4(inited);
  swift_setDeallocating();
  sub_10005BF8C(inited + 32);
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_keys] = v15;
  [v14 _coordinate];
  v16 = &v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_coordinate];
  *v16 = v17;
  v16[1] = v18;
  sub_100014C84(0, &unk_101917C20);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [ObjCClassFromMetadata defaultAdornment];
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_prefix] = v20;
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() adornmentWithString:v21 priority:0];

  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_title] = v22;
  v23 = [ObjCClassFromMetadata defaultAdornment];
  *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_subtitle] = v23;
  result = [objc_allocWithZone(SearchResult) initWithMapItem:*&v4[v10]];
  if (result)
  {
    v25 = result;

    *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem__searchResult] = v25;
    if ((a2 - 1) > 4)
    {
      v26 = 19;
    }

    else
    {
      v26 = qword_1011F7C30[a2 - 1];
    }

    *&v4[OBJC_IVAR____TtC4Maps24PersonalizedFavoriteItem_sourceSubtype] = v26;
    v28.receiver = v4;
    v28.super_class = ObjectType;
    return objc_msgSendSuper2(&v28, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A4710(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  v14 = sub_1002972F8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10012D598();
      goto LABEL_7;
    }

    sub_1001282E0(v17, a3 & 1);
    v22 = sub_1002972F8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *a4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10012C108(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *a4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1002A48DC(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  v25[1] = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_1002972F8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_10012D598();
      goto LABEL_7;
    }

    sub_1001282E0(v18, a3 & 1);
    v23 = sub_1002972F8(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v10 + 16))(v12, a2, v9);
      return sub_10012C108(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1002A4AB4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1002A4AC4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1002A4AFC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  v6 = *(v2 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1002A4C78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = [*(v0 + 56) _resultSnippetLocationString];
    if (v4)
    {
      v5 = v4;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v3 = 0;
      v7 = 0;
    }

    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    *(v0 + 32) = v3;
    *(v0 + 40) = v7;

    sub_1002AB808(v8, v9);
  }

  sub_1002AB81C(v1, v2);
  return v3;
}

id sub_1002A4D2C()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [*(v0 + 56) _styleAttributes];
    v3 = *(v0 + 48);
    *(v0 + 48) = v2;
    v4 = v2;
    sub_10005D280(v3);
  }

  sub_10005D270(v1);
  return v2;
}

uint64_t sub_1002A4D9C()
{

  sub_1002AB808(*(v0 + 32), *(v0 + 40));
  sub_10005D280(*(v0 + 48));

  return swift_deallocClassInstance();
}

id sub_1002A4E10@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 56) _muid];
  *a1 = result;
  return result;
}

uint64_t sub_1002A4E48()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit);
}

uint64_t sub_1002A4EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit);
  return result;
}

uint64_t sub_1002A4FA0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1002A50B8()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
  sub_1002AB7F0(v1, *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8));
  return v1;
}

uint64_t sub_1002A5178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
  v4 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
  v5 = *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1002AB7F0(a2, a3);
  return sub_1001FA1D4(v4, v5);
}

uint64_t sub_1002A51D0()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);

  return v1;
}

uint64_t sub_1002A528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  *v3 = a2;
  v3[1] = a3;
}

uint64_t sub_1002A52D4()
{
  v1 = OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___canAddRatings;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___canAddRatings);
  if (v2 == 2)
  {
    v3 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:*(*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 56) isPlaceHolderPlace:0];
    if (v3)
    {
      v4 = v3;
      LOBYTE(v2) = [objc_opt_self() shouldShowRatingsCallToActionForMapItem:v3];
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t sub_1002A5378()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v34 = *(v0 - 8);
  v35 = v0;
  __chkstk_darwin(v0);
  v33 = v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v4 - 8);
  v29[1] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Calendar();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v9 - 8);
  v11 = v29 - v10;
  v12 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v12 - 8);
  v14 = v29 - v13;
  v15 = type metadata accessor for Date.FormatStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v29 - v20;
  sub_100021578(v22, qword_10195FDE8);
  v29[0] = sub_100021540(v15, qword_10195FDE8);
  v23 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  v24 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v25 = v30;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v31 + 8))(v25, v32);
  v26 = *(v16 + 8);
  v26(v18, v15);
  v27 = v33;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v34 + 8))(v27, v35);
  return (v26)(v21, v15);
}

uint64_t sub_1002A58A4(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v27 = a3;
  v28 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TimeZone();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Calendar();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for Date.FormatStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021578(v19, a2);
  sub_100021540(v15, a2);
  v20 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v21 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  v22 = Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v23 = v25;
  v27(v22);
  Date.FormatStyle.weekday(_:)();
  (*(v26 + 8))(v23, v28);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1002A5CB8()
{
  v0 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v48 = *(v0 - 8);
  v49 = v0;
  __chkstk_darwin(v0);
  v47 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v6 - 8);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  __chkstk_darwin(v8 - 8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = sub_1000CE6B8(&qword_10190EC18);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - v13;
  v15 = sub_1000CE6B8(&qword_10190EC20);
  __chkstk_darwin(v15 - 8);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Date.FormatStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  __chkstk_darwin(v25);
  v37 = &v36 - v26;
  sub_100021578(v27, qword_10195FE30);
  v38 = sub_100021540(v18, qword_10195FE30);
  v28 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
  v29 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v30 = v41;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v42 + 8))(v30, v43);
  v31 = *(v19 + 8);
  v31(v21, v18);
  v32 = v44;
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  v33 = v37;
  Date.FormatStyle.month(_:)();
  (*(v45 + 8))(v32, v46);
  v31(v24, v18);
  v34 = v47;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v48 + 8))(v34, v49);
  return (v31)(v33, v18);
}

uint64_t sub_1002A62A0()
{
  v1 = (v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___formattedDate);
  if (*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___formattedDate + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1002A6318();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1002A6318()
{
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Calendar();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_date;
  static Calendar.current.getter();
  Date.init()();
  v36 = *(v2 + 104);
  v37 = (v2 + 104);
  v36(v4, enum case for Calendar.Component.year(_:), v1);
  v43 = v12;
  v44 = v0;
  LOBYTE(v12) = Calendar.isDate(_:equalTo:toGranularity:)();
  v13 = *(v2 + 8);
  v38 = v4;
  v39 = v2 + 8;
  v14 = v4;
  v15 = v9;
  v16 = v42;
  v41 = v1;
  v13(v14, v1);
  v17 = *(v6 + 8);
  v40 = v5;
  v17(v8, v5);
  v18 = *(v16 + 1);
  v18(v11, v15);
  if ((v12 & 1) == 0)
  {
    if (qword_101906650 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Date.FormatStyle();
    sub_100021540(v25, qword_10195FE30);
    sub_1002AB950(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
    goto LABEL_9;
  }

  v42 = v13;
  static Calendar.current.getter();
  v19 = Calendar.isDateInToday(_:)();
  v18(v11, v15);
  if ((v19 & 1) == 0)
  {
    static Calendar.current.getter();
    v27 = Calendar.isDateInYesterday(_:)();
    v18(v11, v15);
    if (v27)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v20.super.isa = qword_1019600D8;
      v21 = 0xD00000000000001ALL;
      v34 = 0x800000010122B580;
      v22 = 0x6164726574736559;
      v23 = 0x800000010122B560;
      v24 = 0xE900000000000079;
      goto LABEL_14;
    }

    static Calendar.current.getter();
    Date.init()();
    v29 = v38;
    v30 = v41;
    v36(v38, enum case for Calendar.Component.weekOfYear(_:), v41);
    v37 = v17;
    v31 = Calendar.isDate(_:equalTo:toGranularity:)();
    v42(v29, v30);
    v37(v8, v40);
    v18(v11, v15);
    if (v31)
    {
      if (qword_101906640 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Date.FormatStyle();
      v33 = qword_10195FE00;
    }

    else
    {
      if (qword_101906638 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Date.FormatStyle();
      v33 = qword_10195FDE8;
    }

    sub_100021540(v32, v33);
    sub_1002AB950(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
LABEL_9:
    Date.formatted<A>(_:)();
    return v45;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v20.super.isa = qword_1019600D8;
  v21 = 0xD000000000000016;
  v34 = 0x800000010122B580;
  v22 = 0x7961646F54;
  v23 = 0x800000010122B5B0;
  v24 = 0xE500000000000000;
LABEL_14:
  v28 = 0xD000000000000029;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v21, 0, v20, *&v22, *(&v34 - 1))._countAndFlagsBits;
}

uint64_t sub_1002A693C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider;
  swift_beginAccess();
  return sub_1000D2DFC(v5 + v3, a1, &qword_101921E90);
}

uint64_t sub_1002A6A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider;
  swift_beginAccess();
  return sub_1000D2DFC(v3 + v4, a2, &qword_101921E90);
}

uint64_t sub_1002A6AEC(uint64_t a1)
{
  sub_1000D2DFC(a1, v2, &qword_101921E90);
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100024F64(v2, &qword_101921E90);
}

uint64_t sub_1002A6BF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider;
  swift_beginAccess();
  sub_100146B54(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1002A6C60()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1002A6D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__richTextViews;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1002A6DE8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__richTextViews;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1002A6E58()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1002A6F04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__trailingAccessory);
}

uint64_t sub_1002A6FD8()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1002A7094(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__trailingAccessory) = a2;
}

uint64_t sub_1002A70D8(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (a1)
    {
      if (Strong)
      {
        v5 = v3;
        v6 = 7;
LABEL_7:
        sub_1002F23D0(v5, v6);

        return swift_unknownObjectRelease();
      }
    }

    else if (Strong)
    {
      v5 = v3;
      v6 = 2;
      goto LABEL_7;
    }
  }

  return result;
}

void *sub_1002A7188()
{
  v1 = type metadata accessor for RichTextType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem_place) + 24))
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = String._mapsui_nilIfEmpty.getter();
  v7 = v6;

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v10[0] = v5;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E1D30;
  (*(v2 + 104))(v4, enum case for RichTextType.title(_:), v1);
  swift_getKeyPath();
  v10[1] = v0;
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) == 1)
  {
    static Color.secondary.getter();
  }

  else
  {
    static Color.primary.getter();
  }

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v2 + 8))(v4, v1);
  return v8;
}

void *sub_1002A7444()
{
  v37 = type metadata accessor for RichTextType();
  v0 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for RichTextViewModel();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1002A62A0();
  v8 = v7;
  v9 = _swiftEmptyArrayStorage;
  v10 = sub_100356258(0, 1, 1, _swiftEmptyArrayStorage);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  v13 = v10;
  if (v12 >= v11 >> 1)
  {
    v13 = sub_100356258((v11 > 1), v12 + 1, 1, v10);
  }

  *(v13 + 2) = v12 + 1;
  v14 = v13;
  v15 = &v13[16 * v12];
  *(v15 + 4) = v6;
  *(v15 + 5) = v8;
  v16 = sub_1002A4C78();
  if (v17)
  {
    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v28 = v16;
      v29 = v14;
      v30 = v17;
      v31 = sub_100356258((v18 > 1), v19 + 1, 1, v29);
      v17 = v30;
      v14 = v31;
      v16 = v28;
    }

    *(v14 + 2) = v20;
    v21 = &v14[16 * v19];
    *(v21 + 4) = v16;
    *(v21 + 5) = v17;
  }

  else
  {
    v20 = *(v14 + 2);
    if (!v20)
    {
      goto LABEL_12;
    }
  }

  v38 = _swiftEmptyArrayStorage;
  sub_1005118F0(0, v20, 0);
  v34 = *(v0 + 104);
  v35 = v0 + 104;
  v9 = v38;
  v33 = enum case for RichTextType.line(_:);
  v22 = (v0 + 8);
  v32[0] = v14;
  v32[1] = v3 + 32;
  v23 = v14 + 40;
  do
  {
    v24 = v37;
    v34(v2, v33, v37);

    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*v22)(v2, v24);
    v38 = v9;
    v26 = v9[2];
    v25 = v9[3];
    if (v26 >= v25 >> 1)
    {
      sub_1005118F0(v25 > 1, v26 + 1, 1);
      v9 = v38;
    }

    v9[2] = v26 + 1;
    (*(v3 + 32))(v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v26, v5, v36);
    v23 += 16;
    --v20;
  }

  while (v20);
LABEL_12:

  return v9;
}

uint64_t sub_1002A77AC()
{
  v1 = type metadata accessor for RichTextType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___subtitleLineForLowConfidence;
  if (*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___subtitleLineForLowConfidence))
  {
    v6 = *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___subtitleLineForLowConfidence);
  }

  else
  {
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1011E1D30;
    (*(v2 + 104))(v4, enum case for RichTextType.line(_:), v1);
    sub_1002A79CC();
    static Color.secondary.getter();
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v2 + 8))(v4, v1);
    *(v0 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1002A79CC()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v42 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v12 = Calendar.isDateInToday(_:)();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if (v12)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v14.super.isa = qword_1019600D8;
    v38 = 0x800000010122B4D0;
    v15 = 0xD000000000000024;
    v16 = 0x800000010122B510;
    v17 = 0x800000010122B540;
    v18 = 0xD000000000000030;
    v19 = 0xD000000000000014;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v14, *&v19, *&v18)._countAndFlagsBits;
  }

  static Calendar.current.getter();
  v20 = Calendar.isDateInYesterday(_:)();
  v13(v11, v8);
  if (v20)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v14.super.isa = qword_1019600D8;
    v38 = 0x800000010122B4D0;
    v15 = 0xD000000000000028;
    v16 = 0x800000010122B480;
    v19 = 0xD000000000000018;
    v17 = 0x800000010122B4B0;
    v18 = 0xD000000000000030;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v15, 0, v14, *&v19, *&v18)._countAndFlagsBits;
  }

  static Calendar.current.getter();
  Date.init()();
  v22 = v42;
  (*(v42 + 104))(v4, enum case for Calendar.Component.weekOfYear(_:), v2);
  v39 = v1;
  v23 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v22 + 8))(v4, v2);
  (*(v40 + 8))(v7, v41);
  v13(v11, v8);
  if (v23)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v24._countAndFlagsBits = 0xD000000000000011;
    v45._object = 0x800000010122B410;
    v25._countAndFlagsBits = 0xD000000000000028;
    v25._object = 0x800000010122B3C0;
    v24._object = 0x800000010122B3F0;
    v45._countAndFlagsBits = 0xD000000000000060;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, qword_1019600D8, v24, v45);
    if (qword_101906648 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Date.FormatStyle();
    sub_100021540(v26, qword_10195FE18);
    sub_1002AB950(&qword_10190EC28, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v27 = v43;
    v28 = v44;
    sub_1000CE6B8(&unk_10190D5C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1011E1D30;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_1000DA61C();
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    v30 = static String.localizedStringWithFormat(_:_:)();

    return v30;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v46._object = 0x800000010122B350;
    v31._countAndFlagsBits = 0xD000000000000026;
    v31._object = 0x800000010122B300;
    v32._object = 0x800000010122B330;
    v46._countAndFlagsBits = 0xD00000000000006CLL;
    v32._countAndFlagsBits = 0xD000000000000014;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v32, v46);
    sub_1000CE6B8(&unk_10190D5C0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1011E1D30;
    v34 = sub_1002A62A0();
    v36 = v35;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_1000DA61C();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    v37 = static String.localizedStringWithFormat(_:_:)();

    return v37;
  }
}

uint64_t sub_1002A8070@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BottomAccessoryViewModel.BottomAccessoryType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = [objc_opt_self() sharedHelper];
  v8 = [v7 isUsingOfflineMaps];

  if (v8)
  {
    v9 = type metadata accessor for BottomAccessoryViewModel();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }

  else
  {
    swift_getKeyPath();
    v39 = v1;
    sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) == 1)
    {
      v39 = _swiftEmptyArrayStorage;
      sub_100511414(0, 2, 0);
      v12 = v39;
      v37 = 0x800000010122B680;
      v38 = " 'Were you here?'";
      v35 = 0x800000010122B600;
      v36 = "[Visited Places] Today";
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v41._object = 0x800000010122B680;
      v14._countAndFlagsBits = 0xD000000000000025;
      v14._object = 0x800000010122B650;
      v41._countAndFlagsBits = 0xD000000000000042;
      v15._countAndFlagsBits = 7562585;
      v15._object = 0xE300000000000000;
      v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v41);
      object = v18._object;
      countAndFlagsBits = v18._countAndFlagsBits;
      v20 = v12[2];
      v19 = v12[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v33 = v18._object;
        v34 = v18._countAndFlagsBits;
        v32 = v20 + 1;
        sub_100511414((v19 > 1), v20 + 1, 1);
        v21 = v32;
        object = v33;
        countAndFlagsBits = v34;
        v12 = v39;
      }

      v12[2] = v21;
      v22 = &v12[4 * v20];
      v22[4] = 0xD000000000000019;
      v22[5] = 0x80000001012165B0;
      v22[6] = countAndFlagsBits;
      v22[7] = object;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v42._object = v35;
      v23._countAndFlagsBits = 0xD000000000000024;
      v23._object = (v36 | 0x8000000000000000);
      v42._countAndFlagsBits = 0xD000000000000041;
      v24._countAndFlagsBits = 28494;
      v24._object = 0xE200000000000000;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v24, v42);
      v26 = v27._object;
      v25 = v27._countAndFlagsBits;
      v39 = v12;
      v29 = v12[2];
      v28 = v12[3];
      if (v29 >= v28 >> 1)
      {
        v38 = v27._countAndFlagsBits;
        sub_100511414((v28 > 1), v29 + 1, 1);
        v26 = v27._object;
        v25 = v38;
        v12 = v39;
      }

      v12[2] = v29 + 1;
      v30 = &v12[4 * v29];
      v30[4] = 0xD000000000000020;
      v30[5] = 0x80000001012165D0;
      v30[6] = v25;
      v30[7] = v26;
      *v6 = v12;
      (*(v4 + 104))(v6, enum case for BottomAccessoryViewModel.BottomAccessoryType.actions(_:), v3);
      BottomAccessoryViewModel.init(type:)();
      v31 = type metadata accessor for BottomAccessoryViewModel();
      return (*(*(v31 - 8) + 56))(a1, 0, 1, v31);
    }

    else
    {
      v13 = type metadata accessor for BottomAccessoryViewModel();
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }
  }
}

uint64_t sub_1002A8624()
{
  v1 = v0;
  v29 = type metadata accessor for RichTextType();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_1019157F0);
  v5 = swift_allocObject();
  v27 = xmmword_1011E1D30;
  *(v5 + 16) = xmmword_1011E1D30;
  *(v5 + 32) = sub_1002A7188();
  swift_getKeyPath();
  v30 = v0;
  v31 = v5;
  v32 = v0;
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v32 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit))
  {
    v6 = sub_1002A77AC();
    swift_getKeyPath();
    v32 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = v0;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__richTextViews;
    swift_beginAccess();
    v8 = *(v0 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100356AC0(0, v8[2] + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100356AC0((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v8[v11 + 4] = v6;
    *(v1 + v7) = v8;
LABEL_17:
    swift_endAccess();
    v32 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  v12 = sub_1002A7444();
  swift_getKeyPath();
  v32 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v0;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__richTextViews;
  swift_beginAccess();
  v14 = *(v0 + v13);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v13) = v14;
  v28 = v13;
  if ((v15 & 1) == 0)
  {
    v14 = sub_100356AC0(0, v14[2] + 1, 1, v14);
    *(v1 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100356AC0((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v14[v17 + 4] = v12;
  *(v1 + v28) = v14;
  swift_endAccess();
  v32 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v19 = *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8);
  if (v19 >= 3)
  {
    v20 = *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    (*(v2 + 104))(v4, enum case for RichTextType.line(_:), v29);
    sub_1002AB7F0(v20, v19);

    String._mapsui_quotedForLocale.getter();
    *&v27 = v21;
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v2 + 8))(v4, v29);
    sub_1001FA1D4(v20, v19);
    v22 = v28;
    sub_1001FA1D4(v20, v19);
    swift_getKeyPath();
    v32 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v23 = *(v1 + v22);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v22) = v23;
    if ((v24 & 1) == 0)
    {
      v23 = sub_100356AC0(0, v23[2] + 1, 1, v23);
      *(v1 + v22) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_100356AC0((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v23[v26 + 4] = v27;
    *(v1 + v22) = v23;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1002A8D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_101917F60);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___moreTrailingAccessory;
  swift_beginAccess();
  sub_1000D2DFC(&v1[v9], v8, &qword_101917F60);
  v10 = type metadata accessor for TrailingAccessoryViewModel();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100024F64(v8, &qword_101917F60);
  sub_1002A9FBC(v1);
  swift_allocObject();
  swift_weakInit();

  static TrailingAccessoryViewModel.more(actions:onMenuPresentationChanged:customMenuContent:)();

  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1002AB8E0(v5, &v1[v9]);
  return swift_endAccess();
}

uint64_t sub_1002A8F64()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for VisitHistoryItem();
    sub_1002AB950(&qword_101917F68, type metadata accessor for VisitHistoryItem);
    sub_1002AB998();
  }

  return AnyView.init<A>(_:)();
}

uint64_t sub_1002A9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A90C0, v8, v7);
}

uint64_t sub_1002A90C0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  swift_getKeyPath();
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v0[2] = v2;
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1002A8624();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1002A91F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A9288, v6, v5);
}

uint64_t sub_1002A9288()
{
  v1 = v0[3];

  if (*(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit))
  {
    v2 = v0[3];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[2] = v2;
    sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__isLowConfidenceVisit) = 0;
  }

  sub_1002A8624();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A93D0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000CE6B8(&qword_101917F78);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  _s4Maps29LibraryDataOperationsProviderC17existingPlaceItem06forMapH010completionySo05MKMapH0C_yAA0bgH10Compatible_pSg_s5Error_pSgtctF_0(a3, sub_1002ABA08, v11);
}

uint64_t sub_1002A951C(uint64_t a1, uint64_t a2)
{
  if (a2 || !a1)
  {
    sub_1000CE6B8(&qword_101917F78);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v3 = [swift_unknownObjectRetain() placeItemNote];
    if (v3)
    {
      v4 = v3;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String._mapsui_nilIfEmpty.getter();
    }

    sub_1000CE6B8(&qword_101917F78);
    CheckedContinuation.resume(returning:)();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1002A9620()
{

  v1 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_visitId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_date;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1001FA1D4(*(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus), *(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8));

  sub_100024F64(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider, &qword_101921E90);

  sub_100024F64(v0 + OBJC_IVAR____TtC4Maps16VisitHistoryItem____lazy_storage___moreTrailingAccessory, &qword_101917F60);
  v5 = OBJC_IVAR____TtC4Maps16VisitHistoryItem___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1002A97E4()
{
  sub_1002A9620();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitHistoryItem()
{
  result = qword_101917DB0;
  if (!qword_101917DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A9890()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1002A9A3C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002A9A3C()
{
  if (!qword_101917DC0)
  {
    type metadata accessor for TrailingAccessoryViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101917DC0);
    }
  }
}

uint64_t sub_1002A9A94@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1002A9AA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps16VisitHistoryItem__imageProvider;
  swift_beginAccess();
  return sub_1000D2DFC(v3 + v4, a1, &qword_101921E90);
}

uint64_t sub_1002A9B7C()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1002A9C3C()
{
  swift_getKeyPath();
  sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

void *sub_1002A9D0C()
{
  v0 = swift_allocObject();
  swift_weakInit();

  v1 = sub_1002AB0E0(&off_101600658, sub_1002A9FB0, v0);

  return v1;
}

uint64_t sub_1002A9D90()
{
  sub_1000A09E0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1002A9DEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002A9E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A9E78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1002A9EC8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1002A9F04(uint64_t a1)
{
  result = sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  *(a1 + 8) = result;
  return result;
}

size_t sub_1002A9FBC(char *a1)
{
  v98 = type metadata accessor for MapsDesignAccessibilityString();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v3 = (&v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for CellAction.Placement();
  v4 = *(v96 - 8);
  __chkstk_darwin(v96);
  v97 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for CellAction.Style();
  v6 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for CellAction();
  v8 = *(v102 - 8);
  __chkstk_darwin(v102);
  v83 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v75 - v11;
  __chkstk_darwin(v12);
  v76 = &v75 - v13;
  __chkstk_darwin(v14);
  v92 = &v75 - v15;
  __chkstk_darwin(v16);
  object = &v75 - v17;
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = sub_1002AB950(&qword_101917F68, type metadata accessor for VisitHistoryItem);
  v22 = swift_allocObject();
  *(v22 + 24) = v21;
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC4Maps16VisitHistoryItem___observationRegistrar;
  v103 = a1;
  v24 = sub_1002AB950(&qword_101911EF0, type metadata accessor for VisitHistoryItem);
  v80 = v23;
  v79 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v93 = a1;
  v78 = &a1[OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus];
  v25 = *&a1[OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus + 8];
  if (v25 == 1)
  {
    v26 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_10042292C(v25 != 2, sub_1002AB9EC, v22, v20);
    v26 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    if (v28 >= v27 >> 1)
    {
      v26 = sub_100355E1C(v27 > 1, v28 + 1, 1, v26);
    }

    *(v26 + 16) = v28 + 1;
    (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v20, v102);
  }

  v101 = v22;
  v99 = v8;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v104._object = 0x800000010121C800;
  v29._countAndFlagsBits = 0x7972617262694C5BLL;
  v29._object = 0xEF6572616853205DLL;
  v30._countAndFlagsBits = 0x6572616853;
  v104._countAndFlagsBits = 0xD00000000000002ELL;
  v88.super.isa = qword_1019600D8;
  v30._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, qword_1019600D8, v30, v104);
  v31 = swift_allocObject();
  v32 = v101;
  *(v31 + 16) = sub_1002AB9EC;
  *(v31 + 24) = v32;
  *(v31 + 32) = 2;
  v33 = *(v6 + 104);
  v82 = enum case for CellAction.Style.default(_:);
  v89 = v6 + 104;
  v87 = v33;
  v33(v95);
  v34 = *(v4 + 104);
  v90 = v4 + 104;
  v86 = v34;
  v34(v97, enum case for CellAction.Placement.quickAction(_:), v96);
  *v3 = 0xD000000000000017;
  v3[1] = 0x800000010122B6D0;
  v35 = *(v100 + 104);
  v85 = enum case for MapsDesignAccessibilityString.custom(_:);
  v100 += 104;
  v84 = v35;
  v35(v3);

  v36 = object;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_100355E1C(0, *(v26 + 16) + 1, 1, v26);
  }

  v38 = v92;
  v37 = v93;
  v40 = *(v26 + 16);
  v39 = *(v26 + 24);
  v41 = v99;
  v42 = v101;
  if (v40 >= v39 >> 1)
  {
    v26 = sub_100355E1C(v39 > 1, v40 + 1, 1, v26);
  }

  *(v26 + 16) = v40 + 1;
  v44 = *(v41 + 32);
  v43 = v41 + 32;
  v92 = ((*(v43 + 48) + 32) & ~*(v43 + 48));
  v93 = v44;
  v91 = *(v43 + 40);
  (v44)(&v92[v26 + v91 * v40], v36, v102);
  swift_getKeyPath();
  v103 = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v78 + 1) < 3uLL)
  {
    v45 = 4;
  }

  else
  {
    v45 = 5;
  }

  sub_10042292C(v45, sub_1002AB9EC, v42, v38);
  v47 = *(v26 + 16);
  v46 = *(v26 + 24);
  if (v47 >= v46 >> 1)
  {
    v26 = sub_100355E1C(v46 > 1, v47 + 1, 1, v26);
  }

  *(v26 + 16) = v47 + 1;
  (v93)(&v92[v26 + v47 * v91], v38, v102);
  if (sub_1002A52D4())
  {
    v48._countAndFlagsBits = 0xD000000000000015;
    v105._object = 0x800000010121C7D0;
    v49._countAndFlagsBits = 0x6968542065746152;
    v49._object = 0xEF6563616C502073;
    v48._object = 0x800000010121C7B0;
    v105._countAndFlagsBits = 0xD00000000000002CLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v48, 0, v88, v49, v105);
    v50 = swift_allocObject();
    v51 = v101;
    *(v50 + 16) = sub_1002AB9EC;
    *(v50 + 24) = v51;
    *(v50 + 32) = 3;
    v87(v95, v82, v94);
    v86(v97, enum case for CellAction.Placement.default(_:), v96);
    *v3 = 0xD000000000000016;
    v3[1] = 0x800000010122B760;
    v84(v3, v85, v98);

    v52 = v76;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v54 = *(v26 + 16);
    v53 = *(v26 + 24);
    if (v54 >= v53 >> 1)
    {
      v26 = sub_100355E1C(v53 > 1, v54 + 1, 1, v26);
    }

    *(v26 + 16) = v54 + 1;
    (v93)(&v92[v26 + v54 * v91], v52, v102);
  }

  v55 = [objc_opt_self() sharedHelper];
  v56 = [v55 isUsingOfflineMaps];

  v99 = v43;
  if (v56)
  {
    v57 = v3;
    v58 = enum case for CellAction.Placement.default(_:);
  }

  else
  {
    v106._object = 0x800000010121C770;
    v59._countAndFlagsBits = 0x6F4C20676E6F7257;
    v59._object = 0xEE006E6F69746163;
    v60._countAndFlagsBits = 0xD00000000000001FLL;
    v60._object = 0x800000010121C750;
    v106._countAndFlagsBits = 0xD00000000000003BLL;
    object = NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v88, v59, v106)._object;
    v61 = swift_allocObject();
    v62 = v101;
    *(v61 + 16) = sub_1002AB9EC;
    *(v61 + 24) = v62;
    *(v61 + 32) = 6;
    v87(v95, v82, v94);
    v63 = enum case for CellAction.Placement.default(_:);
    v86(v97, enum case for CellAction.Placement.default(_:), v96);
    *v3 = 0xD000000000000024;
    v3[1] = 0x800000010122B710;
    v84(v3, v85, v98);

    v64 = v77;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
    v66 = *(v26 + 16);
    v65 = *(v26 + 24);
    v58 = v63;
    if (v66 >= v65 >> 1)
    {
      v26 = sub_100355E1C(v65 > 1, v66 + 1, 1, v26);
    }

    v57 = v3;
    *(v26 + 16) = v66 + 1;
    (v93)(&v92[v26 + v66 * v91], v64, v102);
  }

  v107._object = 0x800000010121C710;
  v67._countAndFlagsBits = 0x65766F6D6552;
  v68._countAndFlagsBits = 0xD00000000000001DLL;
  v68._object = 0x800000010121C6F0;
  v107._countAndFlagsBits = 0xD000000000000030;
  v67._object = 0xE600000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v88, v67, v107);
  v69 = swift_allocObject();
  v70 = v101;
  *(v69 + 16) = sub_1002AB9EC;
  *(v69 + 24) = v70;
  *(v69 + 32) = 7;
  v87(v95, enum case for CellAction.Style.destructive(_:), v94);
  v86(v97, v58, v96);
  *v57 = 0xD000000000000018;
  v57[1] = 0x800000010122B740;
  v84(v57, v85, v98);

  v71 = v83;
  CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
  v73 = *(v26 + 16);
  v72 = *(v26 + 24);
  if (v73 >= v72 >> 1)
  {
    v26 = sub_100355E1C(v72 > 1, v73 + 1, 1, v26);
  }

  *(v26 + 16) = v73 + 1;
  (v93)(&v92[v26 + v73 * v91], v71, v102);
  return v26;
}

uint64_t sub_1002AADE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_1002AAE04, 0, 0);
}

uint64_t sub_1002AAE04()
{
  v1 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v0[4] isPlaceHolderPlace:0];
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[5];
    v4 = swift_task_alloc();
    v0[7] = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_1002AAF64;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002FLL, 0x800000010122B780, sub_1002ABA00, v4, &type metadata for VisitHistoryItem.LibraryStatus);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002AAF64()
{

  return _swift_task_switch(sub_1002AB07C, 0, 0);
}

uint64_t sub_1002AB07C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

void *sub_1002AB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v58 = type metadata accessor for MapsDesignAccessibilityString();
  v5 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for CellAction.Placement();
  v7 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for CellAction.Style();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for CellAction();
  v12 = *(v53 - 8);
  __chkstk_darwin(v53);
  v52 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = _swiftEmptyArrayStorage;
  if (v14)
  {
    v63 = _swiftEmptyArrayStorage;
    v37 = v11;
    sub_1005112AC(0, v14, 0);
    v16 = v37;
    v17 = (a1 + 32);
    v15 = v63;
    v43 = 0x800000010121C800;
    v42 = 0x800000010121D3D0;
    v41 = "DeletePlaceFromLibrary";
    v40 = 0x800000010121C710;
    v39 = enum case for CellAction.Style.tintable(_:);
    v49 = (v9 + 104);
    v38 = enum case for CellAction.Style.destructive(_:);
    v48 = enum case for CellAction.Placement.default(_:);
    v47 = (v7 + 104);
    v46 = enum case for MapsDesignAccessibilityString.button(_:);
    v44 = v12 + 32;
    v45 = (v5 + 104);
    v50 = v12;
    v51 = a3;
    v18 = v55;
    do
    {
      v19 = *v17;
      v62 = v15;
      if (v19)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v64._object = v40;
        v20._countAndFlagsBits = 0xD00000000000001DLL;
        v20._object = (v41 | 0x8000000000000000);
        v64._countAndFlagsBits = 0xD000000000000030;
        v21._countAndFlagsBits = 0x65766F6D6552;
        v21._object = 0xE600000000000000;
        v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, qword_1019600D8, v21, v64);
        object = v22._object;
        countAndFlagsBits = v22._countAndFlagsBits;
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v65._object = v43;
        v65._countAndFlagsBits = 0xD00000000000002ELL;
        v23._countAndFlagsBits = 0x7972617262694C5BLL;
        v23._object = 0xEF6572616853205DLL;
        v24._countAndFlagsBits = 0x6572616853;
        v24._object = 0xE500000000000000;
        v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, qword_1019600D8, v24, v65);
        object = v25._object;
        countAndFlagsBits = v25._countAndFlagsBits;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = v59;
      *(v26 + 24) = a3;
      *(v26 + 32) = v19;
      if (v19)
      {
        (*v49)(v16, v38, v54);

        v27 = 0xEC00000065766F6DLL;
        v28 = 0x65522E6570697753;
      }

      else
      {

        *v16 = static Color.blue.getter();
        (*v49)(v16, v39, v54);
        v27 = 0xEB00000000657261;
        v28 = 0x68532E6570697753;
      }

      v29 = v16;
      (*v47)(v18, v48, v56);
      v31 = v57;
      v30 = v58;
      *v57 = v28;
      v31[1] = v27;
      (*v45)(v31, v46, v30);
      v32 = v52;
      CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();
      v15 = v62;
      v63 = v62;
      v34 = v62[2];
      v33 = v62[3];
      v16 = v29;
      if (v34 >= v33 >> 1)
      {
        sub_1005112AC(v33 > 1, v34 + 1, 1);
        v16 = v37;
        v15 = v63;
      }

      v15[2] = v34 + 1;
      (*(v50 + 32))(v15 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v34, v32, v53);
      ++v17;
      --v14;
      a3 = v51;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_1002AB77C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC4Maps16VisitHistoryItem__libraryStatus);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1002AB7F0(v1, v2);
  return sub_1001FA1D4(v4, v5);
}

uint64_t sub_1002AB7F0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1002AB808(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002AB81C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1002AB848()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC4Maps16VisitHistoryItem__logValueForAnalytics);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1002AB894()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps16VisitHistoryItem__trailingAccessory) = *(v0 + 24);
}

uint64_t sub_1002AB8E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101917F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AB950(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002AB998()
{
  result = qword_101917F70;
  if (!qword_101917F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101917F70);
  }

  return result;
}

uint64_t sub_1002ABA08(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101917F78);

  return sub_1002A951C(a1, a2);
}

uint64_t sub_1002ABAC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1002ABBAC@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for UserGuidesListView();
  a1[4] = sub_1002AC960(&qword_101917FC0, type metadata accessor for UserGuidesListView);
  v2 = sub_10001A848(a1);

  return sub_10047693C(v3, &_swiftEmptySetSingleton, v2);
}

id sub_1002ABC40()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  result = [v0 cardPresentationController];
  if (result)
  {
    v3 = result;
    [result setPresentedModally:1];

    result = [v1 cardPresentationController];
    if (result)
    {
      v4 = result;
      [result setTakesAvailableHeight:1];

      swift_allocObject();
      swift_unknownObjectWeakInit();
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1002AC960(&qword_101917FC8, type metadata accessor for UserGuidesListViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_getKeyPath();
      __chkstk_darwin(v6);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_getKeyPath();
      __chkstk_darwin(v7);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_getKeyPath();
      __chkstk_darwin(v8);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_getKeyPath();
      __chkstk_darwin(v9);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002AC154(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (![a1 handlerType])
    {
      v4 = [objc_opt_self() sharedService];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 captureUserAction:73 onTarget:251 eventValue:0];
    }

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      [v6 userGuidesListViewControllerWithViewController:v3 didSelect:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002AC248()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 userGuidesListViewControllerDidSelectAddWithViewController:v1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1002AC2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [objc_allocWithZone(MUPresentationOptions) init];
    [(objc_class *)v9 setSourceItem:a2];
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_10013D7D0();
      isa = Array._bridgeToObjectiveC()().super.isa;
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002ABAC8;
      aBlock[3] = &unk_10160F278;
      v13 = _Block_copy(aBlock);

      [v11 userGuidesListViewControllerWithViewController:v8 confirmDelete:isa presentationOptions:v9 completion:v13];

      swift_unknownObjectRelease();
      _Block_release(v13);
      v9 = isa;
    }

    else
    {
    }
  }
}

void sub_1002AC450(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_allocWithZone(PersonalCollectionShareItemSource) initWithCollectionHandlerInfo:a1];
    v7 = a2;
    sub_1000CE6B8(&unk_101909900);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v9 = [objc_opt_self() optionsWithSender:{v8, a2}];
    swift_unknownObjectRelease();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      [v10 shareItem:v6 presentationOptions:v9 completion:0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1002AC5C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC4Maps37UserGuidesListContaineeViewController_viewModel;
  v9 = [objc_opt_self() sharedManager];
  type metadata accessor for UserGuidesListViewModel();
  swift_allocObject();
  v10 = sub_100470C14(v9);

  *&v4[v8] = v10;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_1002AC74C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC4Maps37UserGuidesListContaineeViewController_viewModel;
  v6 = [objc_opt_self() sharedManager];
  type metadata accessor for UserGuidesListViewModel();
  swift_allocObject();
  v7 = sub_100470C14(v6);

  *&v2[v5] = v7;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1002AC870()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps37UserGuidesListContaineeViewController_actionDelegate);
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps37UserGuidesListContaineeViewController_shareDelegate);
}

uint64_t sub_1002AC960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002ACA28(unint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      v14 = a1;
      sub_1001EC990(a1, a2, 1u);
      v3 = 1819043139;
      goto LABEL_32;
    case 2:
      v14 = a1;
      sub_1001EC990(a1, a2, 2u);
      v3 = 0x7472616843;
      goto LABEL_26;
    case 3:
      v14 = a1;
      sub_1001EC990(a1, a2, 3u);
      v9 = 1734438217;
      goto LABEL_25;
    case 4:
      v14 = a1;
      sub_1001EC990(a1, a2, 4u);
      v3 = 0x6C6562614CLL;
      goto LABEL_26;
    case 5:
      v14 = a1;
      sub_1001EC990(a1, a2, 5u);
      v3 = 1802398028;
      goto LABEL_32;
    case 6:
      v14 = a1;
      sub_1001EC990(a1, a2, 6u);
      v3 = 1953720652;
      goto LABEL_32;
    case 7:
      v14 = a1;
      sub_1001EC990(a1, a2, 7u);
      v3 = 0x6E6F6974636553;
      v10 = 0xE700000000000000;
      goto LABEL_33;
    case 8:
      v14 = a1;
      sub_1001EC990(a1, a2, 8u);
      v3 = 0x546E6F6974636553;
      v10 = 0xEC000000656C7469;
      goto LABEL_33;
    case 9:

      return a1;
    case 10:
      v14 = a1;
      sub_1001EC990(a1, a2, 0xAu);
      v3 = 7366996;
      v10 = 0xE300000000000000;
      goto LABEL_33;
    case 11:
      v14 = a1;
      sub_1001EC990(a1, a2, 0xBu);
      v9 = 1819568468;
LABEL_25:
      v3 = v9 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_26:
      v10 = 0xE500000000000000;
      goto LABEL_33;
    case 12:
      v14 = a1;
      sub_1001EC990(a1, a2, 0xCu);
      v3 = 0x726564616548;
      goto LABEL_21;
    case 13:
      v14 = a1;
      sub_1001EC990(a1, a2, 0xDu);
      v3 = 2003134806;
LABEL_32:
      v10 = 0xE400000000000000;
      goto LABEL_33;
    case 14:
      if (a1 > 5)
      {
        if (a1 > 8)
        {
          if (a1 ^ 0xA | a2)
          {
            v13 = 0xD000000000000012;
          }

          else
          {
            v13 = 0x656C67676F54;
          }

          if (a1 ^ 9 | a2)
          {
            return v13;
          }

          else
          {
            return 0x62614C656C746954;
          }
        }

        else
        {
          if (a1 ^ 7 | a2)
          {
            v12 = 0x7972616974726554;
          }

          else
          {
            v12 = 0x656C746974627553;
          }

          if (a1 ^ 6 | a2)
          {
            return v12;
          }

          else
          {
            return 0x6F74617261706553;
          }
        }
      }

      else
      {
        v4 = 0x747475426B636142;
        if (a1 ^ 4 | a2)
        {
          v5 = 0x64657463656C6553;
        }

        else
        {
          v5 = 0x747475426F666E49;
        }

        if (a1 ^ 3 | a2)
        {
          v6 = v5;
        }

        else
        {
          v6 = 0x67616D496E6F6349;
        }

        if (a1 ^ 1 | a2)
        {
          v7 = 0x614C7265746F6F46;
        }

        else
        {
          v7 = 0x74754265736F6C43;
        }

        if (a1 | a2)
        {
          v4 = v7;
        }

        if (a1 <= 2)
        {
          return v4;
        }

        else
        {
          return v6;
        }
      }

    default:
      v14 = a1;
      sub_1001EC990(a1, a2, 0);
      v3 = 0x6E6F74747542;
LABEL_21:
      v10 = 0xE600000000000000;
LABEL_33:
      String.append(_:)(*&v3);
      return v14;
  }
}

uint64_t sub_1002ACE40(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    *(result + 8) = 0;
    LOBYTE(a2) = 14;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1002AD008(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, uint64_t (*a8)(id, id, uint64_t, void *, void *))
{
  v13 = a3;
  v14 = a4;
  swift_unknownObjectRetain();
  v15 = a8(v13, v14, a5, a6, a7);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1002AD130(uint64_t a1)
{
  sub_10017A750(a1, v13);
  if (v14)
  {
    type metadata accessor for PlaceSummaryOutlineCellModel();
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (v3)
        {
          swift_unknownObjectRelease();
          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v5 = [Strong isEqual:result];
          swift_unknownObjectRelease();
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        if (!v3)
        {
          v5 = 1;
          goto LABEL_12;
        }

        v5 = 0;
      }

      swift_unknownObjectRelease();
LABEL_12:
      v6 = *(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
      v7 = *&v12[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult];
      if (v6)
      {
        if (v7 && ([v6 isEqual:?] & 1) != 0)
        {
          goto LABEL_15;
        }
      }

      else if (!v7)
      {
LABEL_15:
        v8 = *&v12[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate];
        v9 = *(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate);
        v10 = v8;
        v11 = [v9 isEqual:v10];

        return v11 & v5;
      }
    }
  }

  else
  {
    sub_1000DB2F4(v13);
  }

  return 0;
}

id sub_1002AD488@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult))
  {
    v8 = *(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
    v10 = sub_100014C84(0, &qword_10190E160);
    *&v9 = v8;
    sub_1000D2BE0(&v9, a1);
    v3 = v8;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject);
    if (v4)
    {
      v5 = sub_100014C84(0, &qword_101918298);
    }

    else
    {
      v5 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = v4;
    *(a1 + 24) = v5;
    v6 = v4;
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1002AD6D4()
{
  type metadata accessor for PlaceSummaryOutlineCellRegistration();
  type metadata accessor for PlaceSummaryOutlineCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4[4] = sub_1002AD7B8;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1002AD918;
  v4[3] = &unk_10160F448;
  v1 = _Block_copy(v4);
  v2 = [swift_getObjCClassFromMetadata() registrationWithCellClass:ObjCClassFromMetadata configurationHandler:v1];
  _Block_release(v1);

  qword_10195FE68 = v2;
  return result;
}

uint64_t sub_1002AD7B8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10004E374(a3, v12);
  sub_100014C84(0, &qword_10190BCD0);
  if (swift_dynamicCast())
  {
    type metadata accessor for PlaceSummaryOutlineCell();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      v7 = [v11 viewModel];
      type metadata accessor for PlaceSummaryOutlineCellModel();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = *(v5 + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel);
        *(v5 + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel) = v8;
        swift_unknownObjectRetain_n();

        sub_1002ADB60();
        return swift_unknownObjectRelease_n();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002AD918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14[3] = swift_getObjectType();
  v14[0] = a4;

  v12 = a2;
  swift_unknownObjectRetain();
  v11(v12, v10, v14);

  (*(v8 + 8))(v10, v7);
  return sub_10004E3D0(v14);
}

void sub_1002ADB60()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel];
  if (v1)
  {
    v2 = v0;
    v3 = *&v1[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_asyncDataManager];
    v4 = OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate;
    v5 = *&v1[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate];
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v3;
    v7 = v5;
    v8 = v1;
    static Published.subscript.getter();

    v9 = [objc_opt_self() sharedInstance];
    if (v9)
    {
      v10 = v9;
      [v9 screenScale];
      v12 = v11;

      sub_100305A18(v28, v12);
      v13 = *&v8[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult];
      if (v13)
      {
        v14 = [v13 placeCollection];
        if (v14)
        {
          v15 = v14;
          v16 = *(*&v1[v4] + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine);
          objc_allocWithZone(type metadata accessor for CuratedGuideViewModel());
          v17 = v15;
          v18 = sub_1002B398C(v17, v16, 0);
          v19 = *&v8[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_curatedCollectionImageDownloader];
          v20 = v18;
          v21 = v19;
          sub_10047E5D8(v20);

          v22 = type metadata accessor for GuideSummaryMetrics();
          v23 = objc_allocWithZone(v22);
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_leadingMargin] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_trailingMargin] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topMargin] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomMargin] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topLeadingCornerRadius] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topTrailingCornerRadius] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomLeadingCornerRadius] = 0;
          *&v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomTrailingCornerRadius] = 0;
          v23[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_showsDivider] = 1;
          v27.receiver = v23;
          v27.super_class = v22;
          v24 = objc_msgSendSuper2(&v27, "init");

          v25 = *&v20[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics];
          *&v20[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics] = v24;

          v26 = *&v2[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel];
          *&v2[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel] = v20;
        }
      }

      [v2 setNeedsUpdateConfiguration];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002ADE80()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101918150);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-1] - v4;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v7 = type metadata accessor for PlaceSummaryOutlineCell();
  v29.receiver = v1;
  v29.super_class = v7;
  objc_msgSendSuper2(&v29, "_bridgedUpdateConfigurationUsingState:", isa);

  v8 = OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel;
  v9 = *&v1[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel];
  if (v9)
  {
    v10 = *&v1[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel];
    v26[0] = swift_getObjectType();
    v11 = v9;
    sub_1000CE6B8(&qword_101918148);
    v12 = String.init<A>(describing:)();
    if (v10)
    {
      v14 = 0x646574617275432ELL;
      v15 = 0xED00006564697547;
    }

    else
    {
      v14 = 0x736563616C502ELL;
      v15 = 0xE700000000000000;
    }

    v26[0] = v14;
    v26[1] = v15;
    v27 = v12;
    v28 = v13;
    v27 = String.init<A>(_:)();
    v28 = v16;
    String.append<A>(contentsOf:)();
    v17 = String._bridgeToObjectiveC()();

    [v1 setAccessibilityIdentifier:v17];

    __chkstk_darwin(v18);
    *(&v25 - 2) = v1;
    *(&v25 - 1) = v9;
    sub_1000CE6B8(&qword_101918158);
    sub_1002AF20C();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v26[3] = v2;
    v26[4] = sub_1000414C8(&unk_101918280, &qword_101918150);
    sub_10001A848(v26);
    UIHostingConfiguration.margins(_:_:)();
    (*(v3 + 8))(v5, v2);
    UICollectionViewCell.contentConfiguration.setter();
    v19 = *&v1[v8];
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
      if (v20)
      {
        v21 = [v20 mapItem];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 _venueFeatureType];
          v24 = &selRef__maps_addDisclosureIndicator;
          if (v23 != 1)
          {
            v24 = &selRef__maps_removeDisclosureIndicator;
          }

          [v1 *v24];

          v9 = v22;
        }
      }
    }
  }
}

double sub_1002AE200@<D0>(uint64_t a1@<X0>, char *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *(a1 + OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel);
  if (v4)
  {
    type metadata accessor for CuratedGuideViewModel();
    sub_1002AFB0C(&qword_101918290, type metadata accessor for CuratedGuideViewModel);
    v5 = v4;
    EnvironmentObject.init()();
    v6 = v5;
    static ObservableObject.environmentStore.getter();
    sub_1000CE6B8(&qword_101918180);
    sub_1000CE6B8(&qword_1019181A8);
    sub_1002AF324();
    sub_1002AF430();
    _ConditionalContent<>.init(storage:)();
    v38 = v63;
    v40 = v64;
    v52 = v63;
    v53 = v64;
    LOBYTE(v54) = v65;
    sub_1002AFB54(&v52);
    v71 = v60;
    v72 = v61;
    v73[0] = *v62;
    *(v73 + 9) = *&v62[9];
    v67 = v56;
    v68 = v57;
    v69 = v58;
    v70 = v59;
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v66 = v55;
    sub_1002AFB5C(v38, *(&v38 + 1), v40, *(&v40 + 1));
    sub_1000CE6B8(&qword_101918170);
    sub_1000CE6B8(&qword_1019181C0);
    sub_1002AF298();
    sub_1002AF53C();
    _ConditionalContent<>.init(storage:)();

    sub_1002AFB9C(v38, *(&v38 + 1), v40, *(&v40 + 1));
    v71 = v49;
    v72 = v50;
    v73[0] = *v51;
    *(v73 + 9) = *&v51[9];
    v67 = v45;
    v68 = v46;
    v69 = v47;
    v70 = v48;
    v63 = v41;
    v64 = v42;
    v65 = v43;
    v66 = v44;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1002AFB0C(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    v39 = EnvironmentObject.init()();
    v37 = v8;
    IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
    v35 = *&a2[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate];
    v34 = static ObservableObject.environmentStore.getter();
    KeyPath = swift_getKeyPath();
    v32 = swift_allocObject();
    *(v32 + 16) = a2;
    v31 = swift_getKeyPath();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    v30 = swift_getKeyPath();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;
    v29 = swift_getKeyPath();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a2;
    v28 = swift_getKeyPath();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a2;
    v16 = a2;
    v17 = swift_getKeyPath();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v16;
    v20 = v16;
    *&v52 = v39;
    *(&v52 + 1) = v37;
    LOBYTE(v53) = IsEnabled_SearchAndDiscovery;
    *(&v53 + 1) = v34;
    *&v54 = v35;
    *(&v54 + 1) = KeyPath;
    *&v55 = sub_1002AFA98;
    *(&v55 + 1) = v32;
    *&v56 = v31;
    *(&v56 + 1) = sub_1002AFAA0;
    *&v57 = v9;
    *(&v57 + 1) = v30;
    *&v58 = sub_1002AFAA8;
    *(&v58 + 1) = v11;
    *&v59 = v29;
    *(&v59 + 1) = sub_1002AFACC;
    *&v60 = v13;
    *(&v60 + 1) = v28;
    *&v61 = sub_1002AFAF0;
    *(&v61 + 1) = v15;
    *v62 = v17;
    *&v62[8] = sub_1002AFAF8;
    *&v62[16] = v19;
    sub_1002AFB00(&v52);
    v21 = v20;
    sub_1000CE6B8(&qword_101918170);
    sub_1000CE6B8(&qword_1019181C0);
    sub_1002AF298();
    sub_1002AF53C();
    _ConditionalContent<>.init(storage:)();
  }

  v22 = v72;
  a3[8] = v71;
  a3[9] = v22;
  a3[10] = v73[0];
  *(a3 + 169) = *(v73 + 9);
  v23 = v68;
  a3[4] = v67;
  a3[5] = v23;
  v24 = v70;
  a3[6] = v69;
  a3[7] = v24;
  v25 = v64;
  *a3 = v63;
  a3[1] = v25;
  result = *&v65;
  v27 = v66;
  a3[2] = v65;
  a3[3] = v27;
  return result;
}

void *sub_1002AE860(uint64_t *a1)
{
  v1 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didTapOnUserGeneratedGuide:v1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002AE8C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 >> 62;
  if (v2)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (!*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    sub_100014C84(0, &qword_10190D6B0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v5 didTapOnCuratedGuides:isa];

    goto LABEL_14;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v1 + 32);
  }

  v8 = v3;
  if (v2)
  {
    if (_CocoaArrayWrapper.endIndex.getter() != 1)
    {
      goto LABEL_8;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    [v7 didTapOnCuratedGuide:v8];

LABEL_14:

    swift_unknownObjectRelease();
    return;
  }
}

void *sub_1002AEA68(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result *a4];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1002AEAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = *(a3 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
    if (v5)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        [v7 didTapOnUserNote:v8];

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1002AEB94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v6 = *(a3 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
    if (v6)
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        [v8 didTapOnPhotoCarousel:v9 index:v4];

        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1002AED2C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_curatedGuideViewModel] = 0;
  *&v4[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PlaceSummaryOutlineCell();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  swift_getObjectType();
  v10 = v9;
  sub_1000CE6B8(&qword_101918148);
  String.init<A>(describing:)();
  v11 = String._bridgeToObjectiveC()();

  [v10 setAccessibilityIdentifier:v11];

  return v10;
}

void sub_1002AEF84(char a1)
{
  if ([v1 isHovering] != (a1 & 1))
  {
    v2 = *&v1[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
      if (v3)
      {
        v4 = [v3 mapItem];
        if (v4)
        {
          v7 = v4;
          v5 = [v4 _venueFeatureType];
          v6 = &selRef__maps_addDisclosureIndicator;
          if (v5 != 1)
          {
            v6 = &selRef__maps_removeDisclosureIndicator;
          }

          [v1 *v6];
        }
      }
    }
  }
}

void sub_1002AF054()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps23PlaceSummaryOutlineCell_viewModel];
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult);
    if (v2)
    {
      v3 = [v2 mapItem];
      if (v3)
      {
        v6 = v3;
        v4 = [v3 _venueFeatureType];
        v5 = &selRef__maps_addDisclosureIndicator;
        if (v4 != 1)
        {
          v5 = &selRef__maps_removeDisclosureIndicator;
        }

        [v0 *v5];
      }
    }
  }
}

id sub_1002AF15C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1002AF20C()
{
  result = qword_101918160;
  if (!qword_101918160)
  {
    sub_1000D6664(&qword_101918158);
    sub_1002AF298();
    sub_1002AF53C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918160);
  }

  return result;
}

unint64_t sub_1002AF298()
{
  result = qword_101918168;
  if (!qword_101918168)
  {
    sub_1000D6664(&qword_101918170);
    sub_1002AF324();
    sub_1002AF430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918168);
  }

  return result;
}

unint64_t sub_1002AF324()
{
  result = qword_101918178;
  if (!qword_101918178)
  {
    sub_1000D6664(&qword_101918180);
    sub_1002AF3DC();
    sub_1000414C8(&qword_101918190, &qword_101918198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918178);
  }

  return result;
}

unint64_t sub_1002AF3DC()
{
  result = qword_101918188;
  if (!qword_101918188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918188);
  }

  return result;
}

unint64_t sub_1002AF430()
{
  result = qword_1019181A0;
  if (!qword_1019181A0)
  {
    sub_1000D6664(&qword_1019181A8);
    sub_1002AF4E8();
    sub_1000414C8(&qword_101918190, &qword_101918198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181A0);
  }

  return result;
}

unint64_t sub_1002AF4E8()
{
  result = qword_1019181B0;
  if (!qword_1019181B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181B0);
  }

  return result;
}

unint64_t sub_1002AF53C()
{
  result = qword_1019181B8;
  if (!qword_1019181B8)
  {
    sub_1000D6664(&qword_1019181C0);
    sub_1002AF5F4();
    sub_1000414C8(&qword_101918270, &qword_101918278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181B8);
  }

  return result;
}

unint64_t sub_1002AF5F4()
{
  result = qword_1019181C8;
  if (!qword_1019181C8)
  {
    sub_1000D6664(&qword_1019181D0);
    sub_1002AF6AC();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181C8);
  }

  return result;
}

unint64_t sub_1002AF6AC()
{
  result = qword_1019181D8;
  if (!qword_1019181D8)
  {
    sub_1000D6664(&qword_1019181E0);
    sub_1002AF764();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181D8);
  }

  return result;
}

unint64_t sub_1002AF764()
{
  result = qword_1019181E8;
  if (!qword_1019181E8)
  {
    sub_1000D6664(&qword_1019181F0);
    sub_1002AF81C();
    sub_1000414C8(&qword_101918260, &qword_101918268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181E8);
  }

  return result;
}

unint64_t sub_1002AF81C()
{
  result = qword_1019181F8;
  if (!qword_1019181F8)
  {
    sub_1000D6664(&qword_101918200);
    sub_1002AF8D4();
    sub_1000414C8(&qword_101918250, &qword_101918258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019181F8);
  }

  return result;
}

unint64_t sub_1002AF8D4()
{
  result = qword_101918208;
  if (!qword_101918208)
  {
    sub_1000D6664(&qword_101918210);
    sub_1002AF98C();
    sub_1000414C8(&qword_101918240, &qword_101918248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918208);
  }

  return result;
}

unint64_t sub_1002AF98C()
{
  result = qword_101918218;
  if (!qword_101918218)
  {
    sub_1000D6664(&qword_101918220);
    sub_1002AFA44();
    sub_1000414C8(&qword_101918230, &qword_101918238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918218);
  }

  return result;
}

unint64_t sub_1002AFA44()
{
  result = qword_101918228;
  if (!qword_101918228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918228);
  }

  return result;
}

uint64_t sub_1002AFB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002AFB5C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
}

void sub_1002AFB9C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
}

id sub_1002AFBE8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult] = 0;
  v10 = OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject;
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate] = a2;
  v11 = *&v5[v10];
  *&v5[v10] = a1;
  v12 = a2;
  v13 = a1;

  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_asyncDataManager] = a4;
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_curatedCollectionImageDownloader] = a5;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for PlaceSummaryOutlineCellModel();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_1002AFCC8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult;
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_searchResult] = 0;
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_rapObject] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_placeSummaryViewModelTemplate] = a2;
  v11 = *&v5[v10];
  *&v5[v10] = a1;
  v12 = a2;
  v13 = a1;

  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_asyncDataManager] = a4;
  *&v5[OBJC_IVAR____TtC4Maps28PlaceSummaryOutlineCellModel_curatedCollectionImageDownloader] = a5;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for PlaceSummaryOutlineCellModel();
  return objc_msgSendSuper2(&v15, "init");
}

uint64_t sub_1002AFDA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1002AFE54(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1002AFF7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;
      swift_unknownObjectRetain();

      v11 = a1(v14);
      swift_unknownObjectRelease();

      if (v3)
      {
        break;
      }

      v7 += 4;
      v12 = v6-- == 0;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

void sub_1002B0058(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1002B00C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void *sub_1002B0174(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1005111C4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10004E374(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1005111C4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1002B0288(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10004E374(i, v5);
    sub_100014C84(0, &unk_101918390);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1002B03A8(uint64_t a1, uint64_t *a2)
{
  v8 = &_swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v4)
  {
    return v8;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10004E374(i, v7);
    sub_1000CE6B8(a2);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1002B04A8()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1002B0544, v3, v2);
}

uint64_t sub_1002B0544()
{
  v1 = v0[2];
  if (*(v1 + 24))
  {

LABEL_3:
    v2 = v0[1];

    return v2();
  }

  v4 = *(v1 + 32);
  v0[7] = v4;
  v5 = *(v1 + 40);
  if (v5)
  {
    if (v5 != 1)
    {

      if (qword_101906660 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_10195FE70);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "[saving/submitting location] submitCurrentPlaceCorrection called after user had canceled", v10, 2u);
      }

      goto LABEL_3;
    }

    v0[10] = 0;

    return _swift_task_switch(sub_1002B08F8, 0, 0);
  }

  else
  {
    swift_unknownObjectRetain();
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1002B074C;

    return sub_1002B0AA4(v4);
  }
}

uint64_t sub_1002B074C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_1002B0874, v4, v3);
}

uint64_t sub_1002B0874()
{
  v1 = v0[9];
  v2 = v0[7];
  if (v1)
  {
    sub_1002B30A4(v2, 0);
    v2 = v1;
  }

  v0[10] = v2;
  swift_unknownObjectRetain();

  return _swift_task_switch(sub_1002B08F8, 0, 0);
}

uint64_t sub_1002B08F8()
{
  *(v0 + 88) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B0984, v2, v1);
}

uint64_t sub_1002B0984()
{
  v1 = v0[10];
  v2 = v0[2];

  sub_1002B1284(v2, v1);
  swift_unknownObjectRelease();
  v3 = v0[5];
  v4 = v0[6];

  return _swift_task_switch(sub_1002B0A38, v3, v4);
}

uint64_t sub_1002B0A38()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002B0AA4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_1002B0B40, v4, v3);
}

uint64_t sub_1002B0B40()
{
  v1 = [*(v0 + 24) _identifier];
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 32);
    v4 = [objc_allocWithZone(MKMapItemIdentifier) initWithGEOMapItemIdentifier:v1];
    *(v0 + 80) = v4;
    v5 = *(v3 + 80);
    if (v5)
    {
      sub_1000CE6B8(&qword_101908400);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1011E47B0;
      *(v6 + 32) = v4;
      sub_100014C84(0, &unk_101918370);
      v7 = v4;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v5 defaultTraits];
      v10 = [v5 ticketForIdentifiers:isa traits:v9];
      *(v0 + 88) = v10;

      if (v10)
      {
        v11 = static MainActor.shared.getter();
        *(v0 + 96) = v11;
        v12 = swift_task_alloc();
        *(v0 + 104) = v12;
        *(v12 + 16) = v10;
        v13 = swift_task_alloc();
        *(v0 + 112) = v13;
        v14 = sub_1000CE6B8(&qword_10191B670);
        *v13 = v0;
        v13[1] = sub_1002B0E7C;

        return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v11, &protocol witness table for MainActor, 0xD00000000000001ELL, 0x800000010122BE20, sub_1002B3554, v12, v14);
      }
    }
  }

  else
  {

    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100021540(v15, qword_10195FE70);
    v4 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v4, v16, "[saving/submitting location] failed because location does not have a geoMapItemIdentifier", v17, 2u);
    }
  }

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_1002B0E7C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1002B0FDC, v3, v2);
}

uint64_t sub_1002B0FDC()
{

  v1 = *(v0 + 16);
  if (v1 && (v2 = [*(v0 + 16) _geoMapItem]) != 0)
  {
    v3 = [objc_opt_self() mapItemStorageForGEOMapItem:v2];
    if (v3)
    {
      v4 = *(v0 + 80);
      v5 = v3;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v6 = v5;
      goto LABEL_11;
    }

    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_10195FE70);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 80);
    v21 = *(v0 + 72);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "[saving/submitting location] failed because creating GEOMapItemStorage failed", v22, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_10195FE70);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 80);
    v12 = *(v0 + 72);
    if (v10)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "[saving/submitting location] failed because geoMapItem is nil", v13, 2u);
    }

    swift_unknownObjectRelease();
  }

  v6 = 0;
LABEL_11:
  v14 = *(v0 + 8);

  return v14(v6);
}

void sub_1002B1284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MapsSuggestionsResourceDepotForMapsProcess();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 oneRoutine];

    if (v10)
    {
      v11 = *(a1 + 16);
      v12 = v10;
      Date.init()();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v7, v4);
      aBlock[4] = sub_1002B1458;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002B0058;
      aBlock[3] = &unk_10160F6A8;
      v14 = _Block_copy(aBlock);
      [v12 correctLabelForCurrentPlace:v11 date:isa newLabel:a2 handler:v14];

      _Block_release(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002B1464()
{
  v1[8] = v0;
  v2 = type metadata accessor for UUID();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_1000CE6B8(&unk_101918E50);
  v1[12] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190BA50);
  v1[13] = swift_task_alloc();
  v1[14] = type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v4;
  v1[17] = v3;

  return _swift_task_switch(sub_1002B15CC, v4, v3);
}

uint64_t sub_1002B15CC()
{
  v1 = v0[8];
  v2 = *(v1 + 24);
  v0[18] = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + 32);
  v0[19] = v3;
  if (*(v1 + 40))
  {
    if (*(v1 + 40) != 1)
    {

      if (qword_101906660 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100021540(v11, qword_10195FE70);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "[saving/submitting location] submit called after user had canceled", v14, 2u);
      }

      goto LABEL_14;
    }

    v4 = v0[13];

    v5 = *(v1 + 16);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

    swift_unknownObjectRetain();
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v2;
    v8[5] = v5;
    v8[6] = 0;
    sub_10020AAE4(0, 0, v4, &unk_1011F8760, v8);

LABEL_5:

LABEL_14:

    v15 = v0[1];

    return v15(0);
  }

  sub_1002B2FCC(v3, 0);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1002B18B8;

  return sub_1002B0AA4(v3);
}

uint64_t sub_1002B18B8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_1002B19E0, v4, v3);
}

uint64_t sub_1002B19E0()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1002B1BE0;

    return sub_1002B310C(v2);
  }

  else
  {
    v5 = v0[18];
    v6 = v0[19];
    v7 = v0[13];
    v8 = v0[8];

    v9 = *(v8 + 16);
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);

    swift_unknownObjectRetain();
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v5;
    v12[5] = v9;
    v12[6] = 0;
    sub_10020AAE4(0, 0, v7, &unk_1011F8748, v12);
    sub_1002B30A4(v6, 0);

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1002B1BE0(uint64_t a1, __int16 a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 28) = a2;
  v4[5] = v2;
  v4[6] = a1;
  v5 = v3[21];
  *(v4 + 108) = a2;

  v6 = v3[17];
  v7 = v3[16];

  return _swift_task_switch(sub_1002B1D28, v7, v6);
}

uint64_t sub_1002B1D28()
{
  v1 = *(v0 + 216);
  if ((v1 & 0x100) != 0)
  {

    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100021540(v10, qword_10195FE70);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);
    if (v13)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[saving/submitting location] aborted because location does not have a supported category", v16, 2u);
    }

    sub_1002B30A4(v15, 0);

    v17 = *(v0 + 8);

    return v17(0);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = *(v0 + 168);
    v4 = *(v0 + 144);
    type metadata accessor for MapsSyncStore();
    v5 = static MapsSyncStore.sharedStore.getter();
    *(v0 + 184) = v5;
    type metadata accessor for VisitedPlacesDataOperationsProvider();
    inited = swift_initStackObject();
    *(v0 + 192) = inited;
    *(inited + 16) = v5;
    v7 = OBJC_IVAR____TtC4Maps16VisitHistoryItem_visitId;
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_1002B1F64;

    return sub_100253868(v4 + v7, v3, v2, v1 & 1);
  }
}

uint64_t sub_1002B1F64(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return _swift_task_switch(sub_1002B208C, v4, v3);
}

uint64_t sub_1002B208C()
{
  v43 = v0;
  v1 = v0[26];

  if (v1)
  {
    v2 = v0[26];
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100021540(v3, qword_10195FE70);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[12];
      v8 = v0[9];
      v9 = v0[10];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42 = v11;
      *v10 = 136315138;
      dispatch thunk of MapsSyncObject.identifier.getter();
      v12 = (*(v9 + 48))(v7, 1, v8);
      v13 = v0[12];
      if (v12)
      {
        sub_100024F64(v0[12], &unk_101918E50);
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        v25 = v0[10];
        v24 = v0[11];
        v26 = v0[9];
        (*(v25 + 16))(v24, v0[12], v26);
        sub_100024F64(v13, &unk_101918E50);
        v27 = UUID.uuidString.getter();
        v15 = v28;
        (*(v25 + 8))(v24, v26);
        v14 = v27;
      }

      v29 = sub_10004DEB8(v14, v15, &v42);

      *(v10 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v5, v6, "[saving/submitting location] success updating %s in MapsSync", v10, 0xCu);
      sub_10004E3D0(v11);
    }

    v30 = v0[23];
    v31 = v0[21];
    v32 = v0[18];
    v33 = v0[19];
    v34 = v0[13];
    v35 = *(v0[8] + 16);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);

    v37 = v31;
    swift_unknownObjectRetain();
    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = &protocol witness table for MainActor;
    v39[4] = v32;
    v39[5] = v35;
    v39[6] = v31;
    sub_10020AAE4(0, 0, v34, &unk_1011F8758, v39);
    sub_1002B30A4(v33, 0);

    v23 = v0[26];
  }

  else
  {
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100021540(v16, qword_10195FE70);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[21];
    v21 = v0[19];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "[saving/submitting location] MapsSync Failed to update visit with new location", v22, 2u);

      sub_1002B30A4(v21, 0);
    }

    else
    {

      sub_1002B30A4(v21, 0);
    }

    v23 = 0;
  }

  v40 = v0[1];

  return v40(v23);
}

uint64_t sub_1002B2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1002B2588, 0, 0);
}

uint64_t sub_1002B2588()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B2614, v2, v1);
}

uint64_t sub_1002B2614()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  sub_1002B2754(v3, v1, v2);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B26F4, v5, v4);
}

uint64_t sub_1002B26F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002B2754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MapsSuggestionsResourceDepotForMapsProcess();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 oneRoutine];

    if (v7)
    {
      v8 = v7;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v10 = Date._bridgeToObjectiveC()().super.isa;
      v12[4] = sub_1002B28B4;
      v12[5] = 0;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 1107296256;
      v12[2] = sub_1002B0058;
      v12[3] = &unk_10160F630;
      v11 = _Block_copy(v12);
      [v8 correctLabelForVisitWithIdentifier:isa entryDate:v10 originalLabel:a2 newLabel:a3 handler:v11];

      _Block_release(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B28C0(uint64_t a1, const char *a2)
{
  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_10195FE70);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1 == 0;

    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 8u);
  }

  else
  {
  }
}

void sub_1002B29E4(uint64_t a1, void *a2)
{
  v4 = sub_1000CE6B8(&unk_101918380);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1002B355C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00C4;
  aBlock[3] = &unk_10160F680;
  v11 = _Block_copy(aBlock);

  [a2 submitWithHandler:v11 networkActivity:0];
  _Block_release(v11);
}

unint64_t sub_1002B2B98(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_6:
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  swift_errorRetain();
  if (qword_101906660 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100021540(v3, qword_10195FE70);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[saving/submitting location] couldn't fetch full mapItem. %@", v6, 0xCu);
    sub_100024F64(v7, &qword_1019144F0);

    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_17:
    sub_1000CE6B8(&unk_101918380);
    return CheckedContinuation.resume(returning:)();
  }

LABEL_9:
  result = sub_1002B0288(a1);
  if (!result)
  {
    goto LABEL_17;
  }

  v10 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v12 = result;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    result = v12;
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if (*(v10 + 16))
  {
    v11 = *(result + 32);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B2DDC()
{
  swift_unknownObjectRelease();

  sub_1002B30A4(*(v0 + 32), *(v0 + 40));
  sub_1000A09E0(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_1002B2E64(uint64_t a1)
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

uint64_t sub_1002B2E80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002B2EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002B2F0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1002B2F44()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FE70);
  sub_100021540(v0, qword_10195FE70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002B2FCC(uint64_t a1, char a2)
{
  if (!a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1002B2FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1002B2508(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002B30A4(uint64_t a1, char a2)
{
  if (!a2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002B30B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1002B312C()
{
  if (qword_1019065E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1002B31FC;
  v2 = *(v0 + 32);

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v2);
}

uint64_t sub_1002B31FC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1002B32FC, 0, 0);
}

uint64_t sub_1002B32FC()
{
  v0[2] = 0x726F707075736E75;
  v1 = v0[6];
  v0[3] = 0xEB00000000646574;
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 2;
  v3 = sub_1002AFDA8(sub_1002B34FC, v2, v1);

  v4 = v0[6];
  if (v3)
  {

    v5 = 0;
    v6 = 0;
  }

  else if (v4[2])
  {
    v7 = v4[4];
    v8 = v4[5];

    v5 = sub_10023B7DC(v7, v8);
    v6 = v9 & 1;
    if (v9)
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
    v6 = 1;
  }

  v10 = v0[1];

  return v10(v5, v6 | ((v3 & 1) << 8));
}

uint64_t sub_1002B3434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1002B2508(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002B34FC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_1002B355C(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&unk_101918380);

  return sub_1002B2B98(a1, a2);
}

unint64_t sub_1002B361C()
{
  result = qword_101918410;
  if (!qword_101918410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918410);
  }

  return result;
}

double sub_1002B3780()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1002B386C@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002B38EC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_1002B398C(uint64_t a1, char a2, int a3)
{
  v21 = a3;
  v6 = sub_1000CE6B8(&qword_101914228);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-v8];
  v10 = sub_1000CE6B8(&unk_1019189D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-v12];
  *&v3[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_metrics] = 0;
  v14 = OBJC_IVAR____TtC4Maps21CuratedGuideViewModel__width;
  v23 = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(&v3[v14], v13, v10);
  v15 = OBJC_IVAR____TtC4Maps21CuratedGuideViewModel__publisherIcon;
  v23 = 0;
  sub_1000CE6B8(&unk_101918A10);
  Published.init(initialValue:)();
  v16 = *(v7 + 32);
  v16(&v3[v15], v9, v6);
  v17 = OBJC_IVAR____TtC4Maps21CuratedGuideViewModel__collectionImage;
  v23 = 0;
  Published.init(initialValue:)();
  v16(&v3[v17], v9, v6);
  *&v3[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection] = a1;
  v3[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_useRichLayout] = a2;
  v3[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_isAutocompleteContext] = v21;
  v18 = type metadata accessor for CuratedGuideViewModel();
  v22.receiver = v3;
  v22.super_class = v18;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t sub_1002B3C98()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1 = qword_1019600D8;
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000CE6B8(&unk_10190D5C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1011E1D30;
  v6 = [*(v0 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection) numberOfItems];
  *(v5 + 56) = &type metadata for UInt;
  *(v5 + 64) = &protocol witness table for UInt;
  *(v5 + 32) = v6;
  v7 = static String.localizedStringWithFormat(_:_:)();

  return v7;
}

id sub_1002B3F0C()
{
  result = [*(v0 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection) publisherAttribution];
  if (result)
  {
    v2 = [result displayName];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      v6 = [objc_opt_self() sharedApplication];
      v7 = [v6 userInterfaceLayoutDirection];

      if (v7 == 1)
      {
        v12 = sub_1002B3C98();
        v8._countAndFlagsBits = 548913696;
        v8._object = 0xA400000000000000;
        String.append(_:)(v8);
        v9 = v3;
        v10 = v5;
      }

      else
      {
        v12 = v3;
        v11._countAndFlagsBits = 548913696;
        v11._object = 0xA400000000000000;
        String.append(_:)(v11);
        v9 = sub_1002B3C98();
      }

      String.append(_:)(*&v9);

      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1002B4098()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_useRichLayout);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    return v3 + -32.0 + -6.0;
  }

  else
  {
    return v3 * 0.203562341;
  }
}

double sub_1002B419C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_useRichLayout);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    v2 = 0.656509695;
  }

  else
  {
    v2 = 0.203562341;
  }

  return v4 * v2;
}

uint64_t sub_1002B4258(uint64_t a1)
{
  sub_10017A750(a1, v5);
  if (!v6)
  {
    sub_1000DB2F4(v5);
    goto LABEL_5;
  }

  type metadata accessor for CuratedGuideViewModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_10011A1CC();
  v1 = *&v4[OBJC_IVAR____TtC4Maps21CuratedGuideViewModel_placeCollection];
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

uint64_t type metadata accessor for CuratedGuideViewModel()
{
  result = qword_101918478;
  if (!qword_101918478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B458C()
{
  sub_1002B467C();
  if (v0 <= 0x3F)
  {
    sub_1002B46CC();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002B467C()
{
  if (!qword_101912AB0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101912AB0);
    }
  }
}

void sub_1002B46CC()
{
  if (!qword_101913258)
  {
    sub_1000D6664(&unk_101918A10);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101913258);
    }
  }
}

uint64_t sub_1002B4730@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CuratedGuideViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_1002B4800(char a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_leadingMargin] = a2;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_trailingMargin] = a3;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topMargin] = a4;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomMargin] = a5;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topLeadingCornerRadius] = a6;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_topTrailingCornerRadius] = a7;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomLeadingCornerRadius] = a8;
  *&v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_bottomTrailingCornerRadius] = a9;
  v9[OBJC_IVAR____TtC4Maps19GuideSummaryMetrics_showsDivider] = a1;
  v11.receiver = v9;
  v11.super_class = type metadata accessor for GuideSummaryMetrics();
  return objc_msgSendSuper2(&v11, "init");
}

id sub_1002B4910(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1002B4AEC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong mapView];

    if (v4)
    {
      v5 = [v4 preferredConfiguration];
      aBlock[6] = &OBJC_PROTOCOL___MKMapConfigurationHiking;
      v6 = swift_dynamicCastObjCProtocolConditional();
      if (v6)
      {
        if (a1)
        {
          v7 = v6;
          v8 = a1;
          v9 = [v8 mapItem];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 _geoMapItem];

            if (!v11)
            {
              __break(1u);
              return;
            }

            v12 = [v11 _placeData];
            swift_unknownObjectRelease();
            if (v12)
            {
              if ([v12 hasMapDisplayType])
              {
                [v7 setShowsTopographicFeatures:{objc_msgSend(v12, "mapDisplayType") == 1}];
              }
            }
          }

          if ([v8 isDroppedPin] && (v13 = objc_msgSend(v8, "mapItem")) != 0)
          {
            v14 = v13;
            [v13 _coordinate];
            v16 = v15;
            v18 = v17;
            v19 = swift_allocObject();
            *(v19 + 16) = v7;
            aBlock[4] = sub_1002B8BAC;
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1002B6DC8;
            aBlock[3] = &unk_10160FA10;
            v20 = _Block_copy(aBlock);
            v21 = v5;

            [v4 checkIfCoordinate:v20 isInHikingContextualRegionWithCompletionHandler:{v16, v18}];

            _Block_release(v20);
            v5 = v14;
          }

          else
          {

            v5 = v8;
          }

          goto LABEL_17;
        }

        [v6 setShowsTopographicFeatures:0];
      }

LABEL_17:
    }
  }
}

void sub_1002B5294(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 iosChromeViewController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 _currentContainerViewController];

    if (v8)
    {
      if (!a2)
      {
        __break(1u);
        goto LABEL_13;
      }

      v9 = [objc_allocWithZone(MarkedLocationRefinementViewController) initWithMarkedLocation:a2];
      [v9 setDelegate:v3];
      [v9 setOriginalPresenterViewController:a1];
      v16 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v9];
      [v16 setModalPresentationStyle:2];
      if ([PlaceSummaryTableViewCell canBecomeFirstResponder]_0(v9))
      {
        if (a1)
        {
          v10 = [a1 placeCardDelegate];
          if (v10)
          {
            v11 = v10;
            v12 = swift_allocObject();
            *(v12 + 16) = v8;
            *(v12 + 24) = v16;
            aBlock[4] = sub_1002B8B94;
            aBlock[5] = v12;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100039C64;
            aBlock[3] = &unk_10160F9C0;
            v13 = _Block_copy(aBlock);
            v14 = v16;
            v15 = v8;

            [v11 placeCardViewController:a1 dismissAnimated:1 completion:v13];
            _Block_release(v13);
            swift_unknownObjectRelease();
            [v15 _maps_topMostPresentViewController:v14 animated:1 completion:0];

            return;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }
  }
}

void sub_1002B56C4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  a6(a4, a5);
}

void sub_1002B5768(void *a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      if (a1)
      {
        v5 = Strong;
        v6 = a2;
        v7 = [a1 excludedContent];
        v8 = type metadata accessor for UserGuidesContextConfiguration();
        v9 = objc_allocWithZone(v8);
        *&v9[OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_collectionHandler] = v6;
        *&v9[OBJC_IVAR____TtC4Maps30UserGuidesContextConfiguration_excludedPlaceCardContent] = v7;
        v13.receiver = v9;
        v13.super_class = v8;
        v10 = objc_msgSendSuper2(&v13, "init");
        v11 = objc_allocWithZone(type metadata accessor for UserGuidesContext());
        v12 = sub_10042A66C(v10);
        [v5 pushContext:v12 animated:1 completion:0];

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

void sub_1002B5A4C(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

void sub_1002B5BCC(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v7 = a4;
  v10 = a1;
  v8 = [v10 iosBasedChromeViewController];
  v9 = [v8 appCoordinator];

  [v9 *a5];
}

void sub_1002B5F9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v37 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mapView];

    if (v4)
    {
      v5 = [v0 iosChromeViewController];
      if (v5)
      {
        v6 = v5;
        v36 = [v5 _currentContainerViewController];

        if (v36)
        {
          v7 = [v0 iosChromeViewController];
          if (v7)
          {
            v35 = v7;
            v8 = [v37 mapSelectionManager];
            if (!v8)
            {
              __break(1u);
              goto LABEL_26;
            }

            v9 = v8;
            v10 = [v8 labelMarker];

            if (v10)
            {
              [v4 _edgeInsets];
              v12 = v11;
              v14 = v13;
              v16 = v15;
              v18 = v17;
              if ([v36 containerStyle] == 1)
              {
                v19 = [v36 currentViewController];
                if (!v19)
                {
LABEL_28:
                  __break(1u);
                  return;
                }

                v20 = v19;
                [v19 heightForLayout:2];
                v16 = v21;
              }

              [objc_opt_self() expandedHeight];
              v23 = v22;
              v24 = v35;
              v25 = [v24 venuesManager];
              if (v25)
              {
                v26 = v25;
                v38 = 0;
                v39 = 0;
                [v25 getMinZoom:&v39 maxZoom:&v38 forDisplayingLabelMarker:v10];

                v27 = v38;
                v28 = v39;
                v29 = v27;
                v30 = [v37 mapCameraController];
                if (v30)
                {
                  v31 = v30;
                  [v30 frameLabelMarker:v10 edgeInsets:v28 minZoom:v29 maxZoom:0 completion:{v12, v14, v16 + v23, v18}];
                }

                v32 = [v24 venuesManager];

                if (v32)
                {
                  v33 = v10;
                  [v32 displayFloorForSelectedLabelMarker:v33];

                  return;
                }

                goto LABEL_27;
              }

LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

            v34 = v35;
          }

          else
          {

            v34 = v36;
          }

          goto LABEL_20;
        }
      }
    }
  }

  v34 = v37;
LABEL_20:
}

void sub_1002B6900(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v6 = Strong;
      v7 = type metadata accessor for PlaceCardContextContainee.PickUserGuideModel();
      v8 = objc_allocWithZone(v7);
      *&v8[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee18PickUserGuideModel_saveSession] = a3;
      *&v8[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee18PickUserGuideModel_containee] = a1;
      v12.receiver = v8;
      v12.super_class = v7;

      v9 = a3;
      v10 = a1;
      v11 = objc_msgSendSuper2(&v12, "init");
      sub_1003C43C8(v11 | 0xA000000000000000);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B6ABC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() sharedHelper];
    v9 = [v4 alertControllerForAttemptedAddCollection];

    if (v9)
    {
      [v3 _maps_topMostPresentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v5 = type metadata accessor for PlaceCardContextContainee.NewUserGuideModel();
      v6 = objc_allocWithZone(v5);
      *&v6[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee17NewUserGuideModel_saveSession] = a1;
      v10.receiver = v6;
      v10.super_class = v5;
      v7 = a1;
      v8 = objc_msgSendSuper2(&v10, "init");
      sub_1003C43C8(v8 | 0x8000000000000000);
    }
  }
}

uint64_t sub_1002B6DC8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void sub_1002B6F88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_101909B00);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = [v2 iosChromeViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 _currentContainerViewController];

    if (v10)
    {
      v11 = [objc_allocWithZone(MapsWebLinkPresenter) initWithPresentingViewController:v10];
      sub_1000D2DFC(a1, v7, &unk_101909B00);
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v7, 1, v12) == 1)
      {
        __break(1u);
      }

      else
      {
        URL._bridgeToObjectiveC()(v14);
        v16 = v15;
        (*(v13 + 8))(v7, v12);
        [v11 presentWebURL:v16];
      }
    }
  }
}

void sub_1002B7128(void *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || (v8 = [a1 mapItem]) == 0 || (v9 = v8, v10 = objc_msgSend(v8, "_mapsui_trailSelectionInfoForMap"), v9, !v10))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v20 = [Strong mapSelectionManager];

      if (!v20)
      {
        __break(1u);
        goto LABEL_15;
      }

      [v20 deselectTrails];
    }

LABEL_12:
    sub_1002B4AEC(a1);
    return;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = v11;
  v13 = [v11 mapSelectionManager];

  if (v13)
  {
    v21[1] = v1;
    v14 = [v10 trailID];
    v15 = [v10 trailName];
    if (!v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = String._bridgeToObjectiveC()();
    }

    v16 = [objc_opt_self() currentLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.identifier.getter();
    (*(v4 + 8))(v7, v3);
    v17 = String._bridgeToObjectiveC()();

    [v13 selectTrailWithId:v14 name:v15 locale:v17];

    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
}

void sub_1002B73C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:a1 address:a2];
    v4 = *(*(v2 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration) + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
    v5 = type metadata accessor for PlaceCardContextConfiguration();
    v6 = objc_allocWithZone(v5);
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
    *&v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v3;
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
    *&v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = v4;
    v6[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
    v9.receiver = v6;
    v9.super_class = v5;
    v7 = v3;
    v8 = objc_msgSendSuper2(&v9, "init");
    sub_100504028(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B74D4(void *a1)
{
  if (a1)
  {
    if ([a1 hasFloorOrdinal])
    {
      v3 = [a1 floorOrdinal];
    }

    else
    {
      v3 = 0x7FFFFFFFLL;
    }

    v4 = objc_opt_self();
    [a1 coordinate];
    v5 = [v4 customSearchResultWithCoordinate:v3 floorOrdinal:?];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(PlaceCardItem) initWithSearchResult:v5];
      v8 = *(v1 + OBJC_IVAR____TtC4Maps16PlaceCardContext_configuration);
      v9 = *(v8 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory);
      v10 = *(v8 + OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent);
      v11 = type metadata accessor for PlaceCardContextConfiguration();
      v12 = objc_allocWithZone(v11);
      v12[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
      *&v12[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v7;
      v12[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = v9;
      *&v12[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = v10;
      v12[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
      v15.receiver = v12;
      v15.super_class = v11;
      v13 = v7;
      v14 = objc_msgSendSuper2(&v15, "init");
      sub_100504028(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B7660(void *a1)
{
  v2 = v1;
  v4 = [v2 iosChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 _currentContainerViewController];

    if (v6)
    {
      if (a1)
      {
        v7 = [a1 stringValue];
        if (!v7)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v7 = String._bridgeToObjectiveC()();
        }

        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();
        [v8 presentStoreProductViewControllerWithAppAdamID:v7 bundleIdentifier:v9 presentingViewController:v6];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1002B7780(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = [objc_allocWithZone(VenueSearchCardItem) initWithMapItem:a1 searchCategory:a2];
      v3 = type metadata accessor for PlaceCardContextContainee.VenuesSearchCardModel();
      v4 = objc_allocWithZone(v3);
      *&v4[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee21VenuesSearchCardModel_searchCardItem] = v2;
      v7.receiver = v4;
      v7.super_class = v3;
      v5 = v2;
      v6 = objc_msgSendSuper2(&v7, "init");
      sub_1003C43C8(v6 | 0x2000000000000000);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002B784C(uint64_t a1)
{
  if (a1)
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
    v10.receiver = v7;
    v10.super_class = v6;
    v8 = v2;
    v9 = objc_msgSendSuper2(&v10, "init");
    sub_100504028(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B7964(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = [v3 iosBasedChromeViewController];
  v7 = [v6 appCoordinator];

  if (!v7)
  {
    return;
  }

  if (!a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = [a2 window];
  if (!v8)
  {
    v11 = 0.0;
    v13 = 0.0;
    v15 = 0.0;
    v17 = 0.0;
    if (a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v9 = v8;
  [a2 bounds];
  [v9 convertRect:a2 fromView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  if (!a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_5:
  v18 = [objc_opt_self() entryPointWithMapItem:a1 wantsCloseUpView:1 triggerAction:6060];
  [v7 enterLookAroundWithEntryPoint:v18 lookAroundView:a2 showsFullScreen:1 originFrame:{v11, v13, v15, v17}];
}

void sub_1002B7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t a5)
{
  v6 = v5;
  v12 = [v6 iosChromeViewController];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = [v12 _currentContainerViewController];

  if (!v14)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a2)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v22 = sub_1002B8B6C;
  v23 = v15;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100534B00;
  v21 = &unk_10160F948;
  v16 = _Block_copy(&v18);

  if (a4)
  {
    v22 = a4;
    v23 = a5;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100039C64;
    v21 = &unk_10160F970;
    a4 = _Block_copy(&v18);
  }

  v17 = [objc_opt_self() _maps_viewControllerForRenamingMapItem:a1 saveHandler:v16 cancelHandler:a4];
  _Block_release(a4);
  _Block_release(v16);
  [v14 _maps_topMostPresentViewController:v17 animated:1 completion:0];
}

void sub_1002B7CF8(Class isa, uint64_t a2, uint64_t a3)
{
  v6 = [v3 iosBasedChromeViewController];
  v7 = [v6 appCoordinator];

  if (v7)
  {
    if (isa)
    {
      sub_100014C84(0, &unk_101918390);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    if (a3)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 openRelatedMapItems:isa withTitle:? originalMapItem:? analyticsDelegate:?];
  }
}

void sub_1002B7E28(Class isa, uint64_t a2, uint64_t a3)
{
  v6 = [v3 iosBasedChromeViewController];
  v7 = [v6 appCoordinator];

  if (v7)
  {
    if (isa)
    {
      sub_100014C84(0, &qword_10190D6B0);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    if (a3)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v7 openCuratedCollectionsList:isa usingTitle:?];
  }
}

void sub_1002B7F3C(void *a1)
{
  v3 = [v1 iosBasedChromeViewController];
  v7 = [v3 appCoordinator];

  if (v7)
  {
    if (a1)
    {
      [a1 setContaineeDelegate:v1];
      v4 = [v1 iosChromeViewController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 _currentContainerViewController];
      }

      else
      {
        v6 = 0;
      }

      [a1 setContainerViewController:v6];

      [v7 presentPOIEnrichmentWithCoordinator:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B8060(void *a1, void *a2, uint64_t a3, NSString a4, char a5)
{
  v6 = v5;
  v11 = [v6 iosBasedChromeViewController];
  v12 = [v11 appCoordinator];

  if (!v12)
  {
    return;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v13 = [a1 placeCardItem];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v13 isHomeWorkSchoolAddress];

  if (!a2)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = a2;
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  v17 = [objc_allocWithZone(OfflineRegionSelectorContextConfiguration) initWithRegion:a2 name:a4];

  [v17 setShouldUseSessionlessAnalytics:v15];
  [v12 showOfflineMapRegionSelectorForConfiguration:v17 shouldShowDataManagementAfterDownload:a5 & 1 shouldShowDataManagementAfterDownloadIfRegionDiffers:1];
}

void sub_1002B81E8()
{
  v1 = [v0 iosChromeViewController];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v9 = [v1 _currentContainerViewController];

  if (!v9)
  {
    return;
  }

  v3 = [objc_opt_self() sharedHelper];
  v4 = [v3 alertControllerForAttemptedDataManagementDisplay];

  if (v4)
  {
    v5 = [v9 chromeViewController];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 _maps_topMostPresentViewController:v4 animated:1 completion:0];
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v8 = v9;
      goto LABEL_10;
    }

    v4 = Strong;
    v6 = [objc_allocWithZone(OfflineMapsManagementContext) init];
    [v4 pushContext:v6 animated:1 completion:0];
  }

  v8 = v6;
LABEL_10:
}

void sub_1002B8360(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 iosChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 _currentContainerViewController];

    if (v6)
    {
      sub_1000D2DFC(a1, v14, &unk_101908380);
      v7 = v15;
      if (v15)
      {
        v8 = sub_10005E838(v14, v15);
        v9 = *(v7 - 8);
        v10 = __chkstk_darwin(v8);
        v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v9 + 16))(v12, v10);
        v13 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v9 + 8))(v12, v7);
        sub_10004E3D0(v14);
      }

      else
      {
        v13 = 0;
      }

      [v6 copy:v13];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1002B84F8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC4Maps16PlaceCardContext_shortcutEditSessionController;
  if (!*&v1[OBJC_IVAR____TtC4Maps16PlaceCardContext_shortcutEditSessionController])
  {
    v4 = [objc_allocWithZone(ShortcutEditSessionControllerImpl) init];
    v5 = [v1 iosChromeViewController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 _currentContainerViewController];
    }

    else
    {
      v7 = 0;
    }

    [v4 setContainerViewController:v7];

    [v4 setDelegate:v1];
    *&v1[v2] = v4;
    v8 = v4;
    swift_unknownObjectRelease();
    if (a1)
    {
      [v8 editShortcut:a1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B8630(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (a1)
  {
    v8 = [objc_allocWithZone(CollectionPicker) initWithCollectionEditSession:a1 sourceView:a2 sourceRect:{a3, a4, a5, a6}];
    [v8 setDelegate:v6];
    v9 = *&v6[OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker];
    *&v6[OBJC_IVAR____TtC4Maps16PlaceCardContext_userGuidesPicker] = v8;
    v20 = v8;

    v10 = [v6 iosChromeViewController];
    if (v10 && (v11 = v10, v12 = [v10 _currentContainerViewController], v11, v12))
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = a1;
      v25 = sub_1002B8B48;
      v26 = v14;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_1002B8BE0;
      v24 = &unk_10160F858;
      v15 = _Block_copy(&aBlock);
      v16 = a1;

      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      v25 = sub_1002B8B50;
      v26 = v17;
      aBlock = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_1002B8BE0;
      v24 = &unk_10160F8A8;
      v18 = _Block_copy(&aBlock);
      v19 = v12;

      [v20 viewControllerToPresentIfContainee:v15 ifAlertController:v18];
      _Block_release(v18);
      _Block_release(v15);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B88D0(void *a1)
{
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [objc_opt_self() sharedHelper];
      v9 = [v4 alertControllerForAttemptedAddCollection];

      if (v9)
      {
        [v3 _maps_topMostPresentViewController:v9 animated:1 completion:0];
      }

      else
      {
        v5 = type metadata accessor for PlaceCardContextContainee.NewUserGuideModel();
        v6 = objc_allocWithZone(v5);
        *&v6[OBJC_IVAR____TtCO4Maps25PlaceCardContextContainee17NewUserGuideModel_saveSession] = a1;
        v10.receiver = v6;
        v10.super_class = v5;
        v7 = a1;
        v8 = objc_msgSendSuper2(&v10, "init");
        sub_1003C43C8(v8 | 0x8000000000000000);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B8A10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v2 = [Strong searchPinsManager];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 clearDroppedPin];

  v4 = [objc_opt_self() sharedManager];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 setCustomSearchResult:0 animated:1 shouldSelectOnMap:0 context:v6];

  [v7 popContext:v0 animated:1 completion:0];
}

void sub_1002B8C1C(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  sub_1002B8D10();
  v5 = a3;
  v6 = a1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_1002B8D10()
{
  result = qword_10191A920;
  if (!qword_10191A920)
  {
    type metadata accessor for TrafficIncidentViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191A920);
  }

  return result;
}

uint64_t sub_1002B8E84@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps38TrafficIncidentContaineeViewController_viewModel);
  type metadata accessor for TrafficIncidentViewModel();
  v4 = v3;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  KeyPath = swift_getKeyPath();
  a1[3] = &type metadata for TrafficIncidentView;
  a1[4] = sub_1002B940C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = v7;
  *(result + 40) = v8;
  *(result + 48) = KeyPath;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_1002B8F5C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1002B8D10();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1002B90B8(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "willBecomeCurrent:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps38TrafficIncidentContaineeViewController_viewModel];
  if (*(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) == 1)
  {
    *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) = 1;
    return sub_10034CB7C(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B8D10();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_1002B922C(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "willResignCurrent:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps38TrafficIncidentContaineeViewController_viewModel];
  if (*(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1002B8D10();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive) = 0;
    return sub_10034CB7C(0);
  }
}

unint64_t sub_1002B940C()
{
  result = qword_1019185F8;
  if (!qword_1019185F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019185F8);
  }

  return result;
}

uint64_t sub_1002B9460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002B8D10();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps24TrafficIncidentViewModel__isActive);
  return result;
}

__n128 sub_1002B9560(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002B957C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002B95D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1002B9668(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      return *(a2 + 8);
    }

    else
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else
  {
    sub_10011A1CC();
    return static NSObject.== infix(_:_:)() & 1;
  }
}

uint64_t sub_1002B96D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for EnvironmentValues();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_101918600);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  sub_1002B9C7C(v1, &v52);
  v8 = v52;
  v9 = v53;
  v10 = BYTE2(v53);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39[37] = v43;
  *&v39[21] = v42;
  *&v39[5] = v41;
  *&v38[3] = *v39;
  v40 = v10;
  v37 = v8;
  *v38 = v9;
  v38[2] = v10;
  *&v38[19] = *&v39[16];
  *&v38[35] = *&v39[32];
  *&v38[48] = *(&v43 + 1);
  v11 = *(v1 + 48);
  v51 = *(v1 + 56);
  v50 = v11;
  v35 = *(v1 + 48);
  v36 = *(v1 + 56);
  v12 = *v1;
  v49 = *(v1 + 8);
  v48 = v12;
  v31 = v12;
  v30 = v49;
  v13 = *(v1 + 16);
  v46 = *(v1 + 24);
  v47 = v13;
  v14 = *(v1 + 32);
  v44 = *(v1 + 40);
  v45 = v14;
  v15 = swift_allocObject();
  v16 = *(v1 + 16);
  v15[1] = *v1;
  v15[2] = v16;
  v15[3] = *(v1 + 32);
  *(v15 + 57) = *(v1 + 41);
  sub_1002BAA18(&v50, &v52);
  sub_1002BAA18(&v50, &v52);
  sub_1000D2DFC(&v48, &v52, &qword_101918608);
  sub_1000D2DFC(&v47, &v52, &qword_101918610);
  sub_1000D2DFC(&v46, &v52, &qword_101918618);
  sub_1000D2DFC(&v45, &v52, &unk_101916610);
  sub_1000D2DFC(&v44, &v52, &qword_101918620);
  v17 = sub_1000CE6B8(&qword_101918628);
  v18 = sub_1002BAA50();
  v19 = sub_1002BABEC();
  View.onChange<A>(of:initial:_:)();

  sub_1002BAC40(&v50);
  v54 = *&v38[16];
  v55 = *&v38[32];
  v56 = *&v38[48];
  v52 = v37;
  v53 = *v38;
  sub_100024F64(&v52, &qword_101918628);
  if (v30 == 1)
  {
    v20 = v31;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v22 = v27;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v48, &qword_101918608);
    (*(v28 + 8))(v22, v29);
    v20 = v37;
  }

  v35 = v20;
  v23 = swift_allocObject();
  v24 = v2[1];
  v23[1] = *v2;
  v23[2] = v24;
  v23[3] = v2[2];
  *(v23 + 57) = *(v2 + 41);
  sub_1002BAA18(&v50, &v37);
  sub_1000D2DFC(&v48, &v37, &qword_101918608);
  sub_1000D2DFC(&v47, &v37, &qword_101918610);
  sub_1000D2DFC(&v46, &v37, &qword_101918618);
  sub_1000D2DFC(&v45, &v37, &unk_101916610);
  sub_1000D2DFC(&v44, &v37, &qword_101918620);
  *&v37 = v17;
  *(&v37 + 1) = &type metadata for TrafficIncidentIcon.Source;
  *v38 = v18;
  *&v38[8] = v19;
  swift_getOpaqueTypeConformance2();
  sub_1001DF878();
  v25 = v33;
  View.onChange<A>(of:initial:_:)();

  return (*(v32 + 8))(v7, v25);
}

double sub_1002B9C7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 32);
  sub_1000CE6B8(&qword_101918668);
  State.wrappedValue.getter();
  if (v14)
  {
    v8 = v14;
    Image.init(uiImage:)();
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v9 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v7, v4);
    v14 = v9;
    v15 = 0;
    v16 = 257;
    v17 = 0;

    sub_1000CE6B8(&qword_1019104B0);
    sub_1001CA284();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v14 = static Color.clear.getter();
    v15 = 0;
    v16 = 0;
    v17 = 1;
    sub_1000CE6B8(&qword_1019104B0);
    sub_1001CA284();
    _ConditionalContent<>.init(storage:)();
  }

  result = *&v18;
  v11 = v19;
  v12 = v20;
  *a2 = v18;
  *(a2 + 16) = v11;
  *(a2 + 18) = v12;
  return result;
}

uint64_t sub_1002B9EB4()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v15 - v3;
  v5 = v0[2];
  v6 = v0[3];
  v24 = v6;
  v25 = v5;
  v16 = v5;
  v17 = v6;
  sub_1000D2DFC(&v25, &v22, &qword_101918610);
  sub_1000D2DFC(&v24, &v22, &qword_101918618);
  sub_1000CE6B8(&qword_101918660);
  State.wrappedValue.getter();
  if (v22)
  {
    sub_1000CE6B8(&qword_101915AB0);
    Task.cancel()();
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = *v0;
  v23 = *(v0 + 8);
  v9 = v0[5];
  v21 = v0[4];
  v22 = v8;
  v20 = v9;
  v18 = v0[6];
  v19 = *(v0 + 56);
  type metadata accessor for MainActor();
  sub_1000D2DFC(&v25, &v16, &qword_101918610);
  sub_1000D2DFC(&v24, &v16, &qword_101918618);
  sub_1000D2DFC(&v22, &v16, &qword_101918608);
  sub_1000D2DFC(&v21, &v16, &unk_101916610);
  sub_1000D2DFC(&v20, &v16, &qword_101918620);
  sub_1002BAA18(&v18, &v16);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = v1[1];
  *(v11 + 32) = *v1;
  *(v11 + 48) = v12;
  *(v11 + 64) = v1[2];
  *(v11 + 73) = *(v1 + 41);
  v13 = sub_10050D2C8(0, 0, v4, &unk_1011F8C88, v11);
  v16 = v5;
  v17 = v6;
  v15[1] = v13;
  State.wrappedValue.setter();
  sub_100024F64(&v25, &qword_101918610);
  return sub_100024F64(&v24, &qword_101918618);
}

uint64_t sub_1002BA1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_1000CE6B8(&unk_10190BA50);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for EnvironmentValues();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v7;
  v4[17] = v6;

  return _swift_task_switch(sub_1002BA2E0, v7, v6);
}

uint64_t sub_1002BA2E0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 8);
  v3 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = v2;
  if (v2 == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(v0 + 32, &qword_101918608);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 48);
    v1 = *(v0 + 72);
  }

  *(v0 + 144) = v4;
  *(v0 + 152) = v1[6];
  *(v0 + 41) = *(v1 + 56);
  *(v0 + 160) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 168) = v10;
  *(v0 + 176) = v9;

  return _swift_task_switch(sub_1002BA464, v10, v9);
}

uint64_t sub_1002BA464()
{
  v1 = *(v0 + 41);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 80);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1002BAD44(v2, v1);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = v3;
  v8 = sub_10020B3DC(0, 0, v4, &unk_1011F8C98, v7);
  *(v0 + 184) = v8;
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  v10 = sub_1000CE6B8(&unk_101916610);
  *v9 = v0;
  v9[1] = sub_1002BA5EC;

  return Task<>.value.getter(v0 + 56, v8, v10);
}

uint64_t sub_1002BA5EC()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1002BA730, v3, v2);
}

uint64_t sub_1002BA730()
{

  v0[25] = v0[7];
  v1 = v0[16];
  v2 = v0[17];

  return _swift_task_switch(sub_1002BA79C, v1, v2);
}

uint64_t sub_1002BA79C()
{

  static Task<>.checkCancellation()();
  v1 = *(v0 + 200);
  *(v0 + 16) = *(*(v0 + 72) + 32);
  *(v0 + 64) = v1;
  sub_1000CE6B8(&qword_101918668);
  State.wrappedValue.setter();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002BA89C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 32) = a2;
  *(v6 + 48) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002BA93C, v8, v7);
}

uint64_t sub_1002BA93C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = sub_100955208(v2, 4);
  }

  else
  {
    v3 = sub_10095510C(v2, 4, *(v0 + 32));
  }

  v4 = *(v0 + 16);
  *v4 = v3;
  v5 = *(v0 + 8);

  return v5();
}

void sub_1002BAA0C(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

unint64_t sub_1002BAA50()
{
  result = qword_101918630;
  if (!qword_101918630)
  {
    sub_1000D6664(&qword_101918628);
    sub_1002BAADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918630);
  }

  return result;
}

unint64_t sub_1002BAADC()
{
  result = qword_101918638;
  if (!qword_101918638)
  {
    sub_1000D6664(&qword_101918640);
    sub_1002BAB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918638);
  }

  return result;
}

unint64_t sub_1002BAB60()
{
  result = qword_101918648;
  if (!qword_101918648)
  {
    sub_1000D6664(&qword_101918650);
    sub_1001CA284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918648);
  }

  return result;
}

unint64_t sub_1002BABEC()
{
  result = qword_101918658;
  if (!qword_101918658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918658);
  }

  return result;
}

uint64_t sub_1002BAC94(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003AC4C;

  return sub_1002BA1B0(a1, v4, v5, v1 + 32);
}

id sub_1002BAD44(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1002BAD50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC4C;

  return sub_1002BA89C(a1, v8, v4, v5, v6, v7);
}

uint64_t type metadata accessor for CarHomeView()
{
  result = qword_1019186C8;
  if (!qword_1019186C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BAEB0()
{
  sub_1002BAF34();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CarSearchBarViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002BAF34()
{
  if (!qword_1019186D8)
  {
    type metadata accessor for CarHomeViewModel();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1019186D8);
    }
  }
}

uint64_t sub_1002BAFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v145 = a2;
  v144 = type metadata accessor for CarHomeContentListView();
  __chkstk_darwin(v144);
  v124 = v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v129);
  v123 = (v113 - v3);
  v122 = sub_1000CE6B8(&qword_10191D860);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v127 = v113 - v6;
  v140 = sub_1000CE6B8(&qword_101918710);
  __chkstk_darwin(v140);
  v142 = v113 - v7;
  v125 = sub_1000CE6B8(&qword_101918718);
  __chkstk_darwin(v125);
  v126 = (v113 - v8);
  v141 = sub_1000CE6B8(&qword_101918720);
  __chkstk_darwin(v141);
  v128 = v113 - v9;
  v10 = sub_1000CE6B8(&qword_101918728);
  __chkstk_darwin(v10 - 8);
  v143 = v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v146 = v113 - v13;
  v138 = type metadata accessor for AccessibilityTraits();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CarHomeView();
  v16 = v15 - 8;
  v130 = *(v15 - 8);
  v17 = *(v130 + 8);
  __chkstk_darwin(v15);
  v119 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = v113 - v19;
  __chkstk_darwin(v20);
  v117 = v113 - v21;
  __chkstk_darwin(v22);
  v116 = v113 - v23;
  __chkstk_darwin(v24);
  v115 = v113 - v25;
  __chkstk_darwin(v26);
  v28 = v113 - v27;
  v29 = type metadata accessor for CarSearchBarViewModel();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for CarSearchBar();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v34 = v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1000CE6B8(&qword_101918730);
  __chkstk_darwin(v131);
  v36 = v113 - v35;
  v133 = sub_1000CE6B8(&qword_101918738);
  __chkstk_darwin(v133);
  v38 = v113 - v37;
  v135 = sub_1000CE6B8(&qword_101918740);
  __chkstk_darwin(v135);
  v139 = v113 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = v113 - v41;
  v44 = __chkstk_darwin(v43);
  v148 = v113 - v45;
  v46 = *(v16 + 28);
  v47 = v147;
  (*(v30 + 16))(v32, v147 + v46, v29, v44);
  sub_1002BCF88(v47, v28, type metadata accessor for CarHomeView);
  v48 = (v130[80] + 16) & ~v130[80];
  v113[1] = v130[80];
  v49 = swift_allocObject();
  v114 = v48;
  v130 = v28;
  sub_1002BCB18(v28, v49 + v48);
  CarSearchBar.init(model:tapHandler:)();
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D40;
  LOBYTE(v30) = static Edge.Set.top.getter();
  *(inited + 32) = v30;
  v51 = static Edge.Set.leading.getter();
  *(inited + 33) = v51;
  v52 = static Edge.Set.trailing.getter();
  *(inited + 34) = v52;
  v53 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v51)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v52)
  {
    v53 = Edge.Set.init(rawValue:)();
  }

  v54 = v146;
  v55 = v147;
  EdgeInsets.init(_all:)();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  (*(v132 + 32))(v36, v34, v134);
  v64 = &v36[*(v131 + 36)];
  *v64 = v53;
  *(v64 + 1) = v57;
  *(v64 + 2) = v59;
  *(v64 + 3) = v61;
  *(v64 + 4) = v63;
  v64[40] = 0;
  v65 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  sub_1002BCBFC(v36, v38);
  v74 = &v38[*(v133 + 36)];
  *v74 = v65;
  *(v74 + 1) = v67;
  *(v74 + 2) = v69;
  *(v74 + 3) = v71;
  *(v74 + 4) = v73;
  v74[40] = 0;
  v75 = v136;
  static AccessibilityTraits.isButton.getter();
  sub_1002BCC6C();
  View.accessibilityAddTraits(_:)();
  (*(v137 + 8))(v75, v138);
  sub_100024F64(v38, &qword_101918738);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v151._object = 0x8000000101225C20;
  v76._countAndFlagsBits = 0x686372616553;
  v77._countAndFlagsBits = 0xD000000000000026;
  v77._object = 0x8000000101225BF0;
  v76._object = 0xE600000000000000;
  v151._countAndFlagsBits = 0xD000000000000022;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, qword_1019600D8, v76, v151);
  sub_1000E5580();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  sub_100024F64(v42, &qword_101918740);
  v78 = v55[1];
  v150._countAndFlagsBits = *v55;
  v150._object = v78;
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  v79 = v149;
  swift_getKeyPath();
  v150._countAndFlagsBits = v79;
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v80 = *(v79 + 128);
  sub_100100D84(v80);

  if (v80)
  {
    if (v80 == 1)
    {
      v81 = v127;
      ProgressView<>.init<>()();
      v82 = v121;
      v83 = *(v121 + 16);
      v84 = v120;
      v85 = v122;
      v83(v120, v81, v122);
      v86 = v123;
      *v123 = 0;
      *(v86 + 8) = 1;
      v87 = sub_1000CE6B8(&qword_10190A408);
      v83((v86 + *(v87 + 48)), v84, v85);
      v88 = v86 + *(v87 + 64);
      *v88 = 0;
      *(v88 + 8) = 1;
      v89 = *(v82 + 8);
      v89(v84, v85);
      sub_1000D2DFC(v86, v126, &qword_10190A2F8);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
      v90 = v128;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v90, v142, &qword_101918720);
      swift_storeEnumTagMultiPayload();
      sub_1002BCFF0();
      sub_1002BD0A8(&qword_10190D8D0, type metadata accessor for CarHomeContentListView);
      v54 = v146;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v90, &qword_101918720);
      sub_100024F64(v86, &qword_10190A2F8);
      v89(v127, v85);
    }

    else
    {
      v93 = v130;
      sub_1002BCF88(v55, v130, type metadata accessor for CarHomeView);
      v94 = v114;
      v147 = swift_allocObject();
      sub_1002BCB18(v93, v147 + v94);
      v95 = v115;
      sub_1002BCF88(v55, v115, type metadata accessor for CarHomeView);
      v138 = swift_allocObject();
      sub_1002BCB18(v95, v138 + v94);
      v96 = v116;
      sub_1002BCF88(v55, v116, type metadata accessor for CarHomeView);
      v97 = swift_allocObject();
      sub_1002BCB18(v96, v97 + v94);
      v98 = v117;
      sub_1002BCF88(v55, v117, type metadata accessor for CarHomeView);
      v99 = swift_allocObject();
      sub_1002BCB18(v98, v99 + v94);
      v100 = v118;
      sub_1002BCF88(v55, v118, type metadata accessor for CarHomeView);
      v101 = swift_allocObject();
      sub_1002BCB18(v100, v101 + v94);
      v102 = v55;
      v103 = v119;
      sub_1002BCF88(v102, v119, type metadata accessor for CarHomeView);
      v104 = swift_allocObject();
      sub_1002BCB18(v103, v104 + v94);
      KeyPath = swift_getKeyPath();
      v106 = v124;
      *&v124[*(v144 + 52)] = KeyPath;
      sub_1000CE6B8(&qword_10190A1A0);
      swift_storeEnumTagMultiPayload();
      *v106 = v80;
      *(v106 + 8) = 1;
      *(v106 + 16) = 0xC020000000000000;
      *(v106 + 24) = sub_1002BCDB4;
      *(v106 + 32) = v147;
      *(v106 + 40) = sub_1002BCDCC;
      *(v106 + 48) = v138;
      *(v106 + 56) = sub_1002BCDE4;
      *(v106 + 64) = v97;
      *(v106 + 72) = sub_1002BCE54;
      *(v106 + 80) = v99;
      *(v106 + 88) = sub_1002BCE6C;
      *(v106 + 96) = v101;
      *(v106 + 104) = sub_1002BCF08;
      *(v106 + 112) = v104;
      sub_1002BCF88(v106, v142, type metadata accessor for CarHomeContentListView);
      swift_storeEnumTagMultiPayload();
      sub_1002BCFF0();
      sub_1002BD0A8(&qword_10190D8D0, type metadata accessor for CarHomeContentListView);
      v54 = v146;
      _ConditionalContent<>.init(storage:)();
      sub_1002BD0F0(v106);
    }
  }

  else
  {
    v91 = v126;
    *v126 = 0;
    *(v91 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    v92 = v128;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v92, v142, &qword_101918720);
    swift_storeEnumTagMultiPayload();
    sub_1002BCFF0();
    sub_1002BD0A8(&qword_10190D8D0, type metadata accessor for CarHomeContentListView);
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v92, &qword_101918720);
  }

  v107 = v148;
  v108 = v139;
  sub_1000D2DFC(v148, v139, &qword_101918740);
  v109 = v143;
  sub_1000D2DFC(v54, v143, &qword_101918728);
  v110 = v145;
  sub_1000D2DFC(v108, v145, &qword_101918740);
  v111 = sub_1000CE6B8(&qword_101918770);
  sub_1000D2DFC(v109, v110 + *(v111 + 48), &qword_101918728);
  sub_100024F64(v54, &qword_101918728);
  sub_100024F64(v107, &qword_101918740);
  sub_100024F64(v109, &qword_101918728);
  return sub_100024F64(v108, &qword_101918740);
}

uint64_t sub_1002BC298(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for CarInputType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for CarInputType.touch(_:), v4, v6);
  static CarInputType.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  v9 = a3[1];
  v14 = *a3;
  v15 = v9;
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  v10 = v13[1];
  swift_getKeyPath();
  v14 = v10;
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + 96);
  if (!v11)
  {
  }

  v11(v10);

  return sub_1000588AC(v11);
}

uint64_t sub_1002BC470(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 32);
  if (!v2)
  {
  }

  v2(v4, a1);

  return sub_1000588AC(v2);
}

uint64_t sub_1002BC57C(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 16);
  if (!v2)
  {
  }

  v2(v4, a1);

  return sub_1000588AC(v2);
}

uint64_t sub_1002BC688(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 48);
  if (!v2)
  {
  }

  v2(v4, a1);

  return sub_1000588AC(v2);
}

uint64_t sub_1002BC794(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 64);
  if (!v2)
  {
  }

  v2(v4, a1);

  return sub_1000588AC(v2);
}

uint64_t sub_1002BC8A0(uint64_t a1)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v4 + 80);
  if (!v2)
  {
  }

  v2(v4, a1);

  return sub_1000588AC(v2);
}

uint64_t sub_1002BC9AC(uint64_t a1, uint64_t a2)
{
  sub_1000CE6B8(&qword_101918760);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002BD0A8(&qword_1019145E8, type metadata accessor for CarHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v6 + 112);
  if (!v4)
  {
  }

  v4(v6, a1, a2);

  return sub_1000588AC(v4);
}

uint64_t sub_1002BCAC8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_101918708);
  return sub_1002BAFA8(v1, a1 + *(v3 + 44));
}

uint64_t sub_1002BCB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarHomeView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BCB7C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CarHomeView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1002BC298(a1, a2, v6);
}

uint64_t sub_1002BCBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101918730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002BCC6C()
{
  result = qword_101918748;
  if (!qword_101918748)
  {
    sub_1000D6664(&qword_101918738);
    sub_1002BCCF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918748);
  }

  return result;
}

unint64_t sub_1002BCCF8()
{
  result = qword_101918750;
  if (!qword_101918750)
  {
    sub_1000D6664(&qword_101918730);
    sub_1002BD0A8(&qword_101918758, &type metadata accessor for CarSearchBar);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918750);
  }

  return result;
}

uint64_t sub_1002BCDE4(uint64_t a1)
{
  type metadata accessor for CarHomeView();

  return sub_1002BC688(a1);
}

uint64_t sub_1002BCE84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CarHomeView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1002BCF08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CarHomeView();

  return sub_1002BC9AC(a1, a2);
}

uint64_t sub_1002BCF88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002BCFF0()
{
  result = qword_101918768;
  if (!qword_101918768)
  {
    sub_1000D6664(&qword_101918720);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918768);
  }

  return result;
}

uint64_t sub_1002BD0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002BD0F0(uint64_t a1)
{
  v2 = type metadata accessor for CarHomeContentListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002BD194()
{
  sub_1002BD220();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1002BD220()
{
  if (!qword_1019187F0)
  {
    sub_100014C84(255, &qword_10191B3B0);
    v0 = type metadata accessor for Measurement();
    if (!v1)
    {
      atomic_store(v0, &qword_1019187F0);
    }
  }
}

void sub_1002BD2D0()
{
  sub_1002BD48C();
  if (v0 <= 0x3F)
  {
    sub_100014C84(319, &qword_10191B3B0);
    if (v1 <= 0x3F)
    {
      sub_1002BD220();
      if (v2 <= 0x3F)
      {
        type metadata accessor for MapsElevationChartStyle();
        if (v3 <= 0x3F)
        {
          sub_10017F43C(319, &qword_101918898, &qword_101911878, &unk_1011EFF80, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_10005B95C();
            if (v5 <= 0x3F)
            {
              sub_10017F43C(319, &qword_1019188A0, &qword_1019188A8, &unk_10120DCC0, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_100014C84(319, &unk_1019188B0);
                if (v7 <= 0x3F)
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

void sub_1002BD48C()
{
  if (!qword_101918890)
  {
    type metadata accessor for MapsElevationChartViewModel.ElevationDatum(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101918890);
    }
  }
}

uint64_t sub_1002BD4E4(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v17 = _swiftEmptyArrayStorage;
  sub_1005111C4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  for (i = (a3 + 32); ; ++i)
  {
    v15 = *i;
    a1(v16, &v15);
    if (v3)
    {
      break;
    }

    v9 = v16[0];
    v10 = v16[1];
    v17 = v5;
    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      sub_1005111C4((v11 > 1), v12 + 1, 1);
      v5 = v17;
    }

    v5[2] = v12 + 1;
    v13 = &v5[2 * v12];
    v13[4] = v9;
    v13[5] = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1002BD5F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10056D58C(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 2);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = v12[24];
          *(v12 + 1) = *v12;
          *v12 = v13;
          v12[8] = v14;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_1002BF258(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

double sub_1002BD740()
{
  v1 = sub_1000CE6B8(&qword_10191B3A0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + *(type metadata accessor for MapsElevationChartViewModel(0) + 60));
  if ((v12[16] & 1) == 0)
  {
    return *v12;
  }

  v12 = *(v0 + 16);
  v13 = *(v12 + 2);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = *(v8 + 24);
  v27 = *(v0 + 32);
  v28 = v14;
  v15 = &v12[(*(v9 + 80) + 32) & ~*(v9 + 80)];
  v26 = *(v9 + 72);
  v16 = v2;
  v17 = (v2 + 16);
  v18 = (v16 + 8);
  v19 = INFINITY;
  v20 = -INFINITY;
  do
  {
    sub_1002BEA90(v15, v11);
    (*v17)(v4, &v11[v28], v1);
    sub_1001ED6C8(v11);
    Measurement<>.converted(to:)();
    v21 = *v18;
    (*v18)(v4, v1);
    Measurement.value.getter();
    v23 = v22;
    v21(v7, v1);
    if (v23 < v19)
    {
      v19 = v23;
    }

    if (v20 < v23)
    {
      v20 = v23;
    }

    v12 = v26;
    v15 += v26;
    --v13;
  }

  while (v13);
  if (v19 > v20)
  {
LABEL_10:
    __break(1u);
    return *v12;
  }

  return v19;
}

uint64_t sub_1002BD9D0()
{
  sub_100014C84(0, &qword_10190B2D0);
  v0 = objc_opt_self();
  v1 = [v0 feet];
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    return 1282;
  }

  v4 = [v0 miles];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 1284;
  }

  v6 = [v0 meters];
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 11;
  }

  v8 = [v0 kilometers];
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    return 14;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002BDB68()
{
  v1 = sub_1002BD740();
  v2 = *(v0 + 40);
  v4 = ceil(v3 / v2);
  v5 = floor(v1 / v2);
  v6 = *(v0 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56));
  v7 = OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle;
  v8 = *(v6 + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle) - 1;
  if (v8 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    v13 = v4;
    v14 = v4 == v5;
    if (v4 <= v5)
    {
      goto LABEL_9;
    }

    while (!__OFADD__(v11++, 1))
    {
      v16 = v2 * v13;
      v13 = v4 - v11;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v13 = v4 - v11;
        goto LABEL_14;
      }

LABEL_18:
      v12 = sub_1003570D4(0, *(v12 + 2) + 1, 1, v12);
      while (1)
      {
LABEL_14:
        v19 = *(v12 + 2);
        v18 = *(v12 + 3);
        v0 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v12 = sub_1003570D4((v18 > 1), v19 + 1, 1, v12);
        }

        *(v12 + 2) = v0;
        v8 = &v12[8 * v19];
        *(v8 + 32) = v16;
        v14 = v13 == v5;
        if (v13 > v5)
        {
          break;
        }

LABEL_9:
        v17 = !v14;
        if ((v17 | v10))
        {
          goto LABEL_30;
        }

        v16 = v2 * v13;
        v10 = 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_18;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v9 = fabs(fmod(v4 - v5, 3.0));
    if (v9 > 2.22507386e-308)
    {
      if (v9 <= 1.0)
      {
        if (v5 <= 0.0)
        {
          v4 = v4 + 2.0;
        }

        else
        {
          v4 = v4 + 1.0;
          v5 = v5 + -1.0;
        }
      }

      else
      {
        v4 = v4 + 1.0;
      }
    }

    v12 = sub_1003570D4(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v12 + 2);
    v8 = *(v12 + 3);
    v20 = v8 >> 1;
    v0 = v10 + 1;
    if (v8 >> 1 > v10)
    {
      goto LABEL_23;
    }
  }

  v12 = sub_1003570D4((v8 > 1), v0, 1, v12);
  v8 = *(v12 + 3);
  v20 = v8 >> 1;
LABEL_23:
  v21 = v2 * v4;
  *(v12 + 2) = v0;
  *&v12[8 * v10 + 32] = v21;
  v22 = v10 + 2;
  if (v20 < (v10 + 2))
  {
    v12 = sub_1003570D4((v8 > 1), v10 + 2, 1, v12);
  }

  v23 = v2 * v5;
  *(v12 + 2) = v22;
  *&v12[8 * v0 + 32] = v23 / 3.0 + (v21 + v21) / 3.0;
  v24 = *(v12 + 3);
  v25 = v10 + 3;
  if ((v10 + 3) > (v24 >> 1))
  {
    v12 = sub_1003570D4((v24 > 1), v10 + 3, 1, v12);
  }

  *(v12 + 2) = v25;
  *&v12[8 * v22 + 32] = v21 / 3.0 + (v23 + v23) / 3.0;
  v26 = *(v12 + 3);
  if ((v10 + 4) > (v26 >> 1))
  {
    v12 = sub_1003570D4((v26 > 1), v10 + 4, 1, v12);
  }

  *(v12 + 2) = v10 + 4;
  *&v12[8 * v25 + 32] = v23;
LABEL_30:
  if (*(v6 + v7) != 4)
  {
    return v12;
  }

  sub_1000CE6B8(&qword_101911C58);
  result = swift_allocObject();
  *(result + 16) = xmmword_1011E1D40;
  v28 = *(v12 + 2);
  if (v28)
  {
    v29 = result;
    v30 = *(v12 + 4);
    *(result + 32) = v30;
    v31 = *&v12[8 * v28 + 24];

    *(v29 + 40) = (v30 + v31) * 0.5;
    *(v29 + 48) = v31;
    return v29;
  }

  __break(1u);
  return result;
}

char *sub_1002BDEE0()
{
  v3 = v0;
  v4 = sub_1000CE6B8(&qword_10191B3A0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (!v9)
  {
    __break(1u);
LABEL_10:
    v1 = sub_1003571D8((v9 > 1), v4, 1, v1);
    goto LABEL_8;
  }

  v10 = v9 - 1;
  v11 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  (*(v5 + 16))(v7, v8 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v10 + *(v11 + 20), v4);
  Measurement.value.getter();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  LODWORD(v10) = *(*(v3 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56)) + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle);
  sub_1000CE6B8(&qword_101925150);
  if (v10 != 2)
  {
    result = swift_allocObject();
    *(result + 1) = xmmword_1011F8F70;
    *(result + 4) = 0;
    result[40] = 0;
    *(result + 6) = v13 * 0.25;
    result[56] = 0;
    *(result + 8) = v13 * 0.5;
    result[72] = 0;
    *(result + 10) = v13 * 0.75;
    result[88] = 0;
    *(result + 12) = v13;
    result[104] = 0;
    return result;
  }

  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011E7D60;
  *(v1 + 32) = v13 * 0.25;
  *(v1 + 40) = 0;
  *(v1 + 48) = v13 * 0.5;
  *(v1 + 56) = 0;
  *(v1 + 64) = v13 * 0.75;
  *(v1 + 72) = 0;
  *(v1 + 80) = v13;
  *(v1 + 88) = 0;
  v15 = [objc_opt_self() meters];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v2 = v16;
  v14(v7, v4);
  if (v2 <= 2.22507386e-308)
  {
    v8 = 4;
    v9 = 8;
  }

  else
  {
    v8 = 5;
    v1 = sub_1003571D8(1, 5, 1, v1);
    *(v1 + 16) = 5;
    *(v1 + 96) = 0;
    *(v1 + 104) = 0;
    v9 = *(v1 + 24);
  }

  v4 = v8 + 1;
  if (v8 >= v9 >> 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  *(v1 + 16) = v4;
  v18 = v1 + 16 * v8;
  *(v18 + 32) = v2;
  *(v18 + 40) = 1;
  v20 = v1;

  sub_1002BD5F8(&v20);

  return v20;
}

void *sub_1002BE280()
{
  v0 = sub_1002BDEE0();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = v0;
    sub_1005116C4(0, v1, 0);
    v3 = v2;
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 32;
    do
    {
      v6 = *&v3[v5];
      v7 = _swiftEmptyArrayStorage[3];
      if (v4 >= v7 >> 1)
      {
        sub_1005116C4((v7 > 1), v4 + 1, 1);
        v3 = v2;
      }

      _swiftEmptyArrayStorage[2] = v4 + 1;
      _swiftEmptyArrayStorage[v4 + 4] = v6;
      v5 += 16;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002BE370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v16[2] = a1;
  result = sub_1002BEB1C(sub_1002BFA18, v16, v4);
  if (v8)
  {
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v9 - 1;
LABEL_10:
      v11 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
      v12 = v4 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v10;
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v7)
  {
    if (*(v4 + 16))
    {
      v11 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
      v12 = v4 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80));
LABEL_11:
      v14 = *(v11 + 24);
      v15 = sub_1000CE6B8(&qword_10191B3A0);
      return (*(*(v15 - 8) + 16))(a2, v12 + v14, v15);
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < -1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v13 / 2;
  if (v13 / 2 < *(v4 + 16))
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1002BE50C()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_101918918);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_1000CE6B8(&qword_10191E010);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for Text.Measurements.Context();
  v49 = *(v8 - 8);
  __chkstk_darwin(v8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Measurements();
  v48 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_10191B3A0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = *(v1 + 16);
  v18 = *(v17 + 16);
  if (!v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v12;
  v19 = v10;
  v20 = v18 - 1;
  v21 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  (*(v14 + 16))(v16, v17 + ((*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80)) + *(*(v21 - 8) + 72) * v20 + *(v21 + 20), v13);
  Measurement.value.getter();
  v23 = v22;
  (*(v14 + 8))(v16, v13);
  if (v23 < 0.0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  if (*(*(v1 + *(type metadata accessor for MapsElevationChartViewModel(0) + 56)) + OBJC_IVAR____TtC4Maps23MapsElevationChartStyle_contextStyle) == 4)
  {
    v24 = *(v1 + 8);
    v25 = v24 + *v1 * 0.5;
    v45 = v1;
    v26 = sub_1002BEFCC();
    v52 = v4;
    v27 = v7;
    v46 = v26;
    v28 = v26[2];
    v29 = 0.0;
    v30 = v47;
    if (v28)
    {
      ++v48;
      ++v49;
      v31 = v46 + 7;
      v50 = v8;
      v51 = v19;
      do
      {
        v33 = *(v31 - 3);
        v32 = *(v31 - 2);
        v34 = *(v31 - 8);
        v31 += 4;
        sub_1001C8AFC(v33, v32, v34);

        Text.Measurements.init()();
        v35 = type metadata accessor for Text.WritingMode();
        (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
        v36 = type metadata accessor for Text.Suffix();
        (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
        Text.Measurements.Context.init(writingMode:textSuffix:)();
        Text.Measurements.size(of:in:context:)();
        v37 = v53;
        v39 = v38;
        v40 = v33;
        v42 = v50;
        v41 = v51;
        sub_1000F0A40(v40, v32, v34);

        (*v49)(v37, v42);
        (*v48)(v30, v41);
        if (v39 + -2.0 > v29)
        {
          v29 = v39 + -2.0;
        }

        --v28;
      }

      while (v28);
    }

    v43 = v24 + v25 + v29;
    v44 = *(v45 + 24);
    if (v25 + v43 < v44 && -(v23 / (v44 - (v25 + v43)) * v25) > v23 + v43 * (v23 / (v44 - (v25 + v43))))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1002BEA90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BEB1C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = *(type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = a3 + v7;
  v9 = a1(a3 + v7);
  if (v9 == -1)
  {
    return 0;
  }

  if (!v9)
  {
    v10 = 1;
    while (v3 != v10)
    {
      v11 = v10 + 1;
      v12 = a1(v8 + *(v6 + 72) * v10);
      v10 = v11;
      if (v12)
      {
        return 0;
      }
    }
  }

  v14 = *(v6 + 72);
  result = a1(v8 + v14 * (v3 - 1));
  if (result == 1)
  {
    return v3 - 1;
  }

  v28 = v7;
  if (!result)
  {
    v16 = a3 + v7 + v14 * (v3 - 2);
    v17 = v3;
    while (1)
    {
      v13 = v17 - 1;
      if (v17 == 1)
      {
        break;
      }

      if ((v17 - 2) >= v3)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      result = a1(v16);
      v16 -= v14;
      v17 = v13;
      if (result)
      {
        return v13;
      }
    }
  }

  v27 = a3;
  v18 = 0;
  v13 = v3 - 1;
  while (1)
  {
    v19 = v13;
    if (v13 < v18)
    {
      return v13;
    }

    if (v13 == v18)
    {
      if (v18 >= v3)
      {
        goto LABEL_49;
      }

      if (a1(v8 + v18 * v14) == -1)
      {
        return v18 - 1;
      }

      else
      {
        return v18;
      }
    }

    if (__OFSUB__(v13, v18))
    {
      goto LABEL_45;
    }

    v20 = (v13 - v18) / 2;
    v13 = v18 + v20;
    if (__OFADD__(v18, (v19 - v18) / 2))
    {
      goto LABEL_46;
    }

    if (v13 >= v3)
    {
      goto LABEL_47;
    }

    result = a1(v8 + v13 * v14);
    if (result != -1)
    {
      if (!result)
      {
        v21 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_50;
        }

        if (v3 >= v21)
        {
          v22 = 1 - v18 - v20;
          v23 = v27 + v28 + v14 * v21;
          v24 = v18 - v3 + v20 + 1;
          do
          {
            if (!v24)
            {
              break;
            }

            if (v21 < 0)
            {
              goto LABEL_48;
            }

            result = a1(v23);
            --v22;
            v23 += v14;
            ++v24;
          }

          while (!result);
          v25 = v27 + v28 + v14 * (v18 + v20 - 1);
          while (--v21)
          {
            v26 = a1(v25);
            v25 -= v14;
            if (v26)
            {
              return v21;
            }
          }

          return v13;
        }

        goto LABEL_52;
      }

      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_51;
      }

      v13 = v19;
    }
  }
}

uint64_t sub_1002BEE44@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = *a1;
  v10 = *(a2 + *(type metadata accessor for MapsElevationChartViewModel(0) + 76));
  v11 = [v10 stringFromValue:sub_1002BD9D0() unit:v9];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v20[0] = v12;
  v20[1] = v14;
  static Locale.current.getter();
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_1000E5580();
  v16 = StringProtocol.uppercased(with:)();
  v18 = v17;
  sub_100024F64(v8, &unk_10190D5F0);

  *a3 = v16;
  a3[1] = v18;
  return result;
}

void *sub_1002BEFCC()
{
  v1 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v1 - 8);
  v28 = v27 - v2;
  v3 = sub_1002BDB68();
  v33 = v0;
  v4 = sub_1002BD4E4(sub_1002BF9F8, v32, v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_1005116E4(0, v5, 0);
    v6 = v36;
    v7 = sub_1000E5580();
    v27[0] = v4;
    v27[1] = v7;
    v8 = (v4 + 40);
    do
    {
      v9 = *v8;
      v34 = *(v8 - 1);
      v35 = v9;
      swift_bridgeObjectRetain_n();
      v10 = Text.init<A>(_:)();
      v12 = v11;
      v14 = v13;
      static Font.Weight.medium.getter();
      v15 = type metadata accessor for Font.Design();
      v16 = v28;
      (*(*(v15 - 8) + 56))(v28, 1, 1, v15);
      static Font.system(size:weight:design:)();
      sub_100024F64(v16, &qword_1019109C0);
      v17 = Text.font(_:)();
      v29 = v18;
      v30 = v17;
      v20 = v19;
      v31 = v21;

      sub_1000F0A40(v10, v12, v14 & 1);

      v36 = v6;
      v23 = v6[2];
      v22 = v6[3];
      if (v23 >= v22 >> 1)
      {
        sub_1005116E4((v22 > 1), v23 + 1, 1);
        v6 = v36;
      }

      v6[2] = v23 + 1;
      v24 = &v6[4 * v23];
      v25 = v29;
      v24[4] = v30;
      v24[5] = v25;
      *(v24 + 48) = v20 & 1;
      v24[7] = v31;
      v8 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

uint64_t sub_1002BF258(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10056D550(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_1002BF7FC((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_117;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_118;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_119;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v88 = a4;
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
      while (v6 != v16)
      {
        v17 = *v13 >= *(v13 - 2);
        ++v16;
        v13 += 2;
        if ((((v10 < v15) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 16 * v7 - 16;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = (v22 + v18);
            v25 = *(v22 + v11);
            v26 = *(v22 + v11 + 8);
            if (v11 != v18 || v23 >= v24 + 1)
            {
              *v23 = *v24;
            }

            v21 = v22 + v18;
            *v21 = v25;
            *(v21 + 8) = v26;
          }

          ++v20;
          v18 -= 16;
          v11 += 16;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100097874(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_100097874((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_60:
          if (v42)
          {
            goto LABEL_107;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_109;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_114;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v36 < 2)
        {
          goto LABEL_115;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_111;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v36)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_1002BF7FC((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_104;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_105;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_106;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_108;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_110;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7 - 16;
  v29 = v9 - v7;
LABEL_33:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 16);
    if (v32 >= *v31)
    {
LABEL_32:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v27)
    {
      break;
    }

    v33 = *(v31 + 24);
    *(v31 + 16) = *v31;
    *v31 = v32;
    *(v31 + 8) = v33;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_1002BF7FC(double *__dst, double *__src, double *a3, double *a4)
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
  if (v10 < v13)
  {
    v14 = 2 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
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

      v16 = v4;
      v17 = v7 == v4;
      v4 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 2 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 2;
    v5 -= 2;
    v20 = v15;
    do
    {
      v21 = v5 + 2;
      v22 = *(v20 - 2);
      v20 -= 2;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 2;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v23))
  {
    memmove(v6, v4, v23);
  }

  return 1;
}