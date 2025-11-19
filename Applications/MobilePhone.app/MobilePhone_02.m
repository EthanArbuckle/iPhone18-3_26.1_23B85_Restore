uint64_t ObservableRecentsController.contactsChangedDate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for ObservableRecentsController.contactsChangedDate : ObservableRecentsController()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for ObservableRecentsController.contactsChangedDate : ObservableRecentsController(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  outlined init with copy of Date?(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v9, v7);
  v11 = v10;
  static Published.subscript.setter();
  return outlined destroy of (NSAttributedStringKey, Any)(v9, &_s10Foundation4DateVSgMd);
}

uint64_t ObservableRecentsController.$recentCalls.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ObservableRecentsController.$recentCalls : ObservableRecentsController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ObservableRecentsController.$contactsChangedDate : ObservableRecentsController(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.localizedTitle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.localizedSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.localizedCount.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.localizedCount.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 32);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 32);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.icon.setter(char a1)
{
  result = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.isVerified.setter(char a1)
{
  result = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.lineName.getter()
{
  v1 = *(v0 + *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 44));

  return v1;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.lineName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.init(localizedTitle:localizedSubtitle:localizedCount:isMissedCall:date:icon:isVerified:lineName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v15 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v16 = v15[8];
  v17 = type metadata accessor for Date();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a8, v17);
  *(a9 + v15[9]) = a10;
  *(a9 + v15[10]) = a11;
  v19 = (a9 + v15[11]);
  *v19 = a12;
  v19[1] = a13;
  return result;
}

MobilePhone::ObservableRecentsController::Filter_optional __swiftcall ObservableRecentsController.Filter.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = MobilePhone_ObservableRecentsController_Filter_missed;
  }

  else
  {
    v1.value = MobilePhone_ObservableRecentsController_Filter_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ObservableRecentsController.Filter@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ObservableRecentsController.Filter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ObservableRecentsController.Filter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

char *ObservableRecentsController.__allocating_init(recentsController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized ObservableRecentsController.init(recentsController:)(a1);

  return v4;
}

char *ObservableRecentsController.init(recentsController:)(void *a1)
{
  v2 = specialized ObservableRecentsController.init(recentsController:)(a1);

  return v2;
}

uint64_t closure #1 in ObservableRecentsController.init(recentsController:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(**(result + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_localizedRecentCallInfoCache) + 152);

    v7(v8);

    Date.init()();
    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of Date?(v5, v3);
    static Published.subscript.setter();
    return outlined destroy of (NSAttributedStringKey, Any)(v5, &_s10Foundation4DateVSgMd);
  }

  return result;
}

id ObservableRecentsController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_observers;
  swift_beginAccess();
  v4 = *&v0[v3];
  v5 = &_swiftEmptyArrayStorage;
  v18 = &_swiftEmptyArrayStorage;
  v6 = *(v4 + 16);

  for (i = 0; v6 != i; ++i)
  {
    if (i >= *(v4 + 16))
    {
      __break(1u);
LABEL_17:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    if (*(v4 + 8 * i + 32))
    {
      swift_unknownObjectRetain();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v18;
    }
  }

  v15 = v3;
  v16 = ObjectType;

  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_18:

    *&v1[v15] = &_swiftEmptyArrayStorage;

    v17.receiver = v1;
    v17.super_class = v16;
    return objc_msgSendSuper2(&v17, "dealloc");
  }

LABEL_10:
  result = objc_opt_self();
  if (v9 >= 1)
  {
    v11 = result;
    v12 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v5 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      ++v12;
      v14 = [v11 defaultCenter];
      [v14 removeObserver:v13];
      swift_unknownObjectRelease();
    }

    while (v9 != v12);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void ObservableRecentsController.delete(at:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexSet.Index();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v23 = &_swiftEmptyArrayStorage;
  v26 = &_swiftEmptyArrayStorage;
  (*(v7 + 16))(v9, a1, v6);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet);
  v13 = (v3 + 8);
  while (1)
  {
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, &type metadata accessor for IndexSet.Index);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v13)(v5, v2);
      if (v14)
      {
        outlined destroy of (NSAttributedStringKey, Any)(v12, &_ss16IndexingIteratorVy10Foundation8IndexSetVGMd);
        v20 = *(v24 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController);
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v20 deleteRecentCalls:isa];

        return;
      }

      v15 = dispatch thunk of Collection.subscript.read();
      v17 = *v16;
      v15(v25, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if ((v17 & 0x8000000000000000) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v18 = v25[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v17 < v18)
        {
          break;
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v25[0] & 0xC000000000000001) == 0)
    {
      break;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = v26;
  }

  if (v17 < *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v25[0] + 8 * v17 + 32);
    goto LABEL_10;
  }

  __break(1u);
}

Swift::Void __swiftcall ObservableRecentsController.delete(at:)(Swift::Int at)
{
  v1 = type metadata accessor for IndexSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init(integer:)();
  ObservableRecentsController.delete(at:)(v4);
  (*(v2 + 8))(v4, v1);
}

uint64_t ObservableRecentsController.LocalizedRecentCallInfo.init(call:recentsItem:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  v44 = *(v13 - 1);
  __chkstk_darwin(v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 date];
  if (v16)
  {
    v43 = a3;
    v17 = v16;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 32))(v12, v10, v6);
    v18 = [a2 localizedTitle];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    *v15 = v20;
    *(v15 + 1) = v22;
    v25 = [a2 localizedSubtitle];
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

    *(v15 + 2) = v27;
    *(v15 + 3) = v29;
    v30 = [a2 localizedCount];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    *(v15 + 4) = v32;
    *(v15 + 5) = v34;
    v35 = [a1 callStatus];
    v15[48] = v35 == kCHCallStatusMissed;
    (*(v7 + 16))(&v15[v13[8]], v12, v6);
    v15[v13[9]] = CHRecentCall.icon.getter();
    v15[v13[10]] = [a2 verified];
    v36 = [a2 localizedSenderIdentityTitle];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {

      v38 = 0;
      v40 = 0;
    }

    v41 = &v15[v13[11]];
    (*(v7 + 8))(v12, v6);
    *v41 = v38;
    v41[1] = v40;
    v42 = v43;
    outlined init with copy of ObservableRecentsController.LocalizedRecentCallInfo(v15, v43);
    (*(v44 + 56))(v42, 0, 1, v13);
    return outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(v15);
  }

  else
  {

    v23 = *(v44 + 56);

    return v23(a3, 1, 1, v13);
  }
}

uint64_t outlined init with take of ObservableRecentsController.LocalizedRecentCallInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ObservableRecentsController.LocalizedRecentCallInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ObservableRecentsController.LocalizedRecentCallInfo(uint64_t a1)
{
  v2 = type metadata accessor for ObservableRecentsController.LocalizedRecentCallInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id ObservableRecentsController.contact(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100209A80;
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for PHContactViewController);
  *(v4 + 32) = [swift_getObjCClassFromMetadata() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v3 contactForRecentCall:a1 keyDescriptors:isa];

  if (v6)
  {
    return v6;
  }

  v8 = objc_allocWithZone(CNContact);

  return [v8 init];
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ObservableRecentsController@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t CHRecentCall.icon.getter()
{
  v1 = [v0 ttyType];
  v2 = [v0 callStatus];
  if (v2 == kCHCallStatusConnectedOutgoing)
  {
    v3 = 1;
  }

  else
  {
    v4 = [v0 callStatus];
    v3 = v4 == kCHCallStatusCancelled;
  }

  v5 = [v0 mediaType];
  if (v1 == 1)
  {
    return 3;
  }

  if (v1 == 2)
  {
    return 4;
  }

  if (!v3)
  {
    return 0;
  }

  if (v5 == 1)
  {
    return 1;
  }

  return 2 * (v5 == 2);
}

void *specialized ObservableRecentsController.filteredRecentCalls(from:filter:)(unint64_t a1, char a2)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v10 = kCHCallStatusMissed;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((a2 & 1) == 0 || [v6 callStatus] == v10)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

char *specialized ObservableRecentsController.init(recentsController:)(void *a1)
{
  v50 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd);
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v45 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = __chkstk_darwin(v45);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11MobilePhone27ObservableRecentsControllerC6FilterOGMd);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo12CHRecentCallCGGMd);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v17 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController__recentCalls;
  aBlock[0] = &_swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12CHRecentCallCGMd);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v1[v17], v16, v13);
  v18 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController__filter;
  LOBYTE(aBlock[0]) = 0;
  Published.init(initialValue:)();
  v19 = v9;
  v20 = &_swiftEmptyArrayStorage;
  (*(v10 + 32))(&v1[v18], v12, v19);
  v21 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController__contactsChangedDate;
  v22 = type metadata accessor for Date();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  outlined init with copy of Date?(v8, v6);
  v23 = v46;
  Published.init(initialValue:)();
  outlined destroy of (NSAttributedStringKey, Any)(v8, &_s10Foundation4DateVSgMd);
  (*(v47 + 32))(&v1[v21], v23, v48);
  v24 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_localizedRecentCallInfoCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone10ValueCacheCySSAA27ObservableRecentsControllerC23LocalizedRecentCallInfoVGMd);
  v25 = swift_allocObject();
  v26 = [objc_allocWithZone(NSCache) init];
  *&v1[v24] = v25;
  *(v25 + 16) = v26;
  *&v1[OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_observers] = &_swiftEmptyArrayStorage;
  v27 = v50;
  *&v1[OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController] = v50;
  v52.receiver = v1;
  v52.super_class = ObjectType;
  v28 = v27;
  v29 = objc_msgSendSuper2(&v52, "init");
  v30 = [v28 recentCalls];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for CHRecentCall);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = specialized ObservableRecentsController.filteredRecentCalls(from:filter:)(v20, aBlock[0]);

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v32;
  v33 = v29;
  static Published.subscript.setter();
  v34 = *&v33[OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController];
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v35 = v33;
  v36 = v34;
  v37 = static OS_dispatch_queue.main.getter();
  [v36 addDelegate:v35 queue:v37];

  v38 = [objc_opt_self() defaultCenter];
  v39 = [objc_opt_self() mainQueue];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ObservableRecentsController.init(recentsController:);
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_2;
  v41 = _Block_copy(aBlock);

  v42 = [v38 addObserverForName:CNContactStoreDidChangeNotification object:0 queue:v39 usingBlock:v41];
  _Block_release(v41);

  v43 = OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_observers;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(*&v35[v43] + 16) >= *(*&v35[v43] + 24) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  return v35;
}

uint64_t lazy protocol witness table accessor for type IndexSet and conformance IndexSet(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized ObservableRecentsController.recentsController(_:didChange:)(unint64_t a1)
{
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  static os_log_type_t.default.getter();
  v3 = os_log(_:dso:log:type:_:)();
  (*(**&v1[OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_localizedRecentCallInfoCache] + 152))(v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  specialized ObservableRecentsController.filteredRecentCalls(from:filter:)(a1, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter()
{
  result = lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter;
  if (!lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter;
  if (!lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ObservableRecentsController.Filter] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ObservableRecentsController.Filter] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ObservableRecentsController.Filter] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11MobilePhone27ObservableRecentsControllerC6FilterOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ObservableRecentsController.Filter] and conformance [A]);
  }

  return result;
}

void type metadata completion function for ObservableRecentsController()
{
  type metadata accessor for Published<[CHRecentCall]>(319, &lazy cache variable for type metadata for Published<[CHRecentCall]>, &_sSaySo12CHRecentCallCGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<ObservableRecentsController.Filter>(319, &lazy cache variable for type metadata for Published<ObservableRecentsController.Filter>, &type metadata for ObservableRecentsController.Filter, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<[CHRecentCall]>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[CHRecentCall]>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000DF504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000DF5C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for ObservableRecentsController.LocalizedRecentCallInfo()
{
  type metadata accessor for Published<ObservableRecentsController.Filter>(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Published<ObservableRecentsController.Filter>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ObservableRecentsController.Filter(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservableRecentsController.Filter(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000DF8E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int VoicemailAccountManagerCacheProtocolResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t VoicemailAccountManagerCache.logger.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t VoicemailAccountManagerCache.init(path:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for VoicemailAccountManagerCache() + 44);
  v7 = type metadata accessor for Logger();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t VoicemailAccountManagerCache.update(with:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v52 = *(a2 - 8);
  __chkstk_darwin(a1);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v15 = PropertyListEncoder.init()();
  v53 = a1;
  v16 = v15;
  v48 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v49 = v17;
  v50 = v16;
  v51 = v9;
  v47 = v7;
  URL.init(fileURLWithPath:)();
  v18 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL.path.getter();
  v19 = String._bridgeToObjectiveC()();

  LOBYTE(v16) = [v18 directoryExistsAtPath:v19];

  if (v16)
  {
    goto LABEL_4;
  }

  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v53 = 0;
  v23 = [v18 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v53];

  if (v23)
  {
    v24 = v53;
LABEL_4:
    v26 = v48;
    v25 = v49;
    Data.write(to:options:)();

    outlined consume of Data._Representation(v26, v25);

    v27 = v51[1];
    v27(v12, v8);
    v27(v14, v8);
    return 0;
  }

  v29 = v53;
  v30 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v31 = v30;

  outlined consume of Data._Representation(v48, v49);

  v32 = a2;
  v33 = v51[1];
  v33(v12, v8);
  v33(v14, v8);
  v34 = v32;
  v35 = v47;
  (*(v52 + 16))(v47, v3, v32);
  swift_errorRetain();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v50 = v31;
    v39 = v38;
    v40 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v39 = 136315394;
    v41 = *v35;
    v42 = v35[1];
    v43 = *(v52 + 8);

    v43(v35, v34);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v53);

    *(v39 + 4) = v44;
    *(v39 + 12) = 2112;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 14) = v45;
    *v40 = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "Failed to write to %s: %@", v39, 0x16u);
    outlined destroy of NSObject?(v40);

    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  else
  {

    (*(v52 + 8))(v35, v34);
  }

  return 1;
}

uint64_t VoicemailAccountManagerCache.read()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = __chkstk_darwin(a1);
  __chkstk_darwin(v5);
  v7 = (&v22 - v6);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v8 = [objc_opt_self() defaultManager];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 contentsAtPath:v9];

  if (v10)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v11, v13);

    return v24;
  }

  else
  {
    (*(v4 + 16))(v7, v2, a1);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = v7[1];
      v23 = *v7;
      v19 = *(v4 + 8);

      v19(v7, a1);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v18, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to read from %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    else
    {

      (*(v4 + 8))(v7, a1);
    }

    return 0;
  }
}

uint64_t protocol witness for VoicemailAccountManagerCacheProtocol.read() in conformance VoicemailAccountManagerCache<A>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = VoicemailAccountManagerCache.read()(a1);
  *a2 = result;
  return result;
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

unint64_t lazy protocol witness table accessor for type VoicemailAccountManagerCacheProtocolResult and conformance VoicemailAccountManagerCacheProtocolResult()
{
  result = lazy protocol witness table cache variable for type VoicemailAccountManagerCacheProtocolResult and conformance VoicemailAccountManagerCacheProtocolResult;
  if (!lazy protocol witness table cache variable for type VoicemailAccountManagerCacheProtocolResult and conformance VoicemailAccountManagerCacheProtocolResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoicemailAccountManagerCacheProtocolResult and conformance VoicemailAccountManagerCacheProtocolResult);
  }

  return result;
}

uint64_t type metadata completion function for VoicemailAccountManagerCache()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000E060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000E06CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[60] = a5;
  v6[61] = a6;
  v6[59] = a4;
  v7 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v6[62] = v7;
  v6[63] = *(v7 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v8 = type metadata accessor for LiveVoicemailTip();
  v6[66] = v8;
  v6[67] = *(v8 - 8);
  v6[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd);
  v6[69] = swift_task_alloc();
  v9 = type metadata accessor for Tips.Status();
  v6[70] = v9;
  v6[71] = *(v9 - 8);
  v6[72] = swift_task_alloc();
  v6[73] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd);
  v6[74] = swift_task_alloc();
  v6[75] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v6[76] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd);
  v6[77] = v10;
  v6[78] = *(v10 - 8);
  v6[79] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd);
  v6[80] = v11;
  v6[81] = *(v11 - 8);
  v6[82] = swift_task_alloc();
  v6[83] = type metadata accessor for MainActor();
  v6[84] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[85] = v13;
  v6[86] = v12;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v13, v12);
}

uint64_t specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  *(v0 + 696) = lazy protocol witness table accessor for type LiveVoicemailTip and conformance LiveVoicemailTip();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  *(v0 + 824) = enum case for TPTipsHelper.Entry.Kind.voicemail(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 704) = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v0 + 720) = v7;
  *(v0 + 712) = v5;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v5);
}

{
  v1 = v0[88];
  v0[91] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd);
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
  v3 = v0[69];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
  }

  else
  {
    (*(v2 + 728))();
    v3 = *(v2 + 720);
    v4 = *(v2 + 712);
    v5 = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
  }

  return (_swift_task_switch)(v5, v4, v3);
}

{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    (*(v1 + 32))(v0[72], v3, v2);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[93] = v7;
    v10 = v6 + *v6;
    v8 = swift_task_alloc();
    v0[94] = v8;
    *v8 = v0;
    v8[1] = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);

    __asm { BRAA            X2, X16 }
  }

  outlined destroy of (NSAttributedStringKey, Any)(v3, &_s6TipKit4TipsO6StatusOSgMd);
  v4 = v0[86];
  v5 = v0[85];

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v5, v4);
}

{
  return (*(v0 + 728))();
}

{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);

  (*(v3 + 8))(v2, v4);
  *(v1 + 829) = *(v1 + 828);
  v5 = *(v1 + 720);
  v6 = *(v1 + 712);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v6, v5);
}

{

  v1 = *(v0 + 688);
  v2 = *(v0 + 680);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v2, v1);
}

