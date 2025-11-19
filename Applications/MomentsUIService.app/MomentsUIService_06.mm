id MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v35 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for DateComponents();
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType);
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
  if (result)
  {
    v18 = result;
    v19 = type metadata accessor for Calendar();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    v20 = type metadata accessor for TimeZone();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.hour.setter();
    v21 = *(v3 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate);
    v22 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
    swift_beginAccess();
    (*(v5 + 16))(v7, v3 + v22, v4);
    v23 = objc_allocWithZone(HKStatisticsCollectionQuery);
    v24 = v21;
    v25 = v18;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v27.super.isa = DateComponents._bridgeToObjectiveC()().super.isa;
    v34 = v16;
    v28 = v4;
    v29 = v27.super.isa;
    v30 = [v23 initWithQuantityType:v25 quantitySamplePredicate:v24 options:0 anchorDate:isa intervalComponents:v27.super.isa];

    (*(v5 + 8))(v7, v28);
    v31 = swift_allocObject();
    v32 = v35;
    v31[2] = v3;
    v31[3] = v32;
    v31[4] = v38;
    aBlock[4] = partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:);
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_9;
    v33 = _Block_copy(aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(partial apply for closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:));

    [v30 setInitialResultsHandler:v33];
    _Block_release(v33);

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    [static MOSuggestionAssetActivityRingsProvider.healthStore executeQuery:v30];

    return (*(v36 + 8))(v34, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  if (a2)
  {
    v29 = a5;
    v15 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
    swift_beginAccess();
    v16 = a6;
    v17 = *(v11 + 16);
    v17(v13, a4 + v15, v10);
    v28 = a2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = *(v11 + 8);
    v18(v13, v10);
    v19 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate;
    swift_beginAccess();
    v17(v13, a4 + v19, v10);
    a6 = v16;
    v20 = Date._bridgeToObjectiveC()().super.isa;
    v18(v13, v10);
    a5 = v29;
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:);
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_52;
    v22 = _Block_copy(aBlock);

    v24 = isa;
    v23 = v28;
    [v28 enumerateStatisticsFromDate:isa toDate:v20 withBlock:v22];
    _Block_release(v22);
  }

  (*(*a4 + 328))(a5, a6);
}

void closure #1 in closure #1 in MOSuggestionAssetActivityRingsProvider.getStandMinutes(completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 sumQuantity];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v8 minuteUnit];
    [v7 doubleValueForUnit:v9];
    v11 = v10;

    if (v11 > 0.0)
    {
      swift_beginAccess();
      *(a3 + 16) = *(a3 + 16) + 1.0;
    }

    v12 = *(a4 + 16);
    v13 = [v8 countUnit];
    swift_beginAccess();
    v14 = [objc_opt_self() quantityWithUnit:v13 doubleValue:*(a3 + 16)];

    [v12 setAppleStandHours:v14];
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getExerciseMinutes(completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, id *a6)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = [v9 sumQuantity];
  if (!v10)
  {

LABEL_7:
    a4(0);
    return;
  }

  v11 = v10;
  [a6[2] setAppleExerciseTime:?];
  (*(*a6 + 42))(a4, a5);
}

void MOSuggestionAssetActivityRingsProvider.getExerciseMinutes(completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType);
  v12 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier:*a3];
  if (v12)
  {
    v13 = v12;
    v14 = *(v6 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate);
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = v6;
    v16 = objc_allocWithZone(HKStatisticsQuery);
    v19[4] = a5;
    v19[5] = v15;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ();
    v19[3] = a6;
    v17 = _Block_copy(v19);

    v18 = [v16 initWithQuantityType:v13 quantitySamplePredicate:v14 options:0 completionHandler:v17];
    _Block_release(v17);

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    [static MOSuggestionAssetActivityRingsProvider.healthStore executeQuery:v18];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MOSuggestionAssetActivityRingsProvider.getMoveCalories(completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = a2;
    v9 = [v8 sumQuantity];
    if (v9)
    {
      v10 = v9;
      [*(a6 + 16) setActiveEnergyBurned:v9];
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static MOAngelLogger.shared);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "[Assets] Packed rings asset", v14, 2u);
      }

      v15 = *(a6 + 16);
      v20 = v15;
      a4(v15);

      return;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static MOAngelLogger.shared);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "[Assets] Unable to obtain user move calories", v19, 2u);
  }

  a4(0);
}

uint64_t MOSuggestionAssetActivityRingsProvider.deinit()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate, v2);

  return v0;
}

uint64_t MOSuggestionAssetActivityRingsProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsStartDate;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_ringsEndDate, v2);

  return swift_deallocClassInstance();
}

uint64_t MOSuggestionAssetActivityRingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  MOSuggestionAssetActivityRingsProvider.init()();
  return v0;
}

uint64_t MOSuggestionAssetActivityRingsProvider.init()()
{
  *(v0 + 16) = [objc_allocWithZone(HKActivitySummary) init];
  Date.init()();
  Date.init()();
  v1 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_timeRangePredicate;
  *(v0 + v1) = [objc_allocWithZone(NSPredicate) init];
  v2 = OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_activitySummaryPredicate;
  *(v0 + v2) = [objc_allocWithZone(NSPredicate) init];
  *(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_workout) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService38MOSuggestionAssetActivityRingsProvider_idx) = -1;
  return v0;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKActivitySummaryQuery, @guaranteed [HKActivitySummary]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKActivitySummary);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A170()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsCollectionQuery, @guaranteed HKStatisticsCollection?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t type metadata accessor for MOSuggestionAssetActivityRingsProvider()
{
  result = type metadata singleton initialization cache for MOSuggestionAssetActivityRingsProvider;
  if (!type metadata singleton initialization cache for MOSuggestionAssetActivityRingsProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MOSuggestionAssetActivityRingsProvider()
{
  result = type metadata accessor for Date();
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

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8NSNumberC_Tt0g5Tf4g_nTm(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = static _SetStorage.allocate(capacity:)();
      v7 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = &_swiftEmptySetSingleton;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = (v6 + 7);
  v43 = v8;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    while (1)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = NSObject._rawHashValue(seed:)(v6[5]);
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *&v11[8 * (v18 >> 6)];
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        type metadata accessor for UIApplication(0, a4);
        while (1)
        {
          v23 = *(v6[6] + 8 * v18);
          v24 = static NSObject.== infix(_:_:)();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *&v11[8 * (v18 >> 6)];
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v11[8 * v19] = v21 | v20;
        *(v6[6] + 8 * v18) = v15;
        v25 = v6[2];
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        v6[2] = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = v6[5];
      v29 = *(a1 + 32 + 8 * v27);
      v30 = NSObject._rawHashValue(seed:)(v28);
      v31 = -1 << *(v6 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      v34 = *&v11[8 * (v32 >> 6)];
      v35 = 1 << v32;
      if (((1 << v32) & v34) != 0)
      {
        v36 = ~v31;
        type metadata accessor for UIApplication(0, a4);
        while (1)
        {
          v37 = *(v6[6] + 8 * v32);
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {
            break;
          }

          v32 = (v32 + 1) & v36;
          v33 = v32 >> 6;
          v34 = *&v11[8 * (v32 >> 6)];
          v35 = 1 << v32;
          if (((1 << v32) & v34) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v11[8 * v33] = v35 | v34;
        *(v6[6] + 8 * v32) = v29;
        v39 = v6[2];
        v14 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        v6[2] = v40;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10009A7F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, void (*a2)(uint64_t))
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

unsigned __int8 *MOResource.motionActivitySteps.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v54 - v6;
  result = [v0 data];
  if (result)
  {
    v9 = result;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v56[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:0 error:v56];

    if (!v15)
    {
      v37 = v56[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      outlined consume of Data._Representation(v10, v12);

      return 0;
    }

    v16 = v56[0];
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v10, v12);
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
    if (swift_dynamicCast())
    {
      v17 = v55;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v17 + 16))
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        v22 = v21;

        if (v22)
        {
          v23 = *(*(v17 + 56) + 8 * v20);
          swift_unknownObjectRetain();

          v55 = v23;
          if (swift_dynamicCast())
          {
            static CharacterSet.decimalDigits.getter();
            CharacterSet.inverted.getter();
            v24 = *(v2 + 8);
            v24(v7, v1);
            lazy protocol witness table accessor for type String and conformance String();
            v25 = StringProtocol.trimmingCharacters(in:)();
            v27 = v26;
            v24(v5, v1);

            v28 = HIBYTE(v27) & 0xF;
            v29 = v25 & 0xFFFFFFFFFFFFLL;
            if ((v27 & 0x2000000000000000) != 0)
            {
              v30 = HIBYTE(v27) & 0xF;
            }

            else
            {
              v30 = v25 & 0xFFFFFFFFFFFFLL;
            }

            if (v30)
            {
              if ((v27 & 0x1000000000000000) != 0)
              {
                LOBYTE(v55) = 0;
                v33 = specialized _parseInteger<A, B>(ascii:radix:)(v25, v27, 10);
                v52 = v53;
LABEL_74:

                if (v52)
                {
                  return 0;
                }

                else
                {
                  return v33;
                }
              }

              if ((v27 & 0x2000000000000000) != 0)
              {
                v56[0] = v25;
                v56[1] = (v27 & 0xFFFFFFFFFFFFFFLL);
                if (v25 == 43)
                {
                  if (v28)
                  {
                    if (--v28)
                    {
                      v33 = 0;
                      v44 = v56 + 1;
                      while (1)
                      {
                        v45 = *v44 - 48;
                        if (v45 > 9)
                        {
                          break;
                        }

                        v46 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          break;
                        }

                        v33 = v46 + v45;
                        if (__OFADD__(v46, v45))
                        {
                          break;
                        }

                        ++v44;
                        if (!--v28)
                        {
                          goto LABEL_73;
                        }
                      }
                    }

                    goto LABEL_72;
                  }

LABEL_83:
                  __break(1u);
                }

                if (v25 != 45)
                {
                  if (v28)
                  {
                    v33 = 0;
                    v49 = v56;
                    while (1)
                    {
                      v50 = *v49 - 48;
                      if (v50 > 9)
                      {
                        break;
                      }

                      v51 = 10 * v33;
                      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                      {
                        break;
                      }

                      v33 = v51 + v50;
                      if (__OFADD__(v51, v50))
                      {
                        break;
                      }

                      v49 = (v49 + 1);
                      if (!--v28)
                      {
                        goto LABEL_73;
                      }
                    }
                  }

                  goto LABEL_72;
                }

                if (v28)
                {
                  if (--v28)
                  {
                    v33 = 0;
                    v38 = v56 + 1;
                    while (1)
                    {
                      v39 = *v38 - 48;
                      if (v39 > 9)
                      {
                        break;
                      }

                      v40 = 10 * v33;
                      if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                      {
                        break;
                      }

                      v33 = v40 - v39;
                      if (__OFSUB__(v40, v39))
                      {
                        break;
                      }

                      ++v38;
                      if (!--v28)
                      {
                        goto LABEL_73;
                      }
                    }
                  }

                  goto LABEL_72;
                }
              }

              else
              {
                if ((v25 & 0x1000000000000000) != 0)
                {
                  v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v31 = _StringObject.sharedUTF8.getter();
                }

                v32 = *v31;
                if (v32 == 43)
                {
                  if (v29 >= 1)
                  {
                    v28 = v29 - 1;
                    if (v29 != 1)
                    {
                      v33 = 0;
                      if (v31)
                      {
                        v41 = v31 + 1;
                        while (1)
                        {
                          v42 = *v41 - 48;
                          if (v42 > 9)
                          {
                            goto LABEL_72;
                          }

                          v43 = 10 * v33;
                          if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                          {
                            goto LABEL_72;
                          }

                          v33 = v43 + v42;
                          if (__OFADD__(v43, v42))
                          {
                            goto LABEL_72;
                          }

                          ++v41;
                          if (!--v28)
                          {
                            goto LABEL_73;
                          }
                        }
                      }

                      goto LABEL_64;
                    }

                    goto LABEL_72;
                  }

                  goto LABEL_82;
                }

                if (v32 != 45)
                {
                  if (v29)
                  {
                    v33 = 0;
                    if (v31)
                    {
                      while (1)
                      {
                        v47 = *v31 - 48;
                        if (v47 > 9)
                        {
                          goto LABEL_72;
                        }

                        v48 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          goto LABEL_72;
                        }

                        v33 = v48 + v47;
                        if (__OFADD__(v48, v47))
                        {
                          goto LABEL_72;
                        }

                        ++v31;
                        if (!--v29)
                        {
                          goto LABEL_64;
                        }
                      }
                    }

                    goto LABEL_64;
                  }

LABEL_72:
                  v33 = 0;
                  LOBYTE(v28) = 1;
                  goto LABEL_73;
                }

                if (v29 >= 1)
                {
                  v28 = v29 - 1;
                  if (v29 != 1)
                  {
                    v33 = 0;
                    if (v31)
                    {
                      v34 = v31 + 1;
                      while (1)
                      {
                        v35 = *v34 - 48;
                        if (v35 > 9)
                        {
                          goto LABEL_72;
                        }

                        v36 = 10 * v33;
                        if ((v33 * 10) >> 64 != (10 * v33) >> 63)
                        {
                          goto LABEL_72;
                        }

                        v33 = v36 - v35;
                        if (__OFSUB__(v36, v35))
                        {
                          goto LABEL_72;
                        }

                        ++v34;
                        if (!--v28)
                        {
                          goto LABEL_73;
                        }
                      }
                    }

LABEL_64:
                    LOBYTE(v28) = 0;
LABEL_73:
                    LOBYTE(v55) = v28;
                    v52 = v28;
                    goto LABEL_74;
                  }

                  goto LABEL_72;
                }

                __break(1u);
              }

              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            goto LABEL_28;
          }

          return 0;
        }
      }

      else
      {
      }

LABEL_28:
    }

    return 0;
  }

  return result;
}

uint64_t MOResource.motionActivityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 data];
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v49[0] = 0;
  v14 = [v12 JSONObjectWithData:isa options:0 error:v49];

  if (!v14)
  {
    v28 = v49[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v9, v11);

    goto LABEL_13;
  }

  v15 = v49[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v9, v11);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if (swift_dynamicCast())
  {
    v16 = v48;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v16[2].isa)
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
      v21 = v20;

      if (v21)
      {
        v22 = *(v16[7].isa + v19);
        swift_unknownObjectRetain();

        v49[0] = v22;
        type metadata accessor for MOWorkoutMotionActivityAction(0);
        if (swift_dynamicCast())
        {
          v23 = v48;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
          {

LABEL_16:
            static MotionActivity.walk.getter();
LABEL_17:

            v29 = 0;
            goto LABEL_14;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v32)
          {
            goto LABEL_16;
          }

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;
          if (v33 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v35 == v36)
          {

LABEL_22:
            static MotionActivity.runAndWalk.getter();
            goto LABEL_17;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_22;
          }

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;
          if (v38 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
          {

LABEL_27:
            static MotionActivity.run.getter();
            goto LABEL_17;
          }

          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v42)
          {
            goto LABEL_27;
          }

          type metadata accessor for CommonLogger();
          static CommonLogger.processing.getter();
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&_mh_execute_header, v43, v44, "[motionActivityType] unknown MOWorkoutMotionActivityAction", v45, 2u);

            v46 = v23;
          }

          else
          {
            v46 = v43;
            v43 = v23;
          }

          (*(v4 + 8))(v6, v3);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

LABEL_13:
  v29 = 1;
LABEL_14:
  v30 = type metadata accessor for MotionActivity();
  return (*(*(v30 - 8) + 56))(a1, v29, 1, v30);
}

uint64_t MOResource.motionActivityDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  v5 = [v1 data];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30[0] = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:v30];

  if (!v12)
  {
    v26 = v30[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v7, v9);

    goto LABEL_14;
  }

  v13 = v30[0];
  _bridgeAnyObjectToAny(_:)();
  outlined consume of Data._Representation(v7, v9);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v25 = 1;
    goto LABEL_15;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {
    goto LABEL_12;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  v30[0] = *(*(v29 + 56) + 8 * v16);
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v29 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = *(*(v29 + 56) + 8 * v21);
  swift_unknownObjectRetain();

  v30[0] = v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  Date.init(timeIntervalSince1970:)();
  Date.init(timeIntervalSince1970:)();
  DateInterval.init(start:end:)();
  v25 = 0;
LABEL_15:
  v27 = type metadata accessor for DateInterval();
  return (*(*(v27 - 8) + 56))(a1, v25, 1, v27);
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)()
{
  v0 = String.subscript.getter();
  v4 = static String._copying(_:)(v0, v1, v2, v3);

  return v4;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(multiPinMapAsset:)(unint64_t a1)
{
  v151 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v141 = *(v151 - 8);
  v2 = __chkstk_darwin(v151);
  v139 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v144 = &v119 - v5;
  __chkstk_darwin(v4);
  v143 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v119 - v8;
  v150 = type metadata accessor for Date();
  v10 = *(v150 - 8);
  __chkstk_darwin(v150);
  v142 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
  v13 = __chkstk_darwin(v12 - 8);
  v140 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v119 - v15;
  v17 = [a1 assetType];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
LABEL_90:
      if (one-time initialization token for shared != -1)
      {
LABEL_112:
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, static MOAngelLogger.shared);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v91, v92, "[MOSuggestionInterstitialListAssetViewModel.multiPinMapAsset] Mismatched init for asset type", v93, 2u);
      }

      return 0;
    }
  }

  [a1 contentClassType];
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (ObjCClassMetadata == type metadata accessor for MOSuggestionGenericFallBackInfo())
  {
    goto LABEL_90;
  }

  v137 = [a1 assetType];
  v158 = _swiftEmptyArrayStorage;
  v159 = _swiftEmptyArrayStorage;
  v24 = [a1 metadata];
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  v152 = MOSuggestionAssetMetadataKeyMultiPinMapLocations;
  type metadata accessor for MOSuggestionAssetMetadataKey(0);
  lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey();
  v27 = v26;
  AnyHashable.init<A>(_:)();
  if (!*(v25 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(&v154), (v29 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v154);
    goto LABEL_95;
  }

  outlined init with copy of Any(*(v25 + 56) + 32 * v28, &v156);
  outlined destroy of AnyHashable(&v154);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySo28MOSuggestionAssetMetadataKeyaypGGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_95:
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static MOAngelLogger.shared);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "[MOSuggestionInterstitialListAssetViewModel.multiPinMapAsset] Failed to unwrap metadata", v97, 2u);
    }

    return 0;
  }

  v30 = v152;
  v31 = *(v152 + 16);
  if (!v31)
  {

    goto LABEL_95;
  }

  v129 = a1;
  v32 = 0;
  v149 = (v141 + 56);
  v147 = (v152 + 32);
  v148 = (v10 + 56);
  v133 = (v10 + 32);
  v134 = (v10 + 48);
  v131 = (v10 + 8);
  v132 = (v10 + 16);
  v136 = (v141 + 48);
  v145 = v31;
  v124 = v31 - 1;
  v125 = xmmword_1002A48B0;
  v126 = xmmword_1002A4A70;
  v130 = _swiftEmptyArrayStorage;
  v127 = _swiftEmptyArrayStorage;
  v128 = _swiftEmptyArrayStorage;
  v135 = _swiftEmptyArrayStorage;
  v33 = v140;
  v146 = v152;
  do
  {
    a1 = v32;
    p_align = (&stru_100327FE8 + 24);
    while (1)
    {
      if (a1 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_112;
      }

      v35 = *&v147[8 * a1];
      v36 = *v149;
      (*v149)(v16, 1, 1, v151);
      if (!*(v35 + 16))
      {

LABEL_25:
        (*v148)(v9, 1, 1, v150);
LABEL_26:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation4DateVSgMd);
        if (!*(v35 + 16))
        {
          goto LABEL_32;
        }

        goto LABEL_27;
      }

      v37 = MOSuggestionAssetMetadataKeyLocationPreviewVisitStartTime;

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v37);
      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v38, &v154);
      v40 = v150;
      v41 = swift_dynamicCast();
      v42 = *v148;
      (*v148)(v9, v41 ^ 1u, 1, v40);
      v43 = v40;
      p_align = (&stru_100327FE8 + 24);
      if ((*v134)(v9, 1, v43) == 1)
      {
        goto LABEL_26;
      }

      v44 = v142;
      v45 = v150;
      (*v133)(v142, v9, v150);
      v46 = v143;
      (*v132)(v143, v44, v45);
      v42((v46 + *(v151 + 20)), 1, 1, v45);
      outlined init with copy of MOSuggestionSheetAssetDateRange(v46, v144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v135[2] + 1, 1, v135);
      }

      v48 = v135[2];
      v47 = v135[3];
      v33 = v140;
      if (v48 >= v47 >> 1)
      {
        v135 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v135);
      }

      (*v131)(v142, v150);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
      v49 = v135;
      v135[2] = v48 + 1;
      outlined init with take of MOSuggestionSheetAssetDateRange(v144, v49 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v48);
      outlined init with take of MOSuggestionSheetAssetDateRange(v143, v16);
      v36(v16, 0, 1, v151);
      p_align = &stru_100327FE8.align;
      if (!*(v35 + 16))
      {
LABEL_32:
        v156 = 0;
        v157 = 0;
        goto LABEL_33;
      }

