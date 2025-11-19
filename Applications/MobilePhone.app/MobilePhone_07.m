Swift::Bool __swiftcall VoicemailsSearchController.sectionNeedsIndexing()()
{
  type metadata accessor for SpotlightIndexManagerUtilities();
  if (static SpotlightIndexManagerUtilities.voicemailsNeedsDeferredReindexing(defaults:)())
  {
    return 1;
  }

  else
  {
    return static SpotlightIndexManagerUtilities.voicemailsNeedIndexingDueToVersionMismatch(defaults:)() & 1;
  }
}

void (*protocol witness for SearchResultsDetailPresenter.detailsPresenter.modify in conformance VoicemailsSearchController(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = VoicemailsSearchController.detailsPresenter.modify(v2);
  return protocol witness for OrientationMonitorOrientationChangeSource.onOrientationChangeEvent.modify in conformance AccelerometerOrientationMonitorWrapper;
}

uint64_t sub_10016272C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void specialized VoicemailsSearchController.tableViewController(_:didChangeVoicemails:)(unint64_t a1)
{
  v2 = v1;
  v47 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v47);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = a1 >> 62;
  v10 = a1;
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);

      __break(1u);

      __break(1u);
      return;
    }

    v42 = v9;
    v43 = v1;
    v13 = 0;
    v12 = v49;
    v14 = v10;
    v44 = v10 & 0xC000000000000001;
    v45 = v11;
    v46 = v10;
    do
    {
      if (v44)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v14 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = [v15 identifier];
      outlined init with copy of MessageID.Value(v16 + OBJC_IVAR___MPMessageID_value, v5);

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      if (EnumCaseMultiPayload == 1)
      {
        (*(*(v18 - 8) + 32))(v8, v5, v18);
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      (*(v19 + 56))(v8, v20, 1, v18);
      if ((*(v19 + 48))(v8, 1, v18) == 1)
      {
        outlined destroy of UUID?(v8);
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        v21 = UUID.uuidString.getter();
        v22 = v23;
        (*(v19 + 8))(v8, v18);
      }

      swift_unknownObjectRelease();
      v49 = v12;
      v25 = *(v12 + 2);
      v24 = *(v12 + 3);
      if (v25 >= v24 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
        v12 = v49;
      }

      ++v13;
      *(v12 + 2) = v25 + 1;
      v26 = &v12[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v22;
      v14 = v46;
    }

    while (v45 != v13);
    v10 = v46;
    v9 = v42;
    v2 = v43;
  }

  v49 = v12;

  specialized MutableCollection<>.sort(by:)(&v49);
  v27 = v49;
  v28 = OBJC_IVAR___MPVoicemailsSearchController_resultIDs;
  swift_beginAccess();
  v48 = *(v2 + v28);
  swift_bridgeObjectRetain_n();
  specialized MutableCollection<>.sort(by:)(&v48);

  v29 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v27, v48);

  if (v29 & 1) == 0 && (v30 = *(v2 + OBJC_IVAR___MPVoicemailsSearchController_searchText + 8)) != 0 && ((v30 & 0x2000000000000000) != 0 ? (v31 = HIBYTE(v30) & 0xF) : (v31 = *(v2 + OBJC_IVAR___MPVoicemailsSearchController_searchText) & 0xFFFFFFFFFFFFLL), v31 && (*(v2 + OBJC_IVAR___MPVoicemailsSearchController_isSearching)))
  {

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "VoicemailsSearchController: ignoring voicemail results fetched IDs not matched with resultIDs", v34, 2u);
    }
  }

  else
  {

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      if (v9)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v37 + 4) = v38;

      _os_log_impl(&_mh_execute_header, v35, v36, "VoicemailsSearchController: Fetched voicemails. Found %ld voicemails", v37, 0xCu);
    }

    else
    {
    }

    v39 = specialized _arrayForceCast<A, B>(_:)(v10);
    v40 = OBJC_IVAR___MPVoicemailsSearchController_results;
    swift_beginAccess();
    *(v2 + v40) = v39;

    *(v2 + v28) = v12;

    *(v2 + OBJC_IVAR___MPVoicemailsSearchController_isSearching) = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong didCompleteSearchFor:v2];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  result = a3(v6 + v7);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for VoicemailsSearchController()
{
  result = type metadata singleton initialization cache for VoicemailsSearchController;
  if (!type metadata singleton initialization cache for VoicemailsSearchController)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for VoicemailsSearchController()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100162F80()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for @objc closure #1 in VoicemailsSearchController.search(with:searchTokens:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return @objc closure #1 in VoicemailsSearchController.search(with:searchTokens:)(v2, v3, v5, v4);
}

uint64_t outlined init with copy of MessageID.Value(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageID.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UIView.applyGlassBackground()(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  v3 = __chkstk_darwin(v2 - 8);
  a1(v3);
  v5[3] = type metadata accessor for _Glass();
  v5[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v5);
  _Glass.init(_:smoothness:)();
  return UIView._background.setter();
}

void @objc UIView.applyGlassBackground()(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v5 - 8);
  v6 = a1;
  a3();
  v7[3] = type metadata accessor for _Glass();
  v7[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v7);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.applyClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v1 = type metadata accessor for _Glass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _Glass._GlassVariant();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v14[-1] - v10;
  static _Glass._GlassVariant.clear.getter();
  _Glass._GlassVariant.excludingShadow()();
  v12 = *(v6 + 8);
  v12(v9, v5);
  (*(v6 + 16))(v9, v11, v5);
  _Glass.init(_:smoothness:)();
  v14[3] = v1;
  v14[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v14);
  _Glass.tint(_:)();
  (*(v2 + 8))(v4, v1);
  UIView._background.setter();
  v12(v11, v5);
}

Swift::Void __swiftcall UIView.applySmallClearGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v20[1] = a1.super.isa;
  v20[0] = type metadata accessor for _Glass();
  v1 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _Glass._GlassVariant.Size();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _Glass._GlassVariant();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v20 - v14;
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  static _Glass._GlassVariant.clear.getter();
  (*(v5 + 104))(v7, enum case for _Glass._GlassVariant.Size.small(_:), v4);
  _Glass._GlassVariant.size(_:)();
  (*(v5 + 8))(v7, v4);
  v18 = *(v9 + 8);
  v18(v12, v8);
  _Glass._GlassVariant.excludingShadow()();
  v18(v15, v8);
  (*(v9 + 16))(v15, v17, v8);
  _Glass.init(_:smoothness:)();
  v19 = v20[0];
  v21[3] = v20[0];
  v21[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v21);
  _Glass.tint(_:)();
  (*(v1 + 8))(v3, v19);
  UIView._background.setter();
  v18(v17, v8);
}

uint64_t UIView.applySmallClearGlassBackground()(void (*a1)(uint64_t), unsigned int *a2)
{
  v4 = type metadata accessor for _Glass._GlassVariant.Size();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _Glass._GlassVariant();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  a1(v13);
  (*(v5 + 104))(v7, *a2, v4);
  _Glass._GlassVariant.size(_:)();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v8);
  v16[3] = type metadata accessor for _Glass();
  v16[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v16);
  _Glass.init(_:smoothness:)();
  return UIView._background.setter();
}

void @objc UIView.applySmallClearGlassBackground()(void *a1, uint64_t a2, void (*a3)(void), unsigned int *a4)
{
  v7 = type metadata accessor for _Glass._GlassVariant.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _Glass._GlassVariant();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = a1;
  a3();
  (*(v8 + 104))(v10, *a4, v7);
  _Glass._GlassVariant.size(_:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v15, v11);
  v18[3] = type metadata accessor for _Glass();
  v18[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v18);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

uint64_t UIView.applyDiscreetRegularGlassBackgroundWithTintColor(_:)()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for _Glass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v7[3] = v1;
  v7[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v7);
  _Glass.tint(_:)();
  (*(v2 + 8))(v4, v1);
  return UIView._background.setter();
}

void @objc UIView.applyDiscreetRegularGlassBackgroundWithTintColor(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for _Glass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a1;
  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  v13[3] = v6;
  v13[4] = &protocol witness table for _Glass;
  __swift_allocate_boxed_opaque_existential_1(v13);
  _Glass.tint(_:)();
  (*(v7 + 8))(v9, v6);
  UIView._background.setter();
}

uint64_t UICellConfigurationState.highlightedState.getter()
{
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    return 1;
  }

  return UICellConfigurationState.isHighlighted.getter();
}

uint64_t UICellConfigurationState.secondaryColor.getter()
{
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v0 = [objc_opt_self() dynamicCarFocusedPrimaryLabelColor];

    return Color.init(uiColor:)();
  }

  else
  {

    return static Color.secondary.getter();
  }
}

uint64_t UICellConfigurationState.secondaryBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter())
  {
    v2 = UICellConfigurationState.traitCollection.getter();
    v3 = [v2 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v3 == 2)
    {
LABEL_5:
      v6 = &enum case for BlendMode.plusDarker(_:);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = UICellConfigurationState.traitCollection.getter();
    v8 = [v7 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v8 != 2)
    {
      goto LABEL_5;
    }
  }

  v6 = &enum case for BlendMode.plusLighter(_:);
LABEL_8:
  v9 = *v6;

  return v5(a1, v9, v4);
}

uint64_t UICellConfigurationState.backgroundConfiguration.getter()
{
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter())
  {
    v0 = &selRef_dynamicCarFocusedColor;
  }

  else
  {
    v0 = &selRef_dynamicCarFocusedColor;
    if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isHighlighted.getter() & 1) == 0)
    {
      v0 = &selRef_clearColor;
    }
  }

  v1 = [objc_opt_self() *v0];
  UIBackgroundConfiguration.backgroundColor.setter();
  return UIBackgroundConfiguration.cornerRadius.setter();
}

id one-time initialization function for dateFormatter()
{
  result = [objc_allocWithZone(NSDateFormatter) init];
  static CarPlayUtilities.dateFormatter = result;
  return result;
}

uint64_t *CarPlayUtilities.dateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  return &static CarPlayUtilities.dateFormatter;
}

id static CarPlayUtilities.dateFormatter.getter()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v1 = static CarPlayUtilities.dateFormatter;

  return v1;
}

uint64_t specialized static CarPlayUtilities.localizedDateString(for:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  static Date.now.getter();
  v8 = Calendar.isDate(_:inSameDayAs:)();
  (*(v1 + 8))(v3, v0);
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = one-time initialization token for dateFormatter;
    v13 = 1;
  }

  else
  {
    static Calendar.current.getter();
    v10 = Calendar.isDateInYesterday(_:)();
    v9(v7, v4);
    v13 = 0;
    v12 = one-time initialization token for dateFormatter;
    v11 = v10;
  }

  if (v12 != -1)
  {
    swift_once();
    v11 = v10;
  }

  v14 = static CarPlayUtilities.dateFormatter;
  [static CarPlayUtilities.dateFormatter setDateStyle:?];
  [v14 setTimeStyle:v13];
  [v14 setDoesRelativeDateFormatting:v11 & 1];
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v14 stringFromDate:isa];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v17;
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = (a1 + 32);
  while (1)
  {
    v5 = *v3++;
    v4 = v5;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      break;
    }

    v6 = v4;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

void *specialized _arrayConditionalCast<A, B>(_:)(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t VisualVoicemailManager.onVoicemailsChanged.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_onVoicemailsChanged);

  return v1;
}

char *VisualVoicemailManager.init(visualVoicemailManager:onVoicemailsChanged:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_messagesChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  swift_allocObject();
  *&v3[v8] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager] = a1;
  v9 = &v3[OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_onVoicemailsChanged];
  *v9 = a2;
  *(v9 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v10 = a1;

  v11 = objc_msgSendSuper2(&v15, "init");
  v12 = *&v11[OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager];
  v13 = v11;
  [v12 setDelegate:{v13, v15.receiver, v15.super_class}];

  return v13;
}

uint64_t VisualVoicemailManager.listenForChanges(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v10 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v10;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VisualVoicemailManager.listenForChanges(_:), v11);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t closure #1 in VisualVoicemailManager.listenForChanges(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VisualVoicemailManager.listenForChanges(_:), v8, v7);
}

uint64_t closure #1 in VisualVoicemailManager.listenForChanges(_:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_messagesChangedPublisher);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>();
  v5 = Publisher<>.sink(receiveValue:)();

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.listenForChanges(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.listenForChanges(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t VisualVoicemailManager.voicemailsChanged(messageChanges:)(uint64_t a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v10 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v11 = swift_allocObject();
  *(v11 + 16) = inited;
  *(v11 + 24) = v10;
  *(v11 + 32) = v2;
  *(v11 + 40) = a1;
  *(v11 + 48) = a2;

  v12 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:), v11);
}

uint64_t closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 25) = a6;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:), v8, v7);
}

uint64_t closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 40);
  (*(*(v0 + 32) + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_onVoicemailsChanged))();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  PassthroughSubject.send(_:)();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)(a1, v4, v5, v6, v7, v8);
}

uint64_t VisualVoicemailManager.fetchMessages()()
{
  *(v1 + 32) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.fetchMessages(), v3, v2);
}

{
  v22 = v0;
  v1 = [*(v0[2].receiver + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager) allVoicemails];
  type metadata accessor for VMVoicemail();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v10 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v21 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    v8 = type metadata accessor for VisualMessage();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR___MPVisualMessage_vmMessage] = v7;
    v0[1].receiver = v9;
    v0[1].super_class = v8;
    objc_msgSendSuper2(v0 + 1, "init");
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v3 != v5);

  v10 = v21;
