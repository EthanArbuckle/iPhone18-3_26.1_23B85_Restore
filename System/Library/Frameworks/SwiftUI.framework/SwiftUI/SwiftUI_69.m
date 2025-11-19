uint64_t closure #1 in UserActivityModifier.body(content:)(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  v7 = a2[5];
  v21 = a2[6];
  v22 = v7;
  v8 = swift_allocObject();
  v9 = *(a2 + 1);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a2 + 2);
  *(v8 + 64) = a2[6];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = a1;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = partial apply for closure #1 in closure #1 in UserActivityModifier.body(content:);
  *(v10 + 56) = v8;
  type metadata accessor for UserActivityTrackingInfo?(0, v11, v12);
  v14 = v13;
  swift_bridgeObjectRetain_n();

  outlined init with copy of Predicate<Pack{String}>?(&v22, v20, type metadata accessor for UserActivityTrackingInfo?);
  outlined init with copy of Predicate<Pack{String}>?(&v21, v20, type metadata accessor for AnyLocation<UserActivityTrackingInfo?>?);

  v15 = specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(v14, 0xD000000000000018, 0x800000018CD7A830, a1);
  v16 = swift_allocObject();
  v17 = *(a2 + 1);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a2 + 2);
  *(v16 + 64) = a2[6];
  v20[0] = partial apply for closure #1 in View.advertiseUserActivity(_:isActive:sceneBridge:handler:);
  v20[1] = v10;
  v20[2] = v15;
  v20[3] = partial apply for closure #2 in closure #1 in UserActivityModifier.body(content:);
  v20[4] = v16;

  outlined init with copy of Predicate<Pack{String}>?(&v22, &v19, type metadata accessor for UserActivityTrackingInfo?);
  outlined init with copy of Predicate<Pack{String}>?(&v21, &v19, type metadata accessor for AnyLocation<UserActivityTrackingInfo?>?);
  UserActivityModifier.scrapeableAttachment.getter(&v19);
  type metadata accessor for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>();
  View.scrapeableAttachment(_:)();
  outlined consume of ScrapeableContent.Content?(v19);
}

void closure #2 in closure #1 in UserActivityModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, &v7);
  type metadata accessor for UserActivityTrackingInfo?(0, v3, v4);
  if (swift_dynamicCast())
  {
    v5 = *(a2 + 48);
    v7 = v6;
    if (v5)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance UserActivityModifier@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = *(v1 + 6);
  v10 = *v1;
  v11 = v5;
  v12 = v4;
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  type metadata accessor for SceneBridge(0);
  outlined init with copy of String(&v10, v9);

  outlined init with copy of Predicate<Pack{String}>?(&v12, v9, type metadata accessor for UserActivityTrackingInfo?);
  outlined init with copy of Predicate<Pack{String}>?(&v11, v9, type metadata accessor for AnyLocation<UserActivityTrackingInfo?>?);
  lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type SceneBridge and conformance SceneBridge, type metadata accessor for SceneBridge);
  result = static ObservableObject.environmentStore.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = partial apply for closure #1 in UserActivityModifier.body(content:);
  *(a1 + 24) = v6;
  return result;
}

uint64_t View.userActivity(_:isActive:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = 0;
  v13 = 0;
  return MEMORY[0x18D00A570](v8, a6, &type metadata for UserActivityModifier, a7);
}

uint64_t View.userActivity<A>(_:element:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a9;
  v26 = a8;
  v27 = a4;
  v28 = a1;
  v29 = a2;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - v17;
  v19 = (*(*(a7 - 8) + 48))(a3, 1, a7, v16) != 1;
  (*(v14 + 16))(v18, a3, v13);
  v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a6;
  *(v21 + 3) = a7;
  v22 = v26;
  *(v21 + 4) = v26;
  (*(v14 + 32))(&v21[v20], v18, v13);
  v23 = &v21[(v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v27;
  *(v23 + 1) = a5;

  v31[0] = v28;
  v31[1] = v29;
  v32 = v19;
  v33 = partial apply for elementHandler #1 <A><A1>(_:) in View.userActivity<A>(_:element:_:);
  v34 = v21;
  v35 = 0;
  v36 = 0;
  MEMORY[0x18D00A570](v31, a6, &type metadata for UserActivityModifier, v22);
}

uint64_t elementHandler #1 <A><A1>(_:) in View.userActivity<A>(_:element:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *(a6 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10, v16);
  if ((*(v14 + 48))(v13, 1, a6) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 32))(v18, v13, a6);
  a3(v18, a1);
  return (*(v14 + 8))(v18, a6);
}

uint64_t partial apply for elementHandler #1 <A><A1>(_:) in View.userActivity<A>(_:element:_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for Optional() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return elementHandler #1 <A><A1>(_:) in View.userActivity<A>(_:element:_:)(a1, v1 + v6, v8, v9, v3, v4);
}

void closure #1 in closure #1 in View.onContinueUserActivity(_:perform:)(uint64_t a1, void (*a2)())
{
  outlined init with copy of Any(a1, v4);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity);
  if (swift_dynamicCast())
  {
    a2();
  }
}

uint64_t closure #1 in closure #1 in View.onOpenURL(perform:)(uint64_t a1, void (*a2)(_BYTE *))
{
  type metadata accessor for OpenURLContext?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for OpenURLContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    outlined init with take of Predicate<Pack{String}>?(v6, v10, type metadata accessor for OpenURLContext);
    a2(v10);
    v13 = type metadata accessor for OpenURLContext;
    v14 = v10;
  }

  else
  {
    v12(v6, 1, 1, v7);
    v13 = type metadata accessor for OpenURLContext?;
    v14 = v6;
  }

  return outlined destroy of Predicate<Pack{String}>?(v14, v13);
}

uint64_t closure #1 in closure #1 in View.onOpenURL(perform:)(uint64_t a1, void (*a2)(char *, id *))
{
  type metadata accessor for OpenURLContext?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OpenURLContext(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1, &v18);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    outlined init with take of Predicate<Pack{String}>?(v6, v10, type metadata accessor for OpenURLContext);
    v13 = &v10[*(v7 + 20)];
    v14 = v13[8];
    v18 = *v13;
    v19 = v14;
    outlined copy of OpenURLOptions?(v18, v14);
    a2(v10, &v18);
    outlined consume of OpenURLOptions?(v18, v19);
    v15 = type metadata accessor for OpenURLContext;
    v16 = v10;
  }

  else
  {
    v12(v6, 1, 1, v7);
    v15 = type metadata accessor for OpenURLContext?;
    v16 = v6;
  }

  return outlined destroy of Predicate<Pack{String}>?(v16, v15);
}

uint64_t View.handlesExternalEvents(preferring:allowing:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  View.transformPreference<A>(_:_:)();
}

{
  type metadata accessor for Predicate<Pack{String}>?(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  outlined init with copy of Predicate<Pack{String}>?(a1, &v16 - v9, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with copy of Predicate<Pack{String}>?(a2, v7, type metadata accessor for Predicate<Pack{String}>?);
  v11 = *(v5 + 80);
  v12 = (v11 + 16) & ~v11;
  v13 = (v6 + v11 + v12) & ~v11;
  v14 = swift_allocObject();
  outlined init with take of Predicate<Pack{String}>?(v10, v14 + v12, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with take of Predicate<Pack{String}>?(v7, v14 + v13, type metadata accessor for Predicate<Pack{String}>?);
  View.transformPreference<A>(_:_:)();
}

uint64_t closure #1 in View.handlesExternalEvents(preferring:allowing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  type metadata accessor for SceneBridge(0);
  static SceneBridge.canonicalize(externalEvent:)(a2, v11);
  static SceneBridge.merge(predicate:with:)(a1, v11, v14);
  outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v16 = *(v15 + 48);
  static SceneBridge.canonicalize(externalEvent:)(a3, v8);
  static SceneBridge.merge(predicate:with:)(a1 + v16, v8, v11);
  outlined destroy of Predicate<Pack{String}>?(v8, type metadata accessor for Predicate<Pack{String}>?);
  outlined assign with take of Predicate<Pack{String}>?(v14, a1, type metadata accessor for Predicate<Pack{String}>?);
  return outlined assign with take of Predicate<Pack{String}>?(v11, a1 + v16, type metadata accessor for Predicate<Pack{String}>?);
}

{
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  type metadata accessor for SceneBridge(0);
  static SceneBridge.merge(predicate:with:)(a1, a2, v11);
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v13 = *(v12 + 48);
  static SceneBridge.merge(predicate:with:)(a1 + v13, a3, v8);
  outlined assign with take of Predicate<Pack{String}>?(v11, a1, type metadata accessor for Predicate<Pack{String}>?);
  return outlined assign with take of Predicate<Pack{String}>?(v8, a1 + v13, type metadata accessor for Predicate<Pack{String}>?);
}

uint64_t partial apply for closure #1 in View.handlesExternalEvents(preferring:allowing:)(uint64_t a1)
{
  return closure #1 in View.handlesExternalEvents(preferring:allowing:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  type metadata accessor for Predicate<Pack{String}>?(0);
  v4 = *(*(v3 - 8) + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = v1 + ((*(*(v3 - 8) + 64) + v4 + v5) & ~v4);

  return closure #1 in View.handlesExternalEvents(preferring:allowing:)(a1, v1 + v5, v6);
}

id OpenURLOptions.uiSceneOpenURLOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = v1;
  v4 = result;
  if (v2 == 1)
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v6 = [v4 _sourceApplication];
    if (v6)
    {
      v7 = v6;
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v18 = MEMORY[0x1E69E6158];
      *&v17 = v8;
      *(&v17 + 1) = v10;
      outlined init with take of Any(&v17, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, 0xD00000000000002ELL, 0x800000018CD419C0, isUniquelyReferenced_nonNull_native);
    }

    v12 = objc_opt_self();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v4 _originatingProcess];
    v15 = [v12 _optionsFromPayload_sourceProcessHandle_];

    return v15;
  }

  return result;
}

void key path setter for OpenURLOptions.uiSceneOpenURLOptions : OpenURLOptions()
{
  static os_log_type_t.fault.getter();
  v0 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();
}