LABEL_27:
      v50 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewPlaceName);
      if ((v51 & 1) == 0)
      {
        goto LABEL_32;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v50, &v154);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v157)
      {
        if (!*(v35 + 16))
        {
          goto LABEL_46;
        }

        goto LABEL_40;
      }

LABEL_33:
      v52 = *(v35 + 16);
      if (!v52)
      {
        goto LABEL_38;
      }

      v53 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
      if ((v54 & 1) == 0)
      {
        v52 = 0;
LABEL_38:
        v56 = 0;
        goto LABEL_39;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v53, &v154);
      v55 = swift_dynamicCast();
      v52 = v152;
      v56 = v153;
      if (!v55)
      {
        v52 = 0;
        v56 = 0;
      }

LABEL_39:
      v156 = v52;
      v157 = v56;

      if (!*(v35 + 16))
      {
        goto LABEL_46;
      }

LABEL_40:
      v57 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewVisitMapItem);
      if ((v58 & 1) == 0 || (outlined init with copy of Any(*(v35 + 56) + 32 * v57, &v154), type metadata accessor for MKMapItem(), (swift_dynamicCast() & 1) == 0))
      {
LABEL_46:
        if (*(v35 + 16))
        {
          v64 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewTypeOfPlace);
          if (v65)
          {
            outlined init with copy of Any(*(v35 + 56) + 32 * v64, &v154);
            if ((swift_dynamicCast() & 1) != 0 && v152 == 2)
            {

              v66 = [objc_opt_self() workStyleAttributes];
              if (!v66)
              {
                goto LABEL_117;
              }

              v67 = v66;
              v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v66);

              if (!v63)
              {
                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
                goto LABEL_13;
              }

              goto LABEL_64;
            }
          }
        }

        if (*(v35 + 16))
        {
          v68 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyLocationPreviewCityName);
          if (v69)
          {
            outlined init with copy of Any(*(v35 + 56) + 32 * v68, &v154);

            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_61;
            }

            if (v157)
            {
              if (v156 == v152 && v157 == v153)
              {

                goto LABEL_74;
              }

              v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v72)
              {
LABEL_74:
                if (one-time initialization token for cityStyleAttributes != -1)
                {
                  swift_once();
                }

                if (static MOPOIAnnotationView.cityStyleAttributes)
                {
                  v73 = static MOPOIAnnotationView.cityStyleAttributes;
                  v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v73);

                  if (v63)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_61:
              if (one-time initialization token for genericIconWithColor != -1)
              {
                swift_once();
              }

              v63 = static MOPOIAnnotationView.genericIconWithColor;

LABEL_64:
              v59 = 0;
LABEL_65:
              v70 = v157;
              if (v157)
              {
                break;
              }

              goto LABEL_12;
            }
          }
        }

        goto LABEL_61;
      }

      v59 = v152;
      v60 = [v59 *(p_align + 300)];
      if (v60)
      {

        v61 = [v59 *(p_align + 300)];
        if (!v61)
        {
          goto LABEL_116;
        }

        v62 = v61;
        v63 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v61);

        if (v63)
        {
          goto LABEL_65;
        }
      }

      else
      {
      }

      if (one-time initialization token for genericIconWithColor != -1)
      {
        swift_once();
      }

      v63 = static MOPOIAnnotationView.genericIconWithColor;

      v70 = v157;
      if (v157)
      {
        break;
      }

LABEL_12:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);

LABEL_13:
      ++a1;

      v30 = v146;
      if (v145 == a1)
      {
        goto LABEL_102;
      }
    }

    v71 = v156;
    outlined init with copy of MOSuggestionSheetAssetDateRange?(v16, v33);
    if ((*v136)(v33, 1, v151) == 1)
    {

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
      p_align = (&stru_100327FE8 + 24);
      goto LABEL_13;
    }

    outlined init with take of MOSuggestionSheetAssetDateRange(v33, v139);

    v74 = [v129 identifier];
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v154 = v128;
    v155 = v76;
    v152 = 35;
    v153 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v77 = StringProtocol.components<A>(separatedBy:)();

    if (!v77[2])
    {
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);

      __break(1u);
      return result;
    }

    v78 = v77[4];
    v127 = v77[5];
    v128 = v78;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
    v79 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v80 = swift_allocObject();
    v123 = v80;
    *(v80 + 16) = v125;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v139, v80 + v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v81 = swift_allocObject();
    v122 = v81;
    *(v81 + 16) = v125;
    *(v81 + 32) = v71;
    *(v81 + 40) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v82 = swift_allocObject();
    v121 = v82;
    *(v82 + 16) = v126;
    *(v82 + 32) = v63;
    type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
    v83 = swift_allocObject();
    *(v83 + 32) = 0u;
    *(v83 + 48) = 0u;
    v120 = (v83 + 48);
    *(v83 + 64) = 0;
    *(v83 + 16) = 0u;
    *(v83 + 90) = 1;
    v119 = OBJC_IVAR____TtC16MomentsUIService42MOSuggestionInterstitialListAssetViewModel_uniqueUUID;

    UUID.init()();
    swift_beginAccess();
    *(v83 + 16) = 0;

    swift_beginAccess();
    *(v83 + 24) = 0;
    *(v83 + 32) = 0;

    swift_beginAccess();
    *(v83 + 40) = v123;

    v84 = v120;
    swift_beginAccess();
    *v84 = v122;

    swift_beginAccess();
    *(v83 + 56) = v121;

    *(v83 + 65) = 15;
    v85 = v127;
    *(v83 + 72) = v128;
    *(v83 + 80) = v85;
    *(v83 + 88) = 0;
    *(v83 + 90) = 0;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v128 = *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v127 = v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v130 + 2) + 1, 1, v130);
    }

    v87 = *(v130 + 2);
    v86 = *(v130 + 3);
    if (v87 >= v86 >> 1)
    {
      v130 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v130);
    }

    v88 = v130;
    *(v130 + 2) = v87 + 1;
    v89 = &v88[16 * v87];
    *(v89 + 4) = v71;
    *(v89 + 5) = v70;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v32 = (a1 + 1);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    outlined destroy of MOSuggestionSheetAssetDateRange(v139);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v16, &_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
    v128 = v158;

    v33 = v140;
    v30 = v146;
  }

  while (v124 != a1);
LABEL_102:

  v100 = v129;
  v101 = [v129 content];
  objc_opt_self();
  v102 = swift_dynamicCastObjCClass();
  if (!v102)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v103 = v102;
  v104 = [v100 identifier];
  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v107 = v106;

  v154 = v105;
  v155 = v107;
  v156 = 35;
  v157 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v98 = StringProtocol.components<A>(separatedBy:)();

  if (v98[2])
  {
    v108 = v98[4];
    v109 = v98[5];

    v98 = (*(v138 + 344))(v108, v109, 0, 0, 0, 0, 0, 0, 271);
    if (!(v127 >> 62))
    {
      v110 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_106;
    }
  }

  else
  {
    __break(1u);
  }

  v110 = _CocoaArrayWrapper.endIndex.getter();
LABEL_106:
  v150 = v103;
  v151 = v101;
  if (v110 >= 2)
  {

    v154 = specialized Array._copyToContiguousArray()(v111);
    specialized MutableCollection<>.sort(by:)(&v154);

    v112 = v154;
    swift_beginAccess();
    v98[2] = v112;
  }

  v113 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
  v115 = v114;
  swift_beginAccess();
  v98[3] = v113;
  v98[4] = v115;

  swift_beginAccess();
  v98[6] = v130;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v116 = swift_allocObject();
  *(v116 + 16) = v126;
  type metadata accessor for MOSuggestionSheetImage();
  v117 = swift_allocObject();
  *(v117 + 40) = 0;
  *(v117 + 32) = 0;
  *(v117 + 24) = 0;
  *(v117 + 72) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 88) = 1;
  *(v117 + 96) = 0;
  *(v117 + 104) = 1;
  *(v117 + 16) = v150;
  swift_beginAccess();
  *(v117 + 24) = 0;
  swift_beginAccess();
  *(v117 + 32) = 0;
  swift_beginAccess();
  v118 = *(v117 + 40);
  *(v117 + 40) = 0;
  swift_unknownObjectRetain();

  *(v117 + 48) = 0;
  swift_beginAccess();
  *(v117 + 72) = 0u;
  *(v117 + 56) = 0u;
  *(v117 + 88) = 1;
  swift_beginAccess();
  *(v117 + 96) = 0;
  *(v117 + 104) = 1;
  *(v116 + 32) = v117;

  swift_unknownObjectRelease();
  swift_beginAccess();
  v98[7] = v116;

  swift_beginAccess();
  v98[5] = v135;

  return v98;
}

id static MOPOIAnnotationView.iconWithColor(type:mapItem:)(unsigned __int8 a1, void *a2)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (one-time initialization token for cityStyleAttributes != -1)
      {
        swift_once();
      }

      if (static MOPOIAnnotationView.cityStyleAttributes)
      {
        v7 = static MOPOIAnnotationView.cityStyleAttributes;
        v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(v7);

        if (v6)
        {
          return v6;
        }
      }
    }

    goto LABEL_17;
  }

  if (!a1)
  {
    if (a2)
    {
      v2 = a2;
      v3 = [v2 _styleAttributes];
      if (v3)
      {

        result = [v2 _styleAttributes];
        if (result)
        {
          v5 = result;
          v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(result);

          if (!v6)
          {
            goto LABEL_17;
          }

          return v6;
        }

        goto LABEL_22;
      }
    }

LABEL_17:
    if (one-time initialization token for genericIconWithColor != -1)
    {
      swift_once();
    }

    v6 = static MOPOIAnnotationView.genericIconWithColor;

    return v6;
  }

  result = [objc_opt_self() workStyleAttributes];
  if (result)
  {
    v8 = result;
    v6 = specialized static MOPOIAnnotationView.poiWithStyle(_:)(result);

    return v6;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void one-time initialization function for genericIconWithColor()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 whiteColor];
    v4 = [v2 systemIndigoColor];
    type metadata accessor for MOSuggestionSheetImage();
    v5 = swift_allocObject();
    *(v5 + 40) = 0;
    *(v5 + 32) = 0;
    *(v5 + 24) = 0;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 88) = 1;
    *(v5 + 96) = 0;
    *(v5 + 104) = 1;
    *(v5 + 16) = v1;
    swift_beginAccess();
    *(v5 + 24) = v3;
    swift_beginAccess();
    *(v5 + 32) = v4;
    swift_beginAccess();
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;

    *(v5 + 48) = 0;
    swift_beginAccess();
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 88) = 1;
    swift_beginAccess();
    *(v5 + 96) = 0x4010000000000000;
    *(v5 + 104) = 0;
    static MOPOIAnnotationView.genericIconWithColor = v5;
  }

  else
  {
    __break(1u);
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey()
{
  result = lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey;
  if (!lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey)
  {
    type metadata accessor for MOSuggestionAssetMetadataKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey);
  }

  return result;
}

uint64_t outlined init with copy of MOSuggestionSheetAssetDateRange?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService31MOSuggestionSheetAssetDateRangeVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id specialized static MOPOIAnnotationView.poiWithStyle(_:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [v2 newFillColorForStyleAttributes:a1 forScale:v6];
  v8 = v2;
  if (!v7)
  {
    return 0;
  }

  v9 = [v3 mainScreen];
  [v9 scale];
  v11 = v10;

  result = [v2 imageForStyle:a1 size:3 forScale:0 format:v11];
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(UIColor) initWithCGColor:v7];

    v15 = [objc_opt_self() whiteColor];
    type metadata accessor for MOSuggestionSheetImage();
    v16 = swift_allocObject();
    *(v16 + 40) = 0;
    *(v16 + 32) = 0;
    *(v16 + 24) = 0;
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 88) = 1;
    *(v16 + 96) = 0;
    *(v16 + 104) = 1;
    *(v16 + 16) = v13;
    swift_beginAccess();
    *(v16 + 24) = v14;
    swift_beginAccess();
    *(v16 + 32) = v15;
    swift_beginAccess();
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    swift_beginAccess();
    *(v16 + 72) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 88) = 1;
    swift_beginAccess();
    result = v16;
    *(v16 + 96) = 0xC000000000000000;
    *(v16 + 104) = 0;
  }

  return result;
}

unint64_t type metadata accessor for MKMapItem()
{
  result = lazy cache variable for type metadata for MKMapItem;
  if (!lazy cache variable for type metadata for MKMapItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MKMapItem);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType()
{
  result = lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType;
  if (!lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOPOIAnnotationView.POIType and conformance MOPOIAnnotationView.POIType);
  }

  return result;
}

uint64_t *MODateFormatter.dayNameFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dayNameFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.dayNameFormatter;
}

void *MODateFormatter.monthNameFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for monthNameFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.monthNameFormatter;
}

void *MODateFormatter.monthDayNumberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for monthDayNumberFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.monthDayNumberFormatter;
}

uint64_t *MODateFormatter.fullDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for fullDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.fullDateFormatter;
}

id one-time initialization function for yearDateTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.yearDateTimeFormatter();
  static MODateFormatter.yearDateTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.yearDateTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setFormattingContext:2];
  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  return v4;
}

uint64_t *MODateFormatter.yearDateTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for yearDateTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.yearDateTimeFormatter;
}

uint64_t *MODateFormatter.yearDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for yearDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.yearDateFormatter;
}

id one-time initialization function for fullDateWithTimeFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.fullDateWithTimeFormatter();
  static MODateFormatter.fullDateWithTimeFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.fullDateWithTimeFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setFormattingContext:2];
  v6 = String._bridgeToObjectiveC()();
  [v4 setLocalizedDateFormatFromTemplate:v6];

  return v4;
}

uint64_t *MODateFormatter.fullDateWithTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for fullDateWithTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.fullDateWithTimeFormatter;
}

void *MODateFormatter.shortDateWithTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortDateWithTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortDateWithTimeFormatter;
}

void *MODateFormatter.shortDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortDateFormatter;
}

void one-time initialization function for dayNameFormatter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v9 setLocale:isa];

  [v9 setFormattingContext:2];
  v11 = String._bridgeToObjectiveC()();
  [v9 setLocalizedDateFormatFromTemplate:v11];

  *a4 = v9;
}

uint64_t *MODateFormatter.shortTimeFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for shortTimeFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.shortTimeFormatter;
}

id one-time initialization function for relativeDateFormatter()
{
  result = closure #1 in variable initialization expression of static MODateFormatter.relativeDateFormatter();
  static MODateFormatter.relativeDateFormatter = result;
  return result;
}

id closure #1 in variable initialization expression of static MODateFormatter.relativeDateFormatter()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  static Locale.autoupdatingCurrent.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v3, v0);
  [v4 setLocale:isa];

  [v4 setUnitsStyle:0];
  [v4 setDateTimeStyle:1];
  [v4 setFormattingContext:4];
  return v4;
}

uint64_t *MODateFormatter.relativeDateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for relativeDateFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.relativeDateFormatter;
}

uint64_t *MODateFormatter.durationWithHourMinuteSecondFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for durationWithHourMinuteSecondFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.durationWithHourMinuteSecondFormatter;
}

id one-time initialization function for durationWithHourMinuteSecondFormatter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setUnitsStyle:0];
  [v5 setAllowedUnits:a2];
  result = [v5 setZeroFormattingBehavior:0x10000];
  *a3 = v5;
  return result;
}