LABEL_12:
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.mobilePhone);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    type metadata accessor for VisualMessage();
    v16 = Array.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetched %s from VMD", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  if (v10 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
    v19 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v19 = v10;
  }

  super_class = v0->super_class;

  return super_class(v19);
}

unint64_t type metadata accessor for VMVoicemail()
{
  result = lazy cache variable for type metadata for VMVoicemail;
  if (!lazy cache variable for type metadata for VMVoicemail)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VMVoicemail);
  }

  return result;
}

uint64_t @objc closure #1 in VisualVoicemailManager.fetchMessages()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.fetchMessages(), v4, v3);
}

uint64_t @objc closure #1 in VisualVoicemailManager.fetchMessages()()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in CachedVoicemailManager.fetchMessages();

  return VisualVoicemailManager.fetchMessages()();
}

uint64_t VisualVoicemailManager.delete(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.delete(_:), v4, v3);
}

uint64_t VisualVoicemailManager.delete(_:)()
{
  v23 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[8], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (one-time initialization token for mobilePhone == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[9] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    type metadata accessor for VMVoicemail();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v3 deleteVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v9 = *(v7 + v8);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15++;
        v17 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v18 = *(v16 + v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.mobilePhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

LABEL_17:

  v20 = v0[1];

  return v20();
}

uint64_t @objc closure #1 in VisualVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.delete(_:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.delete(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return VisualVoicemailManager.delete(_:)(v2);
}

uint64_t VisualVoicemailManager.markAsRead(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.markAsRead(_:), v4, v3);
}

uint64_t VisualVoicemailManager.markAsRead(_:)()
{
  v23 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[8], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (one-time initialization token for mobilePhone == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[9] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    type metadata accessor for VMVoicemail();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v3 markVoicemailsAsRead:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v9 = *(v7 + v8);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15++;
        v17 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v18 = *(v16 + v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.mobilePhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

LABEL_17:

  v20 = v0[1];

  return v20();
}

uint64_t @objc closure #1 in VisualVoicemailManager.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.markAsRead(_:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.markAsRead(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.markAsRead(_:);

  return VisualVoicemailManager.markAsRead(_:)(v2);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t VisualVoicemailManager.moveToTrash(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.moveToTrash(_:), v4, v3);
}

uint64_t VisualVoicemailManager.moveToTrash(_:)()
{
  v23 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[8], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (one-time initialization token for mobilePhone == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[9] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    type metadata accessor for VMVoicemail();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v3 trashVoicemails:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v9 = *(v7 + v8);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15++;
        v17 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v18 = *(v16 + v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.mobilePhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

LABEL_17:

  v20 = v0[1];

  return v20();
}

uint64_t @objc closure #1 in VisualVoicemailManager.moveToTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.moveToTrash(_:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.moveToTrash(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return VisualVoicemailManager.moveToTrash(_:)(v2);
}

uint64_t VisualVoicemailManager.removeFromTrash(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.removeFromTrash(_:), v4, v3);
}

uint64_t VisualVoicemailManager.removeFromTrash(_:)()
{
  v23 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[8], type metadata accessor for VisualMessage);
  if (!v1)
  {
    if (one-time initialization token for mobilePhone == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0[9] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_16:

    type metadata accessor for VMVoicemail();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v3 removeVoicemailsFromTrash:isa];

    goto LABEL_17;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v9 = *(v7 + v8);
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15++;
        v17 = OBJC_IVAR___MPVisualMessage_vmMessage;
        swift_beginAccess();
        v18 = *(v16 + v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  swift_once();
LABEL_10:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.mobilePhone);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v22);
    _os_log_impl(&_mh_execute_header, v11, v12, "Incorrect type passed into VisualVoicemailManager %{public}s but expected VisualMessage!", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

LABEL_17:

  v20 = v0[1];

  return v20();
}

uint64_t @objc closure #1 in VisualVoicemailManager.removeFromTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.removeFromTrash(_:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.removeFromTrash(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return VisualVoicemailManager.removeFromTrash(_:)(v2);
}

uint64_t VisualVoicemailManager.message(for:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for MessageID.Value(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.message(for:), v4, v3);
}

uint64_t VisualVoicemailManager.message(for:)()
{
  outlined init with copy of MessageID.Value(*(v0 + 32) + OBJC_IVAR___MPMessageID_value, *(v0 + 56));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 56);
  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of MessageID.Value(v2);
    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 32);
    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.mobilePhone);
    v5 = v3;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "Incorrect id passed into VisualVoicemailManager %@, privacy: .public) but expected a VisualMessage ID!", v9, 0xCu);
      outlined destroy of NSObject?(v10);
    }

    v12 = 0;
  }

  else
  {
    v12 = [*(*(v0 + 40) + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager) voicemailWithIdentifier:*v2];
    if (v12)
    {
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      *(v0 + 16) = v14;
      *(v0 + 24) = v13;
      v12 = objc_msgSendSuper2((v0 + 16), "init");
    }
  }

  v15 = *(v0 + 8);

  return v15(v12);
}

uint64_t @objc closure #1 in VisualVoicemailManager.message(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.message(for:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.message(for:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = @objc closure #1 in CachedVoicemailManager.message(for:);
  v6 = *(v0 + 16);

  return VisualVoicemailManager.message(for:)(v6);
}

uint64_t VisualVoicemailManager.messages(filteredBy:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.messages(filteredBy:), v5, v4);
}

uint64_t VisualVoicemailManager.messages(filteredBy:)()
{
  super_class = v0[5].super_class;
  receiver = v0[5].receiver;
  v3 = *(v0[6].receiver + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  v4 = swift_allocObject();
  *(v4 + 16) = receiver;
  *(v4 + 24) = super_class;
  v0[3].receiver = partial apply for closure #1 in VisualVoicemailManager.messages(filteredBy:);
  v0[3].super_class = v4;
  v0[1].receiver = _NSConcreteStackBlock;
  v0[1].super_class = 1107296256;
  v0[2].receiver = thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool);
  v0[2].super_class = &block_descriptor_16;
  v5 = _Block_copy(&v0[1]);

  v6 = [v3 voicemailsPassingTest:v5];
  _Block_release(v5);
  type metadata accessor for VMVoicemail();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v10 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v11 = *(v7 + 8 * v10 + 32);
LABEL_6:
      v12 = v11;
      ++v10;
      v13 = type metadata accessor for VisualMessage();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR___MPVisualMessage_vmMessage] = v12;
      v0[4].receiver = v14;
      v0[4].super_class = v13;
      objc_msgSendSuper2(v0 + 4, "init");
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (i == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v15 = v0->super_class;

  return v15(_swiftEmptyArrayStorage);
}

uint64_t closure #1 in VisualVoicemailManager.messages(filteredBy:)(void *a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for VisualMessage();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___MPVisualMessage_vmMessage] = a1;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  LOBYTE(a2) = a2(v7, v8);

  return a2 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t @objc closure #1 in VisualVoicemailManager.messages(filteredBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in VisualVoicemailManager.messages(filteredBy:), v5, v4);
}

uint64_t @objc closure #1 in VisualVoicemailManager.messages(filteredBy:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = _Block_copy(v1);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  v5 = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = @objc closure #1 in VisualVoicemailManager.messages(filteredBy:);

  return VisualVoicemailManager.messages(filteredBy:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned Message) -> (@unowned ObjCBool), v4);
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v6 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t VisualVoicemailManager.countOfUnreadMessages()()
{
  *(v1 + 64) = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(VisualVoicemailManager.countOfUnreadMessages(), v3, v2);
}

{
  v1 = *(v0[8] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  v0[6] = specialized implicit closure #1 in VisualVoicemailManager.countOfUnreadMessages();
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool);
  v0[5] = &block_descriptor_11_0;
  v2 = _Block_copy(v0 + 2);

  v3 = [v1 countOfVoicemailsPassingTest:v2];
  _Block_release(v2);
  v4 = v0[1];

  return v4(v3);
}

void VisualVoicemailManager.reportTranscription(isAccurate:for:)(char a1, void *a2)
{
  v5 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MessageID.Value(a2 + OBJC_IVAR___MPMessageID_value, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of MessageID.Value(v7);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
    v9 = [v8 voicemailWithIdentifier:*v7];
    if (v9)
    {
      v10 = v9;
      [v8 reportTranscriptionRatedAccurate:a1 & 1 forVoicemail:v9];
      goto LABEL_9;
    }
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.mobilePhone);
  v12 = a2;
  v10 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, v13, "Failed to report problem for message with ID(%@ becuase it could not be found.", v14, 0xCu);
    outlined destroy of NSObject?(v15);
  }

LABEL_9:
}

void VisualVoicemailManager.reportTranscriptionProblem(for:)(void *a1)
{
  v3 = type metadata accessor for MessageID.Value(0);
  __chkstk_darwin(v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of MessageID.Value(a1 + OBJC_IVAR___MPMessageID_value, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of MessageID.Value(v5);
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
    v7 = [v6 voicemailWithIdentifier:*v5];
    if (v7)
    {
      v8 = v7;
      [v6 reportTranscriptionProblemForVoicemail:v7];
      goto LABEL_9;
    }
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.mobilePhone);
  v10 = a1;
  v8 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v10;
    *v13 = v10;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, v11, "Failed to report problem for message with ID(%@ becuase it could not be found.", v12, 0xCu);
    outlined destroy of NSObject?(v13);
  }

LABEL_9:
}

Swift::Void __swiftcall VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)(Swift::Bool sendNotifications)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v7;
  *(v9 + 40) = sendNotifications;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:), v9);
}

uint64_t closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:), v7, v6);
}

uint64_t closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  [*(v2 + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager) requestInitialStateIfNecessaryAndSendNotifications:v1];
  v3 = *(v0 + 8);

  return v3();
}

uint64_t protocol witness for Voicemailmanager_ChangeCallback.listenForChanges(_:) in conformance VisualVoicemailManager(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &closure #1 in VisualVoicemailManager.listenForChanges(_:)partial apply, v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t protocol witness for VoicemailManager_UnreadCount.countOfUnreadMessages() in conformance VisualVoicemailManager()
{
  *(v1 + 64) = *v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(protocol witness for VoicemailManager_UnreadCount.countOfUnreadMessages() in conformance VisualVoicemailManager, v3, v2);
}

{
  v1 = *(v0[8] + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  v0[6] = specialized implicit closure #1 in VisualVoicemailManager.countOfUnreadMessages();
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool);
  v0[5] = &block_descriptor_186;
  v2 = _Block_copy(v0 + 2);

  v3 = [v1 countOfVoicemailsPassingTest:v2];
  _Block_release(v2);
  v4 = v0[1];

  return v4(v3);
}

uint64_t VisualVoicemailManager.handleVoiceMailsChangedNotification(notification:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.mobilePhone);
  (*(v7 + 16))(v9, a1, v6);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v5;
    v15 = v14;
    v32 = swift_slowAlloc();
    *v15 = 136315394;
    swift_getObjectType();
    v16 = _typeName(_:qualified:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v32);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v31 = Notification.name.getter();
    type metadata accessor for NSNotificationName(0);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    (*(v7 + 8))(v9, v6);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v32);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s is handling %s", v15, 0x16u);
    swift_arrayDestroy();

    v5 = v30;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v25 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v26 = swift_allocObject();
  *(v26 + 16) = inited;
  *(v26 + 24) = v25;
  *(v26 + 32) = v11;
  *(v26 + 40) = 0;
  *(v26 + 48) = 3;
  v27 = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)partial apply, v26);
}

Swift::Void __swiftcall VisualVoicemailManager.voicemailsDidChangeInitial(_:added:deleted:updated:)(Swift::Bool _, Swift::OpaquePointer_optional added, Swift::OpaquePointer_optional deleted, Swift::OpaquePointer_optional updated)
{
  rawValue = deleted.value._rawValue;
  v6 = *&added.is_nil;
  v7 = added.value._rawValue;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.mobilePhone);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v13 = v4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v30 = v11;
    v16 = _;
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v17 = 136316162;
    swift_getObjectType();
    v18 = _typeName(_:qualified:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v32);

    *(v17 + 4) = v20;
    *(v17 + 12) = 1024;
    *(v17 + 14) = v16;
    *(v17 + 18) = 2048;
    if (v6)
    {
      if (v6 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v30;
    }

    else
    {
      v21 = 0;
      v11 = v30;
    }

    *(v17 + 20) = v21;

    *(v17 + 28) = 2048;
    if (rawValue)
    {
      if (rawValue >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v22 = 0;
    }

    *(v17 + 30) = v22;

    *(v17 + 38) = 2048;
    if (v7)
    {
      if (v7 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
    }

    *(v17 + 40) = v23;

    _os_log_impl(&_mh_execute_header, v14, v15, "%s voicemailsDidChangeInitial: %{BOOL}d added: %ld, deleted: %ld, updated: %ld", v17, 0x30u);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v26 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v27 = swift_allocObject();
  *(v27 + 16) = inited;
  *(v27 + 24) = v26;
  *(v27 + 32) = v13;
  *(v27 + 40) = 0;
  *(v27 + 48) = 3;
  v28 = v13;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, &closure #1 in VisualVoicemailManager.voicemailsChanged(messageChanges:)partial apply, v27);
}

void VisualVoicemailManager.onlineStatusDidChange()(const char *a1)
{
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.mobilePhone);
  v4 = v1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getObjectType();
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }
}

uint64_t closure #1 in VisualVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return VisualVoicemailManager.delete(_:)(a5);
}

uint64_t closure #1 in VisualVoicemailManager.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return VisualVoicemailManager.markAsRead(_:)(a5);
}

uint64_t closure #1 in VisualVoicemailManager.moveToTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return VisualVoicemailManager.moveToTrash(_:)(a5);
}