void OpenURLOptions.uiSceneOpenURLOptions.setter(void *a1)
{
  static os_log_type_t.fault.getter();
  v2 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(*(v2 + 40));
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t result)
{
  v30 = result;
  if (*(result + 16))
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>, type metadata accessor for EventType, lazy protocol witness table accessor for type EventID and conformance EventID);
    result = static _DictionaryStorage.allocate(capacity:)();
    v1 = result;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = 1 << *(v30 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v30 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1 + 64;
  while (v5)
  {
LABEL_15:
    v11 = __clz(__rbit64(v5)) | (v2 << 6);
    v12 = (*(v30 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v30 + 56) + 112 * v11);
    v17 = v15[1];
    v16 = v15[2];
    v38[0] = *v15;
    v38[1] = v17;
    v38[2] = v16;
    v19 = v15[4];
    v18 = v15[5];
    v20 = v15[3];
    *(v39 + 9) = *(v15 + 89);
    v38[4] = v19;
    v39[0] = v18;
    v38[3] = v20;
    *&v34 = v13;
    *(&v34 + 1) = v14;
    v36 = &type metadata for TouchEvent;
    v37 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
    *&v35 = swift_allocObject();
    memmove((v35 + 16), v15, 0x69uLL);
    v31 = v13;
    v32 = v14;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, v33);
    v21 = v31;
    v22 = v32;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v33, &v34);
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v21);
    MEMORY[0x18D00F6F0](v22);
    result = Hasher._finalize()();
    v23 = -1 << *(v1 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v7 + 8 * v25);
        if (v29 != -1)
        {
          v8 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v24) & ~*(v7 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v9 = (*(v1 + 48) + 16 * v8);
    *v9 = v21;
    v9[1] = v22;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, *(v1 + 56) + 40 * v8);
    ++*(v1 + 16);
    result = outlined init with copy of TouchEvent(v38, &v31);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      return v1;
    }

    v5 = *(v30 + 64 + 8 * v10);
    ++v2;
    if (v5)
    {
      v2 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v29 = result;
  if (*(result + 16))
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>, type metadata accessor for EventType, lazy protocol witness table accessor for type EventID and conformance EventID);
    result = static _DictionaryStorage.allocate(capacity:)();
    v1 = result;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = 1 << *(v29 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v29 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1 + 64;
  v28 = v1;
  while (v5)
  {
LABEL_15:
    v11 = __clz(__rbit64(v5)) | (v2 << 6);
    v12 = (*(v29 + 48) + 16 * v11);
    v14 = v12[1];
    v15 = *(v29 + 56) + 32 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    *&v31 = *v12;
    v13 = v31;
    *(&v31 + 1) = v14;
    v33 = MEMORY[0x1E697F768];
    v34 = MEMORY[0x1E697F760];
    v20 = swift_allocObject();
    *&v32 = v20;
    *(v20 + 16) = v16;
    *(v20 + 24) = v17;
    *(v20 + 32) = v18;
    *(v20 + 40) = v19;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v32, v30);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v30, &v31);
    v1 = v28;
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    MEMORY[0x18D00F6F0](v14);
    result = Hasher._finalize()();
    v21 = -1 << *(v28 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v7 + 8 * (v22 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v7 + 8 * v23);
        if (v27 != -1)
        {
          v8 = __clz(__rbit64(~v27)) + (v23 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v22) & ~*(v7 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v9 = (*(v28 + 48) + 16 * v8);
    *v9 = v13;
    v9[1] = v14;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, *(v28 + 56) + 40 * v8);
    ++*(v28 + 16);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      return v1;
    }

    v5 = *(v29 + 64 + 8 * v10);
    ++v2;
    if (v5)
    {
      v2 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v29 = result;
  if (*(result + 16))
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>, type metadata accessor for EventType, lazy protocol witness table accessor for type EventID and conformance EventID);
    result = static _DictionaryStorage.allocate(capacity:)();
    v1 = result;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = 1 << *(v29 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v29 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1 + 64;
  while (v5)
  {
LABEL_15:
    v11 = __clz(__rbit64(v5)) | (v2 << 6);
    v12 = (*(v29 + 48) + 16 * v11);
    v14 = v12[1];
    v15 = *(v29 + 56) + 40 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    *&v31 = *v12;
    v13 = v31;
    *(&v31 + 1) = v14;
    v33 = &type metadata for HoverEvent;
    v34 = lazy protocol witness table accessor for type HoverEvent and conformance HoverEvent();
    v21 = swift_allocObject();
    *&v32 = v21;
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    *(v21 + 48) = v20;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v32, v30);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v30, &v31);
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    MEMORY[0x18D00F6F0](v14);
    result = Hasher._finalize()();
    v22 = -1 << *(v1 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v7 + 8 * (v23 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v22) >> 6;
      while (++v24 != v26 || (v25 & 1) == 0)
      {
        v27 = v24 == v26;
        if (v24 == v26)
        {
          v24 = 0;
        }

        v25 |= v27;
        v28 = *(v7 + 8 * v24);
        if (v28 != -1)
        {
          v8 = __clz(__rbit64(~v28)) + (v24 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v23) & ~*(v7 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v9 = (*(v1 + 48) + 16 * v8);
    *v9 = v13;
    v9[1] = v14;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, *(v1 + 56) + 40 * v8);
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      return v1;
    }

    v5 = *(v29 + 64 + 8 * v10);
    ++v2;
    if (v5)
    {
      v2 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

{
  v30 = result;
  if (*(result + 16))
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>, type metadata accessor for EventType, lazy protocol witness table accessor for type EventID and conformance EventID);
    result = static _DictionaryStorage.allocate(capacity:)();
    v1 = result;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 0;
  v3 = 1 << *(v30 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v30 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v1 + 64;
  while (v5)
  {
LABEL_15:
    v11 = __clz(__rbit64(v5)) | (v2 << 6);
    v12 = (*(v30 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v30 + 56) + 112 * v11);
    v17 = v15[1];
    v16 = v15[2];
    v38[0] = *v15;
    v38[1] = v17;
    v38[2] = v16;
    v19 = v15[4];
    v18 = v15[5];
    v20 = v15[3];
    *(v39 + 9) = *(v15 + 89);
    v38[4] = v19;
    v39[0] = v18;
    v38[3] = v20;
    *&v34 = v13;
    *(&v34 + 1) = v14;
    v36 = MEMORY[0x1E6981CA8];
    v37 = MEMORY[0x1E6981CA0];
    *&v35 = swift_allocObject();
    memmove((v35 + 16), v15, 0x69uLL);
    v31 = v13;
    v32 = v14;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v35, v33);
    v21 = v31;
    v22 = v32;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v33, &v34);
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v21);
    MEMORY[0x18D00F6F0](v22);
    result = Hasher._finalize()();
    v23 = -1 << *(v1 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v7 + 8 * (v24 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      while (++v25 != v27 || (v26 & 1) == 0)
      {
        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v7 + 8 * v25);
        if (v29 != -1)
        {
          v8 = __clz(__rbit64(~v29)) + (v25 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v24) & ~*(v7 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
    v9 = (*(v1 + 48) + 16 * v8);
    *v9 = v21;
    v9[1] = v22;
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, *(v1 + 56) + 40 * v8);
    ++*(v1 + 16);
    result = outlined init with copy of PanEvent(v38, &v31);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      return v1;
    }

    v5 = *(v30 + 64 + 8 * v10);
    ++v2;
    if (v5)
    {
      v2 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void OpenURLOptions.uiSceneOpenURLOptions.modify(void **a1, char a2)
{
  v2 = *a1;
  v5 = v2;
  if (a2)
  {
    v3 = v2;
    static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v3 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t OpenURLOptions.sourceApplication.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    v5 = [v3 sourceApplication];
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:

    return 0;
  }

  v5 = [v3 _sourceApplication];
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id OpenURLOptions.originatingProcess.getter()
{
  v1 = &selRef__originatingProcess;
  if (!*(v0 + 8))
  {
    v1 = &selRef__sourceProcessHandle;
  }

  v2 = [*v0 *v1];

  return v2;
}

uint64_t OpenURLOptions.referrerURL.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) == 1)
  {
    v6 = *v1;
    v7 = [v6 referrerURL];
    if (v7)
    {
      v8 = v7;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = type metadata accessor for URL();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {

      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return outlined init with take of Predicate<Pack{String}>?(v5, a1, type metadata accessor for URL?);
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1 & 1, v19);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of NavigationLinkSelectionIdentifier(a2, v18);
  return specialized _NativeDictionary._insert(at:key:value:)(v10, v18, a1, v16);
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      outlined init with copy of NavigationLinkSelectionIdentifier(a2, v21);
      return specialized _NativeDictionary._insert(at:key:value:)(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7] + 192 * v10;

  return outlined assign with take of UpdateViewDestinationRequest(a1, v17);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      specialized _NativeDictionary.copy()();
      v17 = v25;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a7 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 32 * v17);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a5, a6, a1, a2, a3, a4, v27);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int16 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 2 * result) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a4 & 1, a1, v23);

    return outlined copy of TabCustomizationID.Base();
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 80 * v9;

    return outlined assign with take of ScrollViewCommitInfo(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, char a2, double a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      v18 = result;
      specialized _NativeDictionary.copy()();
      result = v18;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_14:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a3;
    v21[1] = a4;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a1, v20, a3, a4);

    return a1;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      specialized _NativeDictionary.copy()();
      result = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 48 * result);
    v20 = a1[1];
    *v19 = *a1;
    v19[1] = v20;
    v19[2] = a1[2];
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v18);

    return a2;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;
  }

  else
  {

    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = type metadata accessor for CommandOperation();
      return outlined assign with take of Predicate<Pack{String}>?(a1, v16 + *(*(v17 - 8) + 72) * v9, type metadata accessor for CommandOperation);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a3 & 1);
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v13 & 1) != (v20 & 1))
  {
LABEL_15:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v19;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v15);

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIPasteboardName(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINavigationController);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIMenuIdentifier(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for UIMenuIdentifier(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(*(v18 + 56) + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

  return a2;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v11, a3, a1, a2, v21);
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * v8;
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    specialized _NativeDictionary.copy()();
    result = v19;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
    *(v22 + 9) = HIBYTE(a2);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a3, a1, a2 & 0xFF01, v21);
    v23 = *(a3 + 16);
    v25[0] = *a3;
    v25[1] = v23;
    v26 = *(a3 + 32);
    return outlined init with copy of TableColumnCustomizationID.Base(v25, &v24);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 80 * result);
    v21 = a1[3];
    v20[2] = a1[2];
    v20[3] = v21;
    *(v20 + 57) = *(a1 + 57);
    v22 = a1[1];
    *v20 = *a1;
    v20[1] = v22;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 48 * result);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
    v20[2] = a1[2];
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 288 * v11;

    return outlined assign with take of TabEntry(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = (v25[7] + 32 * v15);
    *v26 = a1;
    v26[1] = a2;
    v26[2] = a3;
    v26[3] = a4;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v15, a5, a1, a2, a3, a4, v25);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      type metadata accessor for AGAttribute(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 < v12 || (a2 & 1) == 0)
  {
    if (v14 >= v12 && (a2 & 1) == 0)
    {
      v15 = v7;
      specialized _NativeDictionary.copy()();
      v7 = v15;
      goto LABEL_8;
    }

    v16 = specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a2 & 1);
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    if ((v13 & 1) != (v17 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v3;
  if (v13)
  {
    *(*(v18 + 56) + 8 * v7) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v7, a1, v18);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    __swift_destroy_boxed_opaque_existential_1(v20);

    return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(a1, v20);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v7 = *(a1 + 24);
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(a1 + 48);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  result = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= result && (a3 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v18 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_9:
  v20 = *v4;
  if (v17)
  {
    v21 = v20[7] + 56 * v13;
    *v21 = v22;
    *(v21 + 8) = v23;
    *(v21 + 16) = v24;
    *(v21 + 24) = v7;
    *(v21 + 32) = v9;
    *(v21 + 40) = v8;
    *(v21 + 48) = v10;
  }

  else
  {
    outlined init with copy of TableRowID(a2, v30);
    v25[0] = v22;
    v25[1] = v23;
    v25[2] = v24;
    v26 = v7;
    v27 = v9;
    v28 = v8;
    v29 = v10;
    return specialized _NativeDictionary._insert(at:key:value:)(v13, v30, v25, v20);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      specialized _NativeDictionary.copy()();
      result = v23;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 32 * result;
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3;
    *(v26 + 24) = a4 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a5, a1, a2, a3, a4 & 1, v25);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySSG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_aB13VKXEfU_SS_TG5AHxSbs5Error_pRi_zRi0_zlySSIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  *a2 = v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
}

{
  v2 = *a1;
  v3 = *(a1 + 54);
  v12[12] = *(a1 + 50);
  v12[13] = v3;
  v12[14] = *(a1 + 58);
  v13 = *(a1 + 31);
  v4 = *(a1 + 38);
  v12[8] = *(a1 + 34);
  v12[9] = v4;
  v5 = *(a1 + 46);
  v12[10] = *(a1 + 42);
  v12[11] = v5;
  v6 = *(a1 + 22);
  v12[4] = *(a1 + 18);
  v12[5] = v6;
  v7 = *(a1 + 30);
  v12[6] = *(a1 + 26);
  v12[7] = v7;
  v8 = *(a1 + 6);
  v12[0] = *(a1 + 2);
  v12[1] = v8;
  v9 = *(a1 + 14);
  v12[2] = *(a1 + 10);
  v12[3] = v9;
  *a2 = v2;
  *(a2 + 200) = *(a1 + 50);
  *(a2 + 216) = *(a1 + 54);
  *(a2 + 232) = *(a1 + 58);
  *(a2 + 248) = *(a1 + 31);
  *(a2 + 136) = *(a1 + 34);
  *(a2 + 152) = *(a1 + 38);
  *(a2 + 168) = *(a1 + 42);
  *(a2 + 184) = *(a1 + 46);
  *(a2 + 72) = *(a1 + 18);
  *(a2 + 88) = *(a1 + 22);
  *(a2 + 104) = *(a1 + 26);
  *(a2 + 120) = *(a1 + 30);
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 24) = *(a1 + 6);
  *(a2 + 40) = *(a1 + 10);
  *(a2 + 56) = *(a1 + 14);
  return outlined init with copy of AlertStorage(v12, v11);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, ScrollEdgeEffectStyle>, lazy protocol witness table accessor for type Edge and conformance Edge);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, Bool>, lazy protocol witness table accessor for type Edge and conformance Edge);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_SDyAC0E5FocusV5MatchOShyAC8UniqueIDVGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<AccessibilityEnabledTechnology, [AccessibilityFocus.Match : Set<UniqueID>]>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityEnabledTechnologyO_AC0E5FocusV6TargetVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E6980970];
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Target>, lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 16)
    {
      outlined init with copy of (String, TabEntry)(i, v11, &lazy cache variable for type metadata for (AccessibilityEnabledTechnology, AccessibilityFocus.Target), v3, &type metadata for AccessibilityFocus.Target, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11[0]);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + result) = v11[0];
      result = outlined init with take of AccessibilityFocus.Target(&v12, v4[7] + 8 * result);
      v8 = v4[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v4[2] = v10;
      if (!--v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI24AdaptableTabBarPlacementV_AC10VisibilityOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<AdaptableTabBarPlacement, Visibility>, lazy protocol witness table accessor for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, &v15, &lazy cache variable for type metadata for (String, Any), v6, v5 + 8, type metadata accessor for (Badge, Spacer));
      v7 = v15;
      v8 = v16;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = outlined init with take of Any(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UserActivityModifier and conformance UserActivityModifier()
{
  result = lazy protocol witness table cache variable for type UserActivityModifier and conformance UserActivityModifier;
  if (!lazy protocol witness table cache variable for type UserActivityModifier and conformance UserActivityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UserActivityModifier and conformance UserActivityModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey> and conformance _PreferenceTransformModifier<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>, &type metadata for SceneBridge.ActivationConditionsPreferenceKey, &protocol witness table for SceneBridge.ActivationConditionsPreferenceKey, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

uint64_t *assignWithTake for SceneBridgeReader(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  *(a1 + 1) = *(a2 + 1);

  return a1;
}

uint64_t destroy for UserActivityModifier(uint64_t a1)
{
}

uint64_t initializeWithCopy for UserActivityModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v6 = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;

  v7 = v6;

  return a1;
}

uint64_t assignWithCopy for UserActivityModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  *(a1 + 40) = v6;
  v7 = v6;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for UserActivityModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for UserActivityModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for UserActivityModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI30AccessibilityRelationshipScopeC0F0O_SayAC0E4NodeCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>, type metadata accessor for [AccessibilityNode], lazy protocol witness table accessor for type AccessibilityRelationshipScope.Relationship and conformance AccessibilityRelationshipScope.Relationship);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>, type metadata accessor for EventType, lazy protocol witness table accessor for type EventID and conformance EventID);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 56)
    {
      outlined init with copy of Predicate<Pack{String}>?(i, &v12, type metadata accessor for (EventID, EventType));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 16 * result);
      v8 = v13;
      *v7 = v12;
      v7[1] = v8;
      result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v3[7] + 40 * result);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SJTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Character>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_s8Sendable_pTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, &lazy cache variable for type metadata for (CodingUserInfoKey, Sendable), MEMORY[0x1E69E6D30], type metadata accessor for Sendable);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Sendable)(v10, v6, &lazy cache variable for type metadata for (CodingUserInfoKey, Sendable), MEMORY[0x1E69E6D30], type metadata accessor for Sendable);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC18ConfirmationDialogVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E697DFC0];
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, ConfirmationDialog>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 192)
    {
      outlined init with copy of (String, TabEntry)(i, &v11, &lazy cache variable for type metadata for (ViewIdentity, ConfirmationDialog), v3, &type metadata for ConfirmationDialog, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 4 * result) = v11;
      result = outlined init with take of ConfirmationDialog(&v12, v4[7] + 184 * result);
      v8 = v4[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v4[2] = v10;
      if (!--v1)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_AC12AlertStorageVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, AlertStorage>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 240);
  *&v42[192] = *(a1 + 224);
  *&v42[208] = v4;
  v5 = *(a1 + 272);
  *&v42[224] = *(a1 + 256);
  *&v42[240] = v5;
  v6 = *(a1 + 176);
  *&v42[128] = *(a1 + 160);
  *&v42[144] = v6;
  v7 = *(a1 + 208);
  *&v42[160] = *(a1 + 192);
  *&v42[176] = v7;
  v8 = *(a1 + 112);
  *&v42[64] = *(a1 + 96);
  *&v42[80] = v8;
  v9 = *(a1 + 144);
  *&v42[96] = *(a1 + 128);
  *&v42[112] = v9;
  v10 = *(a1 + 48);
  *v42 = *(a1 + 32);
  *&v42[16] = v10;
  v11 = *(a1 + 80);
  *&v42[32] = *(a1 + 64);
  *&v42[48] = v11;
  v12 = *v42;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v42);
  if (v14)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (String, TabEntry)(v42, v41, &lazy cache variable for type metadata for (ViewIdentity, AlertStorage), MEMORY[0x1E697DFC0], &type metadata for AlertStorage, type metadata accessor for (Badge, Spacer));
    return v3;
  }

  v15 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v12;
    v16 = v3[7] + 248 * result;
    v17 = *&v42[8];
    v18 = *&v42[24];
    v19 = *&v42[56];
    *(v16 + 32) = *&v42[40];
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = *&v42[72];
    v21 = *&v42[88];
    v22 = *&v42[120];
    *(v16 + 96) = *&v42[104];
    *(v16 + 112) = v22;
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    v23 = *&v42[136];
    v24 = *&v42[152];
    v25 = *&v42[184];
    *(v16 + 160) = *&v42[168];
    *(v16 + 176) = v25;
    *(v16 + 128) = v23;
    *(v16 + 144) = v24;
    v26 = *&v42[200];
    v27 = *&v42[216];
    v28 = *&v42[232];
    *(v16 + 240) = *&v42[248];
    *(v16 + 208) = v27;
    *(v16 + 224) = v28;
    *(v16 + 192) = v26;
    v29 = v3[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      break;
    }

    v3[2] = v31;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(v42, v41, &lazy cache variable for type metadata for (ViewIdentity, AlertStorage), MEMORY[0x1E697DFC0], &type metadata for AlertStorage, type metadata accessor for (Badge, Spacer));
    v32 = v15[13];
    *&v42[192] = v15[12];
    *&v42[208] = v32;
    v33 = v15[15];
    *&v42[224] = v15[14];
    *&v42[240] = v33;
    v34 = v15[9];
    *&v42[128] = v15[8];
    *&v42[144] = v34;
    v35 = v15[11];
    *&v42[160] = v15[10];
    *&v42[176] = v35;
    v36 = v15[5];
    *&v42[64] = v15[4];
    *&v42[80] = v36;
    v37 = v15[7];
    *&v42[96] = v15[6];
    *&v42[112] = v37;
    v38 = v15[1];
    *v42 = *v15;
    *&v42[16] = v38;
    v39 = v15[3];
    *&v42[32] = v15[2];
    *&v42[48] = v39;
    v12 = *v42;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v42);
    v15 += 16;
    if (v40)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12ViewIdentityV_SbSo14NSUserActivityCcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, (_:)>, type metadata accessor for (_:), lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11AGAttributea_7SwiftUI16ArrayWith2InlineVyAE17AccessibilityNodeCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v11 = v3[7] + 24 * result;
    *v11 = v5;
    *(v11 + 8) = v6;
    *(v11 + 16) = v7;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v5, v6, v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 6);
    v5 = *(v10 - 2);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 += 32;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI12TabItemGroupV9HostCacheVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, TabItemGroup.HostCache>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v9;
      v14[3] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContentToolbarPlacementV0G0O_AC0fE11DescriptionVTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (ContentToolbarPlacement.Placement, ToolbarContentDescription)(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>, type metadata accessor for ToolbarContentDescription, lazy protocol witness table accessor for type ContentToolbarPlacement.Placement and conformance ContentToolbarPlacement.Placement);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v10, v6, type metadata accessor for (ContentToolbarPlacement.Placement, ToolbarContentDescription));
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ToolbarContentDescription(0);
      result = outlined init with take of Predicate<Pack{String}>?(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for ToolbarContentDescription);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0eF5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 50); ; i += 24)
    {
      v5 = *(i - 18);
      v6 = *(i - 10);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      outlined copy of TabCustomizationID.Base();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      v13 = (v3[7] + 2 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18TabCustomizationIDV_AC0e7SectionF5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabSectionCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      outlined copy of TabCustomizationID.Base();

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI26TableColumnCustomizationIDV_AC0efG5EntryVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<TableColumnCustomizationID, TableColumnCustomizationEntry>, lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 81); ; i += 56)
    {
      v5 = *(i - 33);
      v18 = *(i - 49);
      v19 = v5;
      v20 = *(i - 17);
      v6 = *(i - 9);
      v7 = *(i - 1);
      v8 = *i;
      v21[0] = v18;
      v21[1] = v5;
      v22 = v20;
      outlined init with copy of TableColumnCustomizationID.Base(v21, v17);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 40 * result;
      v12 = v19;
      *v11 = v18;
      *(v11 + 16) = v12;
      *(v11 + 32) = v20;
      v13 = v3[7] + 16 * result;
      *v13 = v6;
      *(v13 + 8) = v7;
      *(v13 + 9) = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityAttachmentToken, DisplayList.Version>, lazy protocol witness table accessor for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 8);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 12 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI11DisplayListV5IndexV2IDV_AeCE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.Index.ID, DisplayList.AccessibilityUpdater.CacheValue>, lazy protocol witness table accessor for type DisplayList.Index.ID and conformance DisplayList.Index.ID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7 = *(a1 + 40);
  v6 = *(a1 + 44);
  v20 = *(a1 + 48);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v7 | (v6 << 32));
  v9 = v20;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v19 = v9;

    return v3;
  }

  v11 = (a1 + 80);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v4;
    v12[1] = v5;
    v12[2] = v7;
    v12[3] = v6;
    *(v3[7] + 16 * result) = v9;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 2;
    v4 = *(v11 - 4);
    v5 = *(v11 - 3);
    v7 = *(v11 - 2);
    v6 = *(v11 - 1);
    v21 = *v11;
    v17 = v9;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 32), v7 | (v6 << 32));
    v11 = v16;
    v9 = v21;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SiTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    a2(0);
    v6 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v9 = *i;
      result = a3(v8);
      if (v11)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v6[6] + 8 * result) = v8;
      *(v6[7] + 8 * result) = v9;
      v12 = v6[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v6[2] = v14;
      if (!--v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Character, String>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = v4;
    v14[1] = result;
    v15 = (v3[7] + v13);
    *v15 = v7;
    v15[1] = v6;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 4;
    v4 = *(v12 - 3);
    v20 = *(v12 - 2);
    v7 = *(v12 - 1);
    v21 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v20);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12KeyCommandIDV_yycTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<KeyCommandID, ()>, type metadata accessor for (), lazy protocol witness table accessor for type KeyCommandID and conformance KeyCommandID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say7SwiftUI20TaskActionsContainerV0G5EntryVyytyt_GGTt0g5Tf4g_nTm(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    type metadata accessor for _DictionaryStorage<String, [TaskActionsContainer<(), ()>.ContainerEntry]>(0, a2, a3, a4, a5);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v5)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI36IdentifiedDocumentGroupConfigurationV_AC7WeakBoxVyAC08PlatformF0CGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>, type metadata accessor for WeakBox<PlatformDocument>, lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v4, v17, type metadata accessor for (IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + (result << 7));
      v8 = v17[3];
      v9 = v17[2];
      v10 = v17[1];
      *v7 = v17[0];
      v7[1] = v10;
      v7[2] = v9;
      v7[3] = v8;
      v11 = v17[4];
      v12 = v17[5];
      v13 = v18[0];
      *(v7 + 105) = *(v18 + 9);
      v7[5] = v12;
      v7[6] = v13;
      v7[4] = v11;
      result = outlined init with take of Predicate<Pack{String}>?(&v19, v3[7] + 8 * result, type metadata accessor for WeakBox<PlatformDocument>);
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      v4 += 136;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC05TouchE0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, TouchEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33[0] = *(a1 + 128);
  *(v33 + 9) = *(a1 + 137);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v27, *(&v27 + 1));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (String, TabEntry)(&v27, v26, &lazy cache variable for type metadata for (EventID, TouchEvent), MEMORY[0x1E69819B0], &type metadata for TouchEvent, type metadata accessor for (Badge, Spacer));
    return v3;
  }

  v11 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 112 * result);
    v14 = v28;
    v15 = v30;
    v13[1] = v29;
    v13[2] = v15;
    *v13 = v14;
    v16 = v31;
    v17 = v32;
    v18 = v33[0];
    *(v13 + 89) = *(v33 + 9);
    v13[4] = v17;
    v13[5] = v18;
    v13[3] = v16;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(&v27, v26, &lazy cache variable for type metadata for (EventID, TouchEvent), MEMORY[0x1E69819B0], &type metadata for TouchEvent, type metadata accessor for (Badge, Spacer));
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33[0] = v11[6];
    *(v33 + 9) = *(v11 + 105);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v27, *(&v27 + 1));
    v11 += 8;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC014PhysicalButtonE0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, PhysicalButtonEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v8;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = (v3[6] + 16 * v12);
    *v15 = v4;
    v15[1] = v5;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = result;
    *(v16 + 24) = v9;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 48;
    v4 = *(v14 - 5);
    v5 = *(v14 - 4);
    v6 = *(v14 - 3);
    v7 = *(v14 - 16);
    v21 = *(v14 - 1);
    v9 = *v14;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_nTm(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = static _DictionaryStorage.allocate(capacity:)();
    v11 = a1 + 32;

    while (1)
    {
      outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = outlined init with take of Any(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v14 = *(i - 3);
      v15 = *(i - 5);
      v6 = *(i - 1);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = v3[7] + 48 * result;
      *v10 = v15;
      *(v10 + 16) = v14;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So7CGPointVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<UIDragItem, CGPoint>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So17CGAffineTransformVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<UIDragItem, CGAffineTransform>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 80); ; i += 7)
    {
      v14 = *(i - 3);
      v15 = *(i - 5);
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 6);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 48 * result;
      *v10 = v15;
      *(v10 + 16) = v14;
      *(v10 + 32) = v5;
      *(v10 + 40) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21UIIntelligenceSupport26IntelligenceDataSourceItemO_AC0E17AppIntentsPayloadVTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, &lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload), MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC80]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Sendable)(v10, v6, &lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload), MEMORY[0x1E69DBC58], MEMORY[0x1E69DBC80]);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for IntelligenceDataSourceItem();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for IntelligenceAppIntentsPayload();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI18AccessibilityFocusV5MatchO_ShyAC8UniqueIDVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>, MEMORY[0x1E69E6EC8]);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_7SwiftUI7WeakBoxVyAE22EntityGestureResponderCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 16)
    {
      outlined init with copy of Predicate<Pack{String}>?(i, &v11, type metadata accessor for (UInt64, WeakBox<EntityGestureResponder>));
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of WeakBox<EntityGestureResponder>(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (UUID, PlatformItemList)(0, &lazy cache variable for type metadata for (CodingUserInfoKey, Any), MEMORY[0x1E69E6D30]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(v10, v6, &lazy cache variable for type metadata for (CodingUserInfoKey, Any), MEMORY[0x1E69E6D30]);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_7SwiftUI8TabEntryOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, TabEntry>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v4, &v13, &lazy cache variable for type metadata for (String, TabEntry), MEMORY[0x1E69E6158], &type metadata for TabEntry, type metadata accessor for (Badge, Spacer));
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = memcpy((v3[7] + 288 * result), v15, 0x119uLL);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 304;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Int>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Si14uiKitHostIndex_Si07swiftuieF0SS18platformIdentifiertTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = a1 + 13;
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    *(v3[6] + 8 * v11) = v4;
    v14 = (v3[7] + 32 * v11);
    *v14 = v5;
    v14[1] = v6;
    v14[2] = v7;
    v14[3] = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 5;
    v4 = *(v13 - 4);
    v5 = *(v13 - 3);
    v6 = *(v13 - 2);
    v7 = *(v13 - 1);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs14PartialKeyPathCySo21UISplitViewControllerCG_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v4, &v11, type metadata accessor for (PartialKeyPath<UISplitViewController>, Any));
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI32AlternateRepresentationPlacementV5ValueO_AC7AnyViewVTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<AlternateRepresentationPlacement.Value, AnyView>, lazy protocol witness table accessor for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    --v10;
    result = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13NSFileWrapperC_22UniformTypeIdentifiers6UTTypeVTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (NSFileWrapper, UTType)();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<NSFileWrapper, UTType>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v10, v6, type metadata accessor for (NSFileWrapper, UTType));
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for UTType();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_So16UIMenuIdentifieraTt0g5Tf4g_n(uint64_t a1)
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, &lazy cache variable for type metadata for (UUID, UIMenuIdentifier), MEMORY[0x1E69695A8], type metadata accessor for UIMenuIdentifier);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    type metadata accessor for _DictionaryStorage<UUID, UIMenuIdentifier>();
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      outlined init with copy of (CodingUserInfoKey, Sendable)(v10, v6, &lazy cache variable for type metadata for (UUID, UIMenuIdentifier), MEMORY[0x1E69695A8], type metadata accessor for UIMenuIdentifier);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC13RawPanGestureV9StateTypeV0E4Info33_B91FD4B193E991093C77979850E18C8FLLVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, RawPanGesture.StateType.EventInfo>, lazy protocol witness table accessor for type EventID and conformance EventID);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI14ToolbarStorageV5EntryV2IDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = MEMORY[0x1E69E6530];
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>, lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID);
    v4 = static _DictionaryStorage.allocate(capacity:)();
    v5 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, TabEntry)(v5, v16, &lazy cache variable for type metadata for (ToolbarStorage.Entry.ID, Int), &type metadata for ToolbarStorage.Entry.ID, v3, type metadata accessor for (Badge, Spacer));
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v7)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v4[6] + 88 * result;
      v9 = v16[1];
      *v8 = v16[0];
      *(v8 + 16) = v9;
      v10 = v16[2];
      v11 = v16[3];
      v12 = v16[4];
      *(v8 + 80) = v17;
      *(v8 + 48) = v11;
      *(v8 + 64) = v12;
      *(v8 + 32) = v10;
      *(v4[7] + 8 * result) = v18;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      v5 += 96;
      if (!--v1)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_Si_7SwiftUI13CountingIndexVySiGtTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI10TableRowIDO_Si_AC13CountingIndexVySiG_AHttTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(0, &lazy cache variable for type metadata for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>, type metadata accessor for (Int, (CountingIndex<Int>, CountingIndex<Int>)), lazy protocol witness table accessor for type TableRowID and conformance TableRowID);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of Predicate<Pack{String}>?(v4, &v18, type metadata accessor for (TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))));
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v18);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = (v3[6] + 48 * result);
      v8 = v18;
      v9 = v19[0];
      *(v7 + 25) = *(v19 + 9);
      *v7 = v8;
      v7[1] = v9;
      v10 = v3[7] + 56 * result;
      v11 = v20;
      v12 = v21;
      v13 = v23;
      v14 = v22;
      *v10 = v19[2];
      *(v10 + 16) = v11;
      *(v10 + 24) = v12;
      *(v10 + 32) = v14;
      *(v10 + 48) = v13;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 104;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC05HoverE0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, HoverEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = v11;
  result = v8;
  v15 = (a1 + 136);
  while (1)
  {
    *(v3 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v16 = (v3[6] + 16 * v13);
    *v16 = v4;
    v16[1] = v5;
    v17 = v3[7] + 40 * v13;
    *v17 = v6;
    *(v17 + 8) = v7;
    *(v17 + 16) = result;
    *(v17 + 24) = v9;
    *(v17 + 32) = v10;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v15 + 7;
    v4 = *(v15 - 6);
    v5 = *(v15 - 5);
    v6 = *(v15 - 4);
    v7 = *(v15 - 24);
    v22 = *(v15 - 2);
    v9 = *(v15 - 1);
    v10 = *v15;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
    v15 = v21;
    result = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC03PanE0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, PanEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v4;
  v34[0] = *(a1 + 128);
  *(v34 + 9) = *(a1 + 137);
  v5 = *(a1 + 48);
  v28 = *(a1 + 32);
  v29 = v5;
  v6 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v6;
  v8 = *(&v28 + 1);
  v7 = v28;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v28, *(&v28 + 1));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (String, TabEntry)(&v28, v27, &lazy cache variable for type metadata for (EventID, PanEvent), MEMORY[0x1E69819B0], MEMORY[0x1E6981CA8], type metadata accessor for (Badge, Spacer));
    return v3;
  }

  v11 = (a1 + 160);
  v12 = MEMORY[0x1E6981CA8];
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v7;
    v13[1] = v8;
    v14 = (v3[7] + 112 * result);
    v15 = v29;
    v16 = v31;
    v14[1] = v30;
    v14[2] = v16;
    *v14 = v15;
    v17 = v32;
    v18 = v33;
    v19 = v34[0];
    *(v14 + 89) = *(v34 + 9);
    v14[4] = v18;
    v14[5] = v19;
    v14[3] = v17;
    v20 = v3[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      break;
    }

    v3[2] = v22;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(&v28, v27, &lazy cache variable for type metadata for (EventID, PanEvent), MEMORY[0x1E69819B0], v12, type metadata accessor for (Badge, Spacer));
    v23 = v11[5];
    v32 = v11[4];
    v33 = v23;
    v34[0] = v11[6];
    *(v34 + 9) = *(v11 + 105);
    v24 = v11[1];
    v28 = *v11;
    v29 = v24;
    v25 = v11[3];
    v30 = v11[2];
    v31 = v25;
    v8 = *(&v28 + 1);
    v7 = v28;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v28, *(&v28 + 1));
    v11 += 8;
    if (v26)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, String>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_7SwiftUI20ScrollViewCommitInfo33_82EFBFF660266D0B9A51D97979C8390ALLOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<UInt32, ScrollViewCommitInfo>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v24[48] = *(a1 + 80);
  *&v24[64] = v5;
  *&v24[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v24 = *(a1 + 32);
  *&v24[16] = v6;
  *&v24[32] = v4;
  v7 = *v24;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v24);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (String, TabEntry)(v24, v23, &lazy cache variable for type metadata for (UInt32, ScrollViewCommitInfo), MEMORY[0x1E69E7668], &type metadata for ScrollViewCommitInfo, type metadata accessor for (Badge, Spacer));
    return v3;
  }

  v10 = a1 + 120;
  v11 = MEMORY[0x1E69E7668];
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v7;
    v12 = (v3[7] + 80 * result);
    *v12 = *&v24[8];
    v13 = *&v24[24];
    v14 = *&v24[40];
    v15 = *&v24[72];
    v12[3] = *&v24[56];
    v12[4] = v15;
    v12[1] = v13;
    v12[2] = v14;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(v24, v23, &lazy cache variable for type metadata for (UInt32, ScrollViewCommitInfo), v11, &type metadata for ScrollViewCommitInfo, type metadata accessor for (Badge, Spacer));
    v19 = *(v10 + 32);
    v20 = *(v10 + 64);
    *&v24[48] = *(v10 + 48);
    *&v24[64] = v20;
    *&v24[80] = *(v10 + 80);
    v21 = *(v10 + 16);
    *v24 = *v10;
    *&v24[16] = v21;
    *&v24[32] = v19;
    v7 = *v24;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v24);
    v10 += 88;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI5ImageVACE8ResolvedVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<Int, Image.Resolved>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 208);
  v36[10] = *(a1 + 192);
  v36[11] = v4;
  *(&v36[11] + 15) = *(a1 + 223);
  v5 = *(a1 + 144);
  v36[6] = *(a1 + 128);
  v36[7] = v5;
  v6 = *(a1 + 176);
  v36[8] = *(a1 + 160);
  v36[9] = v6;
  v7 = *(a1 + 80);
  v36[2] = *(a1 + 64);
  v36[3] = v7;
  v8 = *(a1 + 112);
  v36[4] = *(a1 + 96);
  v36[5] = v8;
  v9 = *(a1 + 48);
  v36[0] = *(a1 + 32);
  v36[1] = v9;
  v10 = *&v36[0];
  result = specialized __RawDictionaryStorage.find<A>(_:)(*&v36[0]);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of (String, TabEntry)(v36, v35, &lazy cache variable for type metadata for (Int, Image.Resolved), MEMORY[0x1E69E6530], MEMORY[0x1E6981730], type metadata accessor for (Badge, Spacer));
    return v3;
  }

  v13 = a1 + 232;
  v14 = MEMORY[0x1E6981730];
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v10;
    v15 = (v3[7] + 192 * result);
    v16 = *(v36 + 8);
    v17 = *(&v36[1] + 8);
    v18 = *(&v36[3] + 8);
    v15[2] = *(&v36[2] + 8);
    v15[3] = v18;
    *v15 = v16;
    v15[1] = v17;
    v19 = *(&v36[4] + 8);
    v20 = *(&v36[5] + 8);
    v21 = *(&v36[7] + 8);
    v15[6] = *(&v36[6] + 8);
    v15[7] = v21;
    v15[4] = v19;
    v15[5] = v20;
    v22 = *(&v36[8] + 8);
    v23 = *(&v36[9] + 8);
    v24 = *(&v36[10] + 8);
    *(v15 + 171) = *(&v36[11] + 3);
    v15[9] = v23;
    v15[10] = v24;
    v15[8] = v22;
    v25 = v3[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      break;
    }

    v3[2] = v27;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of (String, TabEntry)(v36, v35, &lazy cache variable for type metadata for (Int, Image.Resolved), MEMORY[0x1E69E6530], v14, type metadata accessor for (Badge, Spacer));
    v28 = *(v13 + 176);
    v36[10] = *(v13 + 160);
    v36[11] = v28;
    *(&v36[11] + 15) = *(v13 + 191);
    v29 = *(v13 + 112);
    v36[6] = *(v13 + 96);
    v36[7] = v29;
    v30 = *(v13 + 144);
    v36[8] = *(v13 + 128);
    v36[9] = v30;
    v31 = *(v13 + 48);
    v36[2] = *(v13 + 32);
    v36[3] = v31;
    v32 = *(v13 + 80);
    v36[4] = *(v13 + 64);
    v36[5] = v32;
    v33 = *(v13 + 16);
    v36[0] = *v13;
    v36[1] = v33;
    v10 = *&v36[0];
    result = specialized __RawDictionaryStorage.find<A>(_:)(*&v36[0]);
    v13 += 200;
    if (v34)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id specialized SceneBridge.buildActivationConditions(_:)(uint64_t a1)
{
  type metadata accessor for Predicate<Pack{NSString}>();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for Predicate<Pack{String}>();
  v8 = *(v6 - 8);
  result = (v6 - 8);
  if (*(v8 + 64) == v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSPredicate);
    (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSString);
    result = NSPredicate.init<A>(_:)();
    if (!result)
    {
      MEMORY[0x18D009810](0xD00000000000007BLL, 0x800000018CD41E70);
      v9 = [objc_opt_self() predicateWithValue_];

      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, int *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v35 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = __clz(__rbit64(v13)) | (v14 << 6);
    v17 = *(a1 + 56);
    v39 = *(*(a1 + 48) + 4 * v16);
    v40 = *(v17 + 16 * v16);

    a2(&v41, &v39);

    v18 = v42;
    if (!v42)
    {
LABEL_22:
      outlined consume of Set<UIPress>.Iterator._Variant();
    }

    v19 = v41;
    v38 = v43;
    v20 = *v44;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_24;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a4 & 1);
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }

      v22 = v27;
    }

    v29 = *v44;
    if (v26)
    {
      v12 = (v29[7] + 16 * v22);
      *v12 = v18;
      v12[1] = v38;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + 4 * v22) = v19;
      v30 = (v29[7] + 16 * v22);
      *v30 = v18;
      v30[1] = v38;
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_25;
      }

      v29[2] = v33;
    }

    a4 = 1;
    v11 = v14;
    v6 = v35;
    v9 = (v13 - 1) & v13;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized static SceneBridge.UserActivityPreferenceKey.reduce(value:nextValue:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t))
{
  v4 = a1[1];
  if (!v4)
  {
    result = (a2)(&v13);
    v12 = v14;
    *a1 = v13;
    goto LABEL_10;
  }

  v5 = *a1;
  v6 = a1[2];

  a2(&v13, v7);
  if (*(&v13 + 1))
  {
    v8 = v14;
    v9 = v5 == v13 && v4 == *(&v13 + 1);
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13 = v6;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v8, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v13);

      result = outlined consume of FocusStore?(v5, v4);
      v12 = v13;
      *a1 = v5;
      a1[1] = v4;
LABEL_10:
      a1[2] = v12;
      return result;
    }
  }
}