uint64_t *MODateFormatter.durationWithMinuteSecondFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for durationWithMinuteSecondFormatter != -1)
  {
    swift_once();
  }

  return &static MODateFormatter.durationWithMinuteSecondFormatter;
}

const char *MOMomentsFeatureFlags.feature.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = "MOAngelEnabled";
    v6 = "MODevEnabled";
    if (a1 != 2)
    {
      v6 = "MOLinkPreviewEnabled";
    }

    if (a1)
    {
      v5 = "MOInternalEnabled";
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = "MOAngelMomentsUIPresentationUpdate";
    v2 = "MOEmbeddedHostingDisabled";
    if (a1 != 7)
    {
      v2 = "MOEmbeddedHosting3PNonModalEnabled";
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = "MOAngelPullToRefreshEnabled";
    if (a1 != 4)
    {
      v3 = "MOAngelMomentsUIEnabled";
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int PresenterServerViewController.SyncOnboardingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOAppProtectionFeatureFlags()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOMomentsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOMomentsFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOAppProtectionFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MOAppProtectionFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t MOSuggestionAssetMediaCoverArtQueryInput.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id MOProtectedAppSource.protectionSubject.getter()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 applicationWithBundleIdentifier:v1];

  return v2;
}

uint64_t static MOProtectedAppSource.allFixedApps.setter(_UNKNOWN **a1)
{
  swift_beginAccess();
  static MOProtectedAppSource.allFixedApps = a1;
}

uint64_t key path setter for static MOProtectedAppSource.allFixedApps : MOProtectedAppSource.Type(_UNKNOWN ***a1)
{
  v1 = *a1;

  swift_beginAccess();
  static MOProtectedAppSource.allFixedApps = v1;
}

uint64_t static MOProtectedAppSource.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int MOProtectedAppSource.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOProtectedAppSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOProtectedAppSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOProtectedAppSource(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t MOProtectedAppSource.init(fixedAppSource:)(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD000000000000012;
    if (a1 != 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000012;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C7070612E6D6F63;
    v2 = 0xD000000000000013;
    if (a1 == 3)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (!a1)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOProtectedFixedAppSource(MomentsUIService::MOProtectedFixedAppSource *a1, MomentsUIService::MOProtectedFixedAppSource *a2)
{
  v2 = *a2;
  v3 = MOProtectedAppSource.init(fixedAppSource:)(*a1);
  v4 = MOProtectedAppSource.init(fixedAppSource:)(v2);
  if (v3.bundleIdentifier._countAndFlagsBits == v4.bundleIdentifier._countAndFlagsBits && v3.bundleIdentifier._object == v4.bundleIdentifier._object)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MOProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOProtectedFixedAppSource()
{
  MOProtectedAppSource.init(fixedAppSource:)(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOProtectedFixedAppSource()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MOProtectedAppSource.init(fixedAppSource:)(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOProtectedFixedAppSource@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MOProtectedFixedAppSource.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MOProtectedFixedAppSource@<X0>(MomentsUIService::MOProtectedAppSource *a1@<X8>)
{
  v4 = MOProtectedAppSource.init(fixedAppSource:)(*v1);
  result = v4.bundleIdentifier._countAndFlagsBits;
  *a1 = v4;
  return result;
}

id one-time initialization function for accessGuard()
{
  result = [objc_opt_self() sharedGuard];
  static MOProtectedAppsManager.accessGuard = result;
  return result;
}

uint64_t *MOProtectedAppsManager.accessGuard.unsafeMutableAddressor()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  return &static MOProtectedAppsManager.accessGuard;
}

id static MOProtectedAppsManager.accessGuard.getter()
{
  if (one-time initialization token for accessGuard != -1)
  {
    swift_once();
  }

  v1 = static MOProtectedAppsManager.accessGuard;

  return v1;
}

uint64_t MOProtectedAppsManager.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate;
  swift_beginAccess();
  return outlined init with copy of MOProtectedAppsManagerDelegate?(v1 + v3, a1);
}

uint64_t MOProtectedAppsManager.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate;
  swift_beginAccess();
  outlined assign with take of MOProtectedAppsManagerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MOProtectedAppsManager.monitoring.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOProtectedAppsManager.monitoring.setter(char a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t MOProtectedAppsManager.monitoringSubjects.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoringSubjects;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id MOProtectedAppsManager.init()()
{
  v1 = &v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoring] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService22MOProtectedAppsManager_monitoringSubjects] = &_swiftEmptySetSingleton;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MOProtectedAppsManager();
  return objc_msgSendSuper2(&v3, "init");
}

id MOProtectedAppsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOProtectedAppsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall MOProtectedAppsManager.subscribeToChanges(apps:)(Swift::OpaquePointer apps)
{
  v2 = v1;
  v23[3] = &type metadata for MOAppProtectionFeatureFlags;
  v23[4] = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (v4)
  {
    (*((swift_isaMask & *v2) + 0xA0))(&_swiftEmptySetSingleton);
    v5 = *(apps._rawValue + 2);
    if (v5)
    {
      v6 = *((swift_isaMask & *v2) + 0xA8);
      v7 = (apps._rawValue + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        v10 = v6(v23);
        specialized Set._Variant.insert(_:)(&v22, v8, v9);

        v10(v23, 0);
        v7 += 2;
        --v5;
      }

      while (v5);
    }

    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static MOAngelLogger.filtering);
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      (*((swift_isaMask & *v12) + 0x98))();
      lazy protocol witness table accessor for type MOProtectedAppSource and conformance MOProtectedAppSource();
      v17 = Set.debugDescription.getter();
      v19 = v18;

      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "[subscribeToChanges] monitoring status for sources:%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    if (((*((swift_isaMask & *v12) + 0x80))() & 1) == 0)
    {
      v21 = [objc_msgSend(objc_opt_self() "subjectMonitorRegistry")];
      swift_unknownObjectRelease();
      (*((swift_isaMask & *v12) + 0x88))(1);
      swift_unknownObjectRelease();
    }
  }
}

id static MOProtectedAppsManager.shouldDropContentFrom(bundleIdentifier:)()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 applicationWithBundleIdentifier:v1];

  v3 = [v2 isHidden];
  return v3;
}

uint64_t static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v23 = &type metadata for MOAppProtectionFeatureFlags;
  v24 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v6 & 1) == 0)
  {
    return a2(1);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = v8;
  v9[5] = a2;
  v9[6] = a3;
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = objc_opt_self();

    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = one-time initialization token for accessGuard;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = static MOProtectedAppsManager.accessGuard;
      v16 = String._bridgeToObjectiveC()();
      v17 = [v21 applicationWithBundleIdentifier:v16];

      v18 = swift_allocObject();
      v18[2] = v8;
      v18[3] = v12;
      v18[4] = v13;
      v18[5] = partial apply for closure #1 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:);
      v18[6] = v9;
      v24 = partial apply for closure #2 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:);
      v25 = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed _HKCurrentWorkoutSnapshot?, @guaranteed Error?) -> ();
      v23 = &block_descriptor_9;
      v19 = _Block_copy(aBlock);

      [v15 getIsChallengeCurrentlyRequiredForSubject:v17 completion:v19];
      _Block_release(v19);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
  }
}

uint64_t closure #1 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4((*(a3 + 16) & 1) == 0);
    }
  }

  return result;
}

uint64_t closure #2 in static MOProtectedAppsManager.requiresChallenge(appSources:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if ([a1 BOOLValue])
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      if (one-time initialization token for filtering != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static MOAngelLogger.filtering);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v29);
      v15 = "protected apps requires authentication, appSource=%s";
    }

    else
    {
      swift_beginAccess();
      *(a3 + 16) = 0;
      if (one-time initialization token for filtering != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static MOAngelLogger.filtering);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, v29);
      v15 = "protected apps requires no authentication, appSource=%s";
    }

    _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);

LABEL_17:

    return a6();
  }

  if (one-time initialization token for filtering != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static MOAngelLogger.filtering);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v28 = a6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v29[0] = v21;
    v29[1] = a4;
    *v20 = 134218242;
    v29[2] = a5;
    lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 4) = StringProtocol.hash.getter();

    *(v20 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = v23;
    }

    else
    {
      v24 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v29);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "protected apps unlock, appSource=%ld, error=%s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);

    a6 = v28;
  }

  else
  {
  }

  swift_beginAccess();
  *(a3 + 16) = 1;
  return a6();
}

uint64_t static MOProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v23 = &type metadata for MOAppProtectionFeatureFlags;
  v24 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v6 & 1) == 0)
  {
    return a2(0);
  }

  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = v8;
  v9[5] = a2;
  v9[6] = a3;
  v10 = *(a1 + 16);
  if (v10)
  {
    v21 = objc_opt_self();

    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = one-time initialization token for accessGuard;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = static MOProtectedAppsManager.accessGuard;
      v16 = String._bridgeToObjectiveC()();
      v17 = [v21 applicationWithBundleIdentifier:v16];

      v18 = swift_allocObject();
      v18[2] = v12;
      v18[3] = v13;
      v18[4] = v8;
      v18[5] = partial apply for closure #1 in static MOProtectedAppsManager.requestAccess(appSources:completion:);
      v18[6] = v9;
      v24 = partial apply for closure #2 in static MOProtectedAppsManager.requestAccess(appSources:completion:);
      v25 = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v23 = &block_descriptor_20;
      v19 = _Block_copy(aBlock);

      [v15 authenticateForSubject:v17 completion:v19];
      _Block_release(v19);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
  }
}

uint64_t closure #1 in static MOProtectedAppsManager.requestAccess(appSources:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v11;
    if (v11 == *(a2 + 16))
    {
      swift_beginAccess();
      return a4(*(a3 + 16));
    }
  }

  return result;
}

uint64_t closure #2 in static MOProtectedAppsManager.requestAccess(appSources:completion:)(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static MOAngelLogger.filtering);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136315394;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v26);
      *(v12 + 12) = 1024;
      *(v12 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "protected apps unlock, appSource=%s, success=%{BOOL}d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v13);
    }
  }

  else
  {
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static MOAngelLogger.filtering);

    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v25 = a6;
      v19 = swift_slowAlloc();
      v26[0] = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, v26);
      *(v19 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = v21;
      }

      else
      {
        v22 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
      }

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v26);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "protected apps unlock, appSource=%s, error=%s", v19, 0x16u);
      swift_arrayDestroy();

      a6 = v25;
    }

    else
    {
    }

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  return a6();
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

unint64_t specialized MOProtectedFixedAppSource.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MOProtectedFixedAppSource.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined init with copy of MOProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MOProtectedAppsManagerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppSource and conformance MOProtectedAppSource()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppSource and conformance MOProtectedAppSource);
  }

  return result;
}

void specialized MOProtectedAppsManager.appProtectionSubjectsChanged(_:for:)(unint64_t a1)
{
  v47 = &type metadata for MOAppProtectionFeatureFlags;
  v48 = lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags();
  v3 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v46);
  if (v3)
  {
    if (a1 >> 62)
    {
LABEL_41:
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (!v4)
      {
        return;
      }
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        return;
      }
    }

    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v34 = a1 + 32;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = a1;
    v39 = v1;
    v36 = a1 & 0xC000000000000001;
    v37 = v4;
    while (1)
    {
      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v35 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v34 + 8 * v5);
      }

      v7 = v8;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_39;
      }

      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        break;
      }

LABEL_6:

      if (v5 == v4)
      {
        return;
      }
    }

    v40 = v7;
    v10 = (*((swift_isaMask & *v1) + 0x98))();
    v11 = 0;
    v13 = v10 + 56;
    v12 = *(v10 + 56);
    v42 = v10;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v12;
    a1 = (v14 + 63) >> 6;
    if ((v15 & v12) == 0)
    {
LABEL_18:
      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v17 >= a1)
        {

          v1 = v39;
          v7 = v40;
          v4 = v37;
          a1 = v38;
          v6 = v36;
          goto LABEL_6;
        }

        v16 = *(v13 + 8 * v17);
        ++v11;
        if (v16)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    while (1)
    {
      v17 = v11;
LABEL_21:
      v18 = (*(v42 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v16)))));
      v20 = *v18;
      v19 = v18[1];

      v21 = [v41 bundleIdentifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v23;

      if (v22 == v20 && v1 == v19)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_29;
      }

      v16 &= v16 - 1;

      v11 = v17;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

LABEL_29:
    if (one-time initialization token for filtering != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static MOAngelLogger.filtering);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46[0] = v30;
      *v29 = 136315138;
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v46);

      *(v29 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "[subscribeToChanges] App status changed, validating conditions, appBundleId=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
    }

    (*((swift_isaMask & *v39) + 0x68))(v46);
    if (v47)
    {
      outlined init with copy of MOProtectedAppsManagerDelegate(v46, v43);
      outlined destroy of MOProtectedAppsManagerDelegate?(v46);
      v32 = v44;
      v33 = v45;
      __swift_project_boxed_opaque_existential_0(v43, v44);
      (*(v33 + 8))(v32, v33);

      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    else
    {

      outlined destroy of MOProtectedAppsManagerDelegate?(v46);
    }
  }
}

uint64_t sub_1000A1764()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_5Tm()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A1858()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource()
{
  result = lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource;
  if (!lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedFixedAppSource and conformance MOProtectedFixedAppSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult;
  if (!lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppChallengeResult and conformance MOProtectedAppChallengeResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult()
{
  result = lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult;
  if (!lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOProtectedAppAuthenticationResult and conformance MOProtectedAppAuthenticationResult);
  }

  return result;
}

uint64_t sub_1000A1A10@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static MOProtectedAppSource.allFixedApps;
}

uint64_t sub_1000A1B24@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000A1BDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_1000A1C38(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0xA0);

  return v2(v3);
}

uint64_t getEnumTagSinglePayload for MOProtectedAppSource(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MOProtectedAppSource(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MOProtectedFixedAppSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOProtectedFixedAppSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of MOProtectedAppsManagerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MomentsUIService30MOProtectedAppsManagerDelegate_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of MOProtectedAppsManagerDelegate(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t key path setter for PresenterServerViewController.currentClient : PresenterServerViewController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of (String, Date?)(a1, &v8 - v5, &_s9MomentsUI6ClientVSgMd);
  return (*((swift_isaMask & **a2) + 0x90))(v6);
}

uint64_t PresenterServerViewController.currentClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  swift_beginAccess();
  return outlined init with copy of (String, Date?)(v1 + v3, a1, &_s9MomentsUI6ClientVSgMd);
}

uint64_t PresenterServerViewController.currentClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  swift_beginAccess();
  outlined assign with take of Client?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Client?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *PresenterServerViewController.currentOptions.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenterServerViewController.currentOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *PresenterServerViewController.pendingNavControllerToPresent.getter()
{
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PresenterServerViewController.pendingNavControllerToPresent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void PresenterServerViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController) = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  v2 = type metadata accessor for Client();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions) = 0;
  *(v0 + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id PresenterServerViewController.init()()
{
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = 0;
  v1 = OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentClient;
  v2 = type metadata accessor for Client();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_currentOptions] = 0;
  *&v0[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_pendingNavControllerToPresent] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PresenterServerViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
  type metadata accessor for MomentsUIManager();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  static MomentsUIManager.dismissWithoutCleanup.setter();
  return v3;
}

uint64_t type metadata accessor for PresenterServerViewController()
{
  result = type metadata singleton initialization cache for PresenterServerViewController;
  if (!type metadata singleton initialization cache for PresenterServerViewController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A277C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void closure #1 in PresenterServerViewController.init()(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v7[4] = partial apply for closure #1 in closure #1 in PresenterServerViewController.init();
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed () -> ();
    v7[3] = &block_descriptor_162;
    v6 = _Block_copy(v7);

    [v3 dismissViewControllerAnimated:a1 & 1 completion:v6];
    _Block_release(v6);
  }
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.init()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController);
    *(result + OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController) = 0;

    (*((swift_isaMask & v5->isa) + 0xC0))(0);
    type metadata accessor for CommonLogger();
    static CommonLogger.viewModel.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "[dismissAndCleanup] set VC as nil", v9, 2u);

      v10 = v5;
    }

    else
    {
      v10 = v7;
      v7 = v5;
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

id PresenterServerViewController.__deallocating_deinit()
{
  type metadata accessor for MomentsUIManager();
  static MomentsUIManager.dismissWithoutCleanup.setter();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenterServerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall PresenterServerViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PresenterServerViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 208) = a1;
  v3 = type metadata accessor for Logger();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 104) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v5, v4);
}

{
  v2 = *v1;
  *(*v1 + 209) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 210) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)()
{
  v43 = v0;
  v1 = objc_opt_self();
  v0[16] = v1;
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    if (v3)
    {
      __break(1u);
      return CloudManager.getDeviceDB()();
    }

    v4 = 0;
  }

  v5 = OnboardingType.needsOnboarding.getter(v4);
  v0[17] = type metadata accessor for CommonLogger();
  static CommonLogger.onboarding.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[12];
  v11 = v0[3];
  v10 = v0[4];
  v41 = v4;
  if (v8)
  {
    v40 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136315138;
    v14 = OnboardingType.statusDescription.getter(v4);
    v39 = v9;
    v16 = v5;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v42);

    *(v12 + 4) = v17;
    v5 = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "[PresenterServerViewController] Onboarding status: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);

    v18 = *(v10 + 8);
    v18(v39, v40);
  }

  else
  {

    v18 = *(v10 + 8);
    v18(v9, v11);
  }

  v0[18] = v18;
  if (v5)
  {
    static CommonLogger.onboarding.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[PresenterServerViewController] Sheet needs to present Onboarding", v21, 2u);
    }

    v22 = v0[11];
    v23 = v0[3];

    v18(v22, v23);
    if (v41)
    {
      type metadata accessor for MomentsUIManager();
      v24 = static MomentsUIManager.shared.getter();
      v0[19] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v25 = swift_task_alloc();
      v0[20] = v25;
      *v25 = v0;
      v25[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

      return CloudManager.getDeviceDB()();
    }

    v33 = v0[2];

    type metadata accessor for MOSettingsOptions();
    static MOSettingsOptions.setDefaultSettings()();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
    objc_allocWithZone(type metadata accessor for SuggestionsOnboardingViewController());
    v34 = v33;
    v35 = SuggestionsOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v36 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v35];

    v32 = v36;
    [v32 setModalInPresentation:1];
    [v32 setModalPresentationStyle:2];
  }

  else
  {

    static CommonLogger.onboarding.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[5];
    v30 = v0[3];
    if (v28)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "[PresenterServerViewController] Sheet doesn't need to present Onboarding", v31, 2u);
    }

    v18(v29, v30);
    v32 = 0;
  }

  v37 = v0[1];

  return v37(v32);
}