uint64_t VisualVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v3;
  v12[5] = a1;
  v13 = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a3, v12);
}

uint64_t closure #1 in VisualVoicemailManager.removeFromTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return VisualVoicemailManager.removeFromTrash(_:)(a5);
}

uint64_t @objc VisualVoicemailManager.delete(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v10;
  v15 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a5, v14);
}

void VisualVoicemailManager.estimatedCount.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22VisualVoicemailManager_visualVoicemailManager);
  v4[4] = variable initialization expression of VoicemailSearchTableViewController.dataSourceNeedsReload;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed VMVoicemail) -> (@unowned Bool);
  v4[3] = &block_descriptor_44;
  v2 = _Block_copy(v4);
  v3 = [v1 countOfVoicemailsPassingTest:v2];
  _Block_release(v2);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }
}

uint64_t outlined destroy of MessageID.Value(uint64_t a1)
{
  v2 = type metadata accessor for MessageID.Value(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.delete(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.delete(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.markAsRead(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.markAsRead(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.moveToTrash(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.moveToTrash(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in VisualVoicemailManager.removeFromTrash(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VisualVoicemailManager.removeFromTrash(_:)(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in VisualVoicemailManager.markAsRead(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VisualVoicemailManager.markAsRead(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_27Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10016AE90()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.messages(filteredBy:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.messages(filteredBy:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.message(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.message(for:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.removeFromTrash(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.removeFromTrash(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.moveToTrash(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.moveToTrash(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.markAsRead(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.markAsRead(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.delete(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.delete(_:)(v2, v3, v4);
}

uint64_t sub_10016B320()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in VisualVoicemailManager.fetchMessages()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in VisualVoicemailManager.fetchMessages()(v2, v3);
}

uint64_t sub_10016B40C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016B49C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned ObjCBool, @unowned NSError?) -> ()(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned VMVoicemailGreeting?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned VoicemailAccountManagerUpdate, @unowned NSUUID?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  outlined init with copy of UUID?(a2, &v12 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v8, v9);
  }

  (*(a3 + 16))(a3, a1, isa);
}

uint64_t VoicemailAccountManagerDecorator.online.getter()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 40))(ObjectType, v1);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.mobilePhone);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) online: %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return v3 & 1;
}

uint64_t VoicemailAccountManagerDecorator.anyAccountSubscribed.getter(const char *a1)
{
  v3 = *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(ObjectType, v3);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.mobilePhone);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v16);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v5 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  return v5 & 1;
}

uint64_t VoicemailAccountManagerDecorator.storageUsage.getter()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 56))(ObjectType, v1);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.mobilePhone);
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v6, v7, "VMD(%s) storageUsage: %lu", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return v3;
}

uint64_t VoicemailAccountManagerDecorator.estimatedAccountCount.getter()
{
  v1 = *&v0[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.mobilePhone);
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone26VMVoicemailManagerProtocol_pMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v7, v8, "VMD(%s) estimatedAccountCount: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return v4;
}

void *VoicemailAccountManagerDecorator.accounts.getter()
{
  v56 = type metadata accessor for UUID();
  v1 = *(v56 - 8);
  __chkstk_darwin(v56);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd;
  v6 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd);
  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v8 = v5[8];
  v54 = ObjectType;
  v55 = v6;
  v57 = v5;
  v9 = v8(ObjectType, v5);
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:

    return _swiftEmptyArrayStorage;
  }

  v41 = v9;
  v10 = _CocoaArrayWrapper.endIndex.getter();
  v9 = v41;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = v9;
  v62 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v57[11];
    v15 = v57[12];
    v49 = v57 + 12;
    v50 = v14;
    v51 = v57 + 11;
    v52 = v10;
    v16 = v57[13];
    v47 = v57 + 13;
    v48 = v15;
    v17 = v11;
    v45 = v11 & 0xC000000000000001;
    v46 = v16;
    v43 = (v1 + 32);
    v44 = (v1 + 8);
    v53 = v11;
    do
    {
      v58 = v13;
      if (v45)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v17 + 8 * v13 + 32);
      }

      v19 = v18;
      v20 = [v18 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v54;
      v22 = v57;
      v60 = v50(v3, v54, v57);
      v23 = *v44;
      v24 = v56;
      (*v44)(v3, v56);
      v25 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v59 = v48(v3, v21, v22);
      v23(v3, v24);
      v26 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = v46(v3, v21, v22);
      v23(v3, v24);
      v28 = type metadata accessor for VoicemailAccount();
      v29 = objc_allocWithZone(v28);
      v30 = [v19 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*v43)(&v29[OBJC_IVAR___MPVoicemailAccount_uuid], v3, v24);
      v31 = [v19 accountDescription];
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v36 = &v29[OBJC_IVAR___MPVoicemailAccount_accountDescription];
      *v36 = v33;
      v36[1] = v35;
      v29[OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported] = v60 & 1;
      v29[OBJC_IVAR___MPVoicemailAccount_subscribed] = v59 & 1;
      v29[OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported] = v27 & 1;
      v37 = [v19 isProvisioned];
      v29[OBJC_IVAR___MPVoicemailAccount_provisioned] = v37;
      v38 = [v19 handle];
      v39 = v38;
      v40 = v58;
      if (v38)
      {
      }

      v13 = v40 + 1;
      v29[OBJC_IVAR___MPVoicemailAccount_hasHandle] = v39 != 0;
      v61.receiver = v29;
      v61.super_class = v28;
      objc_msgSendSuper2(&v61, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 = v53;
    }

    while (v52 != v13);

    return v62;
  }

  return result;
}

uint64_t VoicemailAccountManagerDecorator.isCallVoicemailSupported(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 88))(a1, ObjectType, v3) & 1;
}

uint64_t VoicemailAccountManagerDecorator.isAccountSubscribed(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 96))(a1, ObjectType, v3) & 1;
}

uint64_t VoicemailAccountManagerDecorator.isGreetingChangeSupported(forAccountUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 104))(a1, ObjectType, v3) & 1;
}

uint64_t VoicemailAccountManagerDecorator.transcriptionEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 72))(ObjectType, v1) & 1;
}

uint64_t VoicemailAccountManagerDecorator.transcriptionProgress.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 80))(ObjectType, v1);
}

char *VoicemailAccountManagerDecorator.__allocating_init(vmd:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized VoicemailAccountManagerDecorator.init(vmd:)(a1);

  return v4;
}

char *VoicemailAccountManagerDecorator.init(vmd:)(void *a1)
{
  v2 = specialized VoicemailAccountManagerDecorator.init(vmd:)(a1);

  return v2;
}

uint64_t closure #1 in VoicemailAccountManagerDecorator.init(vmd:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  v3[6] = v4;
  v3[7] = v5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerDecorator.init(vmd:), v7, v6);
}

uint64_t closure #1 in VoicemailAccountManagerDecorator.init(vmd:)()
{
  v0[8] = *(v0[4] + v0[7]);
  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerDecorator.init(vmd:), 0, 0);
}

{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(v0[5] + 48);
  *v1 = v3;
  outlined init with copy of UUID?(v2, v1 + v4);
  v5 = v3;
  PassthroughSubject.send(_:)();
  outlined destroy of (VoicemailAccountManagerUpdate, UUID?)(v1);

  v6 = v0[1];

  return v6();
}

uint64_t VoicemailAccountManagerDecorator.isPasscodeChangeSupported(forAccountUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 112))(a1, ObjectType, v3) & 1;
}

uint64_t VoicemailAccountManagerDecorator.maximumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 120))(a1, ObjectType, v3);
}

uint64_t VoicemailAccountManagerDecorator.minimumPasscodeLength(forAccountUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 128))(a1, ObjectType, v3);
}

uint64_t VoicemailAccountManagerDecorator.set(passcode:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v11 + 136))(a1, a2, a3, a4, a5, ObjectType, v11);
}

uint64_t VoicemailAccountManagerDecorator.maximumGreetingDuration(ForAccountUUID:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 144))(a1, ObjectType, v3);
}

uint64_t VoicemailAccountManagerDecorator.greeting(ForAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 152))(a1, a2, a3, ObjectType, v7);
}

uint64_t VoicemailAccountManagerDecorator.set(greeting:forAccountUUID:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v9 + 160))(a1, a2, a3, a4, ObjectType, v9);
}

uint64_t VoicemailAccountManagerDecorator.listen(with:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v2;
  v12[5] = v8;
  v13 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in VoicemailAccountManagerDecorator.listen(with:), v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v14 = AnyCancellable.init(_:)();

  return v14;
}

uint64_t closure #1 in VoicemailAccountManagerDecorator.listen(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in VoicemailAccountManagerDecorator.listen(with:), v7, v6);
}

uint64_t closure #1 in VoicemailAccountManagerDecorator.listen(with:)()
{
  v1 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  lazy protocol witness table accessor for type PassthroughSubject<(VoicemailAccountManagerUpdate, UUID?), Never> and conformance PassthroughSubject<A, B>();
  v2 = Publisher<>.sink(receiveValue:)();

  *v1 = v2;
  v3 = v0[1];

  return v3();
}

id protocol witness for VMVoicemailManagerProtocol.delegate.getter in conformance VMVoicemailManager()
{
  v1 = [v0 delegate];

  return v1;
}

uint64_t protocol witness for VMVoicemailManagerProtocol.delegate.setter in conformance VMVoicemailManager(uint64_t a1)
{
  [v1 setDelegate:a1];

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for VMVoicemailManagerProtocol.delegate.modify in conformance VMVoicemailManager(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 delegate];
  return protocol witness for VMVoicemailManagerProtocol.delegate.modify in conformance VMVoicemailManager;
}

uint64_t protocol witness for VMVoicemailManagerProtocol.delegate.modify in conformance VMVoicemailManager(uint64_t a1)
{
  [*(a1 + 8) setDelegate:*a1];

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for VMVoicemailManagerProtocol.accounts.getter in conformance VMVoicemailManager()
{
  v1 = [v0 accounts];
  type metadata accessor for VMAccount();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id protocol witness for VMVoicemailManagerProtocol.transcriptionProgress.getter in conformance VMVoicemailManager()
{
  v1 = [v0 transcriptionProgress];

  return v1;
}

id protocol witness for VMVoicemailManagerProtocol.isCallVoicemailSupported(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isCallVoicemailSupportedForAccountUUID:isa];

  return v3;
}

id protocol witness for VMVoicemailManagerProtocol.isAccountSubscribed(_:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isAccountSubscribed:isa];

  return v3;
}

id protocol witness for VMVoicemailManagerProtocol.isGreetingChangeSupported(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isGreetingChangeSupportedForAccountUUID:isa];

  return v3;
}

id protocol witness for VMVoicemailManagerProtocol.isPasscodeChangeSupported(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 isPasscodeChangeSupportedForAccountUUID:isa];

  return v3;
}

id protocol witness for VMVoicemailManagerProtocol.maximumPasscodeLength(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 maximumPasscodeLengthForAccountUUID:isa];

  return v3;
}

id protocol witness for VMVoicemailManagerProtocol.minimumPasscodeLength(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v3 = [v1 minimumPasscodeLengthForAccountUUID:isa];

  return v3;
}

uint64_t protocol witness for VMVoicemailManagerProtocol.setPasscode(_:forAccountUUID:completion:) in conformance VMVoicemailManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = String._bridgeToObjectiveC()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v13[3] = &block_descriptor_25_0;
  v11 = _Block_copy(v13);

  [v6 setPasscode:v9 forAccountUUID:isa completion:v11];
  _Block_release(v11);
}

double protocol witness for VMVoicemailManagerProtocol.maximumGreetingDuration(forAccountUUID:) in conformance VMVoicemailManager()
{
  v1 = v0;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 maximumGreetingDurationForAccountUUID:isa];
  v4 = v3;

  return v4;
}

uint64_t protocol witness for VMVoicemailManagerProtocol.greeting(forAccountUUID:completion:) in conformance VMVoicemailManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIImage?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_22_0;
  v8 = _Block_copy(v10);

  [v4 greetingForAccountUUID:isa completion:v8];
  _Block_release(v8);
}

uint64_t protocol witness for VMVoicemailManagerProtocol.setGreeting(_:forAccountUUID:completion:) in conformance VMVoicemailManager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_17;
  v10 = _Block_copy(v12);

  [v5 setGreeting:a1 forAccountUUID:isa completion:v10];
  _Block_release(v10);
}

uint64_t protocol witness for VoicemailBadgeCalculatorAccountManager.isAccountSubscribed(_:) in conformance VoicemailAccountManagerDecorator(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 96))(a1, ObjectType, v3) & 1;
}