uint64_t specialized static SceneBridge.ActivationConditionsPreferenceKey.reduce(value:nextValue:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v33 = a3;
  v34 = a2;
  v31 = a1;
  type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?)();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - v23;
  outlined init with copy of Predicate<Pack{String}>?(a1, v7, type metadata accessor for (preferring: Predicate<Pack{String}>?, allowing: Predicate<Pack{String}>?));
  v25 = *(v5 + 56);
  outlined init with take of Predicate<Pack{String}>?(v7, v24, type metadata accessor for Predicate<Pack{String}>?);
  v26 = outlined init with take of Predicate<Pack{String}>?(&v7[v25], v21, type metadata accessor for Predicate<Pack{String}>?);
  v27 = *(v5 + 56);
  v34(v26);
  outlined init with take of Predicate<Pack{String}>?(v7, v18, type metadata accessor for Predicate<Pack{String}>?);
  outlined init with take of Predicate<Pack{String}>?(&v7[v27], v15, type metadata accessor for Predicate<Pack{String}>?);
  type metadata accessor for SceneBridge(0);
  static SceneBridge.merge(predicate:with:)(v24, v18, v12);
  v28 = v32;
  static SceneBridge.merge(predicate:with:)(v21, v15, v32);
  outlined destroy of Predicate<Pack{String}>?(v15, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v18, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v21, type metadata accessor for Predicate<Pack{String}>?);
  outlined destroy of Predicate<Pack{String}>?(v24, type metadata accessor for Predicate<Pack{String}>?);
  v29 = v31;
  outlined assign with take of Predicate<Pack{String}>?(v12, v31, type metadata accessor for Predicate<Pack{String}>?);
  return outlined assign with take of Predicate<Pack{String}>?(v28, v29 + *(v5 + 56), type metadata accessor for Predicate<Pack{String}>?);
}