{
  v47 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 760) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));

    goto LABEL_9;
  }

  if ((*(v0 + 829) & 1) == 0)
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 544);
    v13 = *(v0 + 536);
    v14 = *(v0 + 528);
    v15 = *(v0 + 472);
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.mobilePhoneTips);
    (*(v13 + 16))(v12, v15, v14);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 544);
      v20 = *(v0 + 536);
      v21 = *(v0 + 528);
      v22 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v46);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = v21;
      v27 = dispatch thunk of Tip.id.getter();
      v29 = v28;
      (*(v20 + 8))(v19, v26);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v46);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Stoping observation of tip %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v31 = *(v0 + 544);
      v32 = *(v0 + 536);
      v33 = *(v0 + 528);

      (*(v32 + 8))(v31, v33);
    }

    type metadata accessor for TPTipsHelper();
    v34 = swift_task_alloc();
    *(v0 + 808) = v34;
    *v34 = v0;
    v35 = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
    goto LABEL_20;
  }

  v2 = Strong;
  v3 = [Strong tableView];
  if (!v3)
  {
    __break(1u);
    return static TPTipsHelper.shared.getter();
  }

  v4 = v3;
  v5 = [v3 tableHeaderView];

  if (!v5)
  {
    goto LABEL_19;
  }

  type metadata accessor for TPTipHeaderView();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_19;
  }

  v6 = dispatch thunk of TPTipHeaderView.hostingView.getter();

  if (!v6)
  {
LABEL_19:
    v36 = *(v0 + 696);
    v37 = *(v0 + 536);
    v38 = *(v0 + 528);
    v39 = *(v0 + 488);
    v40 = *(v0 + 472);
    *(v0 + 248) = v38;
    *(v0 + 256) = v36;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
    v42 = *(v37 + 16);
    *(v0 + 768) = v42;
    *(v0 + 776) = (v37 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v42(boxed_opaque_existential_1, v40, v38);
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    *(v44 + 16) = v43;
    *(v44 + 24) = v39;
    v45 = objc_allocWithZone(type metadata accessor for TipUIView());
    *(v0 + 784) = TipUIView.init(_:arrowEdge:actionHandler:)();
    type metadata accessor for TPTipsHelper();
    v34 = swift_task_alloc();
    *(v0 + 792) = v34;
    *v34 = v0;
    v35 = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
LABEL_20:
    v34[1] = v35;

    return static TPTipsHelper.shared.getter();
  }

  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);

  (*(v8 + 8))(v7, v9);
LABEL_9:

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v28 = v0;
  v1 = *(v0 + 768);
  v2 = *(v0 + 696);
  v3 = *(v0 + 528);
  v4 = *(v0 + 472);
  (*(*(v0 + 504) + 104))(*(v0 + 520), *(v0 + 824), *(v0 + 496));
  *(v0 + 288) = v3;
  *(v0 + 296) = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 264));
  v1(boxed_opaque_existential_1, v4, v3);
  v6 = dispatch thunk of TPTipsHelper.currentTip.modify();
  v8 = v7;
  v9 = *(v0 + 520);
  v10 = *(v0 + 496);
  v11 = (*(v0 + 504) + 8);
  if (*(v0 + 288))
  {
    outlined init with take of Tip((v0 + 264), v0 + 344);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v8;
    *v8 = 0x8000000000000000;
    v12 = *(v0 + 368);
    v25 = v10;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 344, v12);
    v14 = v6;
    v15 = *(v12 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v13, v12);
    v6 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native, &v27);
    (*v11)(v9, v25);
    __swift_destroy_boxed_opaque_existential_0(v0 + 344);

    *v8 = v27;
  }

  else
  {
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 264, &_s6TipKit0A0_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v9, v0 + 304);
    outlined destroy of (NSAttributedStringKey, Any)(v0 + 304, &_s6TipKit0A0_pSgMd);
    (*v11)(v9, v10);
  }

  v17 = *(v0 + 800);
  v18 = *(v0 + 784);
  v19 = *(v0 + 760);
  v6(v0 + 416, 0);

  [v19 setTipViewForPresentation:v18];
  [v19 loadTableHeaderView];

  v20 = static MainActor.shared.getter();
  *(v0 + 704) = v20;
  if (v20)
  {
    swift_getObjectType();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(v0 + 720) = v23;
  *(v0 + 712) = v21;

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v21);
}

{
  v1 = *(v0 + 816);
  (*(*(v0 + 504) + 104))(*(v0 + 512), *(v0 + 824), *(v0 + 496));
  v2 = dispatch thunk of TPTipsHelper.currentTip.getter();

  if (*(v2 + 16))
  {
    v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 512));
    if (v4)
    {
      v6 = *(v0 + 504);
      v5 = *(v0 + 512);
      v7 = *(v0 + 496);
      outlined init with copy of Tip(*(v2 + 56) + 40 * v3, v0 + 184);
      (*(v6 + 8))(v5, v7);

      outlined init with take of Tip((v0 + 184), v0 + 144);
      __swift_project_boxed_opaque_existential_0((v0 + 144), *(v0 + 168));
      v8 = dispatch thunk of Tip.id.getter();
      v10 = v9;
      if (v8 == dispatch thunk of Tip.id.getter() && v10 == v11)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          v27 = *(v0 + 760);
          (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));

LABEL_19:
          __swift_destroy_boxed_opaque_existential_0(v0 + 144);
          goto LABEL_20;
        }
      }

      v19 = *(v0 + 760);
      [v19 setTipViewForPresentation:0];
      v20 = [v19 tableView];
      if (!v20)
      {
        __break(1u);
        return _swift_continuation_await(v20);
      }

      v21 = v20;
      v22 = [v20 tableHeaderView];

      if (v22)
      {
        type metadata accessor for TPTipHeaderView();
        if (!swift_dynamicCastClass())
        {
          v26 = *(v0 + 760);

          goto LABEL_18;
        }

        v23 = dispatch thunk of TPTipHeaderView.hostingView.getter();

        if (v23)
        {
          v24 = *(v0 + 760);

          *(v0 + 16) = v0;
          *(v0 + 24) = specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:);
          v25 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd);
          *(v0 + 80) = _NSConcreteStackBlock;
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) () -> () with result type ();
          *(v0 + 104) = &block_descriptor_51;
          *(v0 + 112) = v25;
          [v24 hideTipViewWithCompletionHandler:v0 + 80];
          v20 = (v0 + 16);

          return _swift_continuation_await(v20);
        }
      }

      v26 = *(v0 + 760);
LABEL_18:

      (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
      goto LABEL_19;
    }
  }

  v12 = *(v0 + 656);
  v13 = *(v0 + 648);
  v14 = *(v0 + 640);
  v16 = *(v0 + 504);
  v15 = *(v0 + 512);
  v17 = *(v0 + 496);

  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
LABEL_20:

  v28 = *(v0 + 8);

  return v28();
}

{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v2, v1);
}

{
  v1 = v0[95];

  (*(v0[81] + 8))(v0[82], v0[80]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 18));

  v2 = v0[1];

  return v2();
}

uint64_t specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 800) = a1;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v4, v3);
}

{
  v2 = *v1;
  *(*v1 + 816) = a1;

  v3 = *(v2 + 688);
  v4 = *(v2 + 680);

  return (_swift_task_switch)(specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v4, v3);
}

id PHVoicemailInboxListViewController.currentTipView.getter()
{
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    v3 = [result tableHeaderView];

    if (!v3)
    {
      return 0;
    }

    type metadata accessor for TPTipHeaderView();
    if (swift_dynamicCastClass())
    {
      v4 = dispatch thunk of TPTipHeaderView.hostingView.getter();
    }

    else
    {
      v4 = 0;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t @objc completion handler block implementation for <A>@escaping @callee_unowned @convention(block) () -> () with result type ()(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

void closure #1 in closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhoneTips);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v13 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Presenting LiveVoicemailWelcomeViewController", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    v10 = objc_allocWithZone(type metadata accessor for LiveVoicemailWelcomeViewController());
    v11 = v1;
    v12 = specialized LiveVoicemailWelcomeViewController.init(delegate:)(v11);
    [v11 presentViewController:v12 animated:1 completion:0];
  }
}

Swift::Void __swiftcall PHVoicemailInboxListViewController.tipKitStartObservation()()
{
  ObjectType = swift_getObjectType();
  if (one-time initialization token for mobilePhoneTips != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.mobilePhoneTips);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Starting observation of tips", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = ObjectType;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_1000E291C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for LiveVoicemailTip();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation();

  return static TPTipsHelper.shared.getter();
}

uint64_t closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation()(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation(), 0, 0);
}

uint64_t closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation()()
{
  *(v0 + 96) = type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation(), v2, v1);
}

{
  v1 = *(v0 + 88);

  dispatch thunk of TPTipsHelper.setup()();

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation(), 0, 0);
}

{
  v23 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.mobilePhoneTips);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Observing LiveVoicemailTip", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    LiveVoicemailTip.init()();
    v0[15] = static MainActor.shared.getter();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = closure #1 in PHVoicemailMessageTableViewCell.tipKitStartObservation();
    v11 = v0[9];

    return specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:)(v11);
  }

  else
  {
    if (one-time initialization token for mobilePhoneTips != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.mobilePhoneTips);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s: Observing tip failed because self is nil", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1000E2FB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PHVoicemailInboxListViewController.tipKitStartObservation()(v2, v3);
}

Swift::Void __swiftcall PHVoicemailInboxListViewController.tipKitStopObservation()()
{
  swift_getObjectType();
  if (one-time initialization token for mobilePhoneTips != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.mobilePhoneTips);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Stoping observation of tips", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  swift_unknownObjectWeakInit();
  dispatch thunk of TaskQueue.async(_:)();

  swift_unknownObjectWeakDestroy();
}

uint64_t closure #1 in PHVoicemailInboxListViewController.tipKitStopObservation()()
{
  v1 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for TPTipsHelper();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = closure #1 in PHVoicemailInboxListViewController.tipKitStopObservation();

  return static TPTipsHelper.shared.getter();
}

{
  (*(v0[3] + 104))(v0[4], enum case for TPTipsHelper.Entry.Kind.voicemail(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(closure #1 in PHVoicemailMessageTableViewCell.tipKitStopObservation(), v2, v1);
}

uint64_t closure #1 in PHVoicemailInboxListViewController.tipKitStopObservation()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.tipKitStopObservation(), 0, 0);
}

uint64_t PHVoicemailInboxListViewController.hideTipView()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return (_swift_task_switch)(PHVoicemailInboxListViewController.hideTipView(), v3, v2);
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return (_swift_task_switch)(PHVoicemailInboxListViewController.hideTipView(), v3, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

id PHVoicemailInboxListViewController.hideTipView()()
{
  result = [*(v0 + 16) tableView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result tableHeaderView];

  if (v3)
  {
    type metadata accessor for TPTipHeaderView();
    if (swift_dynamicCastClass())
    {
      v4 = dispatch thunk of TPTipHeaderView.hostingView.getter();

      if (v4)
      {

        v5 = swift_task_alloc();
        *(v0 + 48) = v5;
        *v5 = v0;
        v5[1] = PHVoicemailInboxListViewController.hideTipView();

        return PHVoicemailInboxListViewController._setTipView(_:)(0);
      }
    }

    else
    {
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t PHVoicemailInboxListViewController._setTipView(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return (_swift_task_switch)(PHVoicemailInboxListViewController._setTipView(_:), v4, v3);
}

uint64_t PHVoicemailInboxListViewController._setTipView(_:)()
{
  v81 = v0;
  v1 = [*(v0 + 24) tableView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_56;
  }

  v2 = v1;
  v3 = [v1 tableHeaderView];

  if (!v3)
  {
    goto LABEL_8;
  }

  type metadata accessor for TPTipHeaderView();
  if (!swift_dynamicCastClass())
  {

LABEL_8:
    if (!*(v0 + 16))
    {
      goto LABEL_51;
    }

    goto LABEL_9;
  }

  v4 = dispatch thunk of TPTipHeaderView.hostingView.getter();

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 16);

  if (v5)
  {
    goto LABEL_51;
  }

LABEL_9:
  if (one-time initialization token for mobilePhoneTips != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 24);
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.mobilePhoneTips);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v80 = v12;
    *v11 = 136315138;
    swift_getObjectType();
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v80);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Showing Tip in %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  v16 = [*(v0 + 24) tableView];
  *(v0 + 64) = v16;
  if (!v16)
  {
    v19 = *(v0 + 24);

    v20 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v80 = v24;
      *v23 = 136315138;
      swift_getObjectType();
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v80);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Unable to show tip since tableView is nil. %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
    }

    goto LABEL_52;
  }

  v17 = *(v0 + 16);
  if (v17)
  {
    v18 = 0;
    goto LABEL_27;
  }

  v28 = v16;
  v29 = [*(v0 + 24) tableView];
  if (!v29)
  {
LABEL_58:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)();
  }

  v30 = v29;
  v31 = [v29 tableHeaderView];

  if (!v31)
  {
    goto LABEL_25;
  }

  type metadata accessor for TPTipHeaderView();
  v32 = swift_dynamicCastClass();
  v18 = v32 != 0;
  if (v32)
  {
    v33 = dispatch thunk of TPTipHeaderView.hostingView.getter();

    if (v33)
    {
      v31 = v33;
      goto LABEL_24;
    }

LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

LABEL_24:

LABEL_26:
  v16 = v28;
LABEL_27:
  v34 = v16;
  [v34 contentOffset];
  v36 = v35;
  v38 = v37;
  v39 = swift_allocObject();
  *(v0 + 72) = v39;
  *(v39 + 16) = CGSizeZero;
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_40;
    }
  }

  else if (!v18)
  {

    goto LABEL_50;
  }

  v40 = [*(v0 + 24) tableView];
  if (!v40)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v41 = v40;
  v42 = [v40 tableHeaderView];

  if (v42)
  {
    type metadata accessor for TPTipHeaderView();
    if (swift_dynamicCastClass())
    {
      v43 = dispatch thunk of TPTipHeaderView.hostingView.getter();

      goto LABEL_38;
    }
  }

  v43 = 0;
LABEL_38:
  v44 = [v43 superview];

  if (v44)
  {

LABEL_40:
    v45 = type metadata accessor for TPTipHeaderView();
    static TPTipHeaderView.verticalInsetTotal.getter();
    if (v17)
    {
      v76 = v36;
      v78 = v38;
      v46 = *(v0 + 24);
      v47 = *(v0 + 16);
      v48 = [v46 view];
      if (v48)
      {
        v49 = v48;
        y = CGRectZero.origin.y;
        height = CGRectZero.size.height;

        [v49 bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v83.origin.x = v53;
        v83.origin.y = v55;
        v83.size.width = v57;
        v83.size.height = v59;
        Width = CGRectGetWidth(v83);
        [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
        v84.origin.x = CGRectZero.origin.x;
        v84.origin.y = y;
        v84.size.width = Width;
        v84.size.height = height;
        CGRectGetWidth(v84);
        PHVoicemailInboxListViewController.refreshTableHeaderView()();
        v62 = v61;
        [v47 bounds];
        if (v62 != CGRectGetWidth(v85))
        {
          [v47 bounds];
          [v47 setBounds:?];
        }

        LODWORD(v63) = 1148846080;
        LODWORD(v64) = 1132068864;
        [v47 systemLayoutSizeFittingSize:v62 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v63, v64, *&v76, *&v78, v80}];
        *(v39 + 16) = v65;
        *(v39 + 24) = v66;
        [v34 separatorInset];
        v67 = objc_allocWithZone(v45);
        v68 = TPTipHeaderView.init(frame:separatorInset:)();
        v69 = v47;
        dispatch thunk of TPTipHeaderView.hostingView.setter();
        TPTipHeaderView.displaysBottomSeparator.setter();
        [v34 setTableHeaderView:v68];
        [v34 setContentOffset:{v77, v79}];

        goto LABEL_51;
      }

      goto LABEL_57;
    }

    v70 = [v34 tableHeaderView];
    *(v0 + 80) = v70;
    if (v70)
    {
      v71 = v70;
      [v70 setAlpha:1.0];
      *(v0 + 88) = static MainActor.shared.getter();
      v72 = swift_task_alloc();
      *(v0 + 96) = v72;
      *(v72 + 16) = v71;
      *(v72 + 24) = v34;
      *(v72 + 32) = v36;
      *(v72 + 40) = v38;
      *(v72 + 48) = v39;
      *(v72 + 56) = v18;
      v73 = swift_task_alloc();
      *(v0 + 104) = v73;
      *v73 = v0;
      v73[1] = PHVoicemailInboxListViewController._setTipView(_:);

      return withCheckedContinuation<A>(isolation:function:_:)();
    }

LABEL_50:

LABEL_51:

    goto LABEL_52;
  }

  [v34 setContentOffset:{v36, v38}];

  [v34 setTableHeaderView:0];

LABEL_52:
  v74 = *(v0 + 8);

  return v74();
}

{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return (_swift_task_switch)(PHVoicemailInboxListViewController._setTipView(_:), v3, v2);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t @objc closure #1 in PHVoicemailInboxListViewController.hideTipView()(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in PHVoicemailInboxListViewController.hideTipView(), v4, v3);
}

uint64_t @objc closure #1 in PHVoicemailInboxListViewController.hideTipView()()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = @objc closure #1 in PHVoicemailInboxListViewController.hideTipView();

  return PHVoicemailInboxListViewController.hideTipView()();
}