char *specialized VoicemailAccountManagerDecorator.init(vmd:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_updatesPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgts5NeverOGMd);
  swift_allocObject();
  *&v1[v4] = PassthroughSubject.init()();
  *&v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd];
  *v5 = a1;
  *(v5 + 1) = &protocol witness table for VMVoicemailManager;
  v32.receiver = v1;
  v32.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v32, "init");
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for VoicemailDelegateDecorator();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_queue;
  type metadata accessor for TaskQueue();
  v12 = v7;
  *&v10[v11] = TaskQueue.__allocating_init()();
  v13 = &v10[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_lastTask];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_logger;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.mobilePhone);
  (*(*(v15 - 8) + 16))(&v10[v14], v16, v15);
  v17 = &v10[OBJC_IVAR____TtC11MobilePhone26VoicemailDelegateDecorator_onUpdate];
  *v17 = &async function pointer to partial apply for closure #1 in VoicemailAccountManagerDecorator.init(vmd:);
  *(v17 + 1) = v8;
  v31.receiver = v10;
  v31.super_class = v9;
  v18 = objc_msgSendSuper2(&v31, "init");
  v19 = *&v12[OBJC_IVAR___MPVoicemailAccountManagerDecorator_vmd + 8];
  v20 = swift_getObjectType();
  v21 = *(v19 + 16);
  swift_unknownObjectRetain();
  v22 = v18;
  v21(v18, v20, v19);
  swift_unknownObjectRelease();
  v30 = v9;
  *&v29 = v22;
  v23 = OBJC_IVAR___MPVoicemailAccountManagerDecorator_cancellables;
  swift_beginAccess();
  v24 = *&v12[v23];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v23] = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    *&v12[v23] = v24;
  }

  v27 = *(v24 + 2);
  v26 = *(v24 + 3);
  if (v27 >= v26 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
  }

  *(v24 + 2) = v27 + 1;
  outlined init with take of Any(&v29, &v24[32 * v27 + 32]);
  *&v12[v23] = v24;
  swift_endAccess();

  return v12;
}

uint64_t sub_10016EAC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10016EAF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManagerDecorator.listen(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in VoicemailAccountManagerDecorator.listen(with:)(a1, v4, v5, v7, v6);
}

uint64_t sub_10016EC24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for VMAccount()
{
  result = lazy cache variable for type metadata for VMAccount;
  if (!lazy cache variable for type metadata for VMAccount)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for VMAccount);
  }

  return result;
}

uint64_t sub_10016ECC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for closure #1 in VoicemailAccountManagerDecorator.init(vmd:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in VoicemailAccountManagerDecorator.init(vmd:)(a1, a2, v6);
}

uint64_t outlined destroy of (VoicemailAccountManagerUpdate, UUID?)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone29VoicemailAccountManagerUpdateC_10Foundation4UUIDVSgtMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LegacyVoicemail.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MPLegacyVoicemail_accountID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyVoicemail.label.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPLegacyVoicemail_label);

  return v1;
}

id LegacyVoicemail.__allocating_init(accountID:label:hasUnreadMessages:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR___MPLegacyVoicemail_accountID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  v13 = &v9[OBJC_IVAR___MPLegacyVoicemail_label];
  *v13 = a2;
  v13[1] = a3;
  v9[OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages] = a4;
  v16.receiver = v9;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v12 + 8))(a1, v11);
  return v14;
}

id LegacyVoicemail.init(accountID:label:hasUnreadMessages:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR___MPLegacyVoicemail_accountID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v4[v10], a1, v11);
  v13 = &v4[OBJC_IVAR___MPLegacyVoicemail_label];
  *v13 = a2;
  v13[1] = a3;
  v4[OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages] = a4;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v12 + 8))(a1, v11);
  return v14;
}

uint64_t one-time initialization function for mock()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = type metadata accessor for LegacyVoicemail();
  v5 = objc_allocWithZone(v4);
  (*(v1 + 16))(&v5[OBJC_IVAR___MPLegacyVoicemail_accountID], v3, v0);
  v6 = &v5[OBJC_IVAR___MPLegacyVoicemail_label];
  *v6 = 0x7972616D697250;
  v6[1] = 0xE700000000000000;
  v5[OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages] = 1;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, "init");
  result = (*(v1 + 8))(v3, v0);
  static LegacyVoicemail.mock = v7;
  return result;
}

uint64_t *LegacyVoicemail.mock.unsafeMutableAddressor()
{
  if (one-time initialization token for mock != -1)
  {
    swift_once();
  }

  return &static LegacyVoicemail.mock;
}

id static LegacyVoicemail.mock.getter()
{
  if (one-time initialization token for mock != -1)
  {
    swift_once();
  }

  v1 = static LegacyVoicemail.mock;

  return v1;
}

uint64_t type metadata accessor for LegacyVoicemail()
{
  result = type metadata singleton initialization cache for LegacyVoicemail;
  if (!type metadata singleton initialization cache for LegacyVoicemail)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LegacyVoicemail()
{
  result = type metadata accessor for UUID();
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

char *FaceTimeVoicemailManager.__allocating_init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = *(a4 + 24);
  v11 = *(a4 + 32);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a4, v10);
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(a1, a2, a3, v14, v9, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
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

Swift::Void __swiftcall VoiceMailAnalyticsLogger.logEvent(_:withCoreAnalyticsDictionary:)(Swift::String _, Swift::OpaquePointer withCoreAnalyticsDictionary)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = countAndFlagsBits;
    *v7 = 136315394;
    v19 = object;

    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    aBlock = withCoreAnalyticsDictionary._rawValue;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSObjectCGMd);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "VoiceMailAnalyticsLogger: logging core analytics for event of %s with dictionary %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = swift_allocObject();
  v15[2]._rawValue = withCoreAnalyticsDictionary._rawValue;
  v22 = partial apply for closure #1 in VoiceMailAnalyticsLogger.logEvent(_:withCoreAnalyticsDictionary:);
  v23 = v15;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v21 = &block_descriptor_18;
  v16 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v16);
}

uint64_t FaceTimeVoicemailManager.onVoicemailsChanged.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged);
  outlined copy of (@escaping @callee_guaranteed @Sendable () -> ())?(v1);
  return v1;
}

uint64_t FaceTimeVoicemailManager.allMessagesQuery.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20FaceTimeMessageStore0fG5QueryOGMd);
  v4 = type metadata accessor for MessageStoreQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100209F70;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);
}

char *FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(a1, a2, a3, v13, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0(a4);
  return v15;
}

uint64_t closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:), v6, v5);
}

uint64_t closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)()
{
  swift_unknownObjectWeakAssign();
  MessageStoreDelegate.manager.didset();
  v1 = *(v0 + 8);

  return v1();
}

char *FaceTimeVoicemailManager.init(logger:messageStoreController:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v4 - 8);
  v37 = &v33 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TaskPriority();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_analyticsReporter;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, static Logger.mobilePhone);
  v34 = v7;
  v13 = *(v7 + 16);
  v13(v2 + v11, v12, v6);
  *(v2 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_providers) = &outlined read-only object #0 of FaceTimeVoicemailManager.init(logger:messageStoreController:);
  *(v2 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes) = &outlined read-only object #1 of FaceTimeVoicemailManager.init(logger:messageStoreController:);
  v14 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messagesChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  swift_allocObject();
  v15 = v2;
  *(v2 + v14) = PassthroughSubject.init()();
  v16 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_operationQueue;
  type metadata accessor for TaskQueue();
  static TaskPriority.high.getter();
  *(v2 + v16) = TaskQueue.__allocating_init(priority:)();
  v13(v2 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger, a1, v6);
  v17 = (v2 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged);
  *v17 = 0;
  v17[1] = 0;
  v18 = a1;
  v35 = a1;
  v19 = v38;
  outlined init with copy of Tip(v38, v15 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v13(v9, v18, v6);
  type metadata accessor for MessageStoreDelegate(0);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v20 + 24) = 0;
  v21 = v34;
  (*(v34 + 32))(v20 + OBJC_IVAR____TtC11MobilePhoneP33_16A679D6AB3E8F4F37E91E12102EA1A620MessageStoreDelegate_logger, v9, v6);
  *(v15 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreDelegate) = v20;
  v22 = CachedVoicemailManager.init(serviceName:)(1397576774, 0xE400000000000000);
  v23 = v37;
  (*(v10 + 56))(v37, 1, 1, v36);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v25 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v26 = swift_allocObject();
  v26[2] = inited;
  v26[3] = v25;
  v26[4] = v22;
  v27 = v22;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in FaceTimeVoicemailManager.init(logger:messageStoreController:), v26);

  v28 = v19[3];
  v29 = v19[4];
  __swift_project_boxed_opaque_existential_0(v19, v28);
  v30 = *(v29 + 8);

  v30(v31, v28, v29);

  (*(v21 + 8))(v35, v6);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v27;
}

uint64_t closure #1 in FaceTimeVoicemailManager.init(logger:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.init(logger:messageStoreController:), v6, v5);
}

uint64_t FaceTimeVoicemailManager.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of VoiceMailAnalyticsLogger(v0 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_analyticsReporter);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged));
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
}

id FaceTimeVoicemailManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  outlined init with copy of Tip(v0 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_0(v8, v9);
  v4 = *(v3 + 16);

  v4(v5, v2, v3);

  __swift_destroy_boxed_opaque_existential_0(v8);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t FaceTimeVoicemailManager.listenForChanges(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v10 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v10;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = a2;
  v12 = v2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in FaceTimeVoicemailManager.listenForChanges(_:), v11);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t closure #1 in FaceTimeVoicemailManager.listenForChanges(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.listenForChanges(_:), v8, v7);
}

uint64_t closure #1 in FaceTimeVoicemailManager.listenForChanges(_:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v0[2] = *(v0[4] + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messagesChangedPublisher);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<VoicemailManagerMessageChanges, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  v5 = Publisher<>.sink(receiveValue:)();

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

uint64_t FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(uint64_t a1, unsigned __int8 a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = VoicemailManagerMessageChanges.description.getter(a1, a2);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "FaceTimeVoicemailManager: Is notifying listeners of messageChanges: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.voicemailsChanged(messageChanges:), v5, v4);
}

uint64_t closure #1 in FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    PassthroughSubject.send(_:)();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t FaceTimeVoicemailManager.fetchMessagesFromDataStore()()
{
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[100] = v3;
  v1[101] = v2;

  return (_swift_task_switch)(FaceTimeVoicemailManager.fetchMessagesFromDataStore(), v3, v2);
}

{
  v0[102] = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetching Messages from FTMS", v3, 2u);
  }

  v4 = v0[99];

  v5 = swift_allocObject();
  v0[103] = v5;
  *(v5 + 16) = v4;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTySay20FaceTimeMessageStore0C0CGs5Error_pGMd);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, FaceTimeVoicemailManager.fetchMessagesFromDataStore(), v0 + 82);
}

{
  v1 = v0[87];
  v0[104] = v1;

  v2 = swift_task_alloc();
  v0[105] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C0CGMd);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  *v2 = v0;
  v2[1] = FaceTimeVoicemailManager.fetchMessagesFromDataStore();

  return Task.value.getter(v0 + 93, v1, v3, v4, &protocol self-conformance witness table for Error);
}

{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 808);
  v4 = *(v2 + 800);
  if (v0)
  {
    v5 = FaceTimeVoicemailManager.fetchMessagesFromDataStore();
  }

  else
  {
    v5 = FaceTimeVoicemailManager.fetchMessagesFromDataStore();
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v13 = v0;
  v2 = *(v0 + 744);

  v3 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.default.getter();
  v5 = (v2 >> 62);
  if (os_log_type_enabled(v3, v4))
  {
    v1 = swift_slowAlloc();
    *v1 = 134349056;
    if (v5)
    {
      goto LABEL_25;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    *(v1 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %{public}ld message(s) from FTMS", v1, 0xCu);
  }

  else
  {
  }

  if (v5)
  {
    goto LABEL_19;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_8:
    v12 = _swiftEmptyArrayStorage;
    v3 = &v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
LABEL_25:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_4;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          if (!v4)
          {
            break;
          }

          goto LABEL_8;
        }

        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v2 + 8 * v1 + 32);
      }

      v8 = v7;
      ++v1;
      v9 = objc_allocWithZone(type metadata accessor for FTMessage());
      v5 = FTMessage.init(ftMessage:)(v8);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v4 == v1)
      {

        v10 = v12;
        goto LABEL_21;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_21:
  *(v0 + 856) = v10;

  return _swift_asyncLet_finish(v0 + 16, v0 + 696, FaceTimeVoicemailManager.fetchMessagesFromDataStore(), v0 + 752);
}

{
  return (_swift_task_switch)(FaceTimeVoicemailManager.fetchMessagesFromDataStore(), *(v0 + 800), *(v0 + 808));
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 856);

  return v1(v2);
}

{
  return _swift_asyncLet_finish(v0 + 16, v0 + 696, FaceTimeVoicemailManager.fetchMessagesFromDataStore(), v0 + 704);
}

{
  return (_swift_task_switch)(FaceTimeVoicemailManager.fetchMessagesFromDataStore(), *(v0 + 800), *(v0 + 808));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[4] = swift_task_alloc();

  return (_swift_task_switch)(implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore(), 0, 0);
}

uint64_t implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = v2;
  *v3 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSay20FaceTimeMessageStore0G0CG_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore(), v5);

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MessageFetchOptions();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MessageStoreQuery();
  v4[10] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v4[11] = Request;
  v4[12] = *(Request - 8);
  v4[13] = swift_task_alloc();

  return (_swift_task_switch)(closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore(), 0, 0);
}

uint64_t closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v9 = *(v0 + 32);
  FaceTimeVoicemailManager.allMessagesQuery.getter(*(v0 + 80));
  (*(v2 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v3);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageFetchOptions and conformance MessageFetchOptions, &type metadata accessor for MessageFetchOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A], &_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  v4 = *(v9 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 24);
  v5 = *(v9 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 32);
  __swift_project_boxed_opaque_existential_0((v9 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController), v4);
  v10 = (*(v5 + 40) + **(v5 + 40));
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore();
  v7 = *(v0 + 104);

  return v10(v7, v4, v5);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[15];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    if (v4 >> 62)
    {
      v12 = v5;
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v5 = v12;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "Loading FTMessages gave us %{public}ld message(s).", v7, 0xCu);
  }

  else
  {
  }

  v8 = v0[15];
  v9 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v9 = v8;

  v10 = v0[1];

  return v10();
}