void type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>()
{
  if (!lazy cache variable for type metadata for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>)
  {
    type metadata accessor for PredicateExpressions.Value<Predicate<Pack{String}>>(255);
    v0 = MEMORY[0x1E6968D98];
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6968D98]);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance PredicateExpressions.Value<A>, type metadata accessor for PredicateExpressions.Value<Predicate<Pack{String}>>);
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, v0);
    v1 = type metadata accessor for PredicateExpressions.PredicateEvaluate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, a2, MEMORY[0x1E69E6158], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>>()
{
  if (!lazy cache variable for type metadata for PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>>)
  {
    type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>, type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>);
    v0 = type metadata accessor for PredicateExpressions.Disjunction();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>> and conformance <> PredicateExpressions.Disjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>> and conformance <> PredicateExpressions.Disjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>> and conformance <> PredicateExpressions.Disjunction<A, B>)
  {
    type metadata accessor for PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>>();
    lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Disjunction<PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>, PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>> and conformance <> PredicateExpressions.Disjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>)
  {
    type metadata accessor for PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, MEMORY[0x1E6968D98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.PredicateEvaluate<PredicateExpressions.Value<Predicate<Pack{String}>>, Pack{PredicateExpressions.Variable<String>}> and conformance <> PredicateExpressions.PredicateEvaluate<A, Pack{repeat B}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance <A> PredicateExpressions.Value<A>)
  {
    type metadata accessor for PredicateExpressions.Value<Predicate<Pack{String}>>(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type Predicate<Pack{String}> and conformance Predicate<Pack{repeat A}>, type metadata accessor for Predicate<Pack{String}>);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type Predicate<Pack{String}> and conformance Predicate<Pack{repeat A}>, type metadata accessor for Predicate<Pack{String}>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Predicate<Pack{String}>> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Edge and conformance Edge()
{
  result = lazy protocol witness table cache variable for type Edge and conformance Edge;
  if (!lazy protocol witness table cache variable for type Edge and conformance Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Edge and conformance Edge);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey()
{
  result = lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey;
  if (!lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>)
  {
    type metadata accessor for Predicate<Pack{String}>?(255, &lazy cache variable for type metadata for [AnyConnectionOptionActionBox], 255, type metadata accessor for AnyConnectionOptionActionBox, MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>);
    }
  }
}

uint64_t outlined init with copy of (String, TabEntry)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Sendable>)
  {
    type metadata accessor for CodingUserInfoKey();
    type metadata accessor for Sendable();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<CodingUserInfoKey, Sendable>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, Decodable & Encodable.Type>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & Encodable.Type>)
  {
    type metadata accessor for Decodable & Encodable.Type();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Decodable & Encodable.Type>);
    }
  }
}