{
  if (v0[21])
  {
    v1 = swift_task_alloc();
    v0[22] = v1;
    *v1 = v0;
    v1[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

    return CloudDevicesDB.isEligibleForSyncOnboarding.getter();
  }

  else
  {

    static CommonLogger.onboarding.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[PresenterServerViewController] Unable to determine if device is eligible for Sync Onboarding; cloudManager or deviceDB is nil", v4, 2u);
    }

    v5 = v0[18];
    v6 = v0[6];
    v7 = v0[3];

    v5(v6, v7);
    lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
    swift_allocError();
    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

{
  if (*(v0 + 209))
  {

    static CommonLogger.onboarding.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] Device eligible for Sync Onboarding", v3, 2u);
    }

    v4 = *(v0 + 144);
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v7 = *(v0 + 16);

    v4(v5, v6);
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
    v8 = objc_allocWithZone(type metadata accessor for SuggestionsSyncOnboardingViewController());
    v9 = v7;
    v10 = SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v11 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v10];

    v12 = v11;
    [v12 setModalInPresentation:1];
    [v12 setModalPresentationStyle:2];

    v13 = *(v0 + 8);

    return v13(v12);
  }

  else
  {
    v15 = [*(v0 + 128) currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 == 1 && (static DefaultsManager.Cloud.enableIPadCloudKitWithoutOnboarding.getter() & 1) != 0)
    {
      static CommonLogger.onboarding.getter();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "[PresenterServerViewController] Skipping blocking refresh on iPad (feature flag enabled)", v19, 2u);
      }

      v20 = *(v0 + 144);
      v21 = *(v0 + 80);
      v22 = *(v0 + 24);

      v20(v21, v22);
      v23 = swift_task_alloc();
      *(v0 + 184) = v23;
      *v23 = v0;
      v23[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);
      v24 = 0;
      v25 = 98;
    }

    else
    {
      v26 = swift_task_alloc();
      *(v0 + 192) = v26;
      *v26 = v0;
      v26[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);
      v24 = 1;
      v25 = 104;
    }

    return CloudManager.refresh(force:wait:_:_:)(1, v24, 0xD000000000000043, 0x80000001002B4620, v25);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v3, v2);
}

{

  static CommonLogger.onboarding.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] Device not eligible for Sync Onboarding", v3, 2u);
  }

  v4 = v0[18];
  v5 = v0[9];
  v6 = v0[3];

  v4(v5, v6);
  lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
  swift_allocError();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

{
  v1 = *v0;
  v4 = *v0;

  v2 = swift_task_alloc();
  *(v1 + 200) = v2;
  *v2 = v4;
  v2[1] = PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:);

  return CloudDevicesDB.isEligibleForSyncOnboarding.getter();
}

{
  v1 = *(v0 + 210);

  if (v1)
  {
    static CommonLogger.onboarding.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "[PresenterServerViewController] Device eligible for Sync Onboarding", v4, 2u);
    }

    v5 = *(v0 + 144);
    v6 = *(v0 + 56);
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    v5(v6, v7);
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
    v9 = objc_allocWithZone(type metadata accessor for SuggestionsSyncOnboardingViewController());
    v10 = v8;
    v11 = SuggestionsSyncOnboardingViewController.init(delegate:onboardingOnlyPresentation:)();
    v12 = [objc_allocWithZone(OBNavigationController) initWithRootViewController:v11];

    v13 = v12;
    [v13 setModalInPresentation:1];
    [v13 setModalPresentationStyle:2];

    v14 = *(v0 + 8);

    return v14(v13);
  }

  else
  {
    static CommonLogger.onboarding.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[PresenterServerViewController] Device not eligible for Sync Onboarding", v18, 2u);
    }

    v19 = *(v0 + 144);
    v20 = *(v0 + 64);
    v21 = *(v0 + 24);

    v19(v20, v21);
    lazy protocol witness table accessor for type PresenterServerViewController.SyncOnboardingError and conformance PresenterServerViewController.SyncOnboardingError();
    swift_allocError();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:), v4, v3);
}

uint64_t PresenterServerViewController.didReceivePresentationRequest(with:client:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for Client();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a2, v5);
  type metadata accessor for MainActor();
  v13 = v2;
  v14 = a1;
  v15 = static MainActor.shared.getter();
  v16 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  (*(v6 + 32))(&v17[v16], v8, v5);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v17);
}

uint64_t closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v9, v8);
}

uint64_t closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  UUID.init()();
  *(v0 + 88) = type metadata accessor for MomentsUIManager();
  v4 = static MomentsUIManager.shared.getter();
  *(v0 + 96) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  *(v0 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  *(v0 + 112) = *(v2 + 72);
  v5 = *(v2 + 80);
  *(v0 + 184) = v5;
  v6 = (v5 + 32) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 120) = v7;
  *(v7 + 16) = xmmword_1002A48B0;
  v8 = *(v2 + 16);
  *(v0 + 128) = v8;
  *(v0 + 136) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v7 + v6, v1, v3);
  v9 = swift_task_alloc();
  *(v0 + 144) = v9;
  *v9 = v0;
  v9[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);

  return CloudManager.retainUIActive(_:_:_:)(v7, "didReceivePresentationRequest(with:client:)", 43, 2, 126);
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v2;
  v3[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);
  v4 = v1[4];
  v5 = v1[3];

  return PresenterServerViewController._didReceivePresentationRequest(with:client:)(v5, v4);
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (*(v0 + 184) + 32) & ~*(v0 + 184);
  v5 = static MomentsUIManager.shared.getter();
  *(v0 + 160) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v6 = swift_allocObject();
  *(v0 + 168) = v6;
  *(v6 + 16) = xmmword_1002A48B0;
  v1(v6 + v4, v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:);

  return CloudManager.releaseUIActive(_:_:_:)(v6, "didReceivePresentationRequest(with:client:)", 43, 2, 128);
}

{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t partial apply for closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Client() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return closure #1 in PresenterServerViewController.didReceivePresentationRequest(with:client:)(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for UUID();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Client();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[26] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[27] = v8;
  v3[28] = v7;

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v8, v7);
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)()
{
  v128 = v0;
  v1 = v0;
  v3 = v0[11];
  v2 = v0 + 11;
  v4 = v2[14];
  v123 = v2[3];
  v5 = *(v2 - 1);
  v121 = v2 - 1;
  v7 = *(v2 - 6);
  v6 = *(v2 - 5);
  v8 = *(v3 + 16);
  v2[18] = v8;
  v2[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v4, v7, v5);
  (*(v3 + 56))(v4, 0, 1, v5);
  (*((swift_isaMask & *v6) + 0x90))(v4);
  v2[20] = type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  v8(v123, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v124 = v1[23];
    v119 = v1[16];
    v120 = v1[15];
    v11 = v1[14];
    v12 = v1[11];
    v117 = v1[10];
    v13 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v127[0] = v118;
    *v13 = 136315138;
    v1[2] = Client.sharedServer.getter();
    v1[3] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI12SharedServer_pSgMd);
    v15 = Optional.debugDescription.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v117);
    swift_unknownObjectRelease();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v127);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "[PresenterServerViewController] client %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);

    v20 = *(v119 + 8);
    v21 = v20(v124, v120);
  }

  else
  {
    v22 = v1[23];
    v23 = v1[15];
    v24 = v1[16];
    v25 = v1[14];
    v26 = v1[10];
    v27 = v1[11];

    v18 = *(v27 + 8);
    v18(v25, v26);
    v20 = *(v24 + 8);
    v21 = v20(v22, v23);
  }

  v28 = v1;
  v1[32] = v18;
  v1[33] = v20;
  v29 = v1[24];
  v30 = v1[11];
  v31 = v28[10];
  (*((swift_isaMask & *v28[6]) + 0x88))(v21);
  if ((*(v30 + 48))(v29, 1, v31) == 1)
  {
    v32 = v28 + 17;
    v33 = v28[24];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s9MomentsUI6ClientVSgMd);
    static CommonLogger.views.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    v125 = v20;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "[PresenterServerViewController] failed to update currentClient", v36, 2u);
    }

    v37 = v28 + 15;
LABEL_23:
    v125(*v32, *v37);

    v72 = v28[1];

    return v72();
  }

  v32 = v28 + 13;
  (*(v28[11] + 32))(v28[13], v28[24], v28[10]);
  if ((dispatch thunk of SuggestionSheetPresenterOptions.onboardingOnlyPresentation.getter() & 1) == 0)
  {
    v46 = v28[4];
    static CommonLogger.views.getter();
    v47 = v46;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    v50 = os_log_type_enabled(v48, v49);
    v51 = v28[33];
    v52 = v28[20];
    v53 = v28[15];
    if (v50)
    {
      v54 = v28[4];
      v126 = v28[15];
      v55 = swift_slowAlloc();
      v122 = v52;
      v56 = swift_slowAlloc();
      v127[0] = v56;
      *v55 = 136315138;
      v57 = [v54 debugDescription];
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v127);

      *(v55 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v48, v49, "[PresenterServerViewController] didReceivePresentationRequest with options: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);

      v62 = v126;
      v63 = v122;
    }

    else
    {

      v63 = v52;
      v62 = v53;
    }

    v51(v63, v62);
    v64 = [v28[6] presentedViewController];
    if (v64)
    {
    }

    else
    {
      v73 = [v28[6] presentationController];
      if (v73)
      {
        v74 = v28[29];
        v76 = v28[12];
        v75 = v28[13];
        v77 = v28[10];
        v78 = v28[6];
        v79 = v28[4];

        v74(v76, v75, v77);
        type metadata accessor for MomentsUIManager();
        v80 = static MomentsUIManager.shared.getter();
        dispatch thunk of MomentsUIManager.cloudManager.getter();

        v81 = objc_allocWithZone(type metadata accessor for SuggestionCollectionViewController());
        v82 = v79;
        v83 = SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)();
        v28[35] = v83;
        [v83 setModalInPresentation:1];
        v127[3] = type metadata accessor for PresenterServerViewController();
        v127[4] = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
        v127[0] = v78;
        v84 = v78;
        dispatch thunk of SuggestionCollectionViewController.delegate.setter();
        v85 = *&v84[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController];
        *&v84[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = v83;
        v86 = v83;

        v87 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v86];
        v28[36] = v87;
        v88 = [v87 sheetPresentationController];
        v28[37] = v88;
        if (v88)
        {
          v127[0] = _swiftEmptyArrayStorage;
          v89 = one-time initialization token for full;
          v90 = v88;
          if (v89 != -1)
          {
            swift_once();
          }

          v91 = v28[6];
          v92 = static SuggestionSheetDetents.full;
          v93 = [static SuggestionSheetDetents.full identifier];
          [v90 setSelectedDetentIdentifier:v93];

          [v90 _setShouldScaleDownBehindDescendantSheets:0];
          v94 = [v91 traitCollection];
          v95 = [v94 horizontalSizeClass];

          if (v95 == 1)
          {
            dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
            if (v96 >= 0.2 && v96 <= 0.8)
            {
              v98 = v28[8];
              v97 = v28[9];
              v99 = v28[7];
              UUID.init()();
              UUID.uuidString.getter();
              (*(v98 + 8))(v97, v99);
              v100 = String._bridgeToObjectiveC()();

              dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
              v102 = v101;
              type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
              *(swift_allocObject() + 16) = v102;
              v103 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

              if ((dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter() & 1) == 0)
              {
                v104 = [v103 identifier];
                [v90 setSelectedDetentIdentifier:v104];
              }

              v105 = v103;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              [v90 setPrefersGrabberVisible:1];
              v106 = [v105 identifier];
              [v90 setLargestUndimmedDetentIdentifier:v106];
            }
          }

          [v90 setPrefersEdgeAttachedInCompactHeight:1];
          [v90 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
          [v90 setPrefersPageSizing:0];
          v107 = v92;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v108 = v28[6];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v90 setDetents:isa];

          [v90 setDelegate:v108];
        }

        v110 = v28[6];
        v111 = v28[4];
        v112 = *((swift_isaMask & *v110) + 0xC0);
        v113 = v87;
        v112(v87);
        v114 = *((swift_isaMask & *v110) + 0xA8);
        v115 = v111;
        v114(v79);
        v116 = swift_task_alloc();
        v28[38] = v116;
        *v116 = v28;
        v116[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);
        v44 = 0;
        goto LABEL_12;
      }
    }

    static CommonLogger.views.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v28[33];
    v69 = v28[18];
    v70 = v28[15];
    if (v67)
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "[PresenterServerViewController] Received an update request while a sheet is already presented. Ignoring!", v71, 2u);
    }

    v68(v69, v70);
    v125 = v28[32];
    v37 = v121;
    goto LABEL_23;
  }

  static CommonLogger.views.getter();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "[PresenterServerViewController] Onboarding only presentation", v40, 2u);
  }

  v41 = v28[22];
  v42 = v28[15];

  v20(v41, v42);
  v43 = swift_task_alloc();
  v28[34] = v43;
  *v43 = v28;
  v43[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);
  v44 = 1;
LABEL_12:

  return PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(v44);
}

{
  v76 = v0;
  if (*(v0 + 320) == 1)
  {

    static CommonLogger.views.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    v3 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 264);
    v5 = *(v0 + 168);
    v6 = *(v0 + 120);
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "[PresenterServerViewController] onboarding presented";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v1, v2, v8, v7, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v9 = *(v0 + 32);
  static CommonLogger.views.getter();
  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 264);
  v15 = *(v0 + 160);
  v16 = *(v0 + 120);
  if (v13)
  {
    v17 = *(v0 + 32);
    v74 = *(v0 + 264);
    v18 = swift_slowAlloc();
    v73 = v15;
    v19 = swift_slowAlloc();
    v75[0] = v19;
    *v18 = 136315138;
    v20 = [v17 debugDescription];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v75);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "[PresenterServerViewController] didReceivePresentationRequest with options: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);

    v74(v73, v16);
  }

  else
  {

    v14(v15, v16);
  }

  v25 = [*(v0 + 48) presentedViewController];
  if (v25)
  {

    goto LABEL_9;
  }

  v29 = [*(v0 + 48) presentationController];
  if (!v29)
  {
LABEL_9:

    static CommonLogger.views.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    v26 = os_log_type_enabled(v1, v2);
    v4 = *(v0 + 264);
    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    if (v26)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "[PresenterServerViewController] Received an update request while a sheet is already presented. Ignoring!";
      goto LABEL_11;
    }

LABEL_12:

    v4(v5, v6);
    (*(v0 + 256))(*(v0 + 104), *(v0 + 80));

    v27 = *(v0 + 8);

    return v27();
  }

  v30 = *(v0 + 232);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 48);
  v35 = *(v0 + 32);

  v30(v32, v31, v33);
  type metadata accessor for MomentsUIManager();
  v36 = static MomentsUIManager.shared.getter();
  dispatch thunk of MomentsUIManager.cloudManager.getter();

  v37 = objc_allocWithZone(type metadata accessor for SuggestionCollectionViewController());
  v38 = v35;
  v39 = SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)();
  *(v0 + 280) = v39;
  [v39 setModalInPresentation:1];
  v75[3] = type metadata accessor for PresenterServerViewController();
  v75[4] = lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type PresenterServerViewController and conformance PresenterServerViewController, type metadata accessor for PresenterServerViewController);
  v75[0] = v34;
  v40 = v34;
  dispatch thunk of SuggestionCollectionViewController.delegate.setter();
  v41 = *&v40[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController];
  *&v40[OBJC_IVAR____TtC16MomentsUIService29PresenterServerViewController_presentedSheetController] = v39;
  v42 = v39;

  v43 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v42];
  *(v0 + 288) = v43;
  v44 = [v43 sheetPresentationController];
  *(v0 + 296) = v44;
  if (v44)
  {
    v75[0] = _swiftEmptyArrayStorage;
    v45 = one-time initialization token for full;
    v46 = v44;
    if (v45 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 48);
    v48 = static SuggestionSheetDetents.full;
    v49 = [static SuggestionSheetDetents.full identifier];
    [v46 setSelectedDetentIdentifier:v49];

    [v46 _setShouldScaleDownBehindDescendantSheets:0];
    v50 = [v47 traitCollection];
    v51 = [v50 horizontalSizeClass];

    if (v51 == 1)
    {
      dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
      if (v52 >= 0.2 && v52 <= 0.8)
      {
        v54 = *(v0 + 64);
        v53 = *(v0 + 72);
        v55 = *(v0 + 56);
        UUID.init()();
        UUID.uuidString.getter();
        (*(v54 + 8))(v53, v55);
        v56 = String._bridgeToObjectiveC()();

        dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.getter();
        v58 = v57;
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
        *(swift_allocObject() + 16) = v58;
        v59 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

        if ((dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter() & 1) == 0)
        {
          v60 = [v59 identifier];
          [v46 setSelectedDetentIdentifier:v60];
        }

        v61 = v59;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        [v46 setPrefersGrabberVisible:1];
        v62 = [v61 identifier];
        [v46 setLargestUndimmedDetentIdentifier:v62];
      }
    }

    [v46 setPrefersEdgeAttachedInCompactHeight:1];
    [v46 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    [v46 setPrefersPageSizing:0];
    v63 = v48;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v64 = *(v0 + 48);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v46 setDetents:isa];

    [v46 setDelegate:v64];
  }

  v66 = *(v0 + 48);
  v67 = *(v0 + 32);
  v68 = *((swift_isaMask & *v66) + 0xC0);
  v69 = v43;
  v68(v43);
  v70 = *((swift_isaMask & *v66) + 0xA8);
  v71 = v67;
  v70(v35);
  v72 = swift_task_alloc();
  *(v0 + 304) = v72;
  *v72 = v0;
  v72[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);

  return PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(0);
}