{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error loading FTMessages %@", v3, 0xCu);
    outlined destroy of NSObject?(v4);
  }

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore();
  }

  else
  {
    v4 = closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore();
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t FaceTimeVoicemailManager.message(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for MessageStoreQuery();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for MessageID.Value(0);
  v2[18] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[19] = v6;
  v2[20] = v5;

  return (_swift_task_switch)(FaceTimeVoicemailManager.message(for:), v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 192) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return (_swift_task_switch)(FaceTimeVoicemailManager.message(for:), v7, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 208) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);

  return (_swift_task_switch)(FaceTimeVoicemailManager.message(for:), v7, v6);
}

uint64_t FaceTimeVoicemailManager.message(for:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  v0[21] = v1;
  if (!(v1 >> 62))
  {

    v23 = swift_task_alloc();
    v0[22] = v23;
    v24 = type metadata accessor for CachedVoicemailManager.Cache();
    *v23 = v0;
    v23[1] = FaceTimeVoicemailManager.message(for:);
    v25 = (v0 + 8);
    v26 = v1;

    return Task<>.value.getter(v25, v26, v24);
  }

  if (v1 >> 62 == 1)
  {
    v2 = v0[9];
    swift_beginAccess();
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v4 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v5 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

    specialized OrderedDictionary.subscript.getter(v2, v3, v4, v5);
    v7 = v6;

    if (v7)
    {

      v8 = v0[1];

      return v8(v7);
    }
  }

  outlined init with copy of MessageID.Value(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = v0[18];
  if (EnumCaseMultiPayload != 1)
  {
    v27 = *v11;
    v28 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100209AA0;
    if (!(v27 >> 31))
    {
      v30 = v0[12];
      v29 = v0[13];
      v31 = v0[11];
      *(v25 + 32) = v27;
      *(v28 + 16) = v25;
      *v29 = v28;
      (*(v30 + 104))(v29, enum case for MessageStoreQuery.voicemailID(_:), v31);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = FaceTimeVoicemailManager.message(for:);
      goto LABEL_14;
    }

    __break(1u);
    return Task<>.value.getter(v25, v26, v24);
  }

  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[11];
  v17 = v0[12];
  (*(v13 + 32))(v12, v11, v15);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100209AA0;
  (*(v13 + 16))(v20 + v19, v12, v15);
  *(v18 + 16) = v20;
  *v14 = v18;
  (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v22 = FaceTimeVoicemailManager.message(for:);
LABEL_14:
  v21[1] = v22;
  v32 = v0[13];

  return FaceTimeVoicemailManager.faceTimeMessageForQuery(_:)(v32);
}

{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return (_swift_task_switch)(FaceTimeVoicemailManager.message(for:), v3, v2);
}

{
  v1 = v0[8];
  v2 = v0[9];
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  specialized OrderedDictionary.subscript.getter(v2, v3, v4, v5);
  v7 = v6;

  if (v7)
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    outlined init with copy of MessageID.Value(v0[9] + OBJC_IVAR___MPMessageID_value, v0[18]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[15];
      v12 = v0[16];
      v14 = v0[13];
      v15 = v0[14];
      v16 = v0[11];
      v17 = v0[12];
      (*(v13 + 32))(v12, v11, v15);
      v18 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
      v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100209AA0;
      (*(v13 + 16))(v20 + v19, v12, v15);
      *(v18 + 16) = v20;
      *v14 = v18;
      (*(v17 + 104))(v14, enum case for MessageStoreQuery.recordUUID(_:), v16);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v22 = FaceTimeVoicemailManager.message(for:);
    }

    else
    {
      v23 = *v11;
      v24 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_100209AA0;
      if (v23 >> 31)
      {
        __break(1u);
        return result;
      }

      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      *(result + 32) = v23;
      *(v24 + 16) = result;
      *v25 = v24;
      (*(v26 + 104))(v25, enum case for MessageStoreQuery.voicemailID(_:), v27);
      v21 = swift_task_alloc();
      v0[25] = v21;
      *v21 = v0;
      v22 = FaceTimeVoicemailManager.message(for:);
    }

    v21[1] = v22;
    v28 = v0[13];

    return FaceTimeVoicemailManager.faceTimeMessageForQuery(_:)(v28);
  }
}

{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[24];

  v2 = v0[1];

  return v2(v1);
}

{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t FaceTimeVoicemailManager.faceTimeMessageForQuery(_:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  Options = type metadata accessor for MessageFetchOptions();
  v2[8] = Options;
  v2[9] = *(Options - 8);
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreQuery();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v2[15] = Request;
  v2[16] = *(Request - 8);
  v2[17] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v8;
  v2[19] = v7;

  return (_swift_task_switch)(FaceTimeVoicemailManager.faceTimeMessageForQuery(_:), v8, v7);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 152);
  v6 = *(v3 + 144);
  if (v1)
  {
    v7 = FaceTimeVoicemailManager.faceTimeMessageForQuery(_:);
  }

  else
  {
    v7 = FaceTimeVoicemailManager.faceTimeMessageForQuery(_:);
  }

  return (_swift_task_switch)(v7, v6, v5);
}

uint64_t FaceTimeVoicemailManager.faceTimeMessageForQuery(_:)()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[6];
  v11 = v0[5];
  v12 = v0[4];
  v4 = *(v1 + 16);
  v0[20] = v4;
  v0[21] = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20FaceTimeMessageStore0F12FetchOptionsVGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100209AA0;
  static MessageFetchOptions.includeProtectedApps.getter();
  v0[2] = v5;
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageFetchOptions and conformance MessageFetchOptions, &type metadata accessor for MessageFetchOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A], &_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v2, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v11);
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  v6 = *(v12 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 24);
  v7 = *(v12 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 32);
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController), v6);
  v13 = (*(v7 + 40) + **(v7 + 40));
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = FaceTimeVoicemailManager.faceTimeMessageForQuery(_:);
  v9 = v0[17];

  return v13(v9, v6, v7);
}

{
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[23] + 32);
  }

  v4 = v0[4];

  v5 = objc_allocWithZone(type metadata accessor for FTMessage());
  v6 = v3;
  v7 = FTMessage.init(ftMessage:)(v6);
  v8 = *(v4 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes);
  v9 = dispatch thunk of Message.messageType.getter();
  if (specialized Sequence<>.contains(_:)(v9, v8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100209A80;
    *(v10 + 32) = v7;
    v11 = v7;
    FaceTimeVoicemailManager.addMessagesHandlingError(messages:)(v10);
  }

LABEL_11:

  v12 = v0[1];

  return v12(v7);
}

{
  v22 = v0;
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1(v2, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v11 = 136446466;
    _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageStoreQuery and conformance MessageStoreQuery, &type metadata accessor for MessageStoreQuery);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v16;
    *v19 = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v11, 0x16u);
    outlined destroy of NSObject?(v19);

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v17 = v0[1];

  return v17(0);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.message(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.message(for:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.message(for:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = @objc closure #1 in CachedVoicemailManager.message(for:);
  v6 = *(v0 + 16);

  return FaceTimeVoicemailManager.message(for:)(v6);
}

Swift::Void __swiftcall FaceTimeVoicemailManager.addMessagesHandlingError(messages:)(Swift::OpaquePointer messages)
{
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state) >> 62;
  if (!v3)
  {
    v8 = swift_allocObject();
    v8[2]._rawValue = messages._rawValue;
    v9 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v10 = *(v1 + v9);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v9) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10);
      *(v1 + v9) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = _s11MobilePhone22CachedVoicemailManagerC11addMessages8messagesySayAA7Message_pG_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_TA_0;
    v14[5] = v8;
    *(v1 + v9) = v10;
    swift_endAccess();
    goto LABEL_16;
  }

  if (v3 != 1)
  {
LABEL_16:
    lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
    swift_willThrowTypedImpl();
    return;
  }

  CachedVoicemailManager.Cache.add(_:shouldSort:)(messages._rawValue, 1);

  if (messages._rawValue >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((messages._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    if ((messages._rawValue & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = v5 + 1;
        v7 = [specialized _ArrayBuffer._getElementSlowPath(_:)() identifier];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v6;
      }

      while (v4 != v6);
    }

    else
    {
      v15 = (messages._rawValue + 32);
      do
      {
        v16 = *v15++;
        v17 = [v16 identifier];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v4;
      }

      while (v4);
    }
  }

  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 1u);
}

void MessageStoreDelegate.manager.didset()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (*(v0 + 24) >= 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = *(v1 + 24);

        _os_log_impl(&_mh_execute_header, v7, v8, "Calling requires refetch on manager because %ld delegate calls were missed", v9, 0xCu);
      }

      else
      {
      }

      v10 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v3 + 16))(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), &v6[v10], v2);
      v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      (*(v3 + 32))(v13 + v12, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);

      dispatch thunk of TaskQueue.async(_:)();
    }
  }
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreDidAddMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreDidAddMessages(_:), v9, v8);
}

void closure #1 in MessageStoreDelegate.messageStoreDidAddMessages(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreDidUpdateMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreDidUpdateMessages(_:), v9, v8);
}

void closure #1 in MessageStoreDelegate.messageStoreDidUpdateMessages(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t @objc MessageStoreDelegate.messageStoreDidAddMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  a4(0);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v15 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v16 = swift_allocObject();
  v16[2] = inited;
  v16[3] = v15;
  v16[4] = a1;
  v16[5] = v12;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v11, a6, v16);
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessages(_:), v9, v8);
}

void closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessages(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessagesWithUUIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v5[6] = *(v7 + 64);
  v5[7] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessagesWithUUIDs(_:), v9, v8);
}

void closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessagesWithUUIDs(_:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];
    v7 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v2, &v8[v7], v4);
    v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    (*(v5 + 32))(v12 + v10, v2, v4);
    *(v12 + v11) = v6;

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "MessageStoreDelegate called with nil manager", v15, 2u);
    }

    v16 = v0[2];

    v17 = *(v16 + 24);
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return;
    }

    *(v16 + 24) = v19;
  }

  v20 = v0[1];

  v20();
}

uint64_t FaceTimeVoicemailManager.messageStoreDidAddMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[1] = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v8, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreDidReconnect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreDidReconnect(), v8, v7);
}

void closure #1 in MessageStoreDelegate.messageStoreDidReconnect()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t FaceTimeVoicemailManager.messageStoreRequiresRefetch()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v2 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v4, v1);
  v6 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v2 + 32))(v7 + v6, &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in MessageStoreDelegate.messageStoreRequiresRefetch()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v4[5] = *(v6 + 64);
  v4[6] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in MessageStoreDelegate.messageStoreRequiresRefetch(), v8, v7);
}

void closure #1 in MessageStoreDelegate.messageStoreRequiresRefetch()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[6];
    v3 = v0[3];
    v4 = v0[4];
    v5 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v4 + 16))(v2, &v6[v5], v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, v2, v3);

    dispatch thunk of TaskQueue.async(_:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "MessageStoreDelegate called with nil manager", v12, 2u);
    }

    v13 = v0[2];

    v14 = *(v13 + 24);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v16;
  }

  v17 = v0[1];

  v17();
}

uint64_t @objc MessageStoreDelegate.messageStoreDidReconnect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a4, v12);
}

uint64_t MessageStoreDelegate.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC11MobilePhoneP33_16A679D6AB3E8F4F37E91E12102EA1A620MessageStoreDelegate_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidAddMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreDidAddMessages(_:), v5, v4);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidAddMessages(_:)()
{
  v64 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (!Strong)
  {
    LOBYTE(v9) = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v2, v9);
    v20 = *(v0 + 184);
    if (!v19)
    {

      goto LABEL_36;
    }

    v21 = swift_slowAlloc();
    *v21 = 134217984;
    if (!(v20 >> 62))
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_21:
      *(v21 + 4) = v22;
      v23 = v21;

      _os_log_impl(&_mh_execute_header, v2, v9, "ignoring %ld added messages, no more self", v23, 0xCu);

LABEL_36:
      Strong = v2;
      goto LABEL_58;
    }

LABEL_65:
    v59 = v21;
    v22 = _CocoaArrayWrapper.endIndex.getter();
    v21 = v59;
    goto LABEL_21;
  }

  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v63 = v5;
    *v4 = 136315138;
    type metadata accessor for Message();
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v63);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidAddMessages: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v2 = *(v0 + 184);
  v9 = *(Strong + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes);
  v63 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v61 = Strong;
    v62 = v0;
    if (!i)
    {
      break;
    }

    v11 = 0;
    v12 = *(v0 + 184);
    v0 = v2 & 0xC000000000000001;
    v13 = v2 & 0xFFFFFFFFFFFFFF8;
    Strong = (v12 + 32);
    while (1)
    {
      if (v0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_38;
        }

        v14 = Strong[v11];
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v2 = v14;
      v17 = dispatch thunk of Message.messageType.getter();
      if (specialized Sequence<>.contains(_:)(v17, v9))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = &v63;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v63;
        Strong = v61;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v24 = (v18 >> 62) & 1;
  if (v18 < 0)
  {
    LODWORD(v24) = 1;
  }

  v60 = v24;
  if (v24 == 1)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v21;
    v0 = v62;
    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v25 = *(v18 + 16);
    v0 = v62;
    if (!v25)
    {
      goto LABEL_41;
    }
  }

  if (v25 < 1)
  {
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v26 = 0;
  v27 = v18 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v28 = *(v18 + 8 * v26 + 32);
    }

    v29 = v28;
    v30 = dispatch thunk of Message.fileSize.getter();
    if ((v31 & 1) == 0)
    {
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10020DA80;
      *(inited + 32) = 0x6D766C5F7369;
      *(inited + 40) = 0xE600000000000000;
      type metadata accessor for NSMutableArray(0, lazy cache variable for type metadata for NSNumber);
      dispatch thunk of Message.messageType.getter();
      v34 = MessageType.rawValue.getter();
      v35 = v34 == MessageType.rawValue.getter();
      *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v35);
      *(inited + 56) = 0x6D76765F7369;
      *(inited + 64) = 0xE600000000000000;
      dispatch thunk of Message.messageType.getter();
      v36 = MessageType.rawValue.getter();
      v37 = v36 == MessageType.rawValue.getter();
      *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(v37);
      *(inited + 80) = 0x6E6F697461727564;
      *(inited + 88) = 0xE800000000000000;
      dispatch thunk of Message.duration.getter();
      *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v38)];
      *(inited + 104) = 0xD000000000000011;
      *(inited + 112) = 0x8000000100245CC0;
      *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v32];
      v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
      Strong = v61;
      v0 = v62;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
      v27 = v18 & 0xC000000000000001;
      swift_arrayDestroy();
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v39);
      v41._rawValue = v40;

      v42._countAndFlagsBits = 0xD00000000000002DLL;
      v42._object = 0x8000000100245CE0;
      VoiceMailAnalyticsLogger.logEvent(_:withCoreAnalyticsDictionary:)(v42, v41);
    }

    ++v26;
  }

  while (v25 != v26);