{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Bool __swiftcall PHVoicemailInboxListViewController.showTipView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = [v0 tableView];
  if (!v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 tableHeaderView];

  if (v7)
  {
    type metadata accessor for TPTipHeaderView();
    if (swift_dynamicCastClass())
    {
      v8 = dispatch thunk of TPTipHeaderView.hostingView.getter();
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v1 tipViewForPresentation];
  v10 = v9;
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

LABEL_17:

LABEL_18:
    v14 = type metadata accessor for TaskPriority();
    v13 = 1;
    (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    type metadata accessor for MainActor();
    v15 = v1;
    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v15;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in PHVoicemailInboxListViewController.showTipView(), v17);

    goto LABEL_19;
  }

  if (!v9)
  {
    v10 = v8;
    goto LABEL_17;
  }

  type metadata accessor for UIView();
  v11 = static NSObject.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  v12 = [v1 tipViewForPresentation];
  if (!v12)
  {
    v5 = [v1 tableView];
    if (v5)
    {
      v18 = v5;
      v19 = [v5 tableHeaderView];

      if (v19)
      {
        type metadata accessor for TPTipHeaderView();
        if (swift_dynamicCastClass())
        {
          v20 = dispatch thunk of TPTipHeaderView.hostingView.getter();

          if (v20)
          {

            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v13 = 0;
      goto LABEL_19;
    }

LABEL_28:
    __break(1u);
    return v5;
  }

LABEL_15:
  v13 = 1;
LABEL_19:
  LOBYTE(v5) = v13;
  return v5;
}

uint64_t closure #1 in PHVoicemailInboxListViewController.showTipView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.showTipView(), v6, v5);
}

uint64_t closure #1 in PHVoicemailInboxListViewController.showTipView()()
{
  v1 = [*(v0 + 16) tipViewForPresentation];
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = closure #1 in PHVoicemailInboxListViewController.showTipView();

  return PHVoicemailInboxListViewController._setTipView(_:)(v1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return (_swift_task_switch)(closure #1 in PHVoicemailInboxListViewController.showTipView(), v4, v3);
}

void closure #1 in PHVoicemailInboxListViewController._setTipView(_:)(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, double a6, double a7)
{
  v26 = a5;
  v25 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v27 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = a4;
  v32 = partial apply for closure #1 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:);
  v33 = v16;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed () -> ();
  v31 = &block_descriptor_3;
  v17 = _Block_copy(&aBlock);
  v18 = a2;
  v19 = a3;

  (*(v13 + 16))(v15, v25, v12);
  v20 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 24) = v19;
  *(v21 + 32) = a6;
  *(v21 + 40) = a7;
  (*(v13 + 32))(v21 + v20, v15, v12);
  v32 = partial apply for closure #2 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:);
  v33 = v21;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool) -> ();
  v31 = &block_descriptor_36;
  v22 = _Block_copy(&aBlock);
  v23 = v19;

  [v27 animateWithDuration:v17 animations:v22 completion:0.33];
  _Block_release(v22);
  _Block_release(v17);
}

id closure #1 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:)(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  swift_beginAccess();
  PHVoicemailInboxListViewController.refreshTableHeaderView()();
  return [a2 setContentOffset:?];
}

uint64_t closure #2 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:)(int a1, char a2, id a3)
{
  if (a2)
  {
    [a3 setContentOffset:?];
    [a3 setTableHeaderView:0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000E50F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in PHVoicemailInboxListViewController.showTipView()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return closure #1 in PHVoicemailInboxListViewController.showTipView()(a1, v4, v5, v6);
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

uint64_t sub_1000E5234()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in PHVoicemailInboxListViewController.hideTipView()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return @objc closure #1 in PHVoicemailInboxListViewController.hideTipView()(v2, v3);
}

uint64_t sub_1000E5348()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E53B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #2 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:)(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #2 in closure #1 in PHVoicemailInboxListViewController._setTipView(_:)(a1, v3, v4);
}

uint64_t specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = swift_getObjectType();
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for LiveVoicemailTip();
  v2[22] = v5;
  v6 = *(v5 - 8);
  v2[23] = v6;
  v2[24] = *(v6 + 64);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v8;
  v2[30] = v7;

  return (_swift_task_switch)(specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:), v8, v7);
}

{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);

  return (_swift_task_switch)(specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:), v4, v3);
}

uint64_t specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:)()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v16 = v0[14];
  v6 = v0[12];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[31] = v9;
  v0[32] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v5 + 32))(v13 + v11, v2, v4);
  *(v13 + v12) = v8;
  *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;

  v0[33] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:), v13);
  type metadata accessor for TPTipsHelper();
  v14 = swift_task_alloc();
  v0[34] = v14;
  *v14 = v0;
  v14[1] = specialized PHVoicemailInboxListViewController.observeTip<A>(_:action:);

  return static TPTipsHelper.shared.getter();
}

{
  v13 = v0[35];
  v12 = v0[31];
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v14 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];

  (*(v6 + 104))(v5, enum case for TPTipsHelper.Entry.Kind.voicemail(_:), v7);
  v0[5] = v2;
  v0[6] = lazy protocol witness table accessor for type LiveVoicemailTip and conformance LiveVoicemailTip();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v12(boxed_opaque_existential_1, v8, v2);
  (*(v6 + 16))(v4, v5, v7);
  outlined init with copy of Tip((v0 + 2), (v0 + 7));

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v3 + 8))(v1, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000E5C18()
{
  v1 = type metadata accessor for LiveVoicemailTip();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for LiveVoicemailTip() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in VoicemailAccountManager.listen(with:);

  return specialized closure #1 in PHVoicemailInboxListViewController.observeTip<A>(_:action:)(a1, v7, v8, v1 + v5, v9, v10);
}

id RecentCallsListContainerView.recentsController.getter()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t RecentCallsListContainerView.$recentsController.getter()
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t RecentCallsListContainerView.isEditing.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for RecentCallsListContainerView.isEditing : RecentCallsListContainerView@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*RecentCallsListContainerView.isEditing.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  outlined init with copy of Binding<EditMode>?(v3 + 48, v3 + 32, &_s7SwiftUI11AnyLocationCySbGSgMd);
  *(v5 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return RecentCallsListContainerView.isEditing.modify;
}

uint64_t RecentCallsListContainerView.$isEditing.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t RecentCallsListContainerView.isShowingDeleteAllSheet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for RecentCallsListContainerView.isShowingDeleteAllSheet : RecentCallsListContainerView@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t (*RecentCallsListContainerView.isShowingDeleteAllSheet.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  outlined init with copy of Binding<EditMode>?(v3 + 48, v3 + 32, &_s7SwiftUI11AnyLocationCySbGSgMd);
  *(v5 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  return RecentCallsListContainerView.isShowingDeleteAllSheet.modify;
}

void RecentCallsListContainerView.isEditing.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  State.wrappedValue.setter();
  outlined destroy of (NSAttributedStringKey, Any)(v1, &_s7SwiftUI5StateVySbGMd);

  free(v1);
}

uint64_t RecentCallsListContainerView.$isShowingDeleteAllSheet.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t RecentCallsListContainerView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionG0VyXEtFQOyAA03AnyE0V_Qo_AA011_PreferenceL8ModifierVy11MobilePhone015RecentCallsListeN3KeyVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t closure #1 in RecentCallsListContainerView.body.getter@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10EditButtonVSgMd);
  __chkstk_darwin(v3 - 8);
  v63 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  __chkstk_darwin(v5 - 8);
  v55 = &v45 - v6;
  v52 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v48 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19navigationBarBanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyiC0VAI015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAA4TextVAI27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_AYQo__A2_tGG_AA09SegmentedrQ0VQo_Qo_Md);
  v54 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v45 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitle_11displayModeQrAA18LocalizedStringKeyV_AA010NavigationE4ItemV0f7DisplayH0OtFQOyAcAE0dE6BanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyrC0VAQ015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAA4TextVAQ27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA1__A5_Qo__A10_tGG_AA015SegmentedPickerZ0VQo_Qo__Qo_Md);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v51 = &v45 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionE0VyXEtFQOyAA03AnyC0V_Qo_Md);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v45 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionG0VyXEtFQOyAA03AnyE0V_Qo_AA011_PreferenceL8ModifierVy11MobilePhone015RecentCallsListeN3KeyVGGMd);
  __chkstk_darwin(v59);
  v58 = &v45 - v14;
  v50 = a1;
  closure #1 in closure #1 in RecentCallsListContainerView.body.getter(a1);
  v65 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo__AStGG_AA09SegmentedfE0VQo_Md);
  v46 = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
  v17 = type metadata accessor for SegmentedPickerStyle();
  v18 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
  *&v68 = v16;
  *(&v68 + 1) = v17;
  v69 = v18;
  v70 = &protocol witness table for SegmentedPickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v8;
  View.navigationBarBanner<A>(_:)();
  outlined destroy of (NSAttributedStringKey, Any)(v10, &_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
  LocalizedStringKey.init(stringLiteral:)();
  v21 = v48;
  v22 = v49;
  v23 = v52;
  (*(v48 + 104))(v49, enum case for NavigationBarItem.TitleDisplayMode.large(_:), v52);
  *&v68 = v20;
  *(&v68 + 1) = v15;
  v69 = v46;
  v70 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v24 = v51;
  v25 = v53;
  v26 = v47;
  View.navigationBarTitle(_:displayMode:)();
  v27 = v55;

  v28 = v50;
  (*(v21 + 8))(v22, v23);
  v29 = v25;
  v30 = 1;
  (*(v54 + 8))(v26, v29);
  v74 = *(v28 + 1);
  v68 = *(v28 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (v73 == 1)
  {
    v31 = *v28;
    v72 = *(v28 + 2);
    v73 = v31;
    v32 = swift_allocObject();
    v33 = *(v28 + 1);
    v32[1] = *v28;
    v32[2] = v33;
    v32[3] = *(v28 + 2);
    outlined init with copy of Binding<EditMode>?(&v73, &v68, &_s7SwiftUI17EnvironmentObjectVy11MobilePhone27ObservableRecentsControllerCGMd);
    outlined init with copy of Binding<EditMode>?(&v74, &v68, &_s7SwiftUI5StateVySbGMd);
    outlined init with copy of Binding<EditMode>?(&v72, &v68, &_s7SwiftUI5StateVySbGMd);
    Button.init(action:label:)();
    v30 = 0;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  (*(*(v34 - 8) + 56))(v27, v30, 1, v34);
  v35 = v63;
  EditButton.init()();
  v36 = type metadata accessor for EditButton();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = specialized View.optionalNavigationBarItems<A, B>(leading:trailing:)(v27, v35);
  outlined destroy of (NSAttributedStringKey, Any)(v35, &_s7SwiftUI10EditButtonVSgMd);
  outlined destroy of (NSAttributedStringKey, Any)(v27, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  (*(v56 + 8))(v24, v57);
  v67 = v37;
  v71 = *(v28 + 2);
  v66 = *(v28 + 2);
  v38 = State.projectedValue.getter();
  __chkstk_darwin(v38);
  *(&v45 - 2) = v28;
  v39 = v60;
  View.actionSheet(isPresented:content:)();

  v68 = *v28;
  v40 = swift_allocObject();
  v41 = *(v28 + 1);
  *(v40 + 1) = *v28;
  *(v40 + 2) = v41;
  *(v40 + 3) = *(v28 + 2);
  v42 = v58;
  (*(v61 + 32))(v58, v39, v62);
  v43 = (v42 + *(v59 + 36));
  *v43 = partial apply for closure #4 in closure #1 in RecentCallsListContainerView.body.getter;
  v43[1] = v40;
  sub_1000E9248(v42, v64);
  outlined init with copy of Binding<EditMode>?(&v74, &v66, &_s7SwiftUI5StateVySbGMd);
  outlined init with copy of Binding<EditMode>?(&v68, &v66, &_s7SwiftUI17EnvironmentObjectVy11MobilePhone27ObservableRecentsControllerCGMd);
  return outlined init with copy of Binding<EditMode>?(&v71, &v66, &_s7SwiftUI5StateVySbGMd);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionG0VyXEtFQOyAA03AnyE0V_Qo_AA011_PreferenceL8ModifierVy11MobilePhone015RecentCallsListeN3KeyVGGMd);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type _PreferenceActionModifier<RecentCallsListViewPreferenceKey> and conformance _PreferenceActionModifier<A>, &_s7SwiftUI25_PreferenceActionModifierVy11MobilePhone019RecentCallsListViewC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in closure #1 in RecentCallsListContainerView.body.getter(void **a1)
{
  v2 = type metadata accessor for RecentCallsListView();
  __chkstk_darwin(v2);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy11MobilePhone05EmptyD4ViewVAF015RecentCallsListI0V_GMd);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static Published.subscript.getter();

    if (v16 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();

      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
LABEL_4:
        type metadata accessor for ObservableRecentsController(0);
        _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
        *v4 = EnvironmentObject.init()();
        v4[1] = v11;
        v12 = *(v2 + 20);
        *(v4 + v12) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA8EditModeOGSg_GMd);
        swift_storeEnumTagMultiPayload();
        outlined init with copy of RecentCallsListView(v4, v7);
        swift_storeEnumTagMultiPayload();
        lazy protocol witness table accessor for type EmptyContentView and conformance EmptyContentView();
        _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type RecentCallsListView and conformance RecentCallsListView, type metadata accessor for RecentCallsListView);
        _ConditionalContent<>.init(storage:)();
        return outlined destroy of RecentCallsListView(v4);
      }
    }

    *v7 = 0x6E65636552206F4ELL;
    v7[1] = 0xEA00000000007374;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type EmptyContentView and conformance EmptyContentView();
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type RecentCallsListView and conformance RecentCallsListView, type metadata accessor for RecentCallsListView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in RecentCallsListContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v14[0] = a1;
  v1 = type metadata accessor for SegmentedPickerStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - v7;
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
  v9 = EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  v17 = v20;
  v18 = v21;
  v19 = v22;
  LocalizedStringKey.init(stringLiteral:)();
  v14[1] = Text.init(_:tableName:bundle:comment:)();
  v14[2] = v10;
  v15 = v11 & 1;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11MobilePhone27ObservableRecentsControllerC6FilterOQo__AOtGMd);
  lazy protocol witness table accessor for type ObservableRecentsController.Filter and conformance ObservableRecentsController.Filter();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11MobilePhone27ObservableRecentsControllerC6FilterOQo__AOtGMd);
  Picker.init(selection:label:content:)();
  SegmentedPickerStyle.init()();
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
  View.pickerStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t closure #1 in closure #2 in closure #1 in RecentCallsListContainerView.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11MobilePhone27ObservableRecentsControllerC6FilterOQo_Md);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v25[-v8];
  v10 = __chkstk_darwin(v7);
  v12 = &v25[-v11];
  __chkstk_darwin(v10);
  v14 = &v25[-v13];
  LocalizedStringKey.init(stringLiteral:)();
  *v14 = Text.init(_:tableName:bundle:comment:)();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 16) = 256;
  LocalizedStringKey.init(stringLiteral:)();
  *v12 = Text.init(_:tableName:bundle:comment:)();
  *(v12 + 1) = v18;
  v12[16] = v19 & 1;
  *(v12 + 3) = v20;
  *(v12 + 16) = 257;
  v21 = *(v3 + 16);
  v21(v9, v14, v2);
  v21(v6, v12, v2);
  v21(a1, v9, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_11MobilePhone27ObservableRecentsControllerC6FilterOQo__AMtMd);
  v21(&a1[*(v22 + 48)], v6, v2);
  v23 = *(v3 + 8);
  v23(v12, v2);
  v23(v14, v2);
  v23(v6, v2);
  return (v23)(v9, v2);
}

uint64_t RecentCallsListContainerView.deleteAllButton()()
{
  v1 = *v0;
  v7 = v0[1];
  v8 = v1;
  v6 = v0[2];
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  outlined init with copy of Binding<EditMode>?(&v8, v5, &_s7SwiftUI17EnvironmentObjectVy11MobilePhone27ObservableRecentsControllerCGMd);
  outlined init with copy of Binding<EditMode>?(&v7, v5, &_s7SwiftUI5StateVySbGMd);
  outlined init with copy of Binding<EditMode>?(&v6, v5, &_s7SwiftUI5StateVySbGMd);
  return Button.init(action:label:)();
}