{
  if (*(v0 + 321))
  {

    static CommonLogger.views.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 288);
    v4 = *(v0 + 296);
    v6 = *(v0 + 280);
    v7 = *(v0 + 264);
    v8 = *(v0 + 152);
    v9 = *(v0 + 120);
    if (v3)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "[PresenterServerViewController] queueing nav controller to present post onboarding", v10, 2u);
    }

    v7(v8, v9);
    (*(v0 + 256))(*(v0 + 104), *(v0 + 80));

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 312) = v13;
    *v13 = v0;
    v13[1] = PresenterServerViewController._didReceivePresentationRequest(with:client:);

    return PresenterServerViewController.presentPendingSheetContentViewController()();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v3, v2);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);

  (*(v0 + 256))(*(v0 + 104), *(v0 + 80));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t PresenterServerViewController._didReceivePresentationRequest(with:client:)(char a1)
{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 321) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(PresenterServerViewController._didReceivePresentationRequest(with:client:), v4, v3);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(char a1)
{
  v2[3] = v1;
  v4 = type metadata accessor for Logger();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v2[12] = v5;
  *v5 = v2;
  v5[1] = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);

  return PresenterServerViewController.createOnboardingViewControllerIfNeeded(onboardingOnlyPresentation:)(a1);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);
  }

  else
  {
    v6 = PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:);
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t PresenterServerViewController.presentedOnboarding(onboardingOnlyPresentation:)()
{
  v1 = v0[13];

  if (v1)
  {
    v2 = v0[13];
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[13];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v3;
      *v8 = v6;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, v5, "[SuggestionCollectionViewController] Presenting Onboarding / Error with view controller %@ ", v7, 0xCu);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_sSo8NSObjectCSgMd);
    }

    v10 = v0[9];
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v10, v11);
    [v13 presentViewController:v3 animated:1 completion:0];
    UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, 0);
  }

  else
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[8];
    v18 = v0[4];
    v19 = v0[5];
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[SuggestionCollectionViewController] Onboarding not needed", v20, 2u);
    }

    (*(v19 + 8))(v17, v18);
  }

  v21 = v0[1];

  return v21(v1 != 0);
}

{
  v1 = v0[14];

  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  v2 = swift_dynamicCast();
  if (v2)
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "[SuggestionCollectionViewController] show fatal error", v5, 2u);
    }

    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    v9 = v0[3];

    (*(v8 + 8))(v6, v7);
    v10 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    [v9 presentViewController:v10 animated:1 completion:0];
  }

  else
  {

    type metadata accessor for CommonLogger();
    static CommonLogger.onboarding.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[SuggestionCollectionViewController] unknown error=%@", v13, 0xCu);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_sSo8NSObjectCSgMd);
    }

    else
    {
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  v16 = v0[1];

  return v16(v2);
}

uint64_t PresenterServerViewController.presentPendingSheetContentViewController()()
{
  v1[8] = v0;
  v2 = type metadata accessor for Client();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v5, v4);
}

{
  v1 = (*((swift_isaMask & *v0[8]) + 0xB8))();
  v0[20] = v1;
  if (!v1)
  {

    goto LABEL_27;
  }

  v2 = v1;
  v3 = [v1 viewControllers];
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIViewController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_26:

    goto LABEL_27;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_26;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v5);
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  v0[21] = v6;
  v8 = v0[8];

  v10 = (*((swift_isaMask & *v8) + 0xA0))(v9);
  v0[22] = v10;
  if (!v10)
  {

    goto LABEL_27;
  }

  if ((static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter() & 1) == 0)
  {
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = PresenterServerViewController.presentPendingSheetContentViewController();
    v29 = v0[8];

    return PresenterServerViewController.showFatalErrorPopups(controller:)(v29);
  }

  v11 = v0[12];
  v12 = v0[9];
  v13 = v0[10];
  (*((swift_isaMask & *v0[8]) + 0x88))();
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    v32 = v0[15];
    v31 = v0[16];
    v33 = v0[13];
    v34 = v0[14];
    v36 = v0[11];
    v35 = v0[12];
    v37 = v0[9];
    v38 = v0[10];
    (*(v38 + 16))(v36, v35, v37);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v35, &_s9MomentsUI6ClientVSgMd);
    Client.connectionUUID.getter();
    (*(v38 + 8))(v36, v37);
    (*(v34 + 32))(v31, v32, v33);
    type metadata accessor for MomentsUIManager();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v40 = swift_allocObject();
    v0[24] = v40;
    *(v40 + 16) = xmmword_1002A48B0;
    (*(v34 + 16))(v40 + v39, v31, v33);
    v41 = swift_task_alloc();
    v0[25] = v41;
    *v41 = v0;
    v41[1] = PresenterServerViewController.presentPendingSheetContentViewController();
    v5 = v40;

    return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v5);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v0[12], &_s9MomentsUI6ClientVSgMd);
  v14 = [v0[8] navigationController];
  if (v14)
  {
    v15 = v14;
    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[20];
    v19 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v18;
    v21[5] = v16;
    v0[6] = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
    v0[7] = v21;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed () -> ();
    v0[5] = &block_descriptor_10;
    v22 = _Block_copy(v0 + 2);
    v23 = v17;
    v24 = v18;
    v25 = v16;

    [v15 presentViewController:v24 animated:v19 & 1 completion:v22];
    _Block_release(v22);
  }

  if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
  {
    v26 = v0[22];
    v27 = v0[20];

LABEL_27:

    v44 = v0[1];

    return v44();
  }

  v42 = v0[20];
  v43 = swift_task_alloc();
  v0[26] = v43;
  *v43 = v0;
  v43[1] = PresenterServerViewController.presentPendingSheetContentViewController();

  return PresenterServerViewController.showInfoPopups(controller:)(v42);
}

{
  if (*(v0 + 216) == 1)
  {
    v2 = *(v0 + 168);
    v1 = *(v0 + 176);
    v3 = *(v0 + 160);

LABEL_8:

    v19 = *(v0 + 8);

    return v19();
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*((swift_isaMask & **(v0 + 64)) + 0x88))();
  if ((*(v6 + 48))(v4, 1, v5))
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 96), &_s9MomentsUI6ClientVSgMd);
    v7 = [*(v0 + 64) navigationController];
    if (v7)
    {
      v8 = v7;
      v10 = *(v0 + 168);
      v9 = *(v0 + 176);
      v11 = *(v0 + 160);
      v12 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = v10;
      v14[4] = v11;
      v14[5] = v9;
      *(v0 + 48) = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
      *(v0 + 56) = v14;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
      *(v0 + 40) = &block_descriptor_10;
      v15 = _Block_copy((v0 + 16));
      v16 = v10;
      v17 = v11;
      v18 = v9;

      [v8 presentViewController:v17 animated:v12 & 1 completion:v15];
      _Block_release(v15);
    }

    if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
    {
      v1 = *(v0 + 176);
      v3 = *(v0 + 160);

      goto LABEL_8;
    }

    v32 = *(v0 + 160);
    v33 = swift_task_alloc();
    *(v0 + 208) = v33;
    *v33 = v0;
    v33[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return PresenterServerViewController.showInfoPopups(controller:)(v32);
  }

  else
  {
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    v23 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 88);
    v25 = *(v0 + 96);
    v27 = *(v0 + 72);
    v28 = *(v0 + 80);
    (*(v28 + 16))(v26, v25, v27);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_s9MomentsUI6ClientVSgMd);
    Client.connectionUUID.getter();
    (*(v28 + 8))(v26, v27);
    (*(v24 + 32))(v21, v22, v23);
    type metadata accessor for MomentsUIManager();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    v29 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v30 = swift_allocObject();
    *(v0 + 192) = v30;
    *(v30 + 16) = xmmword_1002A48B0;
    (*(v24 + 16))(v30 + v29, v21, v23);
    v31 = swift_task_alloc();
    *(v0 + 200) = v31;
    *v31 = v0;
    v31[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return static MomentsUIManager.retainUserIsActivelyBrowsingOnUI(_:)(v30);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  (*(*(v0 + 112) + 8))(*(v0 + 128), *(v0 + 104));
  v1 = [*(v0 + 64) navigationController];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v4;
    v8[4] = v5;
    v8[5] = v3;
    *(v0 + 48) = partial apply for closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
    *(v0 + 56) = v8;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed () -> ();
    *(v0 + 40) = &block_descriptor_10;
    v9 = _Block_copy((v0 + 16));
    v10 = v4;
    v11 = v5;
    v12 = v3;

    [v2 presentViewController:v11 animated:v6 & 1 completion:v9];
    _Block_release(v9);
  }

  if (static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter())
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 160);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 160);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = PresenterServerViewController.presentPendingSheetContentViewController();

    return PresenterServerViewController.showInfoPopups(controller:)(v17);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t PresenterServerViewController.presentPendingSheetContentViewController()(char a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);

  return _swift_task_switch(PresenterServerViewController.presentPendingSheetContentViewController(), v4, v3);
}

uint64_t PresenterServerViewController.showFatalErrorPopups(controller:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for CloudDevice();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v7;
  v2[37] = v6;

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v7, v6);
}

{
  v2 = *v1;
  *(*v1 + 320) = a1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v4, v3);
}

uint64_t PresenterServerViewController.showFatalErrorPopups(controller:)()
{
  if ((static DefaultsManager.Cloud.showFatalErrorPopups.getter() & 1) != 0 && (v1 = [objc_opt_self() currentDevice], v2 = objc_msgSend(v1, "userInterfaceIdiom"), v1, v2))
  {
    if (v2 == 1)
    {
      type metadata accessor for MomentsUIManager();
      v3 = static MomentsUIManager.shared.getter();
      v0[38] = dispatch thunk of MomentsUIManager.cloudManager.getter();

      v4 = swift_task_alloc();
      v0[39] = v4;
      *v4 = v0;
      v4[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
    }

    else
    {
      __break(1u);
    }

    return CloudManager.getDeviceDB()();
  }

  else
  {

    v5 = v0[1];

    return v5(0);
  }
}

{
  v154 = v0;
  if (*(v0 + 320))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 328) = v2;
    *(v0 + 336) = v1;

    return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v2, v1);
  }

  v3 = *(v0 + 264);
  v4 = *(v0 + 192);
  v5 = *(v0 + 112);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(*(v0 + 120) + 56);
  v8(*(v0 + 272), 1, 1, v5);
  (*(v7 + 56))(v4, 1, 1, v6);
  v8(v3, 1, 1, v5);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v9, v11, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v13, v14, &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v10, v12, &_s9MomentsUI11CloudDeviceVSgMd);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = *(v0 + 232);
  v18 = *(v0 + 240);
  if (v17)
  {
    v20 = *(v0 + 224);
    v138 = v16;
    v135 = *(v0 + 184);
    v136 = *(v0 + 176);
    v143 = *(v0 + 80);
    v147 = *(v0 + 72);
    v149 = *(v0 + 104);
    v21 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v21 = 136315906;
    *(v0 + 400) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v153);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    outlined init with copy of (String, Date?)(v18, v20, &_s9MomentsUI11CloudDeviceVSgMd);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceVSgMd);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v153);

    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    outlined init with copy of (String, Date?)(v135, v136, &_s10Foundation4DateVSgMd);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v135, &_s10Foundation4DateVSgMd);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v153);

    *(v21 + 24) = v32;
    *(v21 + 32) = 2080;
    outlined init with copy of (String, Date?)(v19, v20, &_s9MomentsUI11CloudDeviceVSgMd);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_s9MomentsUI11CloudDeviceVSgMd);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v153);

    *(v21 + 34) = v36;
    _os_log_impl(&_mh_execute_header, v15, v138, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v21, 0x2Au);
    swift_arrayDestroy();

    v37 = *(v143 + 8);
    v37(v149, v147);
    if (*(v0 + 320))
    {
      goto LABEL_7;
    }

LABEL_10:
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v47, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s10Foundation4DateVSgMd);
    v49 = v46;
    v50 = &_s9MomentsUI11CloudDeviceVSgMd;
LABEL_21:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v49, v50);
    v151 = 0;
LABEL_35:

    v130 = *(v0 + 8);

    return v130(v151);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 104);
  v44 = *(v0 + 72);
  v45 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v19, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v42, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s9MomentsUI11CloudDeviceVSgMd);
  v37 = *(v45 + 8);
  v37(v43, v44);
  if (!*(v0 + 320))
  {
    goto LABEL_10;
  }

LABEL_7:
  v38 = *(v0 + 168);
  v39 = *(v0 + 40);
  v40 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v38, &_s10Foundation4DateVSgMd);
  v41 = *(v40 + 48);
  if (v41(v38, 1, v39) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd);
    goto LABEL_15;
  }

  v51 = *(v0 + 56);
  v52 = *(v0 + 40);
  v53 = *(v0 + 48);
  (*(v53 + 32))(*(v0 + 64), *(v0 + 168), v52);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v55 = v54;
  v56 = *(v53 + 8);
  v56(v51, v52);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v57 < v55)
  {
    v150 = v56;
    v58 = *(v0 + 272);
    v59 = *(v0 + 216);
    v60 = *(v0 + 112);
    v61 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = objc_opt_self();
    v64 = [v63 bundleForClass:ObjCClassFromMetadata];
    v156._countAndFlagsBits = 0xD00000000000001CLL;
    v156._object = 0x80000001002B3D10;
    v65._object = 0x80000001002B3CF0;
    v65._countAndFlagsBits = 0x1000000000000017;
    v66._countAndFlagsBits = 0;
    v66._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v65, 0, v64, v66, v156);

    outlined init with copy of (String, Date?)(v58, v59, &_s9MomentsUI11CloudDeviceVSgMd);
    v67 = (*(v61 + 48))(v59, 1, v60);
    v68 = *(v0 + 216);
    if (v67 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd);
    }

    else
    {
      v112 = *(v0 + 112);
      v113 = *(v0 + 120);
      v114 = CloudDevice.name.getter();
      v116 = v115;
      (*(v113 + 8))(v68, v112);
      if (v116)
      {
        v117 = [v63 bundleForClass:ObjCClassFromMetadata];
        v157._object = 0x80000001002B3E10;
        v118._countAndFlagsBits = 0x10000000000000D5;
        v118._object = 0x80000001002B3E30;
        v119._countAndFlagsBits = 0;
        v119._object = 0xE000000000000000;
        v157._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v118, 0, v117, v119, v157);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1002A48B0;
        *(v120 + 56) = &type metadata for String;
        *(v120 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v120 + 32) = v114;
        *(v120 + 40) = v116;
        static String.localizedStringWithFormat(_:_:)();

LABEL_33:
        v140 = *(v0 + 264);
        v142 = *(v0 + 192);
        v146 = *(v0 + 272);
        v137 = *(v0 + 64);
        v124 = *(v0 + 40);
        v125 = *(v0 + 16);
        v126 = String._bridgeToObjectiveC()();

        v127 = String._bridgeToObjectiveC()();

        v151 = 1;
        v128 = [objc_opt_self() alertControllerWithTitle:v126 message:v127 preferredStyle:1];

        v129 = PresenterServerViewController.okAction.getter();
        [v128 addAction:v129];
        [v128 setPreferredAction:v129];
        [v125 presentViewController:v128 animated:1 completion:0];

        v150(v137, v124);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v140, &_s9MomentsUI11CloudDeviceVSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v142, &_s10Foundation4DateVSgMd);
        v84 = v146;
LABEL_34:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v84, &_s9MomentsUI11CloudDeviceVSgMd);
        goto LABEL_35;
      }
    }

    v121 = [v63 bundleForClass:ObjCClassFromMetadata];
    v158._object = 0x80000001002B3E10;
    v122._countAndFlagsBits = 0x10000000000000D0;
    v122._object = 0x80000001002B3D30;
    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    v158._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v122, 0, v121, v123, v158);

    goto LABEL_33;
  }

  v56(*(v0 + 64), *(v0 + 40));
LABEL_15:
  v69 = *(v0 + 160);
  v70 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v69, &_s10Foundation4DateVSgMd);
  if (v41(v69, 1, v70) != 1)
  {
    v85 = *(v0 + 272);
    v86 = *(v0 + 264);
    v87 = *(v0 + 192);
    v88 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v86, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v87, &_s10Foundation4DateVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v85, &_s9MomentsUI11CloudDeviceVSgMd);
    v49 = v88;
    v50 = &_s10Foundation4DateVSgMd;
    goto LABEL_21;
  }

  v71 = *(v0 + 264);
  v72 = *(v0 + 208);
  v74 = *(v0 + 112);
  v73 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v71, v72, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((*(v73 + 48))(v72, 1, v74) == 1)
  {
    v75 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v75, &_s9MomentsUI11CloudDeviceVSgMd);
    static CommonLogger.onboarding.getter();
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v78, 2u);
    }

    v79 = *(v0 + 264);
    v144 = *(v0 + 192);
    v148 = *(v0 + 272);
    v80 = *(v0 + 96);
    v81 = *(v0 + 72);
    v82 = *(v0 + 16);

    v37(v80, v81);
    v83 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v151 = 1;
    [v82 presentViewController:v83 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v79, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v144, &_s10Foundation4DateVSgMd);
    v84 = v148;
    goto LABEL_34;
  }

  v90 = *(v0 + 128);
  v89 = *(v0 + 136);
  v91 = *(v0 + 112);
  v92 = *(v0 + 120);
  (*(v92 + 32))(v89, *(v0 + 208), v91);
  static CommonLogger.onboarding.getter();
  (*(v92 + 16))(v90, v89, v91);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.error.getter();
  v95 = os_log_type_enabled(v93, v94);
  v97 = *(v0 + 120);
  v96 = *(v0 + 128);
  v152 = *(v0 + 112);
  v98 = *(v0 + 88);
  v99 = *(v0 + 72);
  if (v95)
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v153 = v101;
    *v100 = 136315138;
    v102 = CloudDevice.name.getter();
    v141 = v99;
    v145 = v98;
    if (v103)
    {
      v104 = v102;
    }

    else
    {
      v104 = 0x3E6C696E3CLL;
    }

    if (v103)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0xE500000000000000;
    }

    v139 = v94;
    v108 = *(v97 + 8);
    v106 = v97 + 8;
    v107 = v108;
    v108(v96, v152);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v153);

    *(v100 + 4) = v109;
    _os_log_impl(&_mh_execute_header, v93, v139, "[PresenterServerViewController] Lost Primary, re-noninating %s", v100, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v101);

    v110 = v145;
    v111 = v141;
  }

  else
  {

    v131 = *(v97 + 8);
    v106 = v97 + 8;
    v107 = v131;
    v131(v96, v152);
    v110 = v98;
    v111 = v99;
  }

  v37(v110, v111);
  *(v0 + 376) = v106;
  *(v0 + 384) = v107;
  v132 = swift_task_alloc();
  *(v0 + 392) = v132;
  *v132 = v0;
  v132[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v133 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v133);
}