unint64_t type metadata accessor for Decodable & Encodable.Type()
{
  result = lazy cache variable for type metadata for Decodable & Encodable.Type;
  if (!lazy cache variable for type metadata for Decodable & Encodable.Type)
  {
    type metadata accessor for Decodable & Encodable();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable.Type);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in UserActivityModifier.body(content:)()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    (*(v0 + 40))();
  }

  return v1 & 1;
}

uint64_t objectdestroy_30Tm()
{

  return swift_deallocObject();
}

void type metadata accessor for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>()
{
  if (!lazy cache variable for type metadata for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>)
  {
    type metadata accessor for PassthroughSubject<Any, Never>();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for SubscriptionView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>)
  {
    type metadata accessor for _ViewModifier_Content<UserActivityModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<UserActivityModifier>, lazy protocol witness table accessor for type UserActivityModifier and conformance UserActivityModifier, &type metadata for UserActivityModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>, &type metadata for SceneBridge.UserActivityPreferenceKey, &protocol witness table for SceneBridge.UserActivityPreferenceKey, type metadata accessor for IdentifiedPreferenceTransformModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<UserActivityModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<UserActivityModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<UserActivityModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<UserActivityModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<UserActivityModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<UserActivityModifier>, lazy protocol witness table accessor for type UserActivityModifier and conformance UserActivityModifier, &type metadata for UserActivityModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<UserActivityModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed NSUserActivity) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

void type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>)
  {
    type metadata accessor for IntelligenceDataSourceItem();
    type metadata accessor for IntelligenceAppIntentsPayload();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type IntelligenceDataSourceItem and conformance IntelligenceDataSourceItem, MEMORY[0x1E69DBC58]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<IntelligenceDataSourceItem, IntelligenceAppIntentsPayload>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement()
{
  result = lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement;
  if (!lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement;
  if (!lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement);
  }

  return result;
}

uint64_t outlined assign with take of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, 255, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>)
  {
    type metadata accessor for Predicate<Pack{String}>?(255, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, 255, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>);
    }
  }
}