uint64_t specialized View.optionalNavigationBarItems<A, B>(leading:trailing:)(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems7leading8trailingQrqd___qd_0_tAaBRd__AaBRd_0_r0_lFQOyAcAE0dE5Title_11displayModeQrAA18LocalizedStringKeyV_AA010NavigationE4ItemV0i7DisplayK0OtFQOyAcAE0dE6BanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyuC0VAT015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA4TextVAT27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA4__A8_Qo__A13_tGG_AA20SegmentedPickerStyleVQo_Qo__Qo__AA6ButtonVyA4_GAA10EditButtonVQo_Md);
  v105 = *(v3 - 8);
  v106 = v3;
  v4 = __chkstk_darwin(v3);
  v103 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v104 = &v93 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems7leading8trailingQrqd___qd_0_tAaBRd__AaBRd_0_r0_lFQOyAcAE0dE5Title_11displayModeQrAA18LocalizedStringKeyV_AA010NavigationE4ItemV0i7DisplayK0OtFQOyAcAE0dE6BanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyuC0VAT015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA4TextVAT27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA4__A8_Qo__A13_tGG_AA20SegmentedPickerStyleVQo_Qo__Qo__AA6ButtonVyA4_GAA0xC0VQo_Md);
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = __chkstk_darwin(v7);
  v99 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v111 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarItems7leading8trailingQrqd___qd_0_tAaBRd__AaBRd_0_r0_lFQOyAcAE0dE5Title_11displayModeQrAA18LocalizedStringKeyV_AA010NavigationE4ItemV0i7DisplayK0OtFQOyAcAE0dE6BanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyuC0VAT015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyAA4TextVAT27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA4__A8_Qo__A13_tGG_AA20SegmentedPickerStyleVQo_Qo__Qo__AA0xC0VAA10EditButtonVQo_Md);
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = __chkstk_darwin(v14);
  v95 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v93 - v17;
  v18 = type metadata accessor for EditButton();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitle_11displayModeQrAA18LocalizedStringKeyV_AA010NavigationE4ItemV0f7DisplayH0OtFQOyAcAE0dE6BanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyrC0VAQ015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerZ0Rd__lFQOyAA6PickerVyAA4TextVAQ27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA1__A5_Qo__A10_tGG_AA015SegmentedPickerZ0VQo_Qo__Qo_Md);
  v22 = *(v109 - 8);
  __chkstk_darwin(v109);
  v24 = &v93 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGSg_AA04EditC0VSgtMd);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v93 - v27;
  v29 = *(v26 + 56);
  outlined init with copy of Binding<EditMode>?(a1, &v93 - v27, &_s7SwiftUI6ButtonVyAA4TextVGSgMd);
  outlined init with copy of Binding<EditMode>?(v108, &v28[v29], &_s7SwiftUI10EditButtonVSgMd);
  v107 = v11;
  v108 = v12;
  LODWORD(a1) = (*(v12 + 48))(v28, 1, v11);
  v30 = (*(v19 + 48))(&v28[v29], 1, v18);
  v31 = v30;
  if (a1 == 1)
  {
    if (v30 == 1)
    {
      (*(v22 + 16))(v24, v110, v109);
      v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19navigationBarBanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyiC0VAI015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAA4TextVAI27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_AYQo__A2_tGG_AA09SegmentedrQ0VQo_Qo_Md);
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
      v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo__AStGG_AA09SegmentedfE0VQo_Md);
      v35 = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>();
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v37 = type metadata accessor for SegmentedPickerStyle();
      v38 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v112 = v36;
      v113 = v37;
      v114 = v38;
      v115 = &protocol witness table for SegmentedPickerStyle;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v112 = v33;
      v113 = v34;
      v114 = v35;
      v115 = OpaqueTypeConformance2;
      v40 = swift_getOpaqueTypeConformance2();
      v112 = v32;
      v113 = v40;
      swift_getOpaqueTypeConformance2();
      return AnyView.init<A>(_:)();
    }

    else
    {
      v59 = *(v19 + 32);
      v94 = v21;
      v59(v21, &v28[v29], v18);
      v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19navigationBarBanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyiC0VAI015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAA4TextVAI27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_AYQo__A2_tGG_AA09SegmentedrQ0VQo_Qo_Md);
      v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
      v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo__AStGG_AA09SegmentedfE0VQo_Md);
      v62 = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>();
      v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v64 = type metadata accessor for SegmentedPickerStyle();
      v65 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v112 = v63;
      v113 = v64;
      v114 = v65;
      v115 = &protocol witness table for SegmentedPickerStyle;
      v66 = swift_getOpaqueTypeConformance2();
      v112 = v111;
      v113 = v61;
      v114 = v62;
      v115 = v66;
      v67 = swift_getOpaqueTypeConformance2();
      v112 = v60;
      v113 = v67;
      v68 = swift_getOpaqueTypeConformance2();
      v69 = _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type EditButton and conformance EditButton, &type metadata accessor for EditButton);
      v70 = v96;
      v71 = v109;
      View.navigationBarItems<A, B>(leading:trailing:)();
      v73 = v97;
      v72 = v98;
      (*(v97 + 16))(v95, v70, v98);
      v112 = v71;
      v113 = &type metadata for EmptyView;
      v114 = v18;
      v115 = v68;
      v116 = &protocol witness table for EmptyView;
      v117 = v69;
      swift_getOpaqueTypeConformance2();
      v41 = AnyView.init<A>(_:)();
      (*(v73 + 8))(v70, v72);
      (*(v19 + 8))(v94, v18);
    }
  }

  else
  {
    (*(v108 + 32))(v111, v28, v107);
    if (v31 == 1)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19navigationBarBanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyiC0VAI015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAA4TextVAI27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_AYQo__A2_tGG_AA09SegmentedrQ0VQo_Qo_Md);
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
      v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo__AStGG_AA09SegmentedfE0VQo_Md);
      v45 = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>();
      v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v47 = type metadata accessor for SegmentedPickerStyle();
      v48 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v112 = v46;
      v113 = v47;
      v114 = v48;
      v115 = &protocol witness table for SegmentedPickerStyle;
      v49 = swift_getOpaqueTypeConformance2();
      v112 = v43;
      v113 = v44;
      v114 = v45;
      v115 = v49;
      v50 = swift_getOpaqueTypeConformance2();
      v112 = v42;
      v113 = v50;
      v51 = swift_getOpaqueTypeConformance2();
      v52 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
      v53 = v100;
      v54 = v111;
      v55 = v109;
      v56 = v107;
      View.navigationBarItems<A, B>(leading:trailing:)();
      v58 = v101;
      v57 = v102;
      (*(v101 + 16))(v99, v53, v102);
      v112 = v55;
      v113 = v56;
      v114 = &type metadata for EmptyView;
      v115 = v51;
      v116 = v52;
      v117 = &protocol witness table for EmptyView;
      swift_getOpaqueTypeConformance2();
      v41 = AnyView.init<A>(_:)();
      (*(v58 + 8))(v53, v57);
      (*(v108 + 8))(v54, v56);
    }

    else
    {
      v74 = *(v19 + 32);
      v94 = v21;
      v74(v21, &v28[v29], v18);
      v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19navigationBarBanneryQrqd__yXEAaBRd__lFQOyAA5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyiC0VAI015RecentCallsListC0VGG_AcAE11pickerStyleyQrqd__AA06PickerQ0Rd__lFQOyAA0R0VyAA4TextVAI27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAU_AYQo__A2_tGG_AA09SegmentedrQ0VQo_Qo_Md);
      v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
      v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA05TupleC0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo__AStGG_AA09SegmentedfE0VQo_Md);
      v78 = lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>();
      v102 = v19;
      v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v80 = type metadata accessor for SegmentedPickerStyle();
      v81 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Picker<Text, ObservableRecentsController.Filter, TupleView<(<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0)>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11MobilePhone27ObservableRecentsControllerC6FilterOAA9TupleViewVyAA0L0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo__AQtGGMd);
      v112 = v79;
      v113 = v80;
      v114 = v81;
      v115 = &protocol witness table for SegmentedPickerStyle;
      v82 = swift_getOpaqueTypeConformance2();
      v112 = v76;
      v113 = v77;
      v114 = v78;
      v115 = v82;
      v83 = swift_getOpaqueTypeConformance2();
      v112 = v75;
      v113 = v83;
      v84 = swift_getOpaqueTypeConformance2();
      v85 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd);
      v86 = _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type EditButton and conformance EditButton, &type metadata accessor for EditButton);
      v87 = v104;
      v88 = v109;
      v89 = v107;
      View.navigationBarItems<A, B>(leading:trailing:)();
      v91 = v105;
      v90 = v106;
      (*(v105 + 16))(v103, v87, v106);
      v112 = v88;
      v113 = v89;
      v114 = v18;
      v115 = v84;
      v116 = v85;
      v117 = v86;
      swift_getOpaqueTypeConformance2();
      v41 = AnyView.init<A>(_:)();
      (*(v91 + 8))(v87, v90);
      (*(v102 + 8))(v94, v18);
      (*(v108 + 8))(v111, v89);
    }
  }

  return v41;
}

uint64_t closure #3 in closure #1 in RecentCallsListContainerView.body.getter(__int128 *a1)
{
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5AlertV6ButtonVGMd);
  type metadata accessor for Alert.Button();
  *(swift_allocObject() + 16) = xmmword_100209F70;
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v7 = a1[1];
  v19 = *a1;
  v17 = a1[2];
  v18 = v7;
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[1] = *a1;
  v8[2] = v9;
  v8[3] = a1[2];
  outlined init with copy of Binding<EditMode>?(&v19, v16, &_s7SwiftUI17EnvironmentObjectVy11MobilePhone27ObservableRecentsControllerCGMd);
  outlined init with copy of Binding<EditMode>?(&v18, v16, &_s7SwiftUI5StateVySbGMd);
  outlined init with copy of Binding<EditMode>?(&v17, v16, &_s7SwiftUI5StateVySbGMd);
  static Alert.Button.destructive(_:action:)();

  outlined consume of Text.Storage(v2, v4, v6 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v10, v12, v14 & 1);

  return ActionSheet.init(title:message:buttons:)();
}

id closure #1 in closure #3 in closure #1 in RecentCallsListContainerView.body.getter(void *a1)
{
  if (*a1)
  {
    v2 = *(*a1 + OBJC_IVAR____TtC11MobilePhone27ObservableRecentsController_recentsController);

    return [v2 deleteAllRecentCalls];
  }

  else
  {
    type metadata accessor for ObservableRecentsController(0);
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in RecentCallsListContainerView.deleteAllButton()@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t RecentCallsListContainerView.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t default argument 0 of RecentCallsListContainerView.init(recentsController:isEditing:isShowingDeleteAllSheet:)()
{
  type metadata accessor for ObservableRecentsController(0);
  _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type ObservableRecentsController and conformance ObservableRecentsController, type metadata accessor for ObservableRecentsController);

  return EnvironmentObject.init()();
}

uint64_t RecentCallsListContainerView.init(recentsController:isEditing:isShowingDeleteAllSheet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v7;
  *(a3 + 40) = v8;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance RecentCallsListContainerView()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionG0VyXEtFQOyAA03AnyE0V_Qo_AA011_PreferenceL8ModifierVy11MobilePhone015RecentCallsListeN3KeyVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.actionSheet(isPresented:content:)>>.0, _PreferenceActionModifier<RecentCallsListViewPreferenceKey>> and conformance <> ModifiedContent<A, B>();
  return NavigationView.init(content:)();
}

uint64_t getEnumTagSinglePayload for RecentCallsListContainerView(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RecentCallsListContainerView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVy11MobilePhone05EmptyE4ViewVAF015RecentCallsListI0VGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<EmptyContentView, RecentCallsListView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<EmptyContentView, RecentCallsListView>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyContentView, RecentCallsListView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyContentView, RecentCallsListView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyContentView, RecentCallsListView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy11MobilePhone05EmptyD4ViewVAD015RecentCallsListH0VGMd);
    lazy protocol witness table accessor for type EmptyContentView and conformance EmptyContentView();
    _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(&lazy protocol witness table cache variable for type RecentCallsListView and conformance RecentCallsListView, type metadata accessor for RecentCallsListView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyContentView, RecentCallsListView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyContentView and conformance EmptyContentView()
{
  result = lazy protocol witness table cache variable for type EmptyContentView and conformance EmptyContentView;
  if (!lazy protocol witness table cache variable for type EmptyContentView and conformance EmptyContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyContentView and conformance EmptyContentView);
  }

  return result;
}

uint64_t sub_1000E9248(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11actionSheet11isPresented7contentQrAA7BindingVySbG_AA06ActionG0VyXEtFQOyAA03AnyE0V_Qo_AA011_PreferenceL8ModifierVy11MobilePhone015RecentCallsListeN3KeyVGGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t _s11MobilePhone27ObservableRecentsControllerCAC7Combine0C6ObjectAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with copy of RecentCallsListView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentCallsListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of RecentCallsListView(uint64_t a1)
{
  v2 = type metadata accessor for RecentCallsListView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t String.localizedRecents.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15._object = 0xE000000000000000;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v11.value._countAndFlagsBits = a3;
  v11.value._object = a4;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v15)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t String.localizedAlerts.getter(uint64_t a1, void *a2)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v11._object = 0xE000000000000000;
  v6.value._object = 0x8000000100242770;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v6.value._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t UIDeviceOrientation.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return 0x70616373646E616CLL;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 0x6E776F4465636166;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x705565636166;
  }

  else
  {
    if (a1 == 1)
    {
      return 0x7469617274726F70;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x70616373646E616CLL;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0xD000000000000012;
  }
}

uint64_t UIInterfaceOrientation.init(_:default:)(uint64_t result, uint64_t a2)
{
  if ((result - 1) >= 4)
  {
    return a2;
  }

  return result;
}

uint64_t GreetingAccount.AccountType.uuid.getter@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = v29 - v7;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 != 1)
    {
      type metadata accessor for Defaults();
      swift_initStackObject();
      return Defaults.liveVoiceMailAccountUUID.getter(a3);
    }

    v29[0] = v10;
    v13 = [a1 labelID];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      if ((*(v29[0] + 48))(v8, 1, v9) != 1)
      {
        v28 = *(v29[0] + 32);
        v28(v12, v8, v9);
        v28(a3, v12, v9);
        return (*(v29[0] + 56))(a3, 0, 1, v9);
      }

      outlined destroy of UUID?(v8);
    }

    if (one-time initialization token for mobilePhone != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.mobilePhone);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v19 = 136315138;
      v29[3] = a1;
      v30 = 1;
      v21 = v16;
      v22 = String.init<A>(reflecting:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v31);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get uuid for account %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
    }

    return (*(v29[0] + 56))(a3, 1, 1, v9);
  }

  else
  {
    v26 = *(v10 + 16);
    v29[0] = v10;
    v26(a3, &a1[OBJC_IVAR___MPVoicemailAccount_uuid], v9);
    v27 = *(v29[0] + 56);

    return v27(a3, 0, 1, v9);
  }
}

BOOL GreetingAccount.customGreetingSupported.getter()
{
  if (*(v0 + OBJC_IVAR___MPGreetingAccount_accountType))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR___MPGreetingAccount_accountType + 8) == 2;
  }

  return !v1;
}

void *GreetingAccount.accountType.getter()
{
  v1 = *(v0 + OBJC_IVAR___MPGreetingAccount_accountType);
  v2 = v1;
  return v1;
}

uint64_t GreetingAccount.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___MPGreetingAccount_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id GreetingAccount.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR___MPGreetingAccount_accountType];
  *v4 = a1;
  v4[8] = 0;
  v5 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v6 = OBJC_IVAR___MPGreetingAccount_uuid;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(&v3[v6], a1 + v5, v7);
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, "init");
}

id GreetingAccount.init(account:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___MPGreetingAccount_accountType];
  *v4 = a1;
  v4[8] = 0;
  v5 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v6 = OBJC_IVAR___MPGreetingAccount_uuid;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(&v1[v6], a1 + v5, v7);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

id GreetingAccount.init(subscription:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v1[OBJC_IVAR___MPGreetingAccount_accountType];
  *v11 = a1;
  v11[8] = 1;
  v12 = a1;
  GreetingAccount.AccountType.uuid.getter(a1, 1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    outlined destroy of UUID?(v6);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v10, v6, v7);
    v14(&v1[OBJC_IVAR___MPGreetingAccount_uuid], v10, v7);
    v16.receiver = v1;
    v16.super_class = ObjectType;
    v15 = objc_msgSendSuper2(&v16, "init");

    return v15;
  }
}

id GreetingAccount.init(accountType:)(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR___MPGreetingAccount_accountType];
  *v13 = a1;
  v13[8] = a2;
  v14 = a1;
  GreetingAccount.AccountType.uuid.getter(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    outlined destroy of UUID?(v8);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v12, v8, v9);
    v16(&v2[OBJC_IVAR___MPGreetingAccount_uuid], v12, v9);
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v17 = objc_msgSendSuper2(&v18, "init");

    return v17;
  }
}

Swift::String_optional __swiftcall GreetingAccount.accountDescription()()
{
  v1 = *(v0 + OBJC_IVAR___MPGreetingAccount_accountType);
  if (*(v0 + OBJC_IVAR___MPGreetingAccount_accountType + 8))
  {
    if (*(v0 + OBJC_IVAR___MPGreetingAccount_accountType + 8) == 1)
    {
      v2 = v1;
      v3 = [v2 label];
      if (v3)
      {
        v4 = v3;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v6;
      }

      else
      {

        countAndFlagsBits = 0;
        object = 0;
      }
    }

    else
    {
      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v18._object = 0xE000000000000000;
      v11._countAndFlagsBits = 0x494F565F4556494CLL;
      v11._object = 0xEE004C49414D4543;
      v12.value._countAndFlagsBits = 0x6C6172656E6547;
      v12.value._object = 0xE700000000000000;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0;
      v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v18);
      countAndFlagsBits = v14._countAndFlagsBits;
      object = v14._object;
    }
  }

  else
  {
    v8 = &v1[OBJC_IVAR___MPVoicemailAccount_accountDescription];
    countAndFlagsBits = *v8;
    object = v8[1];
  }

  v15 = countAndFlagsBits;
  v16 = object;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

uint64_t type metadata accessor for GreetingAccount()
{
  result = type metadata singleton initialization cache for GreetingAccount;
  if (!type metadata singleton initialization cache for GreetingAccount)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GreetingAccount()
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

uint64_t get_enum_tag_for_layout_string_11MobilePhone15GreetingAccountC0D4TypeO(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for GreetingAccount.AccountType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GreetingAccount.AccountType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t destructiveInjectEnumTag for GreetingAccount.AccountType(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static OrientationMonitorComposer.logger);
  __swift_project_value_buffer(v0, static OrientationMonitorComposer.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  v1 = __swift_project_value_buffer(v0, logger);
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.mobilePhone);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

void *one-time initialization function for springBoardOrientationObserver()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static OrientationMonitorComposer.logger);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for SpringBoardOrientationObserver();
  v5 = swift_allocObject();
  v6 = (v5 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  *v6 = PHVoicemailInboxListViewController.refreshTableHeaderView();
  v6[1] = 0;
  *(v5 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver____lazy_storage___cfObserver) = 0;
  (*(v1 + 32))(v5 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_logger, v3, v0);
  type metadata accessor for SpringBoardOrientationObserverWrapper();
  result = swift_allocObject();
  result[3] = 0x6F42676E69727053;
  result[4] = 0xEB00000000647261;
  result[5] = PHVoicemailInboxListViewController.refreshTableHeaderView();
  result[6] = 0;
  result[2] = v5;
  static OrientationMonitorComposer.springBoardOrientationObserver = result;
  return result;
}

uint64_t one-time initialization function for shared()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, static OrientationMonitorComposer.logger);
  (*(v1 + 16))(v3, v4, v0);
  if (one-time initialization token for springBoardOrientationObserver != -1)
  {
    swift_once();
  }

  v5 = static OrientationMonitorComposer.springBoardOrientationObserver;
  type metadata accessor for AccelerometerOrientationMonitorWrapper();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10020B360;
  *(v6 + 32) = 0xED0000726574656DLL;
  *(v6 + 40) = PHVoicemailInboxListViewController.refreshTableHeaderView();
  *(v6 + 48) = 0;

  AccelerometerOrientationMonitorWrapper.wrapped.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18OrientationMonitorCyAA011SpringBoardC15ObserverWrapperCAA013AccelerometercdH0CGMd);
  swift_allocObject();
  result = specialized OrientationMonitor.init(logger:lockSource:orientationSource:)(v3, v5, v6);
  static OrientationMonitorComposer.shared = result;
  return result;
}

{
  type metadata accessor for VoicemailActor();
  result = swift_initStaticObject();
  static VoicemailActor.shared = result;
  return result;
}

{
  type metadata accessor for ApplicationServicesActor();
  result = swift_initStaticObject();
  static ApplicationServicesActor.shared = result;
  return result;
}

uint64_t OrientationMonitorComposer.compose()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id OrientationMonitorComposer.compose_OBJC()()
{
  v1 = (*((swift_isaMask & *v0) + 0x50))();
  v2 = type metadata accessor for PHOrientationMonitor_OBJC();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11MobilePhone25PHOrientationMonitor_OBJC_wrapped] = v1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