{
  CloudDevicesDB.primaryDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v58 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v3 + 48);
  *(v0 + 344) = v4;
  *(v0 + 352) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);

    return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v5, v6);
  }

  else
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 192);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);

    (*(v3 + 32))(v7, v1, v2);
    v12 = *(v3 + 56);
    v12(v7, 0, 1, v2);
    (*(v11 + 56))(v9, 1, 1, v10);
    v12(v8, 1, 1, v2);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    type metadata accessor for CommonLogger();
    static CommonLogger.views.getter();
    outlined init with copy of (String, Date?)(v13, v15, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined init with copy of (String, Date?)(v17, v18, &_s10Foundation4DateVSgMd);
    outlined init with copy of (String, Date?)(v14, v16, &_s9MomentsUI11CloudDeviceVSgMd);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 232);
    v22 = *(v0 + 240);
    if (v21)
    {
      v24 = *(v0 + 224);
      v51 = *(v0 + 184);
      v52 = *(v0 + 176);
      v54 = *(v0 + 80);
      v55 = *(v0 + 72);
      v56 = *(v0 + 104);
      v25 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v25 = 136315906;
      *(v0 + 400) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
      v26 = String.init<A>(describing:)();
      v53 = v20;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v57);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      outlined init with copy of (String, Date?)(v22, v24, &_s9MomentsUI11CloudDeviceVSgMd);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v22, &_s9MomentsUI11CloudDeviceVSgMd);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v57);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      outlined init with copy of (String, Date?)(v51, v52, &_s10Foundation4DateVSgMd);
      v33 = String.init<A>(describing:)();
      v35 = v34;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v51, &_s10Foundation4DateVSgMd);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v57);

      *(v25 + 24) = v36;
      *(v25 + 32) = 2080;
      outlined init with copy of (String, Date?)(v23, v24, &_s9MomentsUI11CloudDeviceVSgMd);
      v37 = String.init<A>(describing:)();
      v39 = v38;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s9MomentsUI11CloudDeviceVSgMd);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v57);

      *(v25 + 34) = v40;
      _os_log_impl(&_mh_execute_header, v19, v53, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v25, 0x2Au);
      swift_arrayDestroy();

      (*(v54 + 8))(v56, v55);
    }

    else
    {
      v41 = *(v0 + 184);
      v42 = *(v0 + 104);
      v43 = *(v0 + 72);
      v44 = *(v0 + 80);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v23, &_s9MomentsUI11CloudDeviceVSgMd);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, &_s10Foundation4DateVSgMd);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v22, &_s9MomentsUI11CloudDeviceVSgMd);
      (*(v44 + 8))(v42, v43);
    }

    v45 = *(v0 + 320);
    v46 = *(v0 + 272);
    v47 = *(v0 + 264);
    v48 = *(v0 + 192);

    if (v45)
    {
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v47, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v48, &_s10Foundation4DateVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v46, &_s9MomentsUI11CloudDeviceVSgMd);

    v49 = *(v0 + 8);

    return v49(0);
  }
}

{
  CloudDevicesDB.nominatedDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 112);
  v3 = (*(v0 + 344))(v1, 1, v2);
  v4 = *(v0 + 272);
  v5 = *(v0 + 120);
  if (v3 == 1)
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 40);
    v8 = *(v0 + 48);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
    (*(v5 + 56))(v4, 1, 1, v2);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = PresenterServerViewController.showFatalErrorPopups(controller:);
  }

  else
  {
    (*(v5 + 32))(*(v0 + 144), v1, v2);
    v12 = *(v5 + 56);
    *(v0 + 360) = v12;
    *(v0 + 368) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v4, 1, 1, v2);
    v9 = *(v0 + 328);
    v10 = *(v0 + 336);
    v11 = PresenterServerViewController.showFatalErrorPopups(controller:);
  }

  return _swift_task_switch(v11, v9, v10);
}

{
  CloudDevicesDB.nominationDateForPhone(_:)();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v150 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 264);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);

  (*(v5 + 8))(v3, v4);
  v1(v2, 1, 1, v4);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v6, v8, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v10, v11, &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v7, v9, &_s9MomentsUI11CloudDeviceVSgMd);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 224);
    v133 = *(v0 + 184);
    v132 = *(v0 + 176);
    v135 = *(v0 + 232);
    v140 = *(v0 + 80);
    v143 = *(v0 + 72);
    v144 = *(v0 + 104);
    v16 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v16 = 136315906;
    *(v0 + 400) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v149);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    outlined init with copy of (String, Date?)(v14, v15, &_s9MomentsUI11CloudDeviceVSgMd);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v14, &_s9MomentsUI11CloudDeviceVSgMd);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v149);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    outlined init with copy of (String, Date?)(v133, v132, &_s10Foundation4DateVSgMd);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v133, &_s10Foundation4DateVSgMd);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v149);

    *(v16 + 24) = v27;
    *(v16 + 32) = 2080;
    outlined init with copy of (String, Date?)(v135, v15, &_s9MomentsUI11CloudDeviceVSgMd);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v135, &_s9MomentsUI11CloudDeviceVSgMd);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v149);

    *(v16 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v12, v13, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v16, 0x2Au);
    swift_arrayDestroy();

    v32 = *(v140 + 8);
    v32(v144, v143);
    if (*(v0 + 320))
    {
      goto LABEL_3;
    }

LABEL_6:
    v43 = *(v0 + 272);
    v44 = *(v0 + 264);
    v45 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v44, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v45, &_s10Foundation4DateVSgMd);
    v46 = v43;
    v47 = &_s9MomentsUI11CloudDeviceVSgMd;
LABEL_17:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v46, v47);
    v148 = 0;
LABEL_31:

    v127 = *(v0 + 8);

    return v127(v148);
  }

  v38 = *(v0 + 232);
  v37 = *(v0 + 240);
  v39 = *(v0 + 184);
  v40 = *(v0 + 104);
  v41 = *(v0 + 72);
  v42 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v38, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v39, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v37, &_s9MomentsUI11CloudDeviceVSgMd);
  v32 = *(v42 + 8);
  v32(v40, v41);
  if (!*(v0 + 320))
  {
    goto LABEL_6;
  }

LABEL_3:
  v33 = *(v0 + 168);
  v34 = *(v0 + 40);
  v35 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v33, &_s10Foundation4DateVSgMd);
  v36 = *(v35 + 48);
  if (v36(v33, 1, v34) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd);
    goto LABEL_11;
  }

  v48 = *(v0 + 56);
  v49 = *(v0 + 40);
  v50 = *(v0 + 48);
  (*(v50 + 32))(*(v0 + 64), *(v0 + 168), v49);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v52 = v51;
  v53 = *(v50 + 8);
  v53(v48, v49);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v54 < v52)
  {
    v145 = v53;
    v55 = *(v0 + 272);
    v56 = *(v0 + 216);
    v57 = *(v0 + 112);
    v58 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v60 = objc_opt_self();
    v61 = [v60 bundleForClass:ObjCClassFromMetadata];
    v152._countAndFlagsBits = 0xD00000000000001CLL;
    v152._object = 0x80000001002B3D10;
    v62._object = 0x80000001002B3CF0;
    v62._countAndFlagsBits = 0x1000000000000017;
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v152);

    outlined init with copy of (String, Date?)(v55, v56, &_s9MomentsUI11CloudDeviceVSgMd);
    v64 = (*(v58 + 48))(v56, 1, v57);
    v65 = *(v0 + 216);
    if (v64 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd);
    }

    else
    {
      v109 = *(v0 + 112);
      v110 = *(v0 + 120);
      v111 = CloudDevice.name.getter();
      v113 = v112;
      (*(v110 + 8))(v65, v109);
      if (v113)
      {
        v114 = [v60 bundleForClass:ObjCClassFromMetadata];
        v153._object = 0x80000001002B3E10;
        v115._countAndFlagsBits = 0x10000000000000D5;
        v115._object = 0x80000001002B3E30;
        v116._countAndFlagsBits = 0;
        v116._object = 0xE000000000000000;
        v153._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v115, 0, v114, v116, v153);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1002A48B0;
        *(v117 + 56) = &type metadata for String;
        *(v117 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v117 + 32) = v111;
        *(v117 + 40) = v113;
        static String.localizedStringWithFormat(_:_:)();

LABEL_29:
        v137 = *(v0 + 264);
        v139 = *(v0 + 192);
        v141 = *(v0 + 272);
        v134 = *(v0 + 64);
        v121 = *(v0 + 40);
        v122 = *(v0 + 16);
        v123 = String._bridgeToObjectiveC()();

        v124 = String._bridgeToObjectiveC()();

        v148 = 1;
        v125 = [objc_opt_self() alertControllerWithTitle:v123 message:v124 preferredStyle:1];

        v126 = PresenterServerViewController.okAction.getter();
        [v125 addAction:v126];
        [v125 setPreferredAction:v126];
        [v122 presentViewController:v125 animated:1 completion:0];

        v145(v134, v121);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v137, &_s9MomentsUI11CloudDeviceVSgMd);
        v82 = v139;
LABEL_30:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v82, &_s10Foundation4DateVSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v141, &_s9MomentsUI11CloudDeviceVSgMd);
        goto LABEL_31;
      }
    }

    v118 = [v60 bundleForClass:ObjCClassFromMetadata];
    v154._object = 0x80000001002B3E10;
    v119._countAndFlagsBits = 0x10000000000000D0;
    v119._object = 0x80000001002B3D30;
    v120._countAndFlagsBits = 0;
    v120._object = 0xE000000000000000;
    v154._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v119, 0, v118, v120, v154);

    goto LABEL_29;
  }

  v53(*(v0 + 64), *(v0 + 40));
LABEL_11:
  v66 = *(v0 + 160);
  v67 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v66, &_s10Foundation4DateVSgMd);
  if (v36(v66, 1, v67) != 1)
  {
    v83 = *(v0 + 272);
    v84 = *(v0 + 264);
    v85 = *(v0 + 192);
    v86 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v84, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v85, &_s10Foundation4DateVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v83, &_s9MomentsUI11CloudDeviceVSgMd);
    v46 = v86;
    v47 = &_s10Foundation4DateVSgMd;
    goto LABEL_17;
  }

  v68 = *(v0 + 264);
  v69 = *(v0 + 208);
  v71 = *(v0 + 112);
  v70 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v68, v69, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((*(v70 + 48))(v69, 1, v71) == 1)
  {
    v146 = v32;
    v72 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v72, &_s9MomentsUI11CloudDeviceVSgMd);
    static CommonLogger.onboarding.getter();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&_mh_execute_header, v73, v74, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v75, 2u);
    }

    v76 = *(v0 + 264);
    v141 = *(v0 + 272);
    v77 = *(v0 + 192);
    v78 = *(v0 + 96);
    v79 = *(v0 + 72);
    v80 = *(v0 + 16);

    v146(v78, v79);
    v81 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v148 = 1;
    [v80 presentViewController:v81 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v76, &_s9MomentsUI11CloudDeviceVSgMd);
    v82 = v77;
    goto LABEL_30;
  }

  v88 = *(v0 + 128);
  v87 = *(v0 + 136);
  v89 = *(v0 + 112);
  v90 = *(v0 + 120);
  (*(v90 + 32))(v87, *(v0 + 208), v89);
  static CommonLogger.onboarding.getter();
  (*(v90 + 16))(v88, v87, v89);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.error.getter();
  v93 = os_log_type_enabled(v91, v92);
  v95 = *(v0 + 120);
  v94 = *(v0 + 128);
  v96 = *(v0 + 112);
  v97 = *(v0 + 88);
  v98 = *(v0 + 72);
  if (v93)
  {
    v147 = v32;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v149 = v100;
    *v99 = 136315138;
    v101 = CloudDevice.name.getter();
    v138 = v98;
    v142 = v97;
    if (v102)
    {
      v103 = v101;
    }

    else
    {
      v103 = 0x3E6C696E3CLL;
    }

    if (v102)
    {
      v104 = v102;
    }

    else
    {
      v104 = 0xE500000000000000;
    }

    v136 = v92;
    v107 = *(v95 + 8);
    v105 = v95 + 8;
    v106 = v107;
    v107(v94, v96);
    v108 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v149);

    *(v99 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v91, v136, "[PresenterServerViewController] Lost Primary, re-noninating %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v100);

    v147(v142, v138);
  }

  else
  {

    v129 = *(v95 + 8);
    v105 = v95 + 8;
    v106 = v129;
    v129(v94, v96);
    v32(v97, v98);
  }

  *(v0 + 376) = v105;
  *(v0 + 384) = v106;
  v130 = swift_task_alloc();
  *(v0 + 392) = v130;
  *v130 = v0;
  v130[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v131 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v131);
}

{
  CloudDevicesDB.previousPrimaryDevice.getter();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v1, v2);
}

{
  v145 = v0;

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v1, v3, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined init with copy of (String, Date?)(v5, v6, &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v2, v4, &_s9MomentsUI11CloudDeviceVSgMd);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 224);
    v128 = *(v0 + 184);
    v127 = *(v0 + 176);
    v130 = *(v0 + 232);
    v135 = *(v0 + 80);
    v138 = *(v0 + 72);
    v139 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    *v11 = 136315906;
    *(v0 + 400) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v144);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    outlined init with copy of (String, Date?)(v9, v10, &_s9MomentsUI11CloudDeviceVSgMd);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI11CloudDeviceVSgMd);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v144);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    outlined init with copy of (String, Date?)(v128, v127, &_s10Foundation4DateVSgMd);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v128, &_s10Foundation4DateVSgMd);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v144);

    *(v11 + 24) = v22;
    *(v11 + 32) = 2080;
    outlined init with copy of (String, Date?)(v130, v10, &_s9MomentsUI11CloudDeviceVSgMd);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v130, &_s9MomentsUI11CloudDeviceVSgMd);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v144);

    *(v11 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "[PresenterServerViewController] showFatalPopups,\nhasPrimary: %s,\nprimary: %s,\nactiveNominationSince: %s,\neligibleNominee: %s", v11, 0x2Au);
    swift_arrayDestroy();

    v27 = *(v135 + 8);
    v27(v139, v138);
    if (*(v0 + 320))
    {
      goto LABEL_3;
    }

LABEL_6:
    v38 = *(v0 + 272);
    v39 = *(v0 + 264);
    v40 = *(v0 + 192);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v39, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v40, &_s10Foundation4DateVSgMd);
    v41 = v38;
    v42 = &_s9MomentsUI11CloudDeviceVSgMd;
LABEL_17:
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, v42);
    v143 = 0;
LABEL_31:

    v122 = *(v0 + 8);

    return v122(v143);
  }

  v33 = *(v0 + 232);
  v32 = *(v0 + 240);
  v34 = *(v0 + 184);
  v35 = *(v0 + 104);
  v36 = *(v0 + 72);
  v37 = *(v0 + 80);

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v33, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v34, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_s9MomentsUI11CloudDeviceVSgMd);
  v27 = *(v37 + 8);
  v27(v35, v36);
  if (!*(v0 + 320))
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = *(v0 + 168);
  v29 = *(v0 + 40);
  v30 = *(v0 + 48);
  outlined init with copy of (String, Date?)(*(v0 + 192), v28, &_s10Foundation4DateVSgMd);
  v31 = *(v30 + 48);
  if (v31(v28, 1, v29) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 168), &_s10Foundation4DateVSgMd);
    goto LABEL_11;
  }

  v43 = *(v0 + 56);
  v44 = *(v0 + 40);
  v45 = *(v0 + 48);
  (*(v45 + 32))(*(v0 + 64), *(v0 + 168), v44);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v47 = v46;
  v48 = *(v45 + 8);
  v48(v43, v44);
  static DefaultsManager.Cloud.staleNominationWarningThreshold.getter();
  if (v49 < v47)
  {
    v140 = v48;
    v50 = *(v0 + 272);
    v51 = *(v0 + 216);
    v52 = *(v0 + 112);
    v53 = *(v0 + 120);

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = objc_opt_self();
    v56 = [v55 bundleForClass:ObjCClassFromMetadata];
    v147._countAndFlagsBits = 0xD00000000000001CLL;
    v147._object = 0x80000001002B3D10;
    v57._object = 0x80000001002B3CF0;
    v57._countAndFlagsBits = 0x1000000000000017;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v57, 0, v56, v58, v147);

    outlined init with copy of (String, Date?)(v50, v51, &_s9MomentsUI11CloudDeviceVSgMd);
    v59 = (*(v53 + 48))(v51, 1, v52);
    v60 = *(v0 + 216);
    if (v59 == 1)
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 216), &_s9MomentsUI11CloudDeviceVSgMd);
    }

    else
    {
      v104 = *(v0 + 112);
      v105 = *(v0 + 120);
      v106 = CloudDevice.name.getter();
      v108 = v107;
      (*(v105 + 8))(v60, v104);
      if (v108)
      {
        v109 = [v55 bundleForClass:ObjCClassFromMetadata];
        v148._object = 0x80000001002B3E10;
        v110._countAndFlagsBits = 0x10000000000000D5;
        v110._object = 0x80000001002B3E30;
        v111._countAndFlagsBits = 0;
        v111._object = 0xE000000000000000;
        v148._countAndFlagsBits = 0xD00000000000001ELL;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v148);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1002A48B0;
        *(v112 + 56) = &type metadata for String;
        *(v112 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v112 + 32) = v106;
        *(v112 + 40) = v108;
        static String.localizedStringWithFormat(_:_:)();

LABEL_29:
        v132 = *(v0 + 264);
        v134 = *(v0 + 192);
        v136 = *(v0 + 272);
        v129 = *(v0 + 64);
        v116 = *(v0 + 40);
        v117 = *(v0 + 16);
        v118 = String._bridgeToObjectiveC()();

        v119 = String._bridgeToObjectiveC()();

        v143 = 1;
        v120 = [objc_opt_self() alertControllerWithTitle:v118 message:v119 preferredStyle:1];

        v121 = PresenterServerViewController.okAction.getter();
        [v120 addAction:v121];
        [v120 setPreferredAction:v121];
        [v117 presentViewController:v120 animated:1 completion:0];

        v140(v129, v116);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v132, &_s9MomentsUI11CloudDeviceVSgMd);
        v77 = v134;