void type metadata accessor for (UInt64, WeakBox<EntityGestureResponder>)()
{
  if (!lazy cache variable for type metadata for (UInt64, WeakBox<EntityGestureResponder>))
  {
    type metadata accessor for Predicate<Pack{String}>?(255, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, 255, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UInt64, WeakBox<EntityGestureResponder>));
    }
  }
}

uint64_t outlined init with take of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Predicate<Pack{String}>?(0, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, 255, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>)
  {
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>);
    }
  }
}

void type metadata accessor for (PartialKeyPath<UISplitViewController>, Any)()
{
  if (!lazy cache variable for type metadata for (PartialKeyPath<UISplitViewController>, Any))
  {
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(255, &lazy cache variable for type metadata for PartialKeyPath<UISplitViewController>, &lazy cache variable for type metadata for UISplitViewController, 0x1E69DCF78, MEMORY[0x1E69E6B88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PartialKeyPath<UISplitViewController>, Any));
    }
  }
}

void type metadata accessor for _DictionaryStorage<UUID, UIMenuIdentifier>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, UIMenuIdentifier>)
  {
    type metadata accessor for UUID();
    type metadata accessor for UIMenuIdentifier(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UUID, UIMenuIdentifier>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Character, String>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Character, String>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Character, String>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, Character>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Character>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Character>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UUID, PlatformItemList>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UUID, PlatformItemList>)
  {
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UUID, PlatformItemList>);
    }
  }
}

uint64_t outlined init with copy of (UIApplicationOpenExternalURLOptionsKey, Any)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for (UUID, PlatformItemList)(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined assign with take of WeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PredicateExpressions.Variable<String>(0, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology()
{
  result = lazy protocol witness table cache variable for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology;
  if (!lazy protocol witness table cache variable for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, unint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<UserActivityModifier>(255, &lazy cache variable for type metadata for Set<UniqueID>, lazy protocol witness table accessor for type UniqueID and conformance UniqueID, MEMORY[0x1E6981D00], MEMORY[0x1E69E64E8]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match();
    v9 = a3(a1, &type metadata for AccessibilityFocus.Match, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match()
{
  result = lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match;
  if (!lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match;
  if (!lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityFocus.Match and conformance AccessibilityFocus.Match);
  }

  return result;
}

void type metadata accessor for (CountingIndex<Int>, CountingIndex<Int>)()
{
  if (!lazy cache variable for type metadata for (CountingIndex<Int>, CountingIndex<Int>))
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E697E0E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CountingIndex<Int>, CountingIndex<Int>));
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>)
  {
    type metadata accessor for (Int, CountingIndex<Int>)();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>);
    }
  }
}

void type metadata accessor for (Int, CountingIndex<Int>)()
{
  if (!lazy cache variable for type metadata for (Int, CountingIndex<Int>))
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E697E0E0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, CountingIndex<Int>));
    }
  }
}

uint64_t outlined assign with take of Predicate<Pack{String}>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<Int, Image.Resolved>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, Image.Resolved>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, Image.Resolved>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, UIAccessibilityCustomRotor>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, UIAccessibilityCustomRotor>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIAccessibilityCustomRotor);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, UIAccessibilityCustomRotor>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken()
{
  result = lazy protocol witness table cache variable for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken;
  if (!lazy protocol witness table cache variable for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DisplayList.Index.ID and conformance DisplayList.Index.ID()
{
  result = lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID;
  if (!lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DisplayList.Index.ID and conformance DisplayList.Index.ID);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>)
  {
    type metadata accessor for PinnedBarPortalView();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration()
{
  result = lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration;
  if (!lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration;
  if (!lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IdentifiedDocumentGroupConfiguration and conformance IdentifiedDocumentGroupConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyCommandID and conformance KeyCommandID()
{
  result = lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID;
  if (!lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID;
  if (!lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyCommandID and conformance KeyCommandID);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<String, MainMenuItemCoordinator>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, MainMenuItemCoordinator>)
  {
    type metadata accessor for MainMenuItemCoordinator();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, MainMenuItemCoordinator>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIDragItem, CGAffineTransform>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIDragItem, CGAffineTransform>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIDragItem);
    type metadata accessor for CGAffineTransform(255);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIDragItem and conformance NSObject, &lazy cache variable for type metadata for UIDragItem);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIDragItem, CGAffineTransform>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIDragItem, CGPoint>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIDragItem, CGPoint>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIDragItem);
    type metadata accessor for CGPoint(255);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIDragItem and conformance NSObject, &lazy cache variable for type metadata for UIDragItem);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIDragItem, CGPoint>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UIPasteboardName, AttributedString.PasteboardOwner>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIPasteboardName, AttributedString.PasteboardOwner>)
  {
    type metadata accessor for UIPasteboardName(255);
    type metadata accessor for AttributedString.PasteboardOwner();
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UIPasteboardName and conformance UIPasteboardName, type metadata accessor for UIPasteboardName);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIPasteboardName, AttributedString.PasteboardOwner>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>)
  {
    type metadata accessor for AGAttribute(255);
    type metadata accessor for Predicate<Pack{String}>?(255, &lazy cache variable for type metadata for ArrayWith2Inline<AccessibilityNode>, 255, type metadata accessor for AccessibilityNode, MEMORY[0x1E697E948]);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>);
    }
  }
}

id outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(id result, void *a2, char a3)
{
  if (a3 == 2)
  {
  }

  else
  {
    if (a3 == 1)
    {
      v4 = result;
      result = a2;
    }

    else
    {
      if (a3)
      {
        return result;
      }
    }

    return result;
  }
}

void type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined init with copy of (CodingUserInfoKey, Sendable)(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  type metadata accessor for (CodingUserInfoKey, Sendable)(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for _DictionaryStorage<AnyHashable, DisplayList.Version>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, DisplayList.Version>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<AnyHashable, DisplayList.Version>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Spacing.Key and conformance Spacing.Key()
{
  result = lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key;
  if (!lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacing.Key and conformance Spacing.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID()
{
  result = lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID;
  if (!lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID;
  if (!lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID;
  if (!lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID;
  if (!lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationID and conformance TabCustomizationID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringDocumentReadingOptionKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringDocumentReadingOptionKey, Any>)
  {
    type metadata accessor for NSAttributedStringDocumentReadingOptionKey(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringDocumentReadingOptionKey, Any>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<NSAttributedStringDocumentAttributeKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringDocumentAttributeKey, Any>)
  {
    type metadata accessor for NSAttributedStringDocumentAttributeKey(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSAttributedStringDocumentAttributeKey, Any>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for PredicateExpressions.Value<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

void type metadata accessor for PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>>()
{
  if (!lazy cache variable for type metadata for PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>>)
  {
    v0 = MEMORY[0x1E69E6158];
    v1 = MEMORY[0x1E6968D98];
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6968D98]);
    v2 = MEMORY[0x1E6968D10];
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for PredicateExpressions.Value<String>, v0, MEMORY[0x1E6968D10]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, v1);
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>, &lazy cache variable for type metadata for PredicateExpressions.Value<String>, v2);
    lazy protocol witness table accessor for type String and conformance String();
    v3 = type metadata accessor for PredicateExpressions.StringLocalizedStandardContains();
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.StringLocalizedStandardContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.StringLocalizedStandardContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.StringLocalizedStandardContains<A, B>)
  {
    type metadata accessor for PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>>();
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance PredicateExpressions.Value<A>(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<String> and conformance PredicateExpressions.Variable<A>, &lazy cache variable for type metadata for PredicateExpressions.Variable<String>, MEMORY[0x1E6968D98]);
    lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.StringLocalizedStandardContains<PredicateExpressions.Variable<String>, PredicateExpressions.Value<String>> and conformance <> PredicateExpressions.StringLocalizedStandardContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for PredicateExpressions.Value<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6968D10]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<String> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in View.onOpenURL(perform:)(uint64_t a1)
{
  return closure #1 in closure #1 in View.onOpenURL(perform:)(a1, *(v1 + 16));
}

{
  return closure #1 in closure #1 in View.onOpenURL(perform:)(a1, *(v1 + 16));
}

uint64_t outlined init with take of Predicate<Pack{String}>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _DictionaryStorage<UIApplicationOpenExternalURLOptionsKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UIApplicationOpenExternalURLOptionsKey, Any>)
  {
    type metadata accessor for UIApplicationOpenExternalURLOptionsKey(255);
    lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UIApplicationOpenExternalURLOptionsKey, Any>);
    }
  }
}

void type metadata accessor for (UUID, PlatformItemList)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for Predicate<Pack{NSString}>()
{
  if (!lazy cache variable for type metadata for Predicate<Pack{NSString}>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSString);
    v0 = type metadata accessor for Predicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Predicate<Pack{NSString}>);
    }
  }
}

void type metadata accessor for (NSFileWrapper, UTType)()
{
  if (!lazy cache variable for type metadata for (NSFileWrapper, UTType))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSFileWrapper);
    type metadata accessor for UTType();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NSFileWrapper, UTType));
    }
  }
}