LABEL_41:

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = v25;
    v47 = swift_slowAlloc();
    v63 = v47;
    *v45 = 136315138;
    type metadata accessor for Message();
    v48 = Array.description.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v63);

    *(v45 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "messageStoreDidAddMessages(filtered): %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    v25 = v46;
  }

  if (!v25)
  {

    goto LABEL_58;
  }

  if (v60)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *(v18 + 16);
  }

  if (v9)
  {
    v63 = _swiftEmptyArrayStorage;
    v2 = &v63;
    v21 = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v9 & 0x8000000000000000) == 0)
    {
      v51 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v52 = *(v18 + 8 * v51 + 32);
        }

        v53 = v52;
        ++v51;
        v54 = objc_allocWithZone(type metadata accessor for FTMessage());
        FTMessage.init(ftMessage:)(v53);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v9 != v51);

      v55 = v63;
      if (!(v63 >> 62))
      {
        goto LABEL_56;
      }

LABEL_62:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
      v56 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_57;
    }

    goto LABEL_64;
  }

  v55 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_62;
  }

LABEL_56:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v56 = v55;
LABEL_57:

  FaceTimeVoicemailManager.addMessagesHandlingError(messages:)(v56);

LABEL_58:

  v57 = *(v0 + 8);

  return v57();
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidUpdateMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreDidUpdateMessages(_:), v5, v4);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidUpdateMessages(_:)()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (!Strong)
  {
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = _CocoaArrayWrapper.endIndex.getter();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld updated messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    type metadata accessor for Message();
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidUpdateMessages: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = dispatch thunk of Message.messageType.getter();
      if (specialized Sequence<>.contains(_:)(v17, v45))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = &v46;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    type metadata accessor for Message();
    v29 = Array.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidUpdateMessages(filtered): %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v38 = v37;
LABEL_36:

          FaceTimeVoicemailManager.updateMessagesHandlingError(messages:)(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
        v38 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          FTMessage.init(ftMessage:)(v35);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

Swift::Void __swiftcall FaceTimeVoicemailManager.updateMessagesHandlingError(messages:)(Swift::OpaquePointer messages)
{
  _s11MobilePhone22CachedVoicemailManagerC14updateMessages8messagesySayAA7Message_pG_tAC5ErrorOYKF(messages._rawValue);
  if (messages._rawValue >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((messages._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v10 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      return;
    }

    if ((messages._rawValue & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = v4 + 1;
        v6 = [specialized _ArrayBuffer._getElementSlowPath(_:)() identifier];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v4 = v5;
      }

      while (v2 != v5);
    }

    else
    {
      v7 = (messages._rawValue + 32);
      do
      {
        v8 = *v7++;
        v9 = [v8 identifier];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v2;
      }

      while (v2);
    }

    v3 = v10;
  }

  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v3, 2u);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessages(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessages(_:), v5, v4);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessages(_:)()
{
  v47 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (!Strong)
  {
    v19 = static os_log_type_t.error.getter();
    v20 = os_log_type_enabled(v2, v19);
    v21 = *(v0 + 56);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      if (v21 >> 62)
      {
        v42 = v22;
        v23 = _CocoaArrayWrapper.endIndex.getter();
        v22 = v42;
      }

      else
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 4) = v23;
      v24 = v22;

      _os_log_impl(&_mh_execute_header, v2, v19, "ignoring %ld deleted messages, no more self", v24, 0xCu);

      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46 = v5;
    *v4 = 136315138;
    type metadata accessor for Message();
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v46);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidMoveToTrashMessages: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v9 = *(v0 + 56);
  v45 = *(Strong + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes);
  v46 = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v44 = Strong;

    if (!i)
    {
      break;
    }

    v11 = 0;
    v43 = v0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    Strong = *(v0 + 56) + 32;
    v0 = v45;
    while (1)
    {
      if (v12)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_39;
        }

        v14 = *(Strong + 8 * v11);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v9 = v14;
      v17 = dispatch thunk of Message.messageType.getter();
      if (specialized Sequence<>.contains(_:)(v17, v45))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = &v46;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        v18 = v46;
        v0 = v43;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_23:

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    type metadata accessor for Message();
    v29 = Array.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v46);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "messageStoreDidMoveToTrashMessages(filtered): %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  v2 = v44;
  if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
      if (!v39)
      {

        v37 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_35:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          v38 = v37;
LABEL_36:

          FaceTimeVoicemailManager.updateMessagesHandlingError(messages:)(v38);
LABEL_37:

          goto LABEL_46;
        }

LABEL_51:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
        v38 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_36;
      }

      v32 = v39;
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_29:
        v33 = 0;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v34 = *(v18 + 8 * v33 + 32);
          }

          v35 = v34;
          ++v33;
          v36 = objc_allocWithZone(type metadata accessor for FTMessage());
          FTMessage.init(ftMessage:)(v35);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v32 != v33);

        v37 = v46;
        if (!(v46 >> 62))
        {
          goto LABEL_35;
        }

        goto LABEL_51;
      }

      __break(1u);
    }
  }

  else
  {
    v32 = *(v18 + 16);
    if (v32)
    {
      v46 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      goto LABEL_29;
    }
  }

LABEL_46:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessagesWithUUIDs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessagesWithUUIDs(_:), v6, v5);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessagesWithUUIDs(_:)()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (Strong)
  {
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v31 = v5;
      *v4 = 136315138;
      v6 = Array.description.getter();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v31);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "messageStoreDidDeleteMessagesWithUUIDs: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    v9 = *(v0 + 72);
    v10 = *(v9 + 16);
    v11 = _swiftEmptyArrayStorage;
    if (v10)
    {
      v27 = Strong;
      v12 = *(v0 + 88);
      v31 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v13 = *(v12 + 16);
      v12 += 16;
      v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
      v29 = *(v12 + 56);
      v30 = v13;
      v28 = (v12 - 8);
      do
      {
        v16 = *(v0 + 96);
        v15 = *(v0 + 104);
        v17 = *(v0 + 80);
        v30(v15, v14, v17);
        v30(v16, v15, v17);
        v18 = type metadata accessor for MessageID(0);
        v19 = objc_allocWithZone(v18);
        v30(&v19[OBJC_IVAR___MPMessageID_value], v16, v17);
        type metadata accessor for MessageID.Value(0);
        swift_storeEnumTagMultiPayload();
        *(v0 + 40) = v19;
        *(v0 + 48) = v18;
        objc_msgSendSuper2((v0 + 40), "init");
        v20 = *v28;
        (*v28)(v16, v17);
        v20(v15, v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v14 += v29;
        --v10;
      }

      while (v10);
      v11 = v31;
      Strong = v27;
    }

    FaceTimeVoicemailManager.removeMessagesHandlingError(with:)(v11);
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v2, v21);
    v23 = *(v0 + 72);
    if (v22)
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = *(v23 + 16);

      _os_log_impl(&_mh_execute_header, v2, v21, "ignoring %ld deleted messageUUIDs, no more self", v24, 0xCu);
    }

    else
    {
    }

    Strong = v2;
  }

  v25 = *(v0 + 8);

  return v25();
}

Swift::Void __swiftcall FaceTimeVoicemailManager.removeMessagesHandlingError(with:)(Swift::OpaquePointer with)
{
  v1 = _s11MobilePhone22CachedVoicemailManagerC14removeMessages4withSayAA9MessageIDCGAH_tAC5ErrorOYKF(with._rawValue);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    type metadata accessor for MessageID(0);
    v6 = Array.description.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v9);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager did remove: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_5:
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v1, 0);
  }

LABEL_6:
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidReconnect()(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreDidReconnect(), v4, v3);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreDidReconnect()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreDidReconnect(), triggering onVoicemailsChanged().", v5, 2u);
    }

    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(0, 3u);
  }

  else
  {
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreDidReconnect(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreRequiresRefetch()(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in FaceTimeVoicemailManager.messageStoreRequiresRefetch(), v4, v3);
}

uint64_t closure #1 in FaceTimeVoicemailManager.messageStoreRequiresRefetch()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state) = 0x8000000000000000;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "messageStoreRequiresRefetch(), triggering onVoicemailsChanged().", v5, 2u);
    }

    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(0, 3u);
  }

  else
  {
    v2 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, v6, "ignoring messageStoreRequiresRefetch(), no more self", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

Swift::Void __swiftcall FaceTimeVoicemailManager.requestInitialStateIfNecessary(sendNotifications:)(Swift::Bool sendNotifications)
{
  if (sendNotifications)
  {
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(0, 3u);
  }
}

uint64_t FaceTimeVoicemailManager.delete(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for MessageStoreQuery();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v6;
  v2[18] = v5;

  return (_swift_task_switch)(FaceTimeVoicemailManager.delete(_:), v6, v5);
}

uint64_t FaceTimeVoicemailManager.delete(_:)()
{
  v11 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[7]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[19] = v1;
  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[20] = v6;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:

    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v0[20] = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:

  return (_swift_task_switch)(FaceTimeVoicemailManager.delete(_:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(FaceTimeVoicemailManager.delete(_:), v2, v1);
}

{
  v1 = v0[20];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[19];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      v9 = v0[20];
      v10 = v5 + 1;
      if (v7)
      {
        atomic_store(1u, (specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted));
        swift_unknownObjectRelease();
      }

      else
      {
        atomic_store(1u, (*(v8 + 8 * v5) + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted));
      }

      v5 = v10;
    }

    while (v10 != v9);
    v3 = v0[17];
    v4 = v0[18];
    v2 = FaceTimeVoicemailManager.delete(_:);
  }

  return (_swift_task_switch)(v2, v3, v4);
}

{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 0);

    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 104);
  v35 = (v5 + 8);
  v36 = (v5 + 16);
  do
  {
    v14 = *(v0 + 152);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v14 + 8 * v4 + 32);
    }

    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 96);
    ++v4;
    v38 = v6;
    dispatch thunk of Message.recordUUID.getter();
    v10 = *v36;
    (*v36)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 40) = v12;
    *(v0 + 48) = v11;
    objc_msgSendSuper2((v0 + 40), "init");
    v13 = *v35;
    (*v35)(v8, v9);
    v13(v7, v9);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v4);
  v15 = *(v0 + 104);
  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 0);

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  for (i = 0; i != v2; ++i)
  {
    v17 = *(v0 + 152);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v17 + 8 * i + 32);
    }

    v19 = v18;
    swift_beginAccess();
    v20 = v19;
    dispatch thunk of Message.recordUUID.getter();
    swift_endAccess();

    v22 = _swiftEmptyArrayStorage[2];
    v21 = _swiftEmptyArrayStorage[3];
    if (v22 >= v21 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
    }

    v23 = *(v0 + 112);
    v24 = *(v0 + 96);
    _swiftEmptyArrayStorage[2] = v22 + 1;
    (*(v15 + 32))(_swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
  }

LABEL_19:

  *(v0 + 176) = _swiftEmptyArrayStorage;
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);
  v27 = *(v0 + 72);
  v28 = (*(v0 + 64) + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v29 = v28[3];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_0(v28, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = _swiftEmptyArrayStorage;
  *v25 = v31;
  (*(v26 + 104))(v25, enum case for MessageStoreQuery.recordUUID(_:), v27);
  v32 = *(v30 + 24);

  v37 = (v32 + *v32);
  v33 = swift_task_alloc();
  *(v0 + 184) = v33;
  *v33 = v0;
  v33[1] = FaceTimeVoicemailManager.delete(_:);
  v34 = *(v0 + 88);

  return v37(v34, v29, v30);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v5[24] = v0;

  (*(v3 + 8))(v2, v4);
  if (!v0)
  {

    v8 = v5[1];

    __asm { BRAA            X1, X16 }
  }

  v6 = v5[17];
  v7 = v5[18];

  return (_swift_task_switch)(FaceTimeVoicemailManager.delete(_:), v6, v7);
}

{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    v6 = Array.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to delete messages with recordUUIDs %s with error: %@", v3, 0x16u);
    outlined destroy of NSObject?(v4);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.delete(_:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.delete(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return FaceTimeVoicemailManager.delete(_:)(v2);
}

uint64_t FaceTimeVoicemailManager.markAsRead(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v5;
  v2[14] = v4;

  return (_swift_task_switch)(FaceTimeVoicemailManager.markAsRead(_:), v5, v4);
}

uint64_t FaceTimeVoicemailManager.markAsRead(_:)()
{
  v17 = v0;
  v0[15] = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v3 = 136315394;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x655273416B72616DLL, 0xEE00293A5F286461, v16);
    *(v3 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
    v4 = Array.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, v16);

    *(v3 + 14) = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v7 = specialized _arrayConditionalCast<A, B>(_:)(v0[4]);
  if (!v7)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    v7 = _swiftEmptyArrayStorage;
  }

  v0[16] = v7;
  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v12;
    if (v12)
    {
      goto LABEL_9;
    }

LABEL_13:

    v14 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v0[17] = v13;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_9:

  return (_swift_task_switch)(FaceTimeVoicemailManager.markAsRead(_:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(FaceTimeVoicemailManager.markAsRead(_:), v2, v1);
}

{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead]);
      LOBYTE(v12[1]._os_unfair_lock_opaque) = 1;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[13];
    v4 = v0[14];
    v2 = FaceTimeVoicemailManager.markAsRead(_:);
  }

  return (_swift_task_switch)(v2, v3, v4);
}