LABEL_30:
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v77, &_s10Foundation4DateVSgMd);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v136, &_s9MomentsUI11CloudDeviceVSgMd);
        goto LABEL_31;
      }
    }

    v113 = [v55 bundleForClass:ObjCClassFromMetadata];
    v149._object = 0x80000001002B3E10;
    v114._countAndFlagsBits = 0x10000000000000D0;
    v114._object = 0x80000001002B3D30;
    v115._countAndFlagsBits = 0;
    v115._object = 0xE000000000000000;
    v149._countAndFlagsBits = 0xD00000000000001ELL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v113, v115, v149);

    goto LABEL_29;
  }

  v48(*(v0 + 64), *(v0 + 40));
LABEL_11:
  v61 = *(v0 + 160);
  v62 = *(v0 + 40);
  outlined init with copy of (String, Date?)(*(v0 + 192), v61, &_s10Foundation4DateVSgMd);
  if (v31(v61, 1, v62) != 1)
  {
    v78 = *(v0 + 272);
    v79 = *(v0 + 264);
    v80 = *(v0 + 192);
    v81 = *(v0 + 160);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v79, &_s9MomentsUI11CloudDeviceVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v80, &_s10Foundation4DateVSgMd);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v78, &_s9MomentsUI11CloudDeviceVSgMd);
    v41 = v81;
    v42 = &_s10Foundation4DateVSgMd;
    goto LABEL_17;
  }

  v63 = *(v0 + 264);
  v64 = *(v0 + 208);
  v66 = *(v0 + 112);
  v65 = *(v0 + 120);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 160), &_s10Foundation4DateVSgMd);
  outlined init with copy of (String, Date?)(v63, v64, &_s9MomentsUI11CloudDeviceVSgMd);
  if ((*(v65 + 48))(v64, 1, v66) == 1)
  {
    v141 = v27;
    v67 = *(v0 + 208);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v67, &_s9MomentsUI11CloudDeviceVSgMd);
    static CommonLogger.onboarding.getter();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "[PresenterServerViewController] Lost Primary, no automatic recovery, inform user", v70, 2u);
    }

    v71 = *(v0 + 264);
    v136 = *(v0 + 272);
    v72 = *(v0 + 192);
    v73 = *(v0 + 96);
    v74 = *(v0 + 72);
    v75 = *(v0 + 16);

    v141(v73, v74);
    v76 = PresenterServerViewController.noPrimaryPhoneAlert.getter();
    v143 = 1;
    [v75 presentViewController:v76 animated:1 completion:0];

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v71, &_s9MomentsUI11CloudDeviceVSgMd);
    v77 = v72;
    goto LABEL_30;
  }

  v83 = *(v0 + 128);
  v82 = *(v0 + 136);
  v84 = *(v0 + 112);
  v85 = *(v0 + 120);
  (*(v85 + 32))(v82, *(v0 + 208), v84);
  static CommonLogger.onboarding.getter();
  (*(v85 + 16))(v83, v82, v84);
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  v88 = os_log_type_enabled(v86, v87);
  v90 = *(v0 + 120);
  v89 = *(v0 + 128);
  v91 = *(v0 + 112);
  v92 = *(v0 + 88);
  v93 = *(v0 + 72);
  if (v88)
  {
    v142 = v27;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v144 = v95;
    *v94 = 136315138;
    v96 = CloudDevice.name.getter();
    v133 = v93;
    v137 = v92;
    if (v97)
    {
      v98 = v96;
    }

    else
    {
      v98 = 0x3E6C696E3CLL;
    }

    if (v97)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0xE500000000000000;
    }

    v131 = v87;
    v102 = *(v90 + 8);
    v100 = v90 + 8;
    v101 = v102;
    v102(v89, v91);
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v144);

    *(v94 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v86, v131, "[PresenterServerViewController] Lost Primary, re-noninating %s", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v95);

    v142(v137, v133);
  }

  else
  {

    v124 = *(v90 + 8);
    v100 = v90 + 8;
    v101 = v124;
    v124(v89, v91);
    v27(v92, v93);
  }

  *(v0 + 376) = v100;
  *(v0 + 384) = v101;
  v125 = swift_task_alloc();
  *(v0 + 392) = v125;
  *v125 = v0;
  v125[1] = PresenterServerViewController.showFatalErrorPopups(controller:);
  v126 = *(v0 + 136);

  return CloudDevicesDB.nominateDevice(_:)(v126);
}

{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(PresenterServerViewController.showFatalErrorPopups(controller:), v3, v2);
}

{
  v1 = v0[48];
  v2 = v0[34];
  v3 = v0[33];
  v4 = v0[24];
  v5 = v0[17];
  v6 = v0[14];

  v1(v5, v6);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3, &_s9MomentsUI11CloudDeviceVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v4, &_s10Foundation4DateVSgMd);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v2, &_s9MomentsUI11CloudDeviceVSgMd);

  v7 = v0[1];

  return v7(0);
}

void closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI6ClientVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = type metadata accessor for Client();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v37[1] = a4;
    v18 = [a2 sheetPresentationController];
    if (v18)
    {
      v19 = v18;
      v38 = v10;
      v20 = String._bridgeToObjectiveC()();
      v21 = [v19 valueForKey:v20];

      if (v21)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v40 = 0u;
        v41 = 0u;
      }

      v42 = v40;
      v43 = v41;
      v10 = v38;
      if (*(&v41 + 1))
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for UIView);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_18;
        }

        v22 = v40;
        v23 = [a2 sheetPresentationController];
        if (v23)
        {
          v24 = v23;
          v25 = v22;
          v26 = String._bridgeToObjectiveC()();
          v27 = [v24 valueForKey:v26];

          if (v27)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v40 = 0u;
            v41 = 0u;
          }

          v42 = v40;
          v43 = v41;
          v28 = v25;
          if (*(&v41 + 1))
          {
            if (swift_dynamicCast())
            {
              v29 = v40;
              v30 = [v25 layer];
              [v30 setHitTestsAsOpaque:0];

              v28 = [v29 layer];
              [v28 setHitTestsAsOpaque:0];
            }

LABEL_18:
            v10 = v38;
            v31 = static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter();
            if ((v31 & 1) == 0)
            {
LABEL_24:
              (*((swift_isaMask & *v17) + 0x88))(v31);
              if ((*(v10 + 48))(v8, 1, v9) == 1)
              {

                outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v8, &_s9MomentsUI6ClientVSgMd);
              }

              else
              {
                (*(v10 + 32))(v12, v8, v9);
                if (Client.sharedServer.getter())
                {
                  dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.getter();
                  swift_getObjectType();
                  dispatch thunk of SharedServer.sendSuggestionSheetStateUpdate(to:for:)();

                  swift_unknownObjectRelease();
                  (*(v10 + 8))(v12, v9);
                }

                else
                {
                  (*(v10 + 8))(v12, v9);
                }
              }

              return;
            }

LABEL_23:
            v32 = type metadata accessor for TaskPriority();
            (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
            v33 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for MainActor();

            v34 = v39;
            v35 = static MainActor.shared.getter();
            v36 = swift_allocObject();
            v36[2] = v35;
            v36[3] = &protocol witness table for MainActor;
            v36[4] = v33;
            v36[5] = v34;

            _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v36);

            goto LABEL_24;
          }
        }

        else
        {

          v42 = 0u;
          v43 = 0u;
        }

        v10 = v38;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(&v42, &_sypSgMd);
    v31 = static DefaultsManager.Cloud.showFatalErrorPopupsOverSheet.getter();
    if ((v31 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for UUID();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v8;
  v5[12] = v7;

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v8, v7);
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 64);
    v2 = *(v0 + 72);
    v4 = *(v0 + 56);
    UUID.init()();
    *(v0 + 112) = type metadata accessor for MomentsUIManager();
    v5 = static MomentsUIManager.shared.getter();
    *(v0 + 120) = dispatch thunk of MomentsUIManager.cloudManager.getter();

    *(v0 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
    *(v0 + 136) = *(v3 + 72);
    v6 = *(v3 + 80);
    *(v0 + 216) = v6;
    v7 = (v6 + 32) & ~v6;
    v8 = swift_allocObject();
    *(v0 + 144) = v8;
    *(v8 + 16) = xmmword_1002A48B0;
    v9 = *(v3 + 16);
    *(v0 + 152) = v9;
    *(v0 + 160) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v8 + v7, v2, v4);
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();

    return CloudManager.retainUIActive(_:_:_:)(v8, "presentPendingSheetContentViewController()", 42, 2, 264);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v2;
  v3[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
  v4 = *(v1 + 48);

  return PresenterServerViewController.showFatalErrorPopups(controller:)(v4);
}

{
  if (*(v0 + 220))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = (*(v0 + 216) + 32) & ~*(v0 + 216);
    v5 = static MomentsUIManager.shared.getter();
    *(v0 + 192) = dispatch thunk of MomentsUIManager.cloudManager.getter();

    v6 = swift_allocObject();
    *(v0 + 200) = v6;
    *(v6 + 16) = xmmword_1002A48B0;
    v1(v6 + v4, v2, v3);
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();

    return CloudManager.releaseUIActive(_:_:_:)(v6, "presentPendingSheetContentViewController()", 42, 2, 268);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();
    v9 = *(v0 + 48);

    return PresenterServerViewController.showInfoPopups(controller:)(v9);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = (*(v0 + 216) + 32) & ~*(v0 + 216);
  v5 = static MomentsUIManager.shared.getter();
  *(v0 + 192) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v6 = swift_allocObject();
  *(v0 + 200) = v6;
  *(v6 + 16) = xmmword_1002A48B0;
  v1(v6 + v4, v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController();

  return CloudManager.releaseUIActive(_:_:_:)(v6, "presentPendingSheetContentViewController()", 42, 2, 268);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v3, v2);
}

{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController()(char a1)
{
  v2 = *v1;
  *(*v1 + 220) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return _swift_task_switch(closure #1 in closure #1 in PresenterServerViewController.presentPendingSheetContentViewController(), v4, v3);
}

uint64_t PresenterServerViewController.showInfoPopups(controller:)(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = swift_getObjectType();
  v3 = type metadata accessor for Date();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for CloudDevice();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for CloudDevice.Capability();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11CloudDeviceVSgMd);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[44] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[45] = v8;
  v2[46] = v7;

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 392) = a1;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v4, v3);
}

uint64_t PresenterServerViewController.showInfoPopups(controller:)()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    if (v2)
    {
      __break(1u);
      return CloudManager.getDeviceDB()();
    }

    v3 = 0;
  }

  *(v0 + 437) = v3;
  type metadata accessor for MomentsUIManager();
  v4 = static MomentsUIManager.shared.getter();
  *(v0 + 376) = dispatch thunk of MomentsUIManager.cloudManager.getter();

  v5 = swift_task_alloc();
  *(v0 + 384) = v5;
  *v5 = v0;
  v5[1] = PresenterServerViewController.showInfoPopups(controller:);

  return CloudManager.getDeviceDB()();
}

{
  v57 = v0;
  if (*(v0 + 392))
  {
    type metadata accessor for CloudDevicesDB();
    lazy protocol witness table accessor for type PresenterServerViewController and conformance PresenterServerViewController(&lazy protocol witness table cache variable for type CloudDevicesDB and conformance CloudDevicesDB, &type metadata accessor for CloudDevicesDB);

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 400) = v2;
    *(v0 + 408) = v1;

    return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v2, v1);
  }

  else
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);

    (*(v5 + 56))(v3, 1, 1, v4);
    v6 = *(v0 + 344);
    v7 = *(v0 + 320);
    type metadata accessor for CommonLogger();
    static CommonLogger.views.getter();
    outlined init with copy of (String, Date?)(v6, v7, &_s10Foundation4DateVSgMd);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 320);
    if (v10)
    {
      v52 = *(v0 + 312);
      v53 = *(v0 + 208);
      v54 = *(v0 + 200);
      v55 = *(v0 + 216);
      v12 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v12 = 136316418;
      *(v0 + 432) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v56);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      *(v0 + 433) = 2;
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v56);

      *(v12 + 14) = v18;
      *(v12 + 22) = 2080;
      *(v0 + 434) = 2;
      v19 = String.init<A>(describing:)();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v56);

      *(v12 + 24) = v21;
      *(v12 + 32) = 2080;
      *(v0 + 435) = 2;
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v56);

      *(v12 + 34) = v24;
      *(v12 + 42) = 2080;
      *(v0 + 436) = 2;
      v25 = String.init<A>(describing:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v56);

      *(v12 + 44) = v27;
      *(v12 + 52) = 2080;
      outlined init with copy of (String, Date?)(v11, v52, &_s10Foundation4DateVSgMd);
      v28 = String.init<A>(describing:)();
      v30 = v29;
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4DateVSgMd);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v56);

      *(v12 + 54) = v31;
      _os_log_impl(&_mh_execute_header, v8, v9, "[PresenterServerViewController] showInfoPopups,\nhasPrimary: %s,\nlocalLowDiskSpace: %s,\nprimaryLowDiskSpace: %s,\nprimaryLowCloudSpace: %s,\ndebugStalePrimary: %s,\nlastPrimaryCheckin: %s", v12, 0x3Eu);
      swift_arrayDestroy();

      (*(v53 + 8))(v55, v54);
    }

    else
    {
      v33 = *(v0 + 208);
      v32 = *(v0 + 216);
      v34 = *(v0 + 200);

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v11, &_s10Foundation4DateVSgMd);
      (*(v33 + 8))(v32, v34);
    }

    if (*(v0 + 437) == 1)
    {
      v35 = *(v0 + 304);
      v36 = *(v0 + 144);
      v37 = *(v0 + 152);
      outlined init with copy of (String, Date?)(*(v0 + 344), v35, &_s10Foundation4DateVSgMd);
      v38 = (*(v37 + 48))(v35, 1, v36);
      v39 = *(v0 + 392);
      if (v38 == 1)
      {
        v40 = *(v0 + 304);
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);

        v41 = v40;
      }

      else
      {
        v42 = *(v0 + 152);
        (*(v42 + 32))(*(v0 + 168), *(v0 + 304), *(v0 + 144));
        v43 = (v42 + 8);
        if (v39)
        {
          v44 = *(v0 + 344);
          v45 = *(v0 + 168);
          v46 = *(v0 + 144);

          (*v43)(v45, v46);
          v41 = v44;
        }

        else
        {
          v47 = *(v0 + 344);
          v48 = *(v0 + 168);
          v49 = *(v0 + 144);

          (*v43)(v48, v49);
          v41 = v47;
        }
      }

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v41, &_s10Foundation4DateVSgMd);
    }

    else
    {
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);
    }

    v50 = *(v0 + 8);

    return v50();
  }
}

{
  CloudDevicesDB.currentDevice.getter();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v1, v2);
}

{
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v3 + 48);
  *(v0 + 416) = v4;
  *(v0 + 424) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
    v5 = 2;
  }

  else
  {
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    (*(v7 + 104))(v6, enum case for CloudDevice.Capability.lowLocalStorage(_:), v8);
    v9 = CloudDevice.hasCapability(_:)();
    (*(v7 + 8))(v6, v8);
    (*(v3 + 8))(v1, v2);
    v5 = v9 & 1;
  }

  *(v0 + 438) = v5;
  v10 = *(v0 + 400);
  v11 = *(v0 + 408);

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v10, v11);
}

{
  CloudDevicesDB.primaryDevice.getter();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v1, v2);
}