void type metadata accessor for _DictionaryStorage<NSFileWrapper, UTType>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NSFileWrapper, UTType>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for NSFileWrapper);
    type metadata accessor for UTType();
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type NSFileWrapper and conformance NSObject, &lazy cache variable for type metadata for NSFileWrapper);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NSFileWrapper, UTType>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Int>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, Int>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for OpenURLContext(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = v10[8];
    if (v11 == 255)
    {
      *v9 = *v10;
      v9[8] = v10[8];
    }

    else
    {
      v12 = *v10;
      *v9 = v12;
      v9[8] = v11 & 1;
      v13 = v12;
    }
  }

  return a1;
}

void destroy for OpenURLContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  if (*(v5 + 8) != 255)
  {
    v6 = *v5;
  }
}

uint64_t initializeWithCopy for OpenURLContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 8);
  if (v10 == 255)
  {
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
  }

  else
  {
    v11 = *v9;
    *v8 = v11;
    *(v8 + 8) = v10 & 1;
    v12 = v11;
  }

  return a1;
}

uint64_t assignWithCopy for OpenURLContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a1 + v7 + 8);
  v11 = *(v9 + 8);
  if (v10 == 255)
  {
    if (v11 == 255)
    {
      v18 = *v9;
      *(v8 + 8) = *(v9 + 8);
      *v8 = v18;
    }

    else
    {
      v15 = *v9;
      *v8 = *v9;
      *(v8 + 8) = v11 & 1;
      v16 = v15;
    }
  }

  else if (v11 == 255)
  {
    outlined destroy of OpenURLOptions(v8);
    v17 = *(v9 + 8);
    *v8 = *v9;
    *(v8 + 8) = v17;
  }

  else
  {
    v12 = *v9;
    v13 = *v8;
    *v8 = v12;
    *(v8 + 8) = v11 & 1;
    v14 = v12;
  }

  return a1;
}

uint64_t initializeWithTake for OpenURLContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  return a1;
}

uint64_t assignWithTake for OpenURLContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v9 = a2 + v7;
  if (*(a1 + v7 + 8) == 255)
  {
    goto LABEL_5;
  }

  v10 = *(v9 + 8);
  if (v10 == 255)
  {
    outlined destroy of OpenURLOptions(v8);
LABEL_5:
    *v8 = *v9;
    *(v8 + 8) = *(v9 + 8);
    return a1;
  }

  v11 = *v8;
  *v8 = *v9;
  *(v8 + 8) = v10 & 1;

  return a1;
}

void type metadata accessor for SceneBridgeReader<<<opaque return type of View.scrapeableAttachment(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for SceneBridgeReader<<<opaque return type of View.scrapeableAttachment(_:)>>.0>)
  {
    type metadata accessor for <<opaque return type of View.scrapeableAttachment(_:)>>.0();
    type metadata accessor for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for SceneBridgeReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SceneBridgeReader<<<opaque return type of View.scrapeableAttachment(_:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.scrapeableAttachment(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.scrapeableAttachment(_:)>>.0)
  {
    type metadata accessor for SubscriptionView<PassthroughSubject<Any, Never>, ModifiedContent<_ViewModifier_Content<UserActivityModifier>, IdentifiedPreferenceTransformModifier<SceneBridge.UserActivityPreferenceKey>>>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.scrapeableAttachment(_:)>>.0);
    }
  }
}

void type metadata accessor for _DictionaryStorage<UInt32, ScrollViewCommitInfo>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UInt32, ScrollViewCommitInfo>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<UInt32, ScrollViewCommitInfo>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, String>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, String>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, String>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, Int>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, Int>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Edge, Bool>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _DictionaryStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, TabEntry>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, TabEntry>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, TabEntry>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, Int>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Int>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Int>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>)
  {
    type metadata accessor for (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>);
    }
  }
}

void type metadata accessor for (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)()
{
  if (!lazy cache variable for type metadata for (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String));
    }
  }
}

void type metadata accessor for _ViewModifier_Content<UserActivityModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for _DictionaryStorage<String, TabItemGroup.HostCache>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, TabItemGroup.HostCache>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, TabItemGroup.HostCache>);
    }
  }
}

uint64_t IndexPath.flatIndex.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexPath>();
  v7 = v6 - 8;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2, v8);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of Sequence.makeIterator()();
  v11 = *(v7 + 44);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  v12 = 0;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v10[v11] == v20[0])
    {
      break;
    }

    v13 = dispatch thunk of Collection.subscript.read();
    v15 = *v14;
    v13(v20, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v16 = __OFADD__(v12, v15);
    v12 += v15;
    if (v16)
    {
      __break(1u);
      break;
    }
  }

  v17 = outlined destroy of IndexingIterator<IndexPath>(v10);
  result = MEMORY[0x18D0006D0](v17);
  v19 = v12 + result;
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = v19 - 1;
  if (__OFSUB__(v19, 1))
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

void type metadata accessor for IndexingIterator<IndexPath>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<IndexPath>)
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<IndexPath>);
    }
  }
}

uint64_t outlined destroy of IndexingIterator<IndexPath>(uint64_t a1)
{
  type metadata accessor for IndexingIterator<IndexPath>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IndexPath.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IndexPath();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v6 == v5)
  {
    v3 = 1;
  }

  else
  {
    IndexPath.dropLast()();
    v3 = 0;
  }

  return (*(*(v2 - 8) + 56))(a1, v3, 1, v2);
}

uint64_t IndexPath.isParent(of:)()
{
  v1 = MEMORY[0x18D0006D0]();
  result = MEMORY[0x18D0006D0]();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v1 == result + 1)
    {
      type metadata accessor for IndexPath();
      lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v5 == v4)
      {
        v3 = 1;
      }

      else
      {
        v3 = specialized Sequence<>.starts<A>(with:)(v0);
      }
    }

    else
    {
      v3 = 0;
    }

    return v3 & 1;
  }

  return result;
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexPath>();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(v5 + 16);
  v16(v7, a1, v4, v13);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of Sequence.makeIterator()();
  (v16)(v7, v2, v4);
  dispatch thunk of Sequence.makeIterator()();
  v30 = v9;
  v17 = *(v9 + 36);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v11[v17] == v31[0])
    {
      break;
    }

    v18 = dispatch thunk of Collection.subscript.read();
    v20 = *v19;
    v18(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v21 = *(v30 + 36);
    dispatch thunk of Collection.endIndex.getter();
    if (*&v15[v21] == v31[0])
    {
      outlined destroy of IndexingIterator<IndexPath>(v11);
      goto LABEL_9;
    }

    v22 = dispatch thunk of Collection.subscript.read();
    v24 = *v23;
    v22(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if (v20 != v24)
    {
      outlined destroy of IndexingIterator<IndexPath>(v11);
      v25 = 0;
      goto LABEL_10;
    }
  }

  outlined destroy of IndexingIterator<IndexPath>(v11);
  v26 = *(v30 + 36);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v15[v26] != v31[0])
  {
    v27 = dispatch thunk of Collection.subscript.read();
    v27(v31, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v25 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v25 = 1;
LABEL_10:
  outlined destroy of IndexingIterator<IndexPath>(v15);
  return v25;
}

uint64_t specialized Sequence<>.starts<A>(with:)()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t IndexPath.isAncestor(of:)()
{
  v1 = MEMORY[0x18D0006D0]();
  if (MEMORY[0x18D0006D0]() >= v1)
  {
    v2 = 0;
  }

  else
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v5 == v4)
    {
      v2 = 1;
    }

    else
    {
      v2 = specialized Sequence<>.starts<A>(with:)(v0);
    }
  }

  return v2 & 1;
}

uint64_t IndexPath.isDescendant(of:)(uint64_t a1)
{
  v2 = MEMORY[0x18D0006D0]();
  if (MEMORY[0x18D0006D0]() >= v2)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v6 == v5)
    {
      v3 = 1;
    }

    else
    {
      v3 = specialized Sequence<>.starts<A>(with:)(a1);
    }
  }

  return v3 & 1;
}

uint64_t IndexPath.isSiblingOf(of:)()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of Collection.startIndex.getter();
  v4 = dispatch thunk of Collection.endIndex.getter();
  if (v8[1] == v8[0] || (v5 = MEMORY[0x18D0006D0](v4), v5 != MEMORY[0x18D0006D0]()))
  {
    v6 = 0;
  }

  else
  {
    IndexPath.dropLast()();
    v6 = specialized Sequence<>.starts<A>(with:)(v3);
    (*(v1 + 8))(v3, v0);
  }

  return v6 & 1;
}