id PHOrientationMonitor_OBJC.__allocating_init(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized PHOrientationMonitor_OBJC.__allocating_init(_:)(a1);
}

id OrientationMonitorComposer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrientationMonitorComposer();
  return objc_msgSendSuper2(&v2, "init");
}

id (*PHOrientationMonitor_OBJC.orientationEventsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MobilePhone25PHOrientationMonitor_OBJC_wrapped;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) orientationEventsEnabled];
  return PHOrientationMonitor_OBJC.orientationEventsEnabled.modify;
}

id PHOrientationMonitor_OBJC.init(_:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized PHOrientationMonitor_OBJC.init(_:)(a1, v1);
}

id OrientationMonitorComposer.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void specialized OrientationMonitor.isOrientationLocked.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_beginAccess();
  if (v2[40] == v3)
  {
    return;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v4, v5))
  {

    goto LABEL_20;
  }

  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v16 = v7;
  *v6 = 67109378;
  *(v6 + 4) = v2[40];
  *(v6 + 8) = 2080;
  v8 = *&v2[*(*v2 + 168)];

  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v9 = 0xEE00746867695265;
      goto LABEL_15;
    }

    if (v8 == 5)
    {
      v9 = 0xE600000000000000;
      v10 = 0x705565636166;
      goto LABEL_19;
    }

    if (v8 != 6)
    {
LABEL_16:
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      goto LABEL_19;
    }

    v9 = 0xE800000000000000;
    v10 = 0x6E776F4465636166;
  }

  else
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v9 = 0x80000001002427E0;
        v10 = 0xD000000000000012;
        goto LABEL_19;
      }

      if (v8 == 3)
      {
        v9 = 0xED00007466654C65;
LABEL_15:
        v10 = 0x70616373646E616CLL;
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    v9 = 0xE800000000000000;
    v10 = 0x7469617274726F70;
  }

LABEL_19:
  v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v9, &v16);

  *(v6 + 10) = v11;
  _os_log_impl(&_mh_execute_header, v4, v5, "set orientation locked: %{BOOL}d to orientation: %s", v6, 0x12u);
  __swift_destroy_boxed_opaque_existential_0(v7);

LABEL_20:

  if ((v2[40] & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    if (one-time initialization token for inCallOrientationMonitorEvent != -1)
    {
      swift_once();
    }

    v13 = static NSNotificationName.inCallOrientationMonitorEvent;
    v14 = OrientationMonitor.notificationInfo.getter();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v14);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v12 postNotificationName:v13 object:0 userInfo:isa];
  }
}

unint64_t OrientationMonitor.notificationInfo.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSNumberCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10020B370;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000100242910;
  (*(*v0 + 232))();
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0xD000000000000023;
  *(inited + 64) = 0x8000000100242930;
  (*(*v0 + 224))();
  *(inited + 72) = Int._bridgeToObjectiveC()();
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000100242960;
  (*(*v0 + 200))();
  *(inited + 96) = Int._bridgeToObjectiveC()();
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSNumberCtMd);
  swift_arrayDestroy();
  return v2;
}

uint64_t specialized OrientationMonitor.init(logger:lockSource:orientationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + *(*v4 + 168)) = 0;
  v8 = direct field offset for OrientationMonitor.logger;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a1, v9);
  v11 = *(*v4 + 152);
  *(v4 + v11) = a2;
  v12 = *(*v4 + 160);
  *(v4 + v12) = a3;
  v13 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v14 = *(**(v4 + v12) + 136);

  v14(partial apply for specialized closure #1 in OrientationMonitor.init(logger:lockSource:orientationSource:), v13);
  swift_endAccess();

  v15 = swift_allocObject();
  swift_weakInit();

  swift_beginAccess();
  v16 = *(v4 + v11);
  swift_beginAccess();
  v16[5] = partial apply for specialized closure #2 in OrientationMonitor.init(logger:lockSource:orientationSource:);
  v16[6] = v15;

  v17 = v16[2];
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + OBJC_IVAR____TtC11MobilePhone30SpringBoardOrientationObserver_onOrientationLock);
  swift_beginAccess();
  *v19 = partial apply for closure #1 in SpringBoardOrientationObserverWrapper.onLockChange.didset;
  v19[1] = v18;

  swift_endAccess();

  specialized OrientationMonitor.updateCachedOrientationValues()();
  (*(v10 + 8))(a1, v9);
  return v4;
}

void specialized closure #1 in OrientationMonitor.init(logger:lockSource:orientationSource:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  (*(*Strong + 208))(a1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0xD000000000000012;
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000100242990, &v13);
    *(v6 + 12) = 2080;
    if (a1 > 3)
    {
      if (a1 == 4)
      {
        v7 = 0xEE00746867695265;
        goto LABEL_14;
      }

      if (a1 == 5)
      {
        v7 = 0xE600000000000000;
        v5 = 0x705565636166;
        goto LABEL_18;
      }

      if (a1 != 6)
      {
LABEL_15:
        v7 = 0xE700000000000000;
        v5 = 0x6E776F6E6B6E75;
        goto LABEL_18;
      }

      v7 = 0xE800000000000000;
      v5 = 0x6E776F4465636166;
    }

    else
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          v7 = 0x80000001002427E0;
          goto LABEL_18;
        }

        if (a1 == 3)
        {
          v7 = 0xED00007466654C65;
LABEL_14:
          v5 = 0x70616373646E616CLL;
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v7 = 0xE800000000000000;
      v5 = 0x7469617274726F70;
    }

LABEL_18:
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v13);

    *(v6 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "posting %s for orientation: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v9 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for inCallOrientationMonitorEvent != -1)
  {
    swift_once();
  }

  v10 = static NSNotificationName.inCallOrientationMonitorEvent;
  v11 = OrientationMonitor.notificationInfo.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v10 object:0 userInfo:isa];
}

uint64_t specialized closure #2 in OrientationMonitor.init(logger:lockSource:orientationSource:)(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      swift_beginAccess();
      v13 = v3[40];
      v3[40] = 0;
LABEL_57:
      specialized OrientationMonitor.isOrientationLocked.didset(v13);
    }

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18PHCFNotifyObserverCySo19UIDeviceOrientationVGMd);
    swift_initStaticObject();

    v4 = specialized PHCFNotifyObserver.getCurrentValue()();

    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 1)
    {
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_36;
      }

      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v31[0] = v10;
      *v9 = 136315138;
      if (v4 > 3)
      {
        switch(v4)
        {
          case 4:
            v11 = 0x70616373646E616CLL;
            v12 = 0xEE00746867695265;
            goto LABEL_35;
          case 5:
            v12 = 0xE600000000000000;
            v11 = 0x705565636166;
            goto LABEL_35;
          case 6:
            v12 = 0xE800000000000000;
            v11 = 0x6E776F4465636166;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v4)
        {
          case 1:
            v11 = 0x7469617274726F70;
            v12 = 0xE800000000000000;
            goto LABEL_35;
          case 2:
            v11 = 0xD000000000000012;
            v12 = 0x80000001002427E0;
            goto LABEL_35;
          case 3:
            v11 = 0x70616373646E616CLL;
            v12 = 0xED00007466654C65;
LABEL_35:
            v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v31);

            *(v9 + 4) = v20;
            _os_log_impl(&_mh_execute_header, v7, v8, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v10);

LABEL_36:

            *&v3[*(*v3 + 168)] = v4;
            if ((v4 - 1) > 3)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
        }
      }

      v12 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E75;
      goto LABEL_35;
    }

    swift_retain_n();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v14, v15))
    {

      goto LABEL_54;
    }

    v16 = 0x7469617274726F70;
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136315394;
    if (v4 > 3)
    {
      if (v4 == 4)
      {
        v18 = 0x70616373646E616CLL;
        v19 = 0xEE00746867695265;
        goto LABEL_39;
      }

      if (v4 != 5)
      {
        if (v4 == 6)
        {
          v19 = 0xE800000000000000;
          v18 = 0x6E776F4465636166;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v19 = 0xE600000000000000;
      v18 = 0x705565636166;
    }

    else
    {
      if (v4 == 1)
      {
        v19 = 0xE800000000000000;
        v18 = 0x7469617274726F70;
        goto LABEL_39;
      }

      if (v4 != 2)
      {
        if (v4 == 3)
        {
          v18 = 0x70616373646E616CLL;
          v19 = 0xED00007466654C65;
          goto LABEL_39;
        }

LABEL_31:
        v19 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
        goto LABEL_39;
      }

      v18 = 0xD000000000000012;
      v19 = 0x80000001002427E0;
    }

LABEL_39:
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v31);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = *(*v3 + 160);
    swift_beginAccess();
    v23 = *(**&v3[v22] + 152);

    v25 = v23(v24);

    if (v25 > 3)
    {
      switch(v25)
      {
        case 4:
          v16 = 0x70616373646E616CLL;
          v26 = 0xEE00746867695265;
          goto LABEL_53;
        case 5:
          v26 = 0xE600000000000000;
          v16 = 0x705565636166;
          goto LABEL_53;
        case 6:
          v26 = 0xE800000000000000;
          v16 = 0x6E776F4465636166;
          goto LABEL_53;
      }
    }

    else
    {
      switch(v25)
      {
        case 1:
          v26 = 0xE800000000000000;
          goto LABEL_53;
        case 2:
          v16 = 0xD000000000000012;
          v26 = 0x80000001002427E0;
          goto LABEL_53;
        case 3:
          v16 = 0x70616373646E616CLL;
          v26 = 0xED00007466654C65;
LABEL_53:
          v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v26, v31);

          *(v17 + 14) = v27;
          _os_log_impl(&_mh_execute_header, v14, v15, "SpringBoardOrientationLockChangedNotification: SpringBoard is locked to %s, but using %s", v17, 0x16u);
          swift_arrayDestroy();

LABEL_54:
          v28 = *(*v3 + 160);
          swift_beginAccess();
          v29 = *(**&v3[v28] + 152);

          v4 = v29(v30);

          *&v3[*(*v3 + 168)] = v4;
          if ((v4 - 1) >= 4)
          {
LABEL_56:
            swift_beginAccess();
            v13 = v3[40];
            v3[40] = 1;
            goto LABEL_57;
          }

LABEL_55:
          (*(*v3 + 240))(v4);
          goto LABEL_56;
      }
    }

    v26 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    goto LABEL_53;
  }

  return result;
}

void specialized OrientationMonitor.updateCachedOrientationValues()()
{
  v1 = v0;
  v2 = *(*v0 + 160);
  swift_beginAccess();
  v3 = *(**&v1[v2] + 152);

  v5 = v3(v4);

  (*(*v1 + 208))(v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18PHCFNotifyObserverCySbGMd);
  swift_initStaticObject();

  LOBYTE(v2) = specialized PHCFNotifyObserver.getCurrentValue()();

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone18PHCFNotifyObserverCySo19UIDeviceOrientationVGMd);
    swift_initStaticObject();

    v6 = specialized PHCFNotifyObserver.getCurrentValue()();

    *&v1[*(*v1 + 168)] = v6;
    if ((v6 - 1) <= 3)
    {
      (*(*v1 + 240))(v6);
    }

    swift_beginAccess();
    v7 = v1[40];
    v1[40] = 1;
    specialized OrientationMonitor.isOrientationLocked.didset(v7);
  }
}

id specialized PHOrientationMonitor_OBJC.__allocating_init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for PHOrientationMonitor_OBJC();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC11MobilePhone25PHOrientationMonitor_OBJC_wrapped] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, "init");
}

id specialized PHOrientationMonitor_OBJC.init(_:)(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR____TtC11MobilePhone25PHOrientationMonitor_OBJC_wrapped] = a1;
  v3.receiver = a2;
  v3.super_class = type metadata accessor for PHOrientationMonitor_OBJC();
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_1000EC788@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x88))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1000EC840()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id FTTranscriptionMessage.attributedText.getter()
{
  Transcript.text.getter();
  v0 = objc_allocWithZone(NSAttributedString);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

id FTTranscriptionMessage.__allocating_init(transcriptData:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidenceRating] = 0;
  *&v3[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_transcriptData;
  v5 = type metadata accessor for Transcript();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

id FTTranscriptionMessage.init(transcriptData:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidenceRating] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
  v4 = OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_transcriptData;
  v5 = type metadata accessor for Transcript();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "init");
  (*(v6 + 8))(a1, v5);
  return v7;
}

id MPRTTTranscriptionMessage.attributedText.getter()
{
  v1 = [v0 text];
  v2 = [objc_allocWithZone(NSAttributedString) initWithString:v1];

  return v2;
}

uint64_t MPRTTTranscriptionMessage.isEmpty.getter()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 conversation];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  result = [v5 utterances];
  if (result)
  {
    v8 = result;
    NSArray.makeIterator()();
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, &type metadata accessor for NSFastEnumerationIterator);
    dispatch thunk of IteratorProtocol.next()();
    if (v13)
    {
      while (1)
      {
        outlined init with take of Any(&v12, &v11);
        type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for RTTUtterance);
        if (swift_dynamicCast())
        {
          break;
        }

        dispatch thunk of IteratorProtocol.next()();
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      v9 = 0;
    }

    else
    {
LABEL_6:

      v9 = 1;
    }

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t MPRTTTranscriptionMessage.text.getter()
{
  v1 = [v0 makeTranscriptMessage];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

Swift::Int VoicemailAccountManagerData.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

id FTMessage.id.getter()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  dispatch thunk of Message.recordUUID.getter();
  v7 = *(v1 + 16);
  v7(v4, v6, v0);
  v8 = type metadata accessor for MessageID(0);
  v9 = objc_allocWithZone(v8);
  v7(&v9[OBJC_IVAR___MPMessageID_value], v4, v0);
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v13.receiver = v9;
  v13.super_class = v8;
  v10 = objc_msgSendSuper2(&v13, "init");
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  return v10;
}

uint64_t FTMessage.callUUID.getter@<X0>(uint64_t a1@<X8>)
{
  dispatch thunk of Message.callUUID.getter();
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t FTMessage.messageType.getter()
{
  LOWORD(result) = dispatch thunk of Message.messageType.getter();
  if (result < 3u)
  {
    return result;
  }

  _StringGuts.grow(_:)(23);

  dispatch thunk of Message.messageType.getter();
  MessageType.rawValue.getter();
  v1._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v1);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id FTMessage.senderHandle.getter()
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  dispatch thunk of Message.from.getter();
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 normalizedHandleWithDestinationID:v2];

  return v3;
}

uint64_t FTMessage.senderDestinationID.getter()
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  dispatch thunk of Message.from.getter();
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 normalizedValue];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  if (dispatch thunk of Message.isFromUnknown.getter())
  {

    return 0;
  }

  v7 = dispatch thunk of Message.from.getter();

  return v7;
}

id @objc FTMessage.senderDestinationID.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t FTMessage.senderISOCountryCode.getter()
{
  if ((dispatch thunk of Message.isFromUnknown.getter() & 1) == 0)
  {
    dispatch thunk of Message.from.getter();
    v0 = objc_opt_self();
    v1 = String._bridgeToObjectiveC()();

    v2 = [v0 normalizedHandleWithDestinationID:v1];

    if (v2)
    {
      v3 = [v2 isoCountryCode];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v5;
      }
    }
  }

  return 0;
}

uint64_t FTMessage.receiverDestinationID.getter(SEL *a1)
{
  dispatch thunk of Message.recipient.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 normalizedHandleWithDestinationID:v4];

  if (v5)
  {
    v6 = [v5 *a1];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }
  }

  return 0;
}

uint64_t FTMessage.callbackDestinationID.getter()
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    return 0;
  }

  else
  {
    return dispatch thunk of Message.from.getter();
  }
}

uint64_t FTMessage.folder.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder));
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  if (v3 == 1)
  {
    v4 = dispatch thunk of Message.mailboxType.getter();
    v5 = 1;
    if (v4 == 2)
    {
      v5 = 2;
    }

    if (v4 == 1)
    {
      return 3;
    }

    else
    {
      return v5;
    }
  }

  return v2;
}

void FTMessage.folder.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = a1;
  *(v3 + 16) = 0;

  os_unfair_lock_unlock(v3);
}

uint64_t MessageFolder.init(_:)(__int16 a1)
{
  v1 = 1;
  if (a1 == 2)
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

void (*FTMessage.folder.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = FTMessage.folder.getter();
  return FTMessage.folder.modify;
}

void FTMessage.folder.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder;
  os_unfair_lock_lock(v2);
  *(v2 + 8) = v1;
  *(v2 + 16) = 0;

  os_unfair_lock_unlock(v2);
}

uint64_t FTMessage.read.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead));
  v2 = *(v1 + 4);
  os_unfair_lock_unlock(v1);
  if (v2 == 2)
  {
    return dispatch thunk of Message.isRead.getter() & 1;
  }

  else
  {
    return v2 & 1;
  }
}

void FTMessage.read.setter(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  *(v3 + 4) = a1;

  os_unfair_lock_unlock(v3);
}

void key path getter for FTMessage.read : FTMessage(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 4);
  os_unfair_lock_unlock(v3);
  if (v4 == 2)
  {
    LOBYTE(v4) = dispatch thunk of Message.isRead.getter();
  }

  *a2 = v4 & 1;
}

void (*FTMessage.read.modify(uint64_t a1))(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  *a1 = v1;
  *(a1 + 8) = v3;
  v4 = v1 + v3;
  os_unfair_lock_lock((v1 + v3));
  v5 = *(v4 + 4);
  os_unfair_lock_unlock(v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = dispatch thunk of Message.isRead.getter();
  }

  *(a1 + 16) = v5 & 1;
  return FTMessage.read.modify;
}

void FTMessage.read.modify(uint64_t a1)
{
  v1 = *a1 + *(a1 + 8);
  v2 = *(a1 + 16);
  os_unfair_lock_lock(v1);
  *(v1 + 4) = v2;

  os_unfair_lock_unlock(v1);
}

id @objc FTMessage.callUUID.getter(void *a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), uint64_t (*a5)(void))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  v12 = a1;
  a4();

  v13 = a5();
  (*(v9 + 8))(v11, v8);

  return v13;
}