{
  v186 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  if ((*(v0 + 416))(v1, 1, v2) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v1, &_s9MomentsUI11CloudDeviceVSgMd);
    v3 = *(v0 + 400);
    v4 = *(v0 + 408);
    v5 = PresenterServerViewController.showInfoPopups(controller:);

    return _swift_task_switch(v5, v3, v4);
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);

  (*(v10 + 32))(v8, v1, v2);
  v11 = *(v7 + 104);
  v11(v6, enum case for CloudDevice.Capability.lowLocalStorage(_:), v9);
  v12 = CloudDevice.hasCapability(_:)();
  v13 = *(v7 + 8);
  v13(v6, v9);
  v11(v6, enum case for CloudDevice.Capability.lowCloudStorage(_:), v9);
  v14 = CloudDevice.hasCapability(_:)();
  v13(v6, v9);
  v180 = v14 & 1;
  v11(v6, enum case for CloudDevice.Capability.debugStale(_:), v9);
  LOBYTE(v8) = CloudDevice.hasCapability(_:)();
  v13(v6, v9);
  if (v8)
  {
    v15 = *(v0 + 328);
    v16 = *(v0 + 144);
    v17 = *(v0 + 152);
    static DefaultsManager.Cloud.stalePrimaryWarningThreshold.getter();
    CloudDevice.userModificationDate.getter();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v18 = *(v0 + 328);
      (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v18, &_s10Foundation4DateVSgMd);
      v19 = 1;
    }

    else
    {
      v24 = *(v0 + 328);
      v26 = *(v0 + 232);
      v25 = *(v0 + 240);
      v27 = *(v0 + 224);
      v28 = *(v0 + 144);
      v29 = *(v0 + 152);
      Date.addingTimeInterval(_:)();

      (*(v26 + 8))(v25, v27);
      (*(v29 + 8))(v24, v28);
      v19 = 0;
    }

    v31 = *(v0 + 336);
    v30 = *(v0 + 344);
    v23 = 1;
    (*(*(v0 + 152) + 56))(v31, v19, 1, *(v0 + 144));
    outlined init with take of Date?(v31, v30, &_s10Foundation4DateVSgMd);
  }

  else
  {
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    CloudDevice.userModificationDate.getter();

    (*(v21 + 8))(v20, v22);
    v23 = 0;
  }

  v32 = *(v0 + 438);
  v33 = *(v0 + 344);
  v34 = *(v0 + 320);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v33, v34, &_s10Foundation4DateVSgMd);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 320);
  if (v37)
  {
    v169 = *(v0 + 312);
    v173 = *(v0 + 208);
    v174 = *(v0 + 200);
    v175 = *(v0 + 216);
    v39 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    *v39 = 136316418;
    *(v0 + 432) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v40 = String.init<A>(describing:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v184);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2080;
    *(v0 + 433) = v32;
    v43 = String.init<A>(describing:)();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v184);

    *(v39 + 14) = v45;
    *(v39 + 22) = 2080;
    *(v0 + 434) = v12 & 1;
    v46 = String.init<A>(describing:)();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v184);

    *(v39 + 24) = v48;
    *(v39 + 32) = 2080;
    *(v0 + 435) = v180;
    v49 = String.init<A>(describing:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v184);

    *(v39 + 34) = v51;
    *(v39 + 42) = 2080;
    *(v0 + 436) = v23;
    v52 = String.init<A>(describing:)();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v184);

    *(v39 + 44) = v54;
    *(v39 + 52) = 2080;
    outlined init with copy of (String, Date?)(v38, v169, &_s10Foundation4DateVSgMd);
    v55 = String.init<A>(describing:)();
    v57 = v56;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v38, &_s10Foundation4DateVSgMd);
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v184);

    *(v39 + 54) = v58;
    _os_log_impl(&_mh_execute_header, v35, v36, "[PresenterServerViewController] showInfoPopups,\nhasPrimary: %s,\nlocalLowDiskSpace: %s,\nprimaryLowDiskSpace: %s,\nprimaryLowCloudSpace: %s,\ndebugStalePrimary: %s,\nlastPrimaryCheckin: %s", v39, 0x3Eu);
    swift_arrayDestroy();

    (*(v173 + 8))(v175, v174);
    if (v32 == 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v61 = *(v0 + 200);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v38, &_s10Foundation4DateVSgMd);
    (*(v60 + 8))(v59, v61);
    if (v32 == 2)
    {
      goto LABEL_27;
    }
  }

  if (v32)
  {
    v62 = *(v0 + 184);
    v63 = *(v0 + 144);
    v64 = *(v0 + 152);
    static DefaultsManager.Cloud.lastLowSpaceAlertDate.getter();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v66 = v65;
    v67 = *(v64 + 8);
    v67(v62, v63);
    static DefaultsManager.Cloud.timeBetweenSpaceAlerts.getter();
    if (v68 < v66)
    {
      v168 = *(v0 + 437);
      v178 = *(v0 + 192);
      v181 = *(v0 + 344);
      v176 = *(v0 + 144);
      v171 = *(v0 + 120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v70 = objc_opt_self();
      v71 = [v70 bundleForClass:ObjCClassFromMetadata];
      v188._object = 0x80000001002B4140;
      v72._object = 0x80000001002B3CF0;
      v188._countAndFlagsBits = 0xD00000000000001DLL;
      v72._countAndFlagsBits = 0x1000000000000017;
      v73._countAndFlagsBits = 0;
      v73._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v71, v73, v188);

      v74 = [v70 bundleForClass:ObjCClassFromMetadata];
      v75 = "e alert message download";
      if (v168)
      {
        v75 = "Low on disk space alert title";
        v76 = "s can sync from iCloud.";
      }

      else
      {
        v76 = "s can sync to iCloud.";
      }

      if (v168)
      {
        v77 = 0xD000000000000028;
      }

      else
      {
        v77 = 0xD000000000000026;
      }

      if (v168)
      {
        v78 = 0xD000000000000067;
      }

      else
      {
        v78 = 0xD000000000000065;
      }

      v167 = v76 | 0x8000000000000000;
      v79 = v75 | 0x8000000000000000;
      v80._countAndFlagsBits = 0;
      v80._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v78, 0, v74, v80, *&v77);

      v81 = String._bridgeToObjectiveC()();

      v82 = String._bridgeToObjectiveC()();

      v83 = [objc_opt_self() alertControllerWithTitle:v81 message:v82 preferredStyle:1];

      v84 = PresenterServerViewController.okAction.getter();
      [v83 addAction:v84];
      [v83 setPreferredAction:v84];
      [v171 presentViewController:v83 animated:1 completion:0];
      static Date.now.getter();
      static DefaultsManager.Cloud.lastLowSpaceAlertDate.setter();

      v67(v178, v176);
      v85 = v181;
      goto LABEL_46;
    }

    v126 = *(v0 + 344);
    v127 = *(v0 + 192);
    v128 = *(v0 + 144);

    v67(v127, v128);
    goto LABEL_45;
  }

LABEL_27:
  if (v180)
  {
    v86 = *(v0 + 184);
    v87 = *(v0 + 144);
    v88 = *(v0 + 152);
    static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.getter();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v90 = v89;
    v91 = *(v88 + 8);
    v91(v86, v87);
    static DefaultsManager.Cloud.timeBetweenSpaceAlerts.getter();
    v92 = *(v0 + 344);
    if (v93 >= v90)
    {
      v124 = *(v0 + 176);
      v125 = *(v0 + 144);

      v91(v124, v125);
      v85 = v92;
    }

    else
    {
      v179 = *(v0 + 144);
      v182 = *(v0 + 176);
      v170 = *(v0 + 120);
      v177 = *(v0 + 344);
      v94 = swift_getObjCClassFromMetadata();
      v95 = objc_opt_self();
      v172 = v91;
      v96 = [v95 bundleForClass:v94];
      v189._object = 0x80000001002B4090;
      v97._object = 0x80000001002B4070;
      v189._countAndFlagsBits = 0xD00000000000001CLL;
      v97._countAndFlagsBits = 0xD000000000000016;
      v98._countAndFlagsBits = 0;
      v98._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v97, 0, v96, v98, v189);

      v99 = [v95 bundleForClass:v94];
      v190._object = 0x80000001002B4100;
      v100._countAndFlagsBits = 0xD000000000000041;
      v100._object = 0x80000001002B40B0;
      v190._countAndFlagsBits = 0xD00000000000001ELL;
      v101._countAndFlagsBits = 0;
      v101._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v100, 0, v99, v101, v190);

      v102 = String._bridgeToObjectiveC()();

      v103 = String._bridgeToObjectiveC()();

      v104 = [objc_opt_self() alertControllerWithTitle:v102 message:v103 preferredStyle:1];

      v105 = [v95 bundleForClass:v94];
      v191._object = 0xEE006E6F69746361;
      v106._countAndFlagsBits = 0x776F4E20746F4ELL;
      v191._countAndFlagsBits = 0x20776F4E20746F4ELL;
      v106._object = 0xE700000000000000;
      v107._countAndFlagsBits = 0;
      v107._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, v191);

      v108 = String._bridgeToObjectiveC()();

      *(v0 + 48) = MOSuggestionInterstitialExpandableListViewCellConstants.init();
      *(v0 + 56) = 0;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      *(v0 + 40) = &block_descriptor_23;
      v109 = _Block_copy((v0 + 16));

      v110 = objc_opt_self();
      v111 = [v110 actionWithTitle:v108 style:0 handler:v109];
      _Block_release(v109);

      [v104 addAction:v111];
      v112 = [v95 bundleForClass:v94];
      v192._object = 0x80000001002B4120;
      v113._countAndFlagsBits = 0x502065676E616843;
      v113._object = 0xEB000000006E616CLL;
      v192._countAndFlagsBits = 0xD000000000000019;
      v114._countAndFlagsBits = 0;
      v114._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v113, 0, v112, v114, v192);

      v115 = String._bridgeToObjectiveC()();

      *(v0 + 96) = closure #2 in PresenterServerViewController.showInfoPopups(controller:);
      *(v0 + 104) = 0;
      *(v0 + 64) = _NSConcreteStackBlock;
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      *(v0 + 88) = &block_descriptor_26;
      v116 = _Block_copy((v0 + 64));

      v117 = [v110 actionWithTitle:v115 style:0 handler:v116];
      _Block_release(v116);

      [v104 addAction:v117];
      [v170 presentViewController:v104 animated:1 completion:0];
      static Date.now.getter();
      static DefaultsManager.Cloud.lastLowCloudSpaceAlertDate.setter();

      v172(v182, v179);
      v85 = v177;
    }

    goto LABEL_46;
  }

  if (*(v0 + 437) == 1)
  {
    v118 = *(v0 + 304);
    v119 = *(v0 + 144);
    v120 = *(v0 + 152);
    outlined init with copy of (String, Date?)(*(v0 + 344), v118, &_s10Foundation4DateVSgMd);
    v121 = (*(v120 + 48))(v118, 1, v119);
    v122 = *(v0 + 392);
    if (v121 == 1)
    {
      v123 = *(v0 + 304);
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);

      v85 = v123;
LABEL_46:
      outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v85, &_s10Foundation4DateVSgMd);
      goto LABEL_47;
    }

    v129 = *(v0 + 152);
    (*(v129 + 32))(*(v0 + 168), *(v0 + 304), *(v0 + 144));
    v130 = (v129 + 8);
    v131 = *(v0 + 168);
    if (v122)
    {
      v132 = *(v0 + 184);
      v133 = *(v0 + 144);
      static DefaultsManager.Cloud.lastStalePrimaryAlertDate.getter();
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v135 = v134;
      v136 = *v130;
      (*v130)(v132, v133);
      static Date.now.getter();
      Date.timeIntervalSince(_:)();
      v138 = v137;
      v136(v132, v133);
      static DefaultsManager.Cloud.timeBetweenStalePrimaryAlerts.getter();
      if (v139 > v135)
      {
        goto LABEL_43;
      }

      v5 = static DefaultsManager.Cloud.stalePrimaryWarningThreshold.getter();
      if (v140 > v138)
      {
        goto LABEL_43;
      }

      v141 = v138 / 86400.0;
      if (COERCE__INT64(fabs(v138 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v141 > -9.22337204e18)
      {
        if (v141 < 9.22337204e18)
        {
          v183 = *(v0 + 120);
          v142 = v141;
          v143 = swift_getObjCClassFromMetadata();
          v144 = objc_opt_self();
          v145 = [v144 bundleForClass:v143];
          v193._object = 0x80000001002B3F10;
          v146._object = 0x80000001002AFEF0;
          v193._countAndFlagsBits = 0xD000000000000022;
          v146._countAndFlagsBits = 0xD000000000000016;
          v147._countAndFlagsBits = 0;
          v147._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v146, 0, v145, v147, v193);

          v184 = 0;
          v185 = 0xE000000000000000;
          _StringGuts.grow(_:)(221);
          v148._countAndFlagsBits = 0x1000000000000040;
          v148._object = 0x80000001002B3F40;
          String.append(_:)(v148);
          *(v0 + 112) = v142;
          v149._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v149);

          v150._countAndFlagsBits = 0x100000000000009BLL;
          v150._object = 0x80000001002B3F90;
          String.append(_:)(v150);
          v151 = v184;
          v152 = v185;
          v153 = [v144 bundleForClass:v143];
          v194._object = 0x80000001002B4030;
          v194._countAndFlagsBits = 0xD000000000000035;
          v154._countAndFlagsBits = v151;
          v154._object = v152;
          v155._countAndFlagsBits = 0;
          v155._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v154, 0, v153, v155, v194);

          v156 = String._bridgeToObjectiveC()();

          v157 = String._bridgeToObjectiveC()();

          v158 = [objc_opt_self() alertControllerWithTitle:v156 message:v157 preferredStyle:1];

          v159 = PresenterServerViewController.okAction.getter();
          [v158 addAction:v159];
          [v158 setPreferredAction:v159];
          [v183 presentViewController:v158 animated:1 completion:0];

LABEL_43:
          v160 = *(v0 + 344);
          v162 = *(v0 + 160);
          v161 = *(v0 + 168);
          v163 = *(v0 + 144);

          v136(v162, v163);
          v136(v161, v163);
          v85 = v160;
          goto LABEL_46;
        }

LABEL_52:
        __break(1u);
        return _swift_task_switch(v5, v3, v4);
      }

      __break(1u);
      goto LABEL_52;
    }

    v126 = *(v0 + 344);
    v164 = *(v0 + 144);

    (*v130)(v131, v164);
LABEL_45:
    v85 = v126;
    goto LABEL_46;
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);

LABEL_47:

  v165 = *(v0 + 8);

  return v165();
}

{
  CloudDevicesDB.nominatedDevice.getter();
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return _swift_task_switch(PresenterServerViewController.showInfoPopups(controller:), v1, v2);
}

{
  v90 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 344);
  v3 = *(v0 + 272);
  v4 = *(v0 + 224);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);

  v1(v3, 1, v4);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v3, &_s9MomentsUI11CloudDeviceVSgMd);
  (*(v6 + 56))(v2, 1, 1, v5);
  v7 = *(v0 + 438);
  v8 = *(v0 + 344);
  v9 = *(v0 + 320);
  type metadata accessor for CommonLogger();
  static CommonLogger.views.getter();
  outlined init with copy of (String, Date?)(v8, v9, &_s10Foundation4DateVSgMd);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v80 = *(v0 + 312);
    v82 = *(v0 + 320);
    v83 = *(v0 + 208);
    v85 = *(v0 + 200);
    v87 = *(v0 + 216);
    v12 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v12 = 136316418;
    *(v0 + 432) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v89);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    *(v0 + 433) = v7;
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v89);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    *(v0 + 434) = 2;
    v19 = String.init<A>(describing:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v89);

    *(v12 + 24) = v21;
    *(v12 + 32) = 2080;
    *(v0 + 435) = 2;
    v22 = String.init<A>(describing:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v89);

    *(v12 + 34) = v24;
    *(v12 + 42) = 2080;
    *(v0 + 436) = 2;
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v89);

    *(v12 + 44) = v27;
    *(v12 + 52) = 2080;
    outlined init with copy of (String, Date?)(v82, v80, &_s10Foundation4DateVSgMd);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v82, &_s10Foundation4DateVSgMd);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v89);

    *(v12 + 54) = v31;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PresenterServerViewController] showInfoPopups,\nhasPrimary: %s,\nlocalLowDiskSpace: %s,\nprimaryLowDiskSpace: %s,\nprimaryLowCloudSpace: %s,\ndebugStalePrimary: %s,\nlastPrimaryCheckin: %s", v12, 0x3Eu);
    swift_arrayDestroy();

    (*(v83 + 8))(v87, v85);
    if (v7 == 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v32 = *(v0 + 320);
    v34 = *(v0 + 208);
    v33 = *(v0 + 216);
    v35 = *(v0 + 200);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v32, &_s10Foundation4DateVSgMd);
    (*(v34 + 8))(v33, v35);
    if (v7 == 2)
    {
      goto LABEL_17;
    }
  }

  if (v7)
  {
    v36 = *(v0 + 184);
    v37 = *(v0 + 144);
    v38 = *(v0 + 152);
    static DefaultsManager.Cloud.lastLowSpaceAlertDate.getter();
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v40 = v39;
    v41 = *(v38 + 8);
    v41(v36, v37);
    static DefaultsManager.Cloud.timeBetweenSpaceAlerts.getter();
    if (v42 < v40)
    {
      v79 = *(v0 + 437);
      v86 = *(v0 + 192);
      v88 = *(v0 + 344);
      v84 = *(v0 + 144);
      v81 = *(v0 + 120);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = objc_opt_self();
      v45 = [v44 bundleForClass:ObjCClassFromMetadata];
      v92._object = 0x80000001002B4140;
      v46._object = 0x80000001002B3CF0;
      v46._countAndFlagsBits = 0x1000000000000017;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v92._countAndFlagsBits = 0xD00000000000001DLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v92);

      v48 = [v44 bundleForClass:ObjCClassFromMetadata];
      v49 = "e alert message download";
      if (v79)
      {
        v49 = "Low on disk space alert title";
        v50 = "s can sync from iCloud.";
      }

      else
      {
        v50 = "s can sync to iCloud.";
      }

      if (v79)
      {
        v51 = 0xD000000000000028;
      }

      else
      {
        v51 = 0xD000000000000026;
      }

      if (v79)
      {
        v52 = 0xD000000000000067;
      }

      else
      {
        v52 = 0xD000000000000065;
      }

      v78 = v50 | 0x8000000000000000;
      v53 = v49 | 0x8000000000000000;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v52, 0, v48, v54, *&v51);

      v55 = String._bridgeToObjectiveC()();

      v56 = String._bridgeToObjectiveC()();

      v57 = [objc_opt_self() alertControllerWithTitle:v55 message:v56 preferredStyle:1];

      v58 = PresenterServerViewController.okAction.getter();
      [v57 addAction:v58];
      [v57 setPreferredAction:v58];
      [v81 presentViewController:v57 animated:1 completion:0];
      static Date.now.getter();
      static DefaultsManager.Cloud.lastLowSpaceAlertDate.setter();

      v41(v86, v84);
      v59 = v88;
      goto LABEL_26;
    }

    v71 = *(v0 + 344);
    v72 = *(v0 + 192);
    v73 = *(v0 + 144);

    v41(v72, v73);
    goto LABEL_25;
  }

LABEL_17:
  if (*(v0 + 437) != 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);

    goto LABEL_27;
  }

  v60 = *(v0 + 304);
  v61 = *(v0 + 144);
  v62 = *(v0 + 152);
  outlined init with copy of (String, Date?)(*(v0 + 344), v60, &_s10Foundation4DateVSgMd);
  v63 = (*(v62 + 48))(v60, 1, v61);
  v64 = *(v0 + 392);
  if (v63 != 1)
  {
    v66 = *(v0 + 152);
    (*(v66 + 32))(*(v0 + 168), *(v0 + 304), *(v0 + 144));
    v67 = (v66 + 8);
    if (v64)
    {
      v68 = *(v0 + 344);
      v69 = *(v0 + 168);
      v70 = *(v0 + 144);

      (*v67)(v69, v70);
      v59 = v68;
      goto LABEL_26;
    }

    v71 = *(v0 + 344);
    v74 = *(v0 + 168);
    v75 = *(v0 + 144);

    (*v67)(v74, v75);
LABEL_25:
    v59 = v71;
    goto LABEL_26;
  }

  v65 = *(v0 + 304);
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(*(v0 + 344), &_s10Foundation4DateVSgMd);

  v59 = v65;
LABEL_26:
  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v59, &_s10Foundation4DateVSgMd);
LABEL_27:

  v76 = *(v0 + 8);

  return v76();
}