uint64_t IndexPath.sibling(atOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v14[0] == v14[4])
  {
    return (*(v6 + 16))(a2, v2, v5);
  }

  IndexPath.dropLast()();
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    __break(1u);
    goto LABEL_8;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  dispatch thunk of BidirectionalCollection.index(before:)();
  v10 = dispatch thunk of Collection.subscript.read();
  v12 = *v11;
  v10(v14, 0);
  result = v12 + a1;
  if (__OFADD__(v12, a1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  IndexPath.appending(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AutomaticDisclosureGroupStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);

  outlined consume of StateOrBinding<Bool>(0, 0, 0, 0);
  KeyPath = swift_getKeyPath();
  outlined copy of Environment<Bool>.Content(KeyPath, 0);
  outlined consume of Environment<Bool>.Content(KeyPath, 0);
  v7 = swift_getKeyPath();
  outlined copy of Environment<Bool>.Content(v7, 0);
  result = outlined consume of Environment<Bool>.Content(v7, 0);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = 1;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 0;
  *(a2 + 56) = 2;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
  *(a2 + 80) = 0;
  return result;
}

uint64_t key path getter for EnvironmentValues.shouldBuildExpandedContentLazily : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>();
    lazy protocol witness table accessor for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>();
    lazy protocol witness table accessor for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.shouldBuildExpandedContentLazily : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>();
  lazy protocol witness table accessor for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>(255);
    type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(255, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>, lazy protocol witness table accessor for type LeadingAlignedDisclosureGroupStyle and conformance LeadingAlignedDisclosureGroupStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>>, DisclosureGroupStyleModifier<LeadingAlignedDisclosureGroupStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for DisclosureGroup();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(255, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, lazy protocol witness table accessor for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarDisclosureGroupStyle and conformance SidebarDisclosureGroupStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(255, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, lazy protocol witness table accessor for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(255, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, lazy protocol witness table accessor for type ListDisclosureGroupStyle and conformance ListDisclosureGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(255, &lazy cache variable for type metadata for DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, lazy protocol witness table accessor for type AccessibilityDisclosureGroupStyle and conformance AccessibilityDisclosureGroupStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityDisclosureGroupStyle and conformance AccessibilityDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureGroupStyle and conformance AccessibilityDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureGroupStyle and conformance AccessibilityDisclosureGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureGroupStyle and conformance AccessibilityDisclosureGroupStyle);
  }

  return result;
}

void type metadata accessor for DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for DisclosureGroupStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LeadingAlignedDisclosureGroupStyle and conformance LeadingAlignedDisclosureGroupStyle()
{
  result = lazy protocol witness table cache variable for type LeadingAlignedDisclosureGroupStyle and conformance LeadingAlignedDisclosureGroupStyle;
  if (!lazy protocol witness table cache variable for type LeadingAlignedDisclosureGroupStyle and conformance LeadingAlignedDisclosureGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LeadingAlignedDisclosureGroupStyle and conformance LeadingAlignedDisclosureGroupStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>(&lazy protocol witness table cache variable for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>, type metadata accessor for DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, DisclosureGroupStyleModifier<SidebarDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, DisclosureGroupStyleModifier<ListDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, DisclosureGroupStyleModifier<AccessibilityDisclosureGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ShouldBuildExpandedContentLazilyEnvironmentKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type DisclosureGroup<DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content> and conformance DisclosureGroup<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LimitedAvailabilityCommandContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = specialized LimitedAvailabilityCommandContent.init<A>(erasing:)(a1, a2);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 96) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t static LimitedAvailabilityCommandContent._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *&v24[12] = *(a2 + 44);
  v5 = a2[1];
  v22 = *a2;
  v23 = v5;
  *v24 = a2[2];
  *&v11 = *&v24[16];
  DWORD2(v11) = *&v24[24];

  PreferencesInputs.makeIndirectOutputs()();

  v6 = *&v18[0];
  v7 = DWORD2(v18[0]);
  v8 = AGSubgraphGetCurrent();
  if (!v8)
  {
    __break(1u);
  }

  *(v19 + 12) = *&v24[12];
  v18[2] = v23;
  v19[0] = *v24;
  v18[1] = v22;
  LODWORD(v18[0]) = v4;
  *(&v18[0] + 1) = v8;
  *&v20 = v6;
  DWORD2(v20) = v7;
  v21 = 0;
  v15 = v19[1];
  v16 = v20;
  v17 = 0;
  v11 = v18[0];
  v12 = v22;
  v13 = v23;
  v14 = *v24;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _CommandsInputs(&v22, v10);
  lazy protocol witness table accessor for type LimitedAvailabilityCommandContent.IndirectOutputs and conformance LimitedAvailabilityCommandContent.IndirectOutputs();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LimitedAvailabilityCommandContent.IndirectOutputs(v18);
  *&v11 = v6;
  DWORD2(v11) = v7;

  v10[0] = 0;
  PreferencesOutputs.setIndirectDependency(_:)();

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

void LimitedAvailabilityCommandContent.IndirectOutputs.updateValue()()
{
  if (!*(v0 + 96))
  {
    v1 = AGSubgraphGetGraph();
    v2 = AGSubgraphCreate();

    *(v0 + 96) = v2;
    v4 = v2;
    AGSubgraphAddChild();
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in LimitedAvailabilityCommandContent.IndirectOutputs.updateValue()(v0);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t closure #1 in LimitedAvailabilityCommandContent.IndirectOutputs.updateValue()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v23[0] = *(a1 + 16);
  v23[1] = v2;
  v24[0] = *(a1 + 48);
  *(v24 + 12) = *(a1 + 60);
  v3 = v2;
  v22 = v23[0];
  v4 = *(a1 + 56);
  v19 = *(a1 + 40);
  v20 = v4;
  v21 = *(a1 + 72);
  swift_beginAccess();
  v5 = v3[3];
  v25[1] = v3[2];
  v25[2] = v5;
  v6 = v3[5];
  v25[3] = v3[4];
  v25[4] = v6;
  v25[0] = v3[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v7 = swift_allocObject();
  memmove((v7 + 16), v3 + 1, 0x50uLL);
  outlined init with copy of _CommandsInputs(v23, &v17);
  outlined init with copy of CachedEnvironment(v25, &v17);

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);

  v10 = *AGGraphGetValue();
  LODWORD(v13) = *a1;
  v26 = v22;
  *v27 = v7;
  *&v27[8] = v19;
  *&v27[40] = v21;
  *&v27[24] = v20;
  v17 = v22;
  *v18 = *v27;
  *&v18[16] = *&v27[16];
  *&v18[28] = *&v27[28];
  v11 = *(*v10 + 80);

  outlined init with copy of _CommandsInputs(&v26, v28);
  v11(&v15, &v13, &v17);

  v28[0] = v17;
  v28[1] = *v18;
  v29[0] = *&v18[16];
  *(v29 + 12) = *&v18[28];
  outlined destroy of _CommandsInputs(v28);
  *&v17 = v8;
  DWORD2(v17) = v9;
  v13 = v15;
  v14 = v16;
  PreferencesOutputs.attachIndirectOutputs(to:)();

  v17 = v22;
  *v18 = v7;
  *&v18[8] = v19;
  *&v18[24] = v20;
  *&v18[40] = v21;
  return outlined destroy of _CommandsInputs(&v17);
}

uint64_t LimitedAvailabilityCommandContentStorage.makeCommands(content:inputs:)(int *a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  v10 = v4;
  type metadata accessor for LimitedAvailabilityCommandContentStorage.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  return (*(v7 + 32))(v9, v11, v6, v7);
}

uint64_t LimitedAvailabilityCommandContentStorage.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for LimitedAvailabilityCommandContentStorage();
  v4 = swift_dynamicCastClassUnconditional();
  v5 = *(*(a1 - 8) + 16);
  v6 = v4 + *(*v4 + 112);

  return v5(a2, v6, a1);
}

uint64_t LimitedAvailabilityCommandContentStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t specialized LimitedAvailabilityCommandContent.init<A>(erasing:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LimitedAvailabilityCommandContentStorage();
  (*(v4 + 16))(v6, a1, a2);
  return LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
}

unint64_t lazy protocol witness table accessor for type LimitedAvailabilityCommandContent.IndirectOutputs and conformance LimitedAvailabilityCommandContent.IndirectOutputs()
{
  result = lazy protocol witness table cache variable for type LimitedAvailabilityCommandContent.IndirectOutputs and conformance LimitedAvailabilityCommandContent.IndirectOutputs;
  if (!lazy protocol witness table cache variable for type LimitedAvailabilityCommandContent.IndirectOutputs and conformance LimitedAvailabilityCommandContent.IndirectOutputs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LimitedAvailabilityCommandContent.IndirectOutputs and conformance LimitedAvailabilityCommandContent.IndirectOutputs);
  }

  return result;
}

uint64_t type metadata completion function for LimitedAvailabilityCommandContentStorage()
{
  result = swift_checkMetadataState();
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

void destroy for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t a1)
{

  v2 = *(a1 + 96);
}

uint64_t initializeWithCopy for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 96) = v6;
  v7 = v3;

  v8 = v6;
  return a1;
}

uint64_t assignWithCopy for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  v7 = *(a1 + 96);
  v8 = *(a2 + 96);
  *(a1 + 96) = v8;
  v9 = v8;

  return a1;
}

uint64_t assignWithTake for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  v4 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for LimitedAvailabilityCommandContent.IndirectOutputs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void TouchBar.init(id:content:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _TouchBarModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for TouchBar()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TouchBar(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      v16 = v15 - 1;
      if (v16 < 0)
      {
        v16 = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for TouchBar(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2;
  }
}

uint64_t outlined copy of TouchBarItemPresence(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined consume of TouchBarItemPresence(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TouchBarItemPresence(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TouchBarItemPresence(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TouchBarItemPresence(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TouchBarItemPresence(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of TouchBarItemPresence(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TouchBarItemPresence(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of TouchBarItemPresence(v4, v5, v6);
  return a1;
}

uint64_t type metadata completion function for _TouchBarModifier()
{
  result = type metadata accessor for TouchBar();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TouchBar(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = a2 + v6 + 16;
    v12 = *(v5 + 16);

    v12((a1 + v6 + 16) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t destroy for TouchBar(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for TouchBar(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;

  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *assignWithCopy for TouchBar(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

_OWORD *initializeWithTake for TouchBar(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void *assignWithTake for TouchBar(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance SidebarListStyle.HasSearchField@<X0>(_BYTE *a1@<X8>)
{
  result = AGGraphGetValue();
  *a1 = 0;
  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SidebarListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>>();
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type SidebarListStyle.BodyContent<ModifiedContent<ListStyleContent, StyleContextWriter<SidebarListStyleContext>>> and conformance SidebarListStyle.BodyContent<A>();
  swift_getWitnessTable();
  v2 = type metadata accessor for SidebarListBody();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

unsigned __int8 *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance OutlineRootConfiguration.Key(unsigned __int8 *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (v3 == 1)
  {
    v4 = result[1];
  }

  else
  {
    result = a2(&v5);
    LOBYTE(v3) = v5;
    v4 = BYTE1(v5);
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

uint64_t View.outlineRoot(_:isExpanded:)(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 17) = a2;
  View.transformPreference<A>(_:_:)();
}

_BYTE *closure #1 in View.outlineRoot(_:isExpanded:)(_BYTE *result, char a2, char a3)
{
  if (a3 == 2)
  {
    v3 = result[1];
  }

  else
  {
    v3 = a3;
  }

  *result = a2;
  result[1] = v3 & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.searchFieldPlacement : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.searchFieldPlacement : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void *initializeBufferWithCopyOfBuffer for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-18 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v10 = a1 & 0xFFFFFFFFFFFFFFF8;
    v11 = a2 & 0xFFFFFFFFFFFFFFF8;
    v12 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v13 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    outlined copy of Environment<Selector?>.Content(v12, v13);
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    (*(v5 + 16))((v10 + v6 + 17) & ~v6, (v11 + v6 + 17) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return v3;
}

unint64_t initializeWithTake for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 17 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80), (*(v6 + 80) + 17 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80));
  return a1;
}

unint64_t assignWithTake for SidebarListStyle.BodyContent(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v9 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v5 + 16);
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = *(*(a3 + 16) - 8);
  (*(v11 + 40))((*(v11 + 80) + 17 + v5) & ~*(v11 + 80), (*(v11 + 80) + 17 + v6) & ~*(v11 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarListStyle.BodyContent(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 17) & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}