void FTMessage.isTranscriptionAvailable.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore10TranscriptVSgMd);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (FTMessage.messageSource.getter() == 2 && (dispatch thunk of Message.isRTT.getter() & 1) != 0 && TUCallScreeningRTTEnabled())
  {
    v7 = atomic_load((v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_didLoadTranscript));
    if ((v7 & 1) != 0 && specialized FTMessage.Lazy.wrappedValue.getter())
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 conversation];
        swift_unknownObjectRelease();
        if (v9)
        {
          v10 = [v9 utterances];

          if (v10)
          {
            [v10 count];
          }

          else
          {
            __break(1u);
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v11 = FTMessage.messageSource.getter();
    if (v11)
    {
      if (v11 == 1)
      {
        return;
      }

      specialized FTMessage.Lazy.wrappedValue.getter(v6);
      v15 = type metadata accessor for Transcript();
      (*(*(v15 - 8) + 48))(v6, 1, v15);
      v13 = &_s20FaceTimeMessageStore10TranscriptVSgMd;
      v14 = v6;
    }

    else
    {
      specialized FTMessage.Lazy.wrappedValue.getter(v3);
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 48))(v3, 1, v12);
      v13 = &_s10Foundation3URLVSgMd;
      v14 = v3;
    }

    outlined destroy of (NSAttributedStringKey, Any)(v14, v13);
  }
}

uint64_t FTMessage.messageSource.getter()
{
  v1 = dispatch thunk of Message.messageType.getter();
  if (v1 < 3u)
  {
    return 0x10002u >> (8 * v1);
  }

  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.mobilePhone);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    dispatch thunk of Message.messageType.getter();
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unexpected Message type %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return 0;
}

BOOL FTMessage.transcriptionAttempted.getter()
{
  dispatch thunk of Message.transcriptionStatus.getter();
  v0 = TranscriptionStatus.rawValue.getter();
  return v0 != TranscriptionStatus.rawValue.getter();
}

BOOL FTMessage.isBlocked.getter()
{
  dispatch thunk of Message.mailboxType.getter();
  v0 = MailboxType.rawValue.getter();
  return v0 == MailboxType.rawValue.getter();
}

uint64_t (*FTMessage.isDeleted.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted;
  *a1 = v1;
  *(a1 + 8) = v2;
  LOBYTE(v2) = atomic_load((v1 + v2));
  *(a1 + 16) = v2 & 1;
  return FTMessage.isDeleted.modify;
}

void (*specialized FTMessage.Lazy.wrappedValue.getter())(void *__return_ptr)
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = *(v0 + 32);
    v2(&v5);
    outlined consume of FTMessage.Lazy<TranscriptMessage?>.State(v2, v3, 0);
    v2 = v5;
    *(v1 + 24) = v5;
    *(v1 + 32) = 0;
    *(v1 + 40) = 1;
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 16));
  return v2;
}

void specialized FTMessage.Lazy.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GMd);
  __chkstk_darwin(v3);
  v5 = (&v9 - v4);
  v6 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GGMd) + 28);
  outlined init with copy of Binding<EditMode>?(v6 + v7, v5, &_s11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, a1, &_s20FaceTimeMessageStore10TranscriptVSgMd);
  }

  else
  {
    v8 = outlined destroy of (NSAttributedStringKey, Any)(v6 + v7, &_s11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GMd);
    (*v5)(v8);

    outlined init with copy of Binding<EditMode>?(a1, v6 + v7, &_s20FaceTimeMessageStore10TranscriptVSgMd);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v6);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);
  __chkstk_darwin(v3);
  v5 = (&v9 - v4);
  v6 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GGMd) + 28);
  outlined init with copy of Binding<EditMode>?(v6 + v7, v5, &_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, a1, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v8 = outlined destroy of (NSAttributedStringKey, Any)(v6 + v7, &_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);
    (*v5)(v8);

    outlined init with copy of Binding<EditMode>?(a1, v6 + v7, &_s10Foundation3URLVSgMd);
    swift_storeEnumTagMultiPayload();
  }

  os_unfair_lock_unlock(v6);
}

void FTMessage.Lazy.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v4);
  v5 = *(v3 + 80);
  type metadata accessor for FTMessage.Lazy.State();
  v6 = type metadata accessor for Mutex();
  _s11MobilePhone9FTMessageC4LazyC12wrappedValuexvgxAE5StateOy_x_GzYuYTXEfU_(v4 + *(v6 + 28), v5, a1);

  os_unfair_lock_unlock(v4);
}

uint64_t _s11MobilePhone9FTMessageC4LazyC12wrappedValuexvgxAE5StateOy_x_GzYuYTXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FTMessage.Lazy.State();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v12 - v8);
  (*(v7 + 16))(v12 - v8, a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  v11 = (*(v7 + 8))(a1, v6);
  (*v9)(v11);

  (*(*(a2 - 8) + 16))(a1, a3, a2);
  return swift_storeEnumTagMultiPayload();
}

uint64_t FTMessage.Lazy.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized FTMessage.Lazy.init(_:)(a1, a2);

  return v4;
}

uint64_t FTMessage.Lazy.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized FTMessage.Lazy.init(_:)(a1, a2);

  return v2;
}

void FTMessage.Lazy.set(with:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 88));
  os_unfair_lock_lock(v5);
  type metadata accessor for FTMessage.Lazy.State();
  v6 = type metadata accessor for Mutex();
  _s11MobilePhone9FTMessageC4LazyC3set4withyxyYbc_tFyAE5StateOy_x_GzYuYTXEfU_((&v5->_os_unfair_lock_opaque + *(v6 + 28)), a1, a2);

  os_unfair_lock_unlock(v5);
}

uint64_t _s11MobilePhone9FTMessageC4LazyC3set4withyxyYbc_tFyAE5StateOy_x_GzYuYTXEfU_(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FTMessage.Lazy.State();
  (*(*(v6 - 8) + 8))(a1, v6);
  *a1 = a2;
  a1[1] = a3;
  swift_storeEnumTagMultiPayload();
}

uint64_t FTMessage.Lazy.deinit()
{
  type metadata accessor for FTMessage.Lazy.State();
  type metadata accessor for Mutex();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t FTMessage.Lazy.__deallocating_deinit()
{
  FTMessage.Lazy.deinit();

  return swift_deallocClassInstance();
}

id @objc FTMessage.dataURL.getter(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = a1;
  specialized FTMessage.Lazy.wrappedValue.getter(v4);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    (*(v7 + 8))(v4, v6);
    v9 = v11;
  }

  return v9;
}

id FTMessage.isDataAvailable.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized FTMessage.Lazy.wrappedValue.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    outlined destroy of (NSAttributedStringKey, Any)(v2, &_s10Foundation3URLVSgMd);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 fileExistsAtPath:v9];

    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

char *FTMessage.init(ftMessage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GMd);
  __chkstk_darwin(v48);
  v47 = (&v44 - v3);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);
  __chkstk_darwin(v46);
  v5 = (&v44 - v4);
  v6 = &v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead];
  *v7 = 0;
  v7[4] = 2;
  v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted] = 0;
  v8 = OBJC_IVAR____TtC11MobilePhone9FTMessage__transcript;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyCy_AA17TranscriptMessage_pSgGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = implicit closure #1 in variable initialization expression of FTMessage._transcript;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *&v1[v8] = v9;
  v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_didLoadTranscript] = 0;
  v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_isDirty] = 0;
  *&v1[OBJC_IVAR____TtC11MobilePhone9FTMessage_ftMessage] = a1;
  v10 = v1;
  v44 = v1;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyCy_10Foundation3URLVSgGMd);
  v12 = swift_allocObject();
  *v5 = partial apply for implicit closure #1 in FTMessage.init(ftMessage:);
  v5[1] = v11;
  swift_storeEnumTagMultiPayload();
  v13 = (v12 + *(*v12 + 88));
  *v13 = 0;
  v14 = a1;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GGMd);
  v16 = *(v15 + 28);
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVy11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GGMd) - 8) + 64);
  v45 = v17;
  bzero(v13 + v16, v17);
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, v13 + v16, &_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);

  *&v10[OBJC_IVAR____TtC11MobilePhone9FTMessage__dataURL] = v12;
  v18 = swift_allocObject();
  v19 = v14;
  *(v18 + 16) = v14;
  v20 = swift_allocObject();
  *v5 = partial apply for implicit closure #2 in FTMessage.init(ftMessage:);
  v5[1] = v18;
  swift_storeEnumTagMultiPayload();
  v21 = (v20 + *(*v20 + 88));
  *v21 = 0;
  v22 = *(v15 + 28);
  bzero(v21 + v22, v17);
  v23 = v19;

  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, v21 + v22, &_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);

  v24 = v44;
  *&v44[OBJC_IVAR____TtC11MobilePhone9FTMessage__thumbnailURL] = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = swift_allocObject();
  *v5 = partial apply for implicit closure #3 in FTMessage.init(ftMessage:);
  v5[1] = v25;
  swift_storeEnumTagMultiPayload();
  v27 = (v26 + *(*v26 + 88));
  *v27 = 0;
  v28 = *(v15 + 28);
  bzero(v27 + v28, v45);
  v29 = v23;

  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v5, v27 + v28, &_s11MobilePhone9FTMessageC4LazyC5StateOy_10Foundation3URLVSg_GMd);

  *&v24[OBJC_IVAR____TtC11MobilePhone9FTMessage__transcriptURL] = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9FTMessageC4LazyCy_20FaceTimeMessageStore10TranscriptVSgGMd);
  v31 = swift_allocObject();
  v32 = v47;
  *v47 = partial apply for implicit closure #4 in FTMessage.init(ftMessage:);
  *(v32 + 8) = v30;
  swift_storeEnumTagMultiPayload();
  v33 = (v31 + *(*v31 + 88));
  *v33 = 0;
  v34 = v29;

  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GGMd) + 28);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5_CellVy11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GGMd);
  bzero(v33 + v35, *(*(v36 - 8) + 64));
  outlined init with take of HStack<TupleView<(HStack<TupleView<(ModifiedContent<RecentCallIconView, _PaddingLayout>, VStack<TupleView<(ModifiedContent<RecentCallView.TitleAndCountView, _PaddingLayout>, RecentCallView.SubtitleView)>>)>>, Spacer, RecentCallView.FormattedDateView, Button<RecentCallView.InfoButton>?)>>(v32, v33 + v35, &_s11MobilePhone9FTMessageC4LazyC5StateOy_20FaceTimeMessageStore10TranscriptVSg_GMd);

  *&v24[OBJC_IVAR____TtC11MobilePhone9FTMessage__transcriptData] = v31;
  v50.receiver = v24;
  v50.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v50, "init");
  v38 = *&v37[OBJC_IVAR____TtC11MobilePhone9FTMessage__transcript];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v34;
  v41 = v34;
  v42 = v37;

  os_unfair_lock_lock((v38 + 16));
  outlined consume of FTMessage.Lazy<TranscriptMessage?>.State(*(v38 + 24), *(v38 + 32), *(v38 + 40));
  *(v38 + 24) = partial apply for closure #1 in FTMessage.init(ftMessage:);
  *(v38 + 32) = v40;
  *(v38 + 40) = 0;

  os_unfair_lock_unlock((v38 + 16));

  return v42;
}

uint64_t implicit closure #1 in FTMessage.init(ftMessage:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = dispatch thunk of Message.sandboxMessageFile.getter();
  v6 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter();

  if (v6)
  {
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    v9 = *(v8 + 56);
    v9(v4, 1, 1, v7);
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v10 = a1;
      v11 = 1;
    }

    else
    {
      (*(v8 + 32))(a1, v4, v7);
      v10 = a1;
      v11 = 0;
    }

    return (v9)(v10, v11, 1, v7);
  }

  else
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t implicit closure #2 in FTMessage.init(ftMessage:)@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = a1(v5);
  if (v8 && (v9 = v8, v10 = dispatch thunk of SandboxExtendedURL.sandboxResolvedURL.getter(), v9, v10))
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    v13(v7, 1, 1, v11);
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL);
    dispatch thunk of static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:)();

    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      v14 = a2;
      v15 = 1;
    }

    else
    {
      (*(v12 + 32))(a2, v7, v11);
      v14 = a2;
      v15 = 0;
    }

    return (v13)(v14, v15, 1, v11);
  }

  else
  {
    v16 = type metadata accessor for URL();
    v17 = *(*(v16 - 8) + 56);

    return v17(a2, 1, 1, v16);
  }
}

void closure #1 in FTMessage.init(ftMessage:)(uint64_t a1@<X1>, void *a2@<X8>)
{
  v48 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v3 = __chkstk_darwin(v47);
  v46[1] = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v46 - v5;
  v7 = type metadata accessor for URL();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20FaceTimeMessageStore10TranscriptVSgMd);
  __chkstk_darwin(v9 - 8);
  v11 = v46 - v10;
  v12 = type metadata accessor for Transcript();
  v50 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v46 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    *a2 = 0;
    return;
  }

  v53 = a2;
  v23 = Strong;
  v24 = FTMessage.messageSource.getter();
  if (v24)
  {
    if (v24 != 1)
    {
      if ((dispatch thunk of Message.isRTT.getter() & 1) != 0 && TUCallScreeningRTTEnabled())
      {
        dispatch thunk of Message.callUUID.getter();
        v27 = objc_allocWithZone(MPRTTTranscriptionMessage);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v29 = [v27 initWithCallUUID:isa];

        (*(v19 + 8))(v21, v18);
        *v53 = v29;
      }

      else
      {
        specialized FTMessage.Lazy.wrappedValue.getter(v11);
        v30 = v50;
        if ((*(v50 + 48))(v11, 1, v12) == 1)
        {
          outlined destroy of (NSAttributedStringKey, Any)(v11, &_s20FaceTimeMessageStore10TranscriptVSgMd);
          *v53 = 0;
        }

        else
        {
          (*(v30 + 32))(v17, v11, v12);
          v32 = *(v30 + 16);
          v32(v15, v17, v12);
          v33 = type metadata accessor for FTTranscriptionMessage();
          v34 = objc_allocWithZone(v33);
          *&v34[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidenceRating] = 0;
          *&v34[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_confidence] = 0x3FF0000000000000;
          v32(&v34[OBJC_IVAR____TtC11MobilePhone22FTTranscriptionMessage_transcriptData], v15, v12);
          v54.receiver = v34;
          v54.super_class = v33;
          v35 = objc_msgSendSuper2(&v54, "init");
          v36 = *(v30 + 8);
          v36(v15, v12);
          v36(v17, v12);
          *v53 = v35;
        }
      }

      goto LABEL_15;
    }
  }

  else
  {
    specialized FTMessage.Lazy.wrappedValue.getter(v6);
    v26 = v51;
    v25 = v52;
    if ((*(v51 + 48))(v6, 1, v52) == 1)
    {
      outlined destroy of (NSAttributedStringKey, Any)(v6, &_s10Foundation3URLVSgMd);
      *v53 = 0;
      atomic_store(1u, &v23[OBJC_IVAR____TtC11MobilePhone9FTMessage_didLoadTranscript]);

      return;
    }

    v31 = v49;
    (*(v26 + 32))(v49, v6, v25);
    v37 = Data.init(contentsOf:options:)();
    v39 = v38;
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSKeyedUnarchiver);
    type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for VMVoicemailTranscript);
    v40 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v40)
    {
      v41 = v40;
      v42 = type metadata accessor for VisualTranscriptionMessage();
      v43 = objc_allocWithZone(v42);
      *&v43[OBJC_IVAR___MPVisualTranscriptionMessage_vmTranscript] = v41;
      v55.receiver = v43;
      v55.super_class = v42;
      v44 = v41;
      v45 = objc_msgSendSuper2(&v55, "init");
      outlined consume of Data._Representation(v37, v39);

      (*(v26 + 8))(v31, v25);
      *v53 = v45;
      goto LABEL_15;
    }

    (*(v26 + 8))(v31, v25);
    outlined consume of Data._Representation(v37, v39);
  }

  *v53 = 0;
LABEL_15:
  atomic_store(1u, &v23[OBJC_IVAR____TtC11MobilePhone9FTMessage_didLoadTranscript]);
}

Swift::Bool __swiftcall FTMessage.shouldBeMarkedAsRead(for:)(Swift::Double a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  v4 = *(v3 + 4);
  os_unfair_lock_unlock(v3);
  if (v4 == 2)
  {
    if (dispatch thunk of Message.isRead.getter())
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (a1 > 5.0)
  {
    return 1;
  }

  dispatch thunk of Message.duration.getter();
  return v6 / 3.0 < a1;
}

CNContact_optional __swiftcall FTMessage.getContact(using:with:)(CNContactStore using, Swift::OpaquePointer with)
{
  if (dispatch thunk of Message.isFromUnknown.getter())
  {
    goto LABEL_12;
  }

  dispatch thunk of Message.from.getter();
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 normalizedHandleWithDestinationID:v5];

  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = [v6 normalizedValue];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v6 = v8;
    goto LABEL_8;
  }

  if (dispatch thunk of Message.isFromUnknown.getter())
  {

LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v9 = dispatch thunk of Message.from.getter();
  v11 = v12;
LABEL_8:

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  dispatch thunk of Message.from.getter();
  v14 = String._bridgeToObjectiveC()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [(objc_class *)using.super.isa contactForDestinationId:v14 keysToFetch:isa];

  v17 = v16;
LABEL_13:
  result.value.super.isa = v17;
  result.is_nil = v3;
  return result;
}

Swift::String_optional __swiftcall FTMessage.getDisplayName(using:)(CNContactStore using)
{
  v2 = dispatch thunk of Message.from.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100209A80;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 descriptorForRequiredKeysForStyle:0];
  v8 = FTMessage.getContact(using:with:)(using, v6);

  if (!v8)
  {
    v13 = closure #1 in FTMessage.getDisplayName(using:)();
    goto LABEL_12;
  }

  if (([v8 isSuggested] & 1) == 0)
  {
    v14 = [v7 stringFromContact:v8 style:0];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v12 = v18;
      v13 = v16;
      goto LABEL_12;
    }

LABEL_11:
    v13 = 0;
    v12 = 0;
    goto LABEL_12;
  }

  v9 = closure #1 in FTMessage.getDisplayName(using:)();
  v11 = v10;

  v12 = v11;
  v13 = v9;