{
  v45 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v44 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v39 = (v5 + 8);
  v40 = (v5 + 16);
  v42 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    super_class = v0[5].super_class;
    v7 = v0[6].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v41 = v6;
    dispatch thunk of Message.recordUUID.getter();
    v10 = *v40;
    (*v40)(super_class, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], super_class, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v39;
    (*v39)(super_class, v9);
    v13(v7, v9);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v42 != v4);
  v15 = v0[5].receiver;
  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v44, 2u);

  v44 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    dispatch thunk of Message.recordUUID.getter();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v42 != v16);
  v28 = v44;
LABEL_17:
  v0[9].super_class = v28;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x655273416B72616DLL, 0xEE00293A5F286461, &v44);
    *(v31 + 12) = 2080;
    type metadata accessor for FTMessage();
    v32 = Array.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s: Updating Messages with read: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  v35 = (v0[2].super_class + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v36 = v35[3];
  v37 = v35[4];
  __swift_project_boxed_opaque_existential_0(v35, v36);
  v43 = (*(v37 + 48) + **(v37 + 48));
  v38 = swift_task_alloc();
  v0[10].receiver = v38;
  *v38 = v0;
  v38[1] = FaceTimeVoicemailManager.markAsRead(_:);

  return v43(v28, v36, v37);
}

{
  v2 = *v1;
  v2[21] = v0;

  if (!v0)
  {

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[13];
  v4 = v2[14];

  return (_swift_task_switch)(FaceTimeVoicemailManager.markAsRead(_:), v3, v4);
}

{
  v14 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v3 = 136315394;
    type metadata accessor for FTMessage();
    v6 = Array.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v13);

    *(v3 + 4) = v9;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v10;
    *v4 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as read with error: %@", v3, 0x16u);
    outlined destroy of NSObject?(v4);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.markAsRead(_:);

  return FaceTimeVoicemailManager.markAsRead(_:)(v2);
}

uint64_t FaceTimeVoicemailManager.moveToTrash(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v5;
  v2[16] = v4;

  return (_swift_task_switch)(FaceTimeVoicemailManager.moveToTrash(_:), v5, v4);
}

uint64_t FaceTimeVoicemailManager.moveToTrash(_:)()
{
  v11 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[4]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[17] = v1;
  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[18] = v6;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:

    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v0[18] = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:

  return (_swift_task_switch)(FaceTimeVoicemailManager.moveToTrash(_:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 152) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(FaceTimeVoicemailManager.moveToTrash(_:), v2, v1);
}

{
  v1 = v0[18];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[17];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[18];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder]);
      *(v12 + 1) = 2;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[15];
    v4 = v0[16];
    v2 = FaceTimeVoicemailManager.moveToTrash(_:);
  }

  return (_swift_task_switch)(v2, v3, v4);
}

{
  v47 = v0;
  super_class = v0[8].super_class;
  if (super_class >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((super_class & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  receiver = v0[5].receiver;
  v41 = (receiver + 8);
  v42 = (receiver + 16);
  v44 = v2;
  do
  {
    v14 = v0[8].super_class;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].super_class;
    v7 = v0[7].receiver;
    v9 = v0[4].super_class;
    ++v4;
    v43 = v6;
    dispatch thunk of Message.recordUUID.getter();
    v10 = *v42;
    (*v42)(v8, v7, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v41;
    (*v41)(v8, v9);
    v13(v7, v9);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v44 != v4);
  v15 = v0[5].receiver;
  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v46, 2u);

  v46 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].super_class;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    dispatch thunk of Message.recordUUID.getter();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v44 != v16);

  v28 = v46;
LABEL_17:
  v29 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    type metadata accessor for MessageUpdate();
    v34 = Array.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[moveToTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v37 = (v0[2].super_class + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v38 = v37[3];
  v39 = v37[4];
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v45 = (*(v39 + 48) + **(v39 + 48));
  v40 = swift_task_alloc();
  v0[11].receiver = v40;
  *v40 = v0;
  v40[1] = FaceTimeVoicemailManager.moveToTrash(_:);

  return v45(v28, v38, v39);
}

{
  v2 = *v1;
  v2[23] = v0;

  if (!v0)
  {

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[15];
  v4 = v2[16];

  return (_swift_task_switch)(FaceTimeVoicemailManager.moveToTrash(_:), v3, v4);
}

size_t FaceTimeVoicemailManager.moveToTrash(_:)()
{
  v35 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v4 = 136315394;
    if (v3 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v32 = v5;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v5;
      if (v7)
      {
LABEL_4:
        v34 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
        if (v7 < 0)
        {
          __break(1u);
          return result;
        }

        v29 = v6;
        v30 = v2;
        v31 = v1;
        v9 = v34;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = 0;
          v11 = v0[10];
          do
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            MessageUpdate.recordUUID.getter();
            swift_unknownObjectRelease();
            v34 = v9;
            v13 = v9[2];
            v12 = v9[3];
            if (v13 >= v12 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1);
              v9 = v34;
            }

            v14 = v0[12];
            v15 = v0[9];
            ++v10;
            v9[2] = v13 + 1;
            (*(v11 + 32))(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v13, v14, v15);
          }

          while (v7 != v10);
        }

        else
        {
          v16 = v0[10];
          v17 = (v0[20] + 32);
          do
          {
            v18 = *v17;
            MessageUpdate.recordUUID.getter();

            v34 = v9;
            v20 = v9[2];
            v19 = v9[3];
            if (v20 >= v19 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
              v9 = v34;
            }

            v21 = v0[11];
            v22 = v0[9];
            v9[2] = v20 + 1;
            (*(v16 + 32))(v9 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v20, v21, v22);
            ++v17;
            --v7;
          }

          while (v7);
        }

        v1 = v31;
        v2 = v30;
        v6 = v29;
        goto LABEL_19;
      }
    }

LABEL_19:
    v23 = Array.description.getter();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v33);

    *(v4 + 4) = v26;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v27;
    *v32 = v27;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    outlined destroy of NSObject?(v32);

    __swift_destroy_boxed_opaque_existential_0(v6);

    goto LABEL_20;
  }

LABEL_20:

  v28 = v0[1];

  return v28();
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return FaceTimeVoicemailManager.moveToTrash(_:)(v2);
}

uint64_t FaceTimeVoicemailManager.removeFromTrash(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v5;
  v2[15] = v4;

  return (_swift_task_switch)(FaceTimeVoicemailManager.removeFromTrash(_:), v5, v4);
}

uint64_t FaceTimeVoicemailManager.removeFromTrash(_:)()
{
  v11 = v0;
  v1 = specialized _arrayConditionalCast<A, B>(_:)(v0[4]);
  if (!v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x654D3C7961727241, 0xEE003E6567617373, &v10);
      _os_log_impl(&_mh_execute_header, v2, v3, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
    }

    v1 = _swiftEmptyArrayStorage;
  }

  v0[16] = v1;
  if (!(v1 >> 62))
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = v6;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_11:

    v8 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  v0[17] = v7;
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_7:

  return (_swift_task_switch)(FaceTimeVoicemailManager.removeFromTrash(_:), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(FaceTimeVoicemailManager.removeFromTrash(_:), v2, v1);
}

{
  v1 = v0[17];

  if (v1 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v0[16];
    v7 = v6 & 0xC000000000000001;
    v8 = v6 + 32;
    do
    {
      if (v7)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v8 + 8 * v5);
      }

      v10 = v9;
      v11 = v0[17];
      ++v5;
      v12 = &v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder];
      os_unfair_lock_lock(&v9[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder]);
      *(v12 + 1) = 1;
      v12[16] = 0;
      os_unfair_lock_unlock(v12);
    }

    while (v5 != v11);
    v3 = v0[14];
    v4 = v0[15];
    v2 = FaceTimeVoicemailManager.removeFromTrash(_:);
  }

  return (_swift_task_switch)(v2, v3, v4);
}

{
  v47 = v0;
  receiver = v0[8].receiver;
  if (receiver >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v0[9].super_class = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:
    v28 = _swiftEmptyArrayStorage;
    FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(_swiftEmptyArrayStorage, 2u);

    goto LABEL_17;
  }

  v2 = *((receiver & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[9].super_class = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v0[5].receiver;
  v41 = (v5 + 8);
  v42 = (v5 + 16);
  v44 = v2;
  do
  {
    v14 = v0[8].receiver;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v14 + v4 + 4);
    }

    v8 = v0[6].receiver;
    super_class = v0[6].super_class;
    v9 = v0[4].super_class;
    ++v4;
    v43 = v6;
    dispatch thunk of Message.recordUUID.getter();
    v10 = *v42;
    (*v42)(v8, super_class, v9);
    v11 = type metadata accessor for MessageID(0);
    v12 = objc_allocWithZone(v11);
    v10(&v12[OBJC_IVAR___MPMessageID_value], v8, v9);
    type metadata accessor for MessageID.Value(0);
    swift_storeEnumTagMultiPayload();
    v0[1].receiver = v12;
    v0[1].super_class = v11;
    objc_msgSendSuper2(v0 + 1, "init");
    v13 = *v41;
    (*v41)(v8, v9);
    v13(super_class, v9);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v44 != v4);
  v15 = v0[5].receiver;
  FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v46, 2u);

  v46 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v16 = 0;
  v17 = (v15 + 56);
  do
  {
    v27 = v0[8].receiver;
    if ((v27 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v27 + v16 + 4);
    }

    v19 = v18;
    v20 = v0[4].receiver;
    v21 = v0[4].super_class;
    v23 = v0[3].receiver;
    v22 = v0[3].super_class;
    ++v16;
    dispatch thunk of Message.recordUUID.getter();
    v24 = *v17;
    (*v17)(v20, 1, 1, v21);
    v24(v22, 1, 1, v21);
    v25 = type metadata accessor for URL();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v26 = objc_allocWithZone(type metadata accessor for MessageUpdate());
    MessageUpdate.init(recordUUID:callUUID:conversationID:from:provider:isRead:duration:mailboxType:recipient:transcriptionStatus:isRTT:transcriptURL:simID:undelete:)();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v44 != v16);
  v28 = v46;
LABEL_17:
  v29 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger;
  v0[10].receiver = v28;
  v0[10].super_class = v29;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    type metadata accessor for MessageUpdate();
    v34 = Array.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v46);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "[removeFromTrash] Updating messages in FaceTimeVoicemailManager - Updates: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  v37 = (v0[2].super_class + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v38 = v37[3];
  v39 = v37[4];
  __swift_project_boxed_opaque_existential_0(v37, v38);
  v45 = (*(v39 + 48) + **(v39 + 48));
  v40 = swift_task_alloc();
  v0[11].receiver = v40;
  *v40 = v0;
  v40[1] = FaceTimeVoicemailManager.removeFromTrash(_:);

  return v45(v28, v38, v39);
}

{
  v2 = *v1;
  v2[23] = v0;

  if (!v0)
  {

    v5 = v2[1];

    __asm { BRAA            X1, X16 }
  }

  v3 = v2[14];
  v4 = v2[15];

  return (_swift_task_switch)(FaceTimeVoicemailManager.removeFromTrash(_:), v3, v4);
}

size_t FaceTimeVoicemailManager.removeFromTrash(_:)()
{
  v30 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v4 = 136315394;
    if (v3)
    {
      v27 = v5;
      v7 = v0[19];
      v29 = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v26 = v6;
      v9 = 0;
      v10 = v0[10];
      v11 = v29;
      do
      {
        v12 = v0[16];
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v12 + 8 * v9 + 32);
        }

        v14 = v13;
        dispatch thunk of Message.recordUUID.getter();

        v29 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
          v11 = v29;
        }

        v17 = v0[19];
        v18 = v0[11];
        v19 = v0[9];
        ++v9;
        v11[2] = v16 + 1;
        (*(v10 + 32))(v11 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v18, v19);
      }

      while (v9 != v17);

      v5 = v27;
      v6 = v26;
    }

    else
    {
    }

    v20 = Array.description.getter();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v28);

    *(v4 + 4) = v23;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v24;
    *v5 = v24;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    outlined destroy of NSObject?(v5);

    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
  }

  v25 = v0[1];

  return v25();
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 48) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in VisualVoicemailManager.delete(_:);

  return FaceTimeVoicemailManager.removeFromTrash(_:)(v2);
}

uint64_t FaceTimeVoicemailManager.messages(filteredBy:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for VoicemailActor();
  v2[5] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = FaceTimeVoicemailManager.messages(filteredBy:);

  return CachedVoicemailManager.fetchMessages()();
}