LABEL_12:
  result.value._object = v12;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t closure #1 in FTMessage.getDisplayName(using:)()
{
  v0 = objc_opt_self();
  dispatch thunk of Message.from.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 normalizedHandleWithDestinationID:v1];

  if (v2)
  {
    v3 = [v2 normalizedValue];
    v4 = [v2 isoCountryCode];
    v5 = TUFormattedPhoneNumber();

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  return 0;
}

uint64_t FTMessage.description.getter()
{
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v148);
  v147 = &v141 - v1;
  v2 = type metadata accessor for Date();
  v145 = *(v2 - 8);
  v146 = v2;
  __chkstk_darwin(v2);
  v144 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  __chkstk_darwin(v143);
  v142 = &v141 - v4;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v141 - v10;
  v152 = 0;
  v153 = 0xE000000000000000;
  _StringGuts.grow(_:)(699);
  v12._countAndFlagsBits = 0xD00000000000001ALL;
  v12._object = 0x8000000100242AB0;
  String.append(_:)(v12);
  v13 = [*(v0 + OBJC_IVAR____TtC11MobilePhone9FTMessage_ftMessage) description];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x3A6469202020200ALL;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  dispatch thunk of Message.recordUUID.getter();
  v19 = *(v6 + 16);
  v19(v9, v11, v5);
  v20 = type metadata accessor for MessageID(0);
  v21 = objc_allocWithZone(v20);
  v19(&v21[OBJC_IVAR___MPMessageID_value], v9, v5);
  v22 = v141;
  type metadata accessor for MessageID.Value(0);
  swift_storeEnumTagMultiPayload();
  v151.receiver = v21;
  v151.super_class = v20;
  v23 = objc_msgSendSuper2(&v151, "init");
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v11, v5);
  v25 = [v23 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x6F7270202020200ALL;
  v30._object = 0xEF203A7265646976;
  String.append(_:)(v30);
  v31._countAndFlagsBits = dispatch thunk of Message.provider.getter();
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0x6C6163202020200ALL;
  v32._object = 0xEF203A444955556CLL;
  String.append(_:)(v32);
  v33 = v142;
  dispatch thunk of Message.callUUID.getter();
  (*(v6 + 56))(v33, 0, 1, v5);
  v34._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v34);

  v35._countAndFlagsBits = 0xD000000000000012;
  v35._object = 0x8000000100242AD0;
  String.append(_:)(v35);
  v149 = FTMessage.messageType.getter();
  _print_unlocked<A, B>(_:_:)();
  v36._countAndFlagsBits = 0xD00000000000001ALL;
  v36._object = 0x8000000100242AF0;
  String.append(_:)(v36);
  v149 = FTMessage.senderDestinationID.getter();
  v150 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  v38._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0xD00000000000001BLL;
  v39._object = 0x8000000100242B10;
  String.append(_:)(v39);
  v149 = FTMessage.senderISOCountryCode.getter();
  v150 = v40;
  v41._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0xD00000000000001CLL;
  v42._object = 0x8000000100242B30;
  String.append(_:)(v42);
  v149 = FTMessage.receiverDestinationID.getter();
  v150 = v43;
  v44._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0xD00000000000001DLL;
  v45._object = 0x8000000100242B50;
  String.append(_:)(v45);
  v149 = FTMessage.receiverISOCountryCode.getter();
  v150 = v46;
  v47._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD00000000000001CLL;
  v48._object = 0x8000000100242B70;
  String.append(_:)(v48);
  v49 = dispatch thunk of Message.isFromUnknown.getter();
  v50 = 0;
  v51 = 0;
  if ((v49 & 1) == 0)
  {
    v50 = dispatch thunk of Message.from.getter();
  }

  v149 = v50;
  v150 = v51;
  v52._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD000000000000012;
  v53._object = 0x8000000100242B90;
  String.append(_:)(v53);
  v54 = v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder;
  os_unfair_lock_lock((v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder));
  v55 = *(v54 + 8);
  v56 = *(v54 + 16);
  os_unfair_lock_unlock(v54);
  v149 = v55;
  LOBYTE(v150) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone13MessageFolderOSgMd);
  v57._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x6C6F66202020200ALL;
  v58._object = 0xED0000203A726564;
  String.append(_:)(v58);
  v149 = FTMessage.folder.getter();
  _print_unlocked<A, B>(_:_:)();
  v59._object = 0x8000000100242BB0;
  v59._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v59);
  v60 = v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock((v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead));
  LOBYTE(v55) = *(v60 + 4);
  os_unfair_lock_unlock(v60);
  LOBYTE(v149) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd);
  v61._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0x616572202020200ALL;
  v62._object = 0xEB00000000203A64;
  String.append(_:)(v62);
  os_unfair_lock_lock(v60);
  v63 = *(v60 + 4);
  os_unfair_lock_unlock(v60);
  if (v63 == 2)
  {
    LOBYTE(v63) = dispatch thunk of Message.isRead.getter();
  }

  if (v63)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  v66 = v65;
  String.append(_:)(*&v64);

  v67._countAndFlagsBits = 0x746164202020200ALL;
  v67._object = 0xEB00000000203A65;
  String.append(_:)(v67);
  v68 = v144;
  dispatch thunk of Message.dateCreated.getter();
  lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  v69 = v146;
  v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v70);

  (*(v145 + 8))(v68, v69);
  v71._countAndFlagsBits = 0xD00000000000001FLL;
  v71._object = 0x8000000100242BD0;
  String.append(_:)(v71);
  FTMessage.isTranscriptionAvailable.getter();
  v73 = (v72 & 1) == 0;
  if (v72)
  {
    v74 = 1702195828;
  }

  else
  {
    v74 = 0x65736C6166;
  }

  if (v73)
  {
    v75 = 0xE500000000000000;
  }

  else
  {
    v75 = 0xE400000000000000;
  }

  v76 = v75;
  String.append(_:)(*&v74);

  v77._countAndFlagsBits = 0x727564202020200ALL;
  v77._object = 0xEF203A6E6F697461;
  String.append(_:)(v77);
  dispatch thunk of Message.duration.getter();
  Double.write<A>(to:)();
  v78._countAndFlagsBits = 0xD00000000000001BLL;
  v78._object = 0x8000000100242BF0;
  String.append(_:)(v78);
  v79._countAndFlagsBits = 0x65736C6166;
  v79._object = 0xE500000000000000;
  String.append(_:)(v79);
  v80._countAndFlagsBits = 0xD000000000000015;
  v80._object = 0x8000000100242C10;
  String.append(_:)(v80);
  v81._countAndFlagsBits = 0x65736C6166;
  v81._object = 0xE500000000000000;
  String.append(_:)(v81);
  v82._countAndFlagsBits = 0xD00000000000001DLL;
  v82._object = 0x8000000100242C30;
  String.append(_:)(v82);
  dispatch thunk of Message.transcriptionStatus.getter();
  v83 = TranscriptionStatus.rawValue.getter();
  v84 = TranscriptionStatus.rawValue.getter();
  v85 = v83 == v84;
  if (v83 == v84)
  {
    v86 = 0x65736C6166;
  }

  else
  {
    v86 = 1702195828;
  }

  if (v85)
  {
    v87 = 0xE500000000000000;
  }

  else
  {
    v87 = 0xE400000000000000;
  }

  v88 = v87;
  String.append(_:)(*&v86);

  v89._object = 0x8000000100242C50;
  v89._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v89);
  dispatch thunk of Message.mailboxType.getter();
  v90 = MailboxType.rawValue.getter();
  v91 = MailboxType.rawValue.getter();
  v92 = v90 == v91;
  if (v90 == v91)
  {
    v93 = 1702195828;
  }

  else
  {
    v93 = 0x65736C6166;
  }

  if (v92)
  {
    v94 = 0xE400000000000000;
  }

  else
  {
    v94 = 0xE500000000000000;
  }

  v95 = v94;
  String.append(_:)(*&v93);

  v96._object = 0x8000000100242C70;
  v96._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v96);
  v97 = atomic_load((v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted));
  if (v97)
  {
    v98 = 1702195828;
  }

  else
  {
    v98 = 0x65736C6166;
  }

  if (v97)
  {
    v99 = 0xE400000000000000;
  }

  else
  {
    v99 = 0xE500000000000000;
  }

  v100 = v99;
  String.append(_:)(*&v98);

  v101._countAndFlagsBits = 0xD000000000000012;
  v101._object = 0x8000000100242C90;
  String.append(_:)(v101);
  v102 = dispatch thunk of Message.isSensitive.getter();
  v103 = (v102 & 1) == 0;
  if (v102)
  {
    v104 = 1702195828;
  }

  else
  {
    v104 = 0x65736C6166;
  }

  if (v103)
  {
    v105 = 0xE500000000000000;
  }

  else
  {
    v105 = 0xE400000000000000;
  }

  v106 = v105;
  String.append(_:)(*&v104);

  v107._object = 0xEE00203A4C525561;
  v107._countAndFlagsBits = 0x746164202020200ALL;
  String.append(_:)(v107);
  v108 = v147;
  specialized FTMessage.Lazy.wrappedValue.getter(v147);
  v109._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v109);

  v110._countAndFlagsBits = 0xD000000000000013;
  v110._object = 0x8000000100242CB0;
  String.append(_:)(v110);
  specialized FTMessage.Lazy.wrappedValue.getter(v108);
  v111._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v111);

  v112._countAndFlagsBits = 0xD000000000000014;
  v112._object = 0x8000000100242CD0;
  String.append(_:)(v112);
  specialized FTMessage.Lazy.wrappedValue.getter(v108);
  v113._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v113);

  v114._countAndFlagsBits = 0x527369202020200ALL;
  v114._object = 0xEC000000203A5454;
  String.append(_:)(v114);
  v115 = dispatch thunk of Message.isRTT.getter();
  v116 = (v115 & 1) == 0;
  if (v115)
  {
    v117 = 1702195828;
  }

  else
  {
    v117 = 0x65736C6166;
  }

  if (v116)
  {
    v118 = 0xE500000000000000;
  }

  else
  {
    v118 = 0xE400000000000000;
  }

  v119 = v118;
  String.append(_:)(*&v117);

  v120._countAndFlagsBits = 0xD000000000000016;
  v120._object = 0x8000000100242CF0;
  String.append(_:)(v120);
  v121 = FTMessage.isDataAvailable.getter();
  v122 = (v121 & 1) == 0;
  if (v121)
  {
    v123 = 1702195828;
  }

  else
  {
    v123 = 0x65736C6166;
  }

  if (v122)
  {
    v124 = 0xE500000000000000;
  }

  else
  {
    v124 = 0xE400000000000000;
  }

  v125 = v124;
  String.append(_:)(*&v123);

  v126._countAndFlagsBits = 0xD000000000000011;
  v126._object = 0x8000000100242D10;
  String.append(_:)(v126);
  v149 = specialized FTMessage.Lazy.wrappedValue.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone17TranscriptMessage_pSgMd);
  v127._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v127);

  v128._countAndFlagsBits = 0xD000000000000018;
  v128._object = 0x8000000100242D30;
  String.append(_:)(v128);
  v129 = atomic_load((v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_didLoadTranscript));
  if (v129)
  {
    v130 = 1702195828;
  }

  else
  {
    v130 = 0x65736C6166;
  }

  if (v129)
  {
    v131 = 0xE400000000000000;
  }

  else
  {
    v131 = 0xE500000000000000;
  }

  v132 = v131;
  String.append(_:)(*&v130);

  v133._countAndFlagsBits = 0x447369202020200ALL;
  v133._object = 0xEE00203A79747269;
  String.append(_:)(v133);
  v134 = atomic_load((v22 + OBJC_IVAR____TtC11MobilePhone9FTMessage_isDirty));
  if (v134)
  {
    v135 = 1702195828;
  }

  else
  {
    v135 = 0x65736C6166;
  }

  if (v134)
  {
    v136 = 0xE400000000000000;
  }

  else
  {
    v136 = 0xE500000000000000;
  }

  v137 = v136;
  String.append(_:)(*&v135);

  v138._countAndFlagsBits = 0xD000000000000014;
  v138._object = 0x8000000100242D50;
  String.append(_:)(v138);
  LOBYTE(v149) = FTMessage.messageSource.getter();
  _print_unlocked<A, B>(_:_:)();
  v139._countAndFlagsBits = 0x202020202020200ALL;
  v139._object = 0xEA00000000002920;
  String.append(_:)(v139);
  return v152;
}

id @objc FTMessage.debugDescription.getter(void *a1)
{
  v1 = a1;
  FTMessage.description.getter();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

uint64_t specialized FTMessage.Lazy.init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FTMessage.Lazy.State();
  __chkstk_darwin(v5);
  v7 = (&v16 - v6);
  v8 = type metadata accessor for Mutex();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = (&v16 - v11);
  *v7 = a1;
  v7[1] = a2;
  swift_storeEnumTagMultiPayload();
  *v12 = 0;
  v13 = *(v9 + 36);
  v14 = type metadata accessor for _Cell();
  bzero(v12 + v13, *(*(v14 - 8) + 64));

  _sSpsRi_zrlE10initialize2toyxn_tF(v7, v12 + v13, v5);
  memcpy((v2 + *(*v2 + 88)), v12, v10);
  return v2;
}

uint64_t sub_1000F23AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F2470()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F24A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t outlined consume of FTMessage.Lazy<TranscriptMessage?>.State(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type FTMessageSource and conformance FTMessageSource()
{
  result = lazy protocol witness table cache variable for type FTMessageSource and conformance FTMessageSource;
  if (!lazy protocol witness table cache variable for type FTMessageSource and conformance FTMessageSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FTMessageSource and conformance FTMessageSource);
  }

  return result;
}

uint64_t sub_1000F2558@<X0>(uint64_t *a1@<X8>)
{
  result = FTMessage.folder.getter();
  *a1 = result;
  return result;
}

void sub_1000F2584(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyFolder;
  os_unfair_lock_lock(v3);
  *(v3 + 8) = v2;
  *(v3 + 16) = 0;

  os_unfair_lock_unlock(v3);
}

void sub_1000F25DC(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2 + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyRead;
  os_unfair_lock_lock(v3);
  *(v3 + 4) = v2;

  os_unfair_lock_unlock(v3);
}

void *sub_1000F262C@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = atomic_load((*result + OBJC_IVAR____TtC11MobilePhone9FTMessage_dirtyIsDeleted));
  *a2 = v2 & 1;
  return result;
}

uint64_t type metadata accessor for FTTranscriptionMessage()
{
  result = type metadata singleton initialization cache for FTTranscriptionMessage;
  if (!type metadata singleton initialization cache for FTTranscriptionMessage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for FTTranscriptionMessage()
{
  result = type metadata accessor for Transcript();
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

uint64_t getEnumTagSinglePayload for FTMessageSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMessageSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1000F28D0()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVy11MobilePhone13MessageFolderOSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000F2900()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization5MutexVySbSgGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_1000F2930()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySbGMd);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t type metadata completion function for FTMessage.Lazy()
{
  type metadata accessor for FTMessage.Lazy.State();
  result = type metadata accessor for Mutex();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1000F2A18()
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for FTMessage.Lazy.State();
  return type metadata accessor for Mutex();
}

unint64_t type metadata completion function for FTMessage.Lazy.State()
{
  result = type metadata accessor for ()();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTMessage.Lazy.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for FTMessage.Lazy.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(unint64_t *a1, void (*a2)(uint64_t))
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

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11MobilePhone9MessageIDC_SayAFGTt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MobilePhone7Message_p_Tt1g5Tm(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 32;
  v7 = *(a3 + 16);
  if (a2)
  {

    v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (a2 + 16));
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

LABEL_4:
      if (v9 < *(a4 + 16))
      {
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_12;
    }
  }

  else if (v7)
  {
    type metadata accessor for MessageID(0);
    v9 = 0;
    while (1)
    {
      v12 = *(v6 + 8 * v9);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        return;
      }
    }

    goto LABEL_4;
  }
}

void specialized OrderedDictionary.updateValue(_:forKey:)(uint64_t a1, void *a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 + 32;
  v8 = *(v5 + 16);
  if (*v2)
  {

    v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a2, v7, v8, (v6 + 16));
    v8 = v10;
    v7 = v11;

    if (v8)
    {
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a2);
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_15:
      specialized ContiguousArray._endMutation()();
      return;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for MessageID(0);
  v9 = 0;
  while (1)
  {
    v12 = *(v7 + 8 * v9);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  v16 = v2[2];
  v14 = v2 + 2;
  v15 = v16;
  if (v9 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v15);
      *v14 = v15;
    }

    if (v9 < *(v15 + 16))
    {
      *(v15 + 8 * v9 + 32) = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t closure #1 in CachedVoicemailManager.Cache.sort()(uint64_t a1, id *a2, uint64_t a3, void **a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = *a4;
  v14 = [*a2 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [v13 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v15) = static Date.> infix(_:_:)();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  return v15 & 1;
}

unint64_t CachedVoicemailManager.Cache.add(_:shouldSort:)(unint64_t result, char a2)
{
  v3 = v2;
  v23 = result;
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v6 = v23 & 0xC000000000000001;
      v27 = v23 + 32;
      v28 = v23 & 0xFFFFFFFFFFFFFF8;
      v25 = v23 & 0xC000000000000001;
      v26 = v4;
      while (v6)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = __OFADD__(v5++, 1);
        if (v8)
        {
          goto LABEL_25;
        }

LABEL_9:
        v9 = [v7 identifier];
        swift_beginAccess();
        v11 = v3[2];
        v10 = v3[3];
        v12 = v10 + 32;
        v13 = *(v10 + 16);
        if (v11)
        {
          swift_unknownObjectRetain();

          v14 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v12, v13, (v11 + 16));
          v16 = v15;

          if (v16)
          {
            goto LABEL_4;
          }
        }

        else
        {
          swift_unknownObjectRetain();
          if (!v13)
          {
LABEL_4:
            specialized OrderedSet._appendNew(_:in:)(v9);

            swift_unknownObjectRetain();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }

          type metadata accessor for MessageID(0);
          v14 = 0;
          while (1)
          {
            v17 = *(v12 + 8 * v14);
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              break;
            }

            if (v13 == ++v14)
            {
              v6 = v25;
              v4 = v26;
              goto LABEL_4;
            }
          }

          v6 = v25;
          v4 = v26;
        }

        v19 = v3[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v3[4] = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v19);
          v3[4] = v19;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v14 >= *(v19 + 16))
        {
          goto LABEL_28;
        }

        *(v19 + 8 * v14 + 32) = v7;
        swift_unknownObjectRelease();
        specialized ContiguousArray._endMutation()();
LABEL_5:
        swift_endAccess();
        result = swift_unknownObjectRelease();
        if (v5 == v4)
        {
          goto LABEL_30;
        }
      }

      if (v5 >= *(v28 + 16))
      {
        goto LABEL_26;
      }

      v7 = *(v27 + 8 * v5);
      swift_unknownObjectRetain();
      v8 = __OFADD__(v5++, 1);
      if (!v8)
      {
        goto LABEL_9;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
    }

    while (result);
  }