uint64_t FaceTimeVoicemailManager.messages(filteredBy:)(uint64_t a1)
{
  *(*v1 + 56) = a1;

  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(FaceTimeVoicemailManager.messages(filteredBy:), v3, v2);
}

uint64_t FaceTimeVoicemailManager.messages(filteredBy:)()
{
  v14 = v0;
  v1 = *(v0 + 56);
  v13 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = *(v0 + 56);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v3 + 32;
      while (1)
      {
        if (v5)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v10 = v13;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v7 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v1 = *(v0 + 24);
        if ((*(v0 + 16))(v8))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v13;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
        if (v9 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:), v5, v4);
}

uint64_t @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:);
  v6 = *(v0 + 32);

  return specialized FaceTimeVoicemailManager.messages(filteredBy:)(v6, v3);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  _Block_release(v2);
  _Block_release(v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t FaceTimeVoicemailManager.countOfUnreadMessages()()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MessageFetchOptions();
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for MessageStoreQuery();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[12] = Request;
  v1[13] = *(Request - 8);
  v1[14] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v6;
  v1[16] = v5;

  return (_swift_task_switch)(FaceTimeVoicemailManager.countOfUnreadMessages(), v6, v5);
}

{
  v1 = v0[10];
  v2 = v0[9];
  v17 = v0[11];
  v18 = v0[7];
  v19 = v0[8];
  v20 = v0[6];
  v3 = v0[3];
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20FaceTimeMessageStore0fG5QueryOGMd);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10020B370;
  v8 = v7 + v6;
  FaceTimeVoicemailManager.allMessagesQuery.getter((v7 + v6));
  v9 = swift_allocObject();
  *(v8 + v5) = v9;
  *(v9 + 16) = 0;
  v10 = *(v1 + 104);
  v10(v8 + v5, enum case for MessageStoreQuery.isRead(_:), v2);
  v11 = swift_allocObject();
  *(v11 + 16) = &outlined read-only object #0 of FaceTimeVoicemailManager.countOfUnreadMessages();
  *(v8 + 2 * v5) = v11;
  v10(v8 + 2 * v5, enum case for MessageStoreQuery.mailbox(_:), v2);
  *(v4 + 16) = v7;
  *v17 = v4;
  v10(v17, enum case for MessageStoreQuery.and(_:), v2);
  (*(v18 + 104))(v19, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v20);
  v0[2] = _swiftEmptyArrayStorage;
  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type MessageFetchOptions and conformance MessageFetchOptions, &type metadata accessor for MessageFetchOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [MessageFetchOptions] and conformance [A], &_sSay20FaceTimeMessageStore0C12FetchOptionsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  v12 = *(v3 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 24);
  v13 = *(v3 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController), v12);
  v21 = (*(v13 + 32) + **(v13 + 32));
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = FaceTimeVoicemailManager.countOfUnreadMessages();
  v15 = v0[14];

  return v21(v15, v12, v13);
}

{
  v1 = v0[18];
  result = (*(v0[13] + 8))(v0[14], v0[12]);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {

    v3 = v0[1];

    return v3(v1);
  }

  return result;
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1(0);
}

uint64_t FaceTimeVoicemailManager.countOfUnreadMessages()(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[15];
    v6 = v4[16];
    v7 = FaceTimeVoicemailManager.countOfUnreadMessages();
  }

  else
  {
    v4[18] = a1;
    v5 = v4[15];
    v6 = v4[16];
    v7 = FaceTimeVoicemailManager.countOfUnreadMessages();
  }

  return (_swift_task_switch)(v7, v5, v6);
}

uint64_t protocol witness for Voicemailmanager_ChangeCallback.listenForChanges(_:) in conformance FaceTimeVoicemailManager(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v8;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC7Combine14AnyCancellableC_Tt2g5(0, 0, v7, &closure #1 in FaceTimeVoicemailManager.listenForChanges(_:)partial apply, v12);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

uint64_t protocol witness for VoicemailManager_UnreadCount.countOfUnreadMessages() in conformance FaceTimeVoicemailManager()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);

  return FaceTimeVoicemailManager.countOfUnreadMessages()();
}

uint64_t closure #1 in FaceTimeVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return FaceTimeVoicemailManager.delete(_:)(a5);
}

uint64_t FaceTimeVoicemailManager.delete(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v11 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v12 = swift_allocObject();
  v12[2] = inited;
  v12[3] = v11;
  v12[4] = v3;
  v12[5] = a1;
  v13 = v3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, a3, v12);
}

uint64_t closure #1 in FaceTimeVoicemailManager.markAsRead(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return FaceTimeVoicemailManager.markAsRead(_:)(a5);
}

uint64_t @objc FaceTimeVoicemailManager.delete(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v13 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = a1;
  v14[5] = v10;
  v15 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, a5, v14);
}

uint64_t closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return FaceTimeVoicemailManager.moveToTrash(_:)(a5);
}

uint64_t closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return FaceTimeVoicemailManager.removeFromTrash(_:)(a5);
}

uint64_t protocol witness for MessageStoreControllerProtocol.deleteMessages(query:) in conformance MessageStoreController(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return MessageStoreController.deleteMessages(query:)(a1);
}

uint64_t protocol witness for MessageStoreControllerProtocol.getMessageCount(for:) in conformance MessageStoreController(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for MessageStoreControllerProtocol.getMessageCount(for:) in conformance MessageStoreController;

  return MessageStoreController.getMessageCount(for:)(a1);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t protocol witness for MessageStoreControllerProtocol.getMessages(fetchRequest:) in conformance MessageStoreController(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for MessageStoreControllerProtocol.getMessages(fetchRequest:) in conformance MessageStoreController;

  return MessageStoreController.getMessages(fetchRequest:)(a1);
}

uint64_t protocol witness for MessageStoreControllerProtocol.updateMessages(_:) in conformance MessageStoreController(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return MessageStoreController.updateMessages(_:)(a1);
}

char *specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a3;
  v39 = a2;
  v47 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v44 = &v39 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TaskPriority();
  v40 = *(v17 - 8);
  v41 = v17;
  __chkstk_darwin(v17);
  v48[3] = a6;
  v48[4] = a7;
  v46 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  v19 = *(*(a6 - 8) + 32);
  v43 = boxed_opaque_existential_1;
  v45 = a6;
  v19(boxed_opaque_existential_1, a4, a6);
  v20 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_analyticsReporter;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, static Logger.mobilePhone);
  v22 = *(v14 + 16);
  v22(a5 + v20, v21, v13);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_providers) = &outlined read-only object #0 of specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageTypes) = &outlined read-only object #1 of specialized FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:);
  v23 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messagesChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11MobilePhone30VoicemailManagerMessageChangesOs5NeverOGMd);
  swift_allocObject();
  *(a5 + v23) = PassthroughSubject.init()();
  v24 = OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_operationQueue;
  type metadata accessor for TaskQueue();
  static TaskPriority.high.getter();
  *(a5 + v24) = TaskQueue.__allocating_init(priority:)();
  v25 = v47;
  v22(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_logger, v47, v13);
  v26 = (a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_onVoicemailsChanged);
  v27 = v42;
  *v26 = v39;
  v26[1] = v27;
  outlined init with copy of Tip(v48, a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreController);
  v22(v16, v25, v13);
  type metadata accessor for MessageStoreDelegate(0);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v28 + 24) = 0;
  (*(v14 + 32))(v28 + OBJC_IVAR____TtC11MobilePhoneP33_16A679D6AB3E8F4F37E91E12102EA1A620MessageStoreDelegate_logger, v16, v13);
  *(a5 + OBJC_IVAR____TtC11MobilePhone24FaceTimeVoicemailManager_messageStoreDelegate) = v28;

  v29 = CachedVoicemailManager.init(serviceName:)(1397576774, 0xE400000000000000);
  v30 = v44;
  (*(v40 + 56))(v44, 1, 1, v41);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  v32 = _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v33 = swift_allocObject();
  v33[2] = inited;
  v33[3] = v32;
  v33[4] = v29;
  v34 = v29;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:), v33);

  v35 = v46;
  v36 = *(v46 + 8);

  v36(v37, v45, v35);

  (*(v14 + 8))(v25, v13);
  __swift_destroy_boxed_opaque_existential_0(v48);
  return v34;
}

uint64_t sub_10017F850()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.init(logger:messageStoreController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.init(logger:messageStoreController:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.listenForChanges(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.listenForChanges(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10017FA48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10017FA80()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.voicemailsChanged(messageChanges:)(v2, v3, v4);
}

uint64_t sub_10017FB68()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t partial apply for implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(a1, v4);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreRequiresRefetch()()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreRequiresRefetch()(v4, v0 + v3);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreDidAddMessages(_:)()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreDidAddMessages(_:)(v4, v0 + v3, v5);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreDidUpdateMessages(_:)()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreDidUpdateMessages(_:)(v4, v0 + v3, v5);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessages(_:)()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessages(_:)(v4, v0 + v3, v5);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessagesWithUUIDs(_:)()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreDidDeleteMessagesWithUUIDs(_:)(v4, v0 + v3, v5);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.messageStoreDidReconnect()()
{
  v2 = *(type metadata accessor for Logger() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.messageStoreDidReconnect()(v4, v0 + v3);
}

unint64_t outlined consume of CachedVoicemailManager.Error(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized FaceTimeVoicemailManager.messages(filteredBy:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = specialized FaceTimeVoicemailManager.messages(filteredBy:);

  return CachedVoicemailManager.fetchMessages()();
}

uint64_t specialized FaceTimeVoicemailManager.messages(filteredBy:)(uint64_t a1)
{
  *(*v1 + 48) = a1;

  _s11MobilePhone14VoicemailActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(specialized FaceTimeVoicemailManager.messages(filteredBy:), v3, v2);
}

uint64_t specialized FaceTimeVoicemailManager.messages(filteredBy:)()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
LABEL_16:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v0[6];
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v1 &= 0xFFFFFFFFFFFFFF8uLL;
      v6 = v3 + 32;
      v7 = (v0[2] + 16);
      v12 = v7;
      do
      {
        if (v5)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(v6 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*v7)(v0[2], v8))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v7 = v12;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v9 != v2);
    }
  }

  v10 = v0[1];

  return v10(_swiftEmptyArrayStorage);
}

void specialized FaceTimeVoicemailManager.reportTranscription(isAccurate:for:)()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v1, 2u);
  }
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.delete(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.delete(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.markAsRead(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.markAsRead(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)(a1, v4, v5, v7, v6);
}

uint64_t sub_100180A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100180AA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for FaceTimeVoicemailManager()
{
  result = type metadata accessor for Logger();
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

uint64_t type metadata completion function for MessageStoreDelegate()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100180CD4()
{
  _Block_release(*(v0 + 16));
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.messages(filteredBy:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.removeFromTrash(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.moveToTrash(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.markAsRead(_:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.delete(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.delete(_:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreRequiresRefetch()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MessageStoreDelegate.messageStoreRequiresRefetch()(a1, v4, v5, v6);
}

uint64_t objectdestroy_210Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreDidReconnect()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in MessageStoreDelegate.messageStoreDidReconnect()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessagesWithUUIDs(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessagesWithUUIDs(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessages(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MessageStoreDelegate.messageStoreDidDeleteMessages(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreDidUpdateMessages(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MessageStoreDelegate.messageStoreDidUpdateMessages(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_230Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in MessageStoreDelegate.messageStoreDidAddMessages(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in MessageStoreDelegate.messageStoreDidAddMessages(_:)(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_46Tm()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t outlined destroy of VoiceMailAnalyticsLogger(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for @objc closure #1 in FaceTimeVoicemailManager.message(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in FaceTimeVoicemailManager.message(for:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in implicit closure #1 in FaceTimeVoicemailManager.fetchMessagesFromDataStore()(a1, v4, v5, v6);
}

uint64_t sub_100181848()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t objectdestroy_41Tm()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_3Tm_1()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in FaceTimeVoicemailManager.init(logger:onVoicemailsChanged:messageStoreController:)(a1, v4, v5, v6);
}

UIFontWeight UIFont.weight.getter()
{
  v1 = [v0 fontDescriptor];
  v2 = [v1 fontAttributes];

  type metadata accessor for UIFontDescriptorAttributeName(0);
  lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16))
  {
    goto LABEL_8;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(UIFontDescriptorTraitsAttribute);
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaypGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return UIFontWeightRegular;
  }

  if (!*(*&v9 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(UIFontWeightTrait), (v7 & 1) == 0))
  {
LABEL_8:

    return UIFontWeightRegular;
  }

  outlined init with copy of Any(*(*&v9 + 56) + 32 * v6, v10);

  type metadata accessor for UIFontWeight(0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return UIFontWeightRegular;
}

id specialized static UIImage.image(for:)(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v3 = a1[2];
    v2 = a1[3];
    v4 = objc_opt_self();
    v5 = v1;
    v6 = [v4 _preferredFontForTextStyle:v2 maximumContentSizeCategory:v5];
    if (!v6)
    {
      v6 = [v4 preferredFontForTextStyle:v2];
    }

    v7 = objc_opt_self();
    [v6 pointSize];
    v9 = v8;
    v10 = UIFont.weight.getter();
    v11 = [v7 _configurationWithPointSize:UIImageSymbolWeightForFontWeight(v10) weight:v3 scale:v9];
  }

  else
  {
    v11 = [objc_opt_self() configurationWithTextStyle:a1[3] scale:a1[2]];
  }

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() systemImageNamed:v12];

  if (v13)
  {
    v14 = [v13 imageWithSymbolConfiguration:v11];

    v13 = [v14 imageWithRenderingMode:2];
  }

  else
  {
  }

  return v13;
}