LABEL_30:
  if (a2)
  {
    swift_beginAccess();
    v21 = v3[4];
    v29 = specialized _copySequenceToContiguousArray<A>(_:)(v3[3], v21);
    specialized MutableCollection<>.sort(by:)(&v29, closure #1 in CachedVoicemailManager.Cache.sort());
    v22 = v29[2];
    if (v22 == *(v21 + 16))
    {
      specialized closure #1 in OrderedDictionary.sort(by:)((v29 + 4), v22, v3 + 2);

      return swift_endAccess();
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }

  return result;
}

uint64_t CachedVoicemailManager.Cache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CachedVoicemailManager.estimatedCount.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager__estimatedCount));
  v2 = *(v1 + 8);
  os_unfair_lock_unlock(v1);
  return v2;
}

void CachedVoicemailManager.estimatedCount.setter(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager__estimatedCount);
  os_unfair_lock_lock(v4);
  *&v4[2]._os_unfair_lock_opaque = a1;
  os_unfair_lock_unlock(v4);
  v5 = [objc_allocWithZone(NSUserDefaults) init];
  v6 = (*((swift_isaMask & *v2) + 0xA8))();
  _StringGuts.grow(_:)(26);

  v7._object = 0x8000000100242FC0;
  v7._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v5 setInteger:v6 forKey:v8];
}

uint64_t CachedVoicemailManager.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_serviceName);

  return v1;
}

uint64_t CachedVoicemailManager.fetchMessagesFromDataStore()()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(CachedVoicemailManager.fetchMessagesFromDataStore(), v1, v0);
}

{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "This must be overriden, its a misuse to use this directly without overriding this property", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(&_swiftEmptyArrayStorage);
}

char *CachedVoicemailManager.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state] = 0x8000000000000000;
  *&v2[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue] = &_swiftEmptyArrayStorage;
  v3 = &v2[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager__estimatedCount];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_serviceName];
  *v4 = a1;
  *(v4 + 1) = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CachedVoicemailManager();
  v5 = objc_msgSendSuper2(&v15, "init");
  v6 = objc_allocWithZone(NSUserDefaults);
  v7 = v5;
  v8 = [v6 init];
  _StringGuts.grow(_:)(26);

  v13 = *&v7[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_serviceName];
  v14 = *&v7[OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_serviceName + 8];

  v9._object = 0x8000000100242FC0;
  v9._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v9);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v8 integerForKey:{v10, v13, v14}];

  CachedVoicemailManager.estimatedCount.setter(v11);
  return v7;
}

uint64_t CachedVoicemailManager.fetchMessages()()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v1[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[12] = swift_initStaticObject();
  v1[13] = lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return (_swift_task_switch)(CachedVoicemailManager.fetchMessages(), v3, v2);
}

{
  v36 = v0;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = __swift_project_value_buffer(v1, static Logger.mobilePhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v35 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v35);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = v0[10];
  v7 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state;
  v8 = *(v6 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  v0[17] = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 == 1)
    {
      v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;

      swift_beginAccess();
      v11 = *(v6 + v10);
      v12 = *(v11 + 16);
      if (v12)
      {

        v13 = v11 + 40;
        do
        {
          v14 = *(v13 - 8);
          v35 = v8 & 0x3FFFFFFFFFFFFFFFLL;

          v14(&v35);

          v13 += 16;
          --v12;
        }

        while (v12);
      }

      *(v6 + v10) = _swiftEmptyArrayStorage;

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136315138;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v35);
        _os_log_impl(&_mh_execute_header, v15, v16, "CachedVoicemailManager: %s returning voicemails", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
      }

      swift_beginAccess();
      v19 = v9[2];
      v20 = v9[3];
      v21 = v9[4];

      v22 = specialized _copyCollectionToContiguousArray<A>(_:)(v19, v20, v21);

      v23 = v0[1];

      return v23(v22);
    }

    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[11];
    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v29;
    v33[3] = v28;
    v33[4] = v32;
    v8 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLC_Tt2g5(0, 0, v30, &async function pointer to partial apply for closure #1 in CachedVoicemailManager.fetchMessages(), v33);
    v0[19] = v8;
    *(v6 + v7) = v8;

    v34 = swift_task_alloc();
    v0[20] = v34;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v34 = v0;
    v34[1] = CachedVoicemailManager.fetchMessages();
    v27 = v0 + 9;
  }

  else
  {

    v25 = swift_task_alloc();
    v0[18] = v25;
    v26 = type metadata accessor for CachedVoicemailManager.Cache();
    *v25 = v0;
    v25[1] = CachedVoicemailManager.fetchMessages();
    v27 = v0 + 8;
  }

  return Task<>.value.getter(v27, v8, v26);
}

{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return (_swift_task_switch)(CachedVoicemailManager.fetchMessages(), v3, v2);
}

{
  v19 = v0;

  v1 = v0[8];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return (_swift_task_switch)(CachedVoicemailManager.fetchMessages(), v3, v2);
}

{
  v19 = v0;

  v1 = v0[9];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v18 = v1;

      v7(&v18);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning voicemails", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  swift_beginAccess();
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];

  v15 = specialized _copyCollectionToContiguousArray<A>(_:)(v12, v13, v14);

  v16 = v0[1];

  return v16(v15);
}

uint64_t closure #1 in CachedVoicemailManager.fetchMessages()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return (_swift_task_switch)(closure #1 in CachedVoicemailManager.fetchMessages(), v6, v5);
}

uint64_t closure #1 in CachedVoicemailManager.fetchMessages()()
{
  v16 = v0;
  if (one-time initialization token for mobilePhone != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 96) = __swift_project_value_buffer(v1, static Logger.mobilePhone);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    *(v4 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "CachedVoicemailManager: %s inside of a task", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    v14 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = closure #1 in CachedVoicemailManager.fetchMessages();

    return v14();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    v9 = swift_allocObject();
    _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC11MobilePhone9MessageIDC_AH0L0_pSayAJ_AhK_ptGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v9[2] = v10;
    v9[3] = v11;
    v9[4] = v12;
    **(v0 + 64) = v9;
    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v17 = v0;
  v1 = *(v0 + 104);
  v2 = specialized CachedVoicemailManager.Cache.__allocating_init(voicemails:shouldSort:)(*(v0 + 128), 1);
  *(v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state) = v2 | 0x4000000000000000;
  swift_retain_n();

  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);

  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v3, v4, v5);

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  CachedVoicemailManager.estimatedCount.setter(v7);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 104);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x73654D6863746566, 0xEF29287365676173, &v16);
    _os_log_impl(&_mh_execute_header, v8, v9, "CachedVoicemailManager: %s returning cache from a task", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  **(v0 + 64) = v2;
  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = *(v0 + 104);
  type metadata accessor for CachedVoicemailManager.Cache();
  v2 = swift_allocObject();
  _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC11MobilePhone9MessageIDC_AH0L0_pSayAJ_AhK_ptGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v8;
  **(v0 + 64) = v2;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t closure #1 in CachedVoicemailManager.fetchMessages()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = closure #1 in CachedVoicemailManager.fetchMessages();
  }

  else
  {
    v4[16] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = closure #1 in CachedVoicemailManager.fetchMessages();
  }

  return (_swift_task_switch)(v7, v5, v6);
}

uint64_t @objc closure #1 in CachedVoicemailManager.fetchMessages()(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in CachedVoicemailManager.fetchMessages(), v4, v3);
}

uint64_t @objc closure #1 in CachedVoicemailManager.fetchMessages()()
{
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in CachedVoicemailManager.fetchMessages();

  return CachedVoicemailManager.fetchMessages()();
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v6 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t CachedVoicemailManager.message(for:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return (_swift_task_switch)(CachedVoicemailManager.message(for:), v4, v3);
}

uint64_t CachedVoicemailManager.message(for:)()
{
  v1 = *(v0[10] + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  v0[13] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[9];
      v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      swift_beginAccess();
      v4 = v3[2];
      v5 = v3[3];
      v6 = v3[4];

      specialized OrderedDictionary.subscript.getter(v2, v4, v5, v6);
      v8 = v7;

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v12 = v0[1];

    return v12(v9);
  }

  else
  {

    v10 = swift_task_alloc();
    v0[14] = v10;
    v11 = type metadata accessor for CachedVoicemailManager.Cache();
    *v10 = v0;
    v10[1] = CachedVoicemailManager.message(for:);

    return Task<>.value.getter(v0 + 8, v1, v11);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return (_swift_task_switch)(CachedVoicemailManager.message(for:), v3, v2);
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

  v8 = v0[1];

  return v8(v7);
}

uint64_t @objc closure #1 in CachedVoicemailManager.message(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type VoicemailActor and conformance VoicemailActor, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(@objc closure #1 in CachedVoicemailManager.message(for:), v5, v4);
}

uint64_t @objc closure #1 in CachedVoicemailManager.message(for:)()
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

  return CachedVoicemailManager.message(for:)(v6);
}

uint64_t @objc closure #1 in CachedVoicemailManager.message(for:)(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v6 = *(v8 + 8);

  return v6();
}

unint64_t _s11MobilePhone22CachedVoicemailManagerC11addMessages8messagesySayAA7Message_pG_tAC5ErrorOYKF(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {

      CachedVoicemailManager.Cache.add(_:shouldSort:)(a1, 1);
    }

    else
    {
      lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v5 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v6 = *(v1 + v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v5) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
      *(v1 + v5) = v6;
    }

    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = _s11MobilePhone22CachedVoicemailManagerC11addMessages8messagesySayAA7Message_pG_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_TA;
    v10[5] = v4;
    *(v1 + v5) = v6;
    swift_endAccess();
    v3 = 1;
    lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
    swift_willThrowTypedImpl();
  }

  return v3;
}

uint64_t _s11MobilePhone22CachedVoicemailManagerC14removeMessages4withSayAA9MessageIDCGAH_tAC5ErrorOYKF(unint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  if (!(v4 >> 62))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v17 = *(v1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
      *(v1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[2 * v20];
    v21[4] = _s11MobilePhone22CachedVoicemailManagerC14removeMessages4withSayAA9MessageIDCGAH_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_TA;
    v21[5] = v15;
    *(v1 + v16) = v17;
    swift_endAccess();
    v14 = 1;
    v24 = 1;
    lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
    swift_willThrowTypedImpl();
    return v14;
  }

  if (v4 >> 62 != 1)
  {
    v24 = 0;
    lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
    swift_willThrowTypedImpl();
    return 0;
  }

  v5 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = _swiftEmptyArrayStorage;
  swift_retain_n();
  specialized Sequence.forEach(_:)(a1, v5, &v25);

  swift_beginAccess();
  v6 = v5[4];
  v23 = specialized _copySequenceToContiguousArray<A>(_:)(v5[3], v6);
  specialized MutableCollection<>.sort(by:)(&v23, closure #1 in CachedVoicemailManager.Cache.sort());
  if (!v2)
  {
    v7 = v23[2];
    if (v7 == *(v6 + 16))
    {
      specialized closure #1 in OrderedDictionary.sort(by:)((v23 + 4), v7, v5 + 2);

      swift_endAccess();
      v8 = v25;

      v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11MobilePhone9MessageIDC_SayAFGTt0g5Tf4g_nTm(v9, type metadata accessor for MessageID, &lazy protocol witness table cache variable for type MessageID and conformance NSObject, type metadata accessor for MessageID, specialized Set._Variant.insert(_:));

      if ((v10 & 0xC000000000000001) != 0)
      {
        if (v10 < 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v12 = __CocoaSet.count.getter();
        v10 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11MobilePhone9MessageIDC_Tt1g5Tm(v11, v12, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMd, &_ss11_SetStorageCy11MobilePhone9MessageIDCGMR, type metadata accessor for MessageID, specialized _NativeSet.resize(capacity:));
      }

      v13 = specialized _NativeSet.subtracting<A>(_:)(v8, v10);
      v14 = v13;
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (__CocoaSet.count.getter())
        {
LABEL_12:

          v24 = v14;
          lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
          swift_willThrowTypedImpl();

          return v14;
        }
      }

      else if (*(v13 + 16))
      {
        goto LABEL_12;
      }

      v14 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC11MobilePhone9MessageIDC_SayAFGTt0g5(v8);

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s11MobilePhone22CachedVoicemailManagerC14removeMessages4withSayAA9MessageIDCGAH_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_(uint64_t **a1, unint64_t a2)
{
  v3 = *a1;
  v8 = _swiftEmptyArrayStorage;

  specialized Sequence.forEach(_:)(a2, v3, &v8);

  swift_beginAccess();
  v4 = v3[4];
  v7 = specialized _copySequenceToContiguousArray<A>(_:)(v3[3], v4);
  specialized MutableCollection<>.sort(by:)(&v7, closure #1 in CachedVoicemailManager.Cache.sort());
  v5 = v7[2];
  if (v5 == *(v4 + 16))
  {
    specialized closure #1 in OrderedDictionary.sort(by:)((v7 + 4), v5, v3 + 2);

    swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC20LiveCommunicationKit6HandleV_SD4KeysVyAFSaySo8CHHandleCG_GTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  lazy protocol witness table accessor for type VoicemailActor and conformance VoicemailActor(&lazy protocol witness table cache variable for type Handle and conformance Handle, &type metadata accessor for Handle);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      specialized Set._Variant.insert(_:)(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11MobilePhone22CachedVoicemailManagerC14updateMessages8messagesySayAA7Message_pG_tAC5ErrorOYKF(unint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_state);
  if (v4 >> 62)
  {
    if (v4 >> 62 == 1)
    {

      _s11MobilePhone22CachedVoicemailManagerC14updateMessages8messagesySayAA7Message_pG_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_((v4 & 0x3FFFFFFFFFFFFFFFLL), a1, v5);
    }

    else
    {
      lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = _s11MobilePhone22CachedVoicemailManagerC14updateMessages8messagesySayAA7Message_pG_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_TA;
    *(v6 + 24) = v3;
    v7 = OBJC_IVAR____TtC11MobilePhone22CachedVoicemailManager_deferredOperationsQueue;
    swift_beginAccess();
    v8 = *(v1 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
      *(v1 + v7) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CachedVoicemailManager.Cache) -> ();
    v12[5] = v6;
    *(v1 + v7) = v8;
    swift_endAccess();
    v1 = 1;
    lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t _s11MobilePhone22CachedVoicemailManagerC14updateMessages8messagesySayAA7Message_pG_tAC5ErrorOYKFyAC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcfU_(uint64_t *a1, unint64_t a2, __n128 a3)
{
  v3 = a2;
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
    a3.n128_u64[0] = 136315138;
    v27 = a3;
    v28 = i;
    v29 = v3 & 0xC000000000000001;
    while (v7)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v11 = [v9 identifier];
      swift_beginAccess();
      specialized OrderedDictionary.updateValue(_:forKey:)(v9, v11);
      v13 = v12;
      swift_endAccess();

      if (v13)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        __swift_project_value_buffer(v14, logger);
        swift_unknownObjectRetain();
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v32 = v9;
          v33[0] = v31;
          *v17 = v27.n128_u32[0];
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone7Message_pMd);
          v18 = String.init<A>(reflecting:)();
          log = v15;
          v20 = v8;
          v21 = a1;
          v22 = v3;
          v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v33);
          i = v28;

          *(v17 + 4) = v23;
          v3 = v22;
          a1 = v21;
          v8 = v20;
          _os_log_impl(&_mh_execute_header, log, v16, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);

          v7 = v29;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      ++v6;
      if (v10 == i)
      {
        goto LABEL_20;
      }
    }

    if (v6 >= *(v8 + 16))
    {
      goto LABEL_18;
    }

    v9 = *(v3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  swift_beginAccess();
  v24 = a1[4];
  v32 = specialized _copySequenceToContiguousArray<A>(_:)(a1[3], v24);
  specialized MutableCollection<>.sort(by:)(&v32, closure #1 in CachedVoicemailManager.Cache.sort());
  v25 = v32[2];
  if (v25 == *(v24 + 16))
  {
    specialized closure #1 in OrderedDictionary.sort(by:)((v32 + 4), v25, a1 + 2);

    return swift_endAccess();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

id CachedVoicemailManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone9MessageIDC_AC0F0_ptGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC_AA0C0_ptMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MobilePhone9MessageIDC_SayAC0F0_pGtGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone9MessageIDC_SayAA0C0_pGtMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyy11MobilePhone22CachedVoicemailManagerC5Cache33_CFC589FF927D3725ACAAF49197D752FALLCcGMd);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10CallsAppUI13LegacyMailboxVGMd);
  v10 = *(type metadata accessor for LegacyMailbox() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LegacyMailbox() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MobilePhone7Message_p_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MobilePhone7Message_p_Tt1g5Tm(*(a3 + 16), 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v7 + 4), v3, a1, a2, a3);

  if (v8 != v3)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v7;
}

uint64_t sub_1000F7AD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F7B0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for closure #1 in CachedVoicemailManager.fetchMessages()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _s11MobilePhone23VoicemailAccountManagerC11updateCache3for4uuidyAA0cdE6UpdateC_10Foundation4UUIDVSgtYaFScTyyts5Error_pGSgAOzYuYTXEfU1_yyYaKcfU_TATQ0_;

  return closure #1 in CachedVoicemailManager.fetchMessages()(a1, v4, v5, v6);
}

unint64_t lazy protocol witness table accessor for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error()
{
  result = lazy protocol witness table cache variable for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error;
  if (!lazy protocol witness table cache variable for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachedVoicemailManager.Error and conformance CachedVoicemailManager.Error);
  }

  return result;
}