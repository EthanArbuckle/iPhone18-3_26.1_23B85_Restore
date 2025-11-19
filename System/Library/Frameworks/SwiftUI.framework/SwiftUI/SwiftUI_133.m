uint64_t ComponentGestureRecognizerSource.timeScheduler.getter()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    static OS_dispatch_queue.main.getter();
    UptimeTimeSource.init()();
    type metadata accessor for DispatchTimeScheduler();
    swift_allocObject();
    v1 = DispatchTimeScheduler.init(queue:timeSource:)();
    *(v2 + 16) = v1;
  }

  return v1;
}

id ComponentGestureRecognizerSource.componentGR.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    swift_getAssociatedTypeWitness();
    type metadata accessor for _UIComponentGestureRecognizer();
    v4 = _UIComponentGestureRecognizer.__allocating_init()();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t ComponentGestureRecognizerSource.updateComponentController()()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v54 = type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  v4 = type metadata accessor for Optional();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - v5;
  v6 = type metadata accessor for GestureRelation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for [GestureRelation](255, &lazy cache variable for type metadata for [GestureRelation], MEMORY[0x1E69A2888], MEMORY[0x1E69E62F8]);
  type metadata accessor for String?();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v12 = &v46 - v11;
  v59 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v46 - v16;
  v52 = v3;
  v60 = v2;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for GesturePhase();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  result = swift_weakLoadStrong();
  if (result)
  {
    v57 = result;
    v22 = ComponentGestureRecognizerSource.componentGR.getter();
    _UIComponentGestureRecognizer.managedNode.getter();
    v50 = v1;

    GestureNode.phase.getter();
    LOBYTE(v22) = GesturePhase.isIdle.getter();
    (*(v18 + 8))(v20, v17);
    if (v22)
    {
      AGGraphClearUpdate();
      closure #1 in ComponentGestureRecognizerSource.updateComponentController()(v12);
      AGGraphSetUpdate();
      v23 = *&v12[*(TupleTypeMetadata3 + 48)];
      v24 = &v12[*(TupleTypeMetadata3 + 64)];
      v26 = *v24;
      v25 = *(v24 + 1);
      v47 = v26;
      v48 = v25;
      v49 = v23;
      v28 = v58;
      v27 = v59;
      v29 = v60;
      (*(v59 + 32))(v58, v12, v60);
      v30 = v50;
      v31 = v50[3];
      type metadata accessor for GestureComponentController();
      (*(v27 + 16))(v51, v28, v29);
      v32 = v31;
      ComponentGestureRecognizerSource.timeScheduler.getter();
      GestureComponentController.__allocating_init(component:timeScheduler:)();
      _UIComponentGestureRecognizer.componentController.setter();

      v33 = v48;
      v34 = v30[3];
      if (v48)
      {
        v35 = v34;
        v36 = MEMORY[0x18D00C850](v47, v33);
      }

      else
      {
        v35 = v34;
        v36 = 0;
      }

      [v35 setName_];

      GestureNode.relations.getter();
      dispatch thunk of AnyGestureNode.removeRelations(_:)();

      v37 = *(v49 + 16);
      if (v37)
      {
        v40 = *(v7 + 16);
        v38 = v7 + 16;
        v39 = v40;
        v41 = v49 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
        v42 = *(v38 + 56);
        do
        {
          v39(v9, v41, v6);
          GestureNode.addRelation(_:)();
          (*(v38 - 8))(v9, v6);
          v41 += v42;
          --v37;
        }

        while (v37);
      }

      (*(v59 + 8))(v58, v60);
      v43 = v53;
      (*(*(v54 - 8) + 56))(v53, 1, 1);
      v44 = v50;
      v45 = *(*v50 + 120);
      swift_beginAccess();
      (*(v55 + 40))(&v44[v45], v43, v56);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in ComponentGestureRecognizerSource.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v27 = a1;
    v17 = *(*result + 120);
    swift_beginAccess();
    v18 = *(v9 + 16);
    v26 = v17;
    v18(v14, v16 + v17, v8);
    v19 = *(v7 - 8);
    v20 = a3;
    v21 = a4;
    v22 = (*(v19 + 48))(v14, 1, v7);
    (*(v9 + 8))(v14, v8);
    if (v22 == 1)
    {
      ComponentGestureRecognizerSource.RecognitionStream.init()(v20, v21, v11);
      (*(v19 + 56))(v11, 0, 1, v7);
      v23 = v26;
      swift_beginAccess();
      (*(v9 + 40))(v16 + v23, v11, v8);
      swift_endAccess();
    }

    swift_getAssociatedTypeWitness();
    type metadata accessor for GesturePhase();
    if (GesturePhase.isTerminal.getter())
    {
      (*(v19 + 56))(v11, 1, 1, v7);
      v24 = v26;
      swift_beginAccess();
      (*(v9 + 40))(v16 + v24, v11, v8);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t ComponentGestureRecognizerSource.isIdle.getter()
{
  swift_getAssociatedTypeWitness();
  v0 = type metadata accessor for GesturePhase();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  v4 = ComponentGestureRecognizerSource.componentGR.getter();
  _UIComponentGestureRecognizer.managedNode.getter();

  GestureNode.phase.getter();

  LOBYTE(v4) = GesturePhase.isIdle.getter();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t closure #1 in ComponentGestureRecognizerSource.updateComponentController()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GestureComponentAttachmentModifier();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  type metadata accessor for [GestureRelation](255, &lazy cache variable for type metadata for [GestureRelation], MEMORY[0x1E69A2888], MEMORY[0x1E69E62F8]);
  type metadata accessor for String?();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v21 = *(TupleTypeMetadata3 + 48);
  v13 = (a1 + *(TupleTypeMetadata3 + 64));
  GestureComponentResponder.modifier.getter();
  (*(*(*(v2 + 16) - 8) + 16))(a1, v11);
  v14 = *(v3 + 8);
  v14(v11, v2);
  GestureComponentResponder.modifier.getter();
  v15 = *&v8[*(v2 + 40)];

  v14(v8, v2);
  *(a1 + v21) = v15;
  GestureComponentResponder.modifier.getter();
  v16 = &v5[*(v2 + 36)];
  v18 = *v16;
  v17 = *(v16 + 1);

  result = (v14)(v5, v2);
  *v13 = v18;
  v13[1] = v17;
  return result;
}

id ComponentGestureRecognizerSource.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIGestureRecognizer) == a1)
  {
    result = ComponentGestureRecognizerSource.componentGR.getter();
    v9 = result;
    v7 = *(a2 - 8);
    if (*(v7 + 64) == 8)
    {
      v8 = result;
      (*(v7 + 16))(a3, &v9, a2);

      return (*(v7 + 56))(a3, 0, 1, a2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v5 = *(*(a2 - 8) + 56);

    return v5(a3, 1, 1, a2);
  }

  return result;
}

id *ComponentGestureRecognizerSource.deinit()
{

  swift_weakDestroy();
  v1 = *(*v0 + 15);
  type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ComponentGestureRecognizerSource.__deallocating_deinit()
{
  ComponentGestureRecognizerSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for ComponentGestureRecognizerSource.RecognitionStream()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  result = type metadata accessor for AsyncThrowingStream();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AsyncThrowingStream.Continuation();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for ComponentGestureRecognizerSource.RecognitionStream(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Error();
    v7 = type metadata accessor for AsyncThrowingStream();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 36);
    v9 = type metadata accessor for AsyncThrowingStream.Continuation();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    *&a1[*(a3 + 40)] = *&a2[*(a3 + 40)];
  }

  return a1;
}

uint64_t destroy for ComponentGestureRecognizerSource.RecognitionStream(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v4 = type metadata accessor for AsyncThrowingStream();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 36);
  v6 = type metadata accessor for AsyncThrowingStream.Continuation();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
}

uint64_t initializeWithCopy for ComponentGestureRecognizerSource.RecognitionStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v6 = type metadata accessor for AsyncThrowingStream();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for AsyncThrowingStream.Continuation();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 40)) = *(a2 + *(a3 + 40));

  return a1;
}

uint64_t assignWithCopy for ComponentGestureRecognizerSource.RecognitionStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v6 = type metadata accessor for AsyncThrowingStream();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for AsyncThrowingStream.Continuation();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 40)) = *(a2 + *(a3 + 40));

  return a1;
}

uint64_t initializeWithTake for ComponentGestureRecognizerSource.RecognitionStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v6 = type metadata accessor for AsyncThrowingStream();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for AsyncThrowingStream.Continuation();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 40)) = *(a2 + *(a3 + 40));
  return a1;
}

uint64_t assignWithTake for ComponentGestureRecognizerSource.RecognitionStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v6 = type metadata accessor for AsyncThrowingStream();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 36);
  v8 = type metadata accessor for AsyncThrowingStream.Continuation();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 40)) = *(a2 + *(a3 + 40));

  return a1;
}

void *specialized ComponentGestureRecognizerSource.init(_:)()
{
  v1 = v0;
  v2 = *v0;
  v0[2] = 0;
  v0[3] = 0;
  swift_weakInit();
  v3 = *(*v0 + 120);
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = type metadata accessor for ComponentGestureRecognizerSource.RecognitionStream();
  (*(*(v6 - 8) + 56))(v0 + v3, 1, 1, v6);
  swift_weakAssign();
  ComponentGestureRecognizerSource.updateComponentController()();
  v7 = ComponentGestureRecognizerSource.componentGR.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v5;
  v9[4] = v8;

  _UIComponentGestureRecognizer.phaseListener.setter();

  return v1;
}

void type metadata accessor for [GestureRelation](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

SwiftUI::ClarityUIApplicationSceneClientSetting_optional __swiftcall ClarityUIApplicationSceneClientSetting.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 64;
  if ((rawValue - 312000) >= 3)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type ClarityUIApplicationSceneClientSetting and conformance ClarityUIApplicationSceneClientSetting()
{
  result = lazy protocol witness table cache variable for type ClarityUIApplicationSceneClientSetting and conformance ClarityUIApplicationSceneClientSetting;
  if (!lazy protocol witness table cache variable for type ClarityUIApplicationSceneClientSetting and conformance ClarityUIApplicationSceneClientSetting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClarityUIApplicationSceneClientSetting and conformance ClarityUIApplicationSceneClientSetting);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClarityUIApplicationSceneClientSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1 + 312000);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClarityUIApplicationSceneClientSetting()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1 + 312000);
  return Hasher._finalize()();
}

uint64_t static ClarityUIApplicationSceneClientSettingsProtocol.navigationTitles(otherSettings:)(void *a1)
{
  if ([a1 objectForSetting_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  v1 = MEMORY[0x1E69E7CA0];
  if (*(&v9 + 1))
  {
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for [Data], MEMORY[0x1E6969080], MEMORY[0x1E69E62F8]);
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    outlined destroy of Any?(v10);
  }

  _sypSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, v1 + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD63400;
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v10[0] = 0xD00000000000002FLL;
  *(&v10[0] + 1) = 0x800000018CD51E70;
  v4 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v4);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  v6 = v10[0];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = v6;
  print(_:separator:terminator:)();

  return MEMORY[0x1E69E7CC0];
}

uint64_t static ClarityUIApplicationSceneClientSettingsProtocol.chromeVisible(otherSettings:)(void *a1)
{
  if ([a1 objectForSetting_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  v1 = MEMORY[0x1E69E7CA0];
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
    outlined destroy of Any?(v10);
  }

  _sypSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, v1 + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD63400;
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  *&v10[0] = 0xD00000000000002ALL;
  *(&v10[0] + 1) = 0x800000018CD51E40;
  v4 = StaticString.description.getter();
  MEMORY[0x18D00C9B0](v4);

  MEMORY[0x18D00C9B0](58, 0xE100000000000000);
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD400F0);
  v6 = v10[0];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 32) = v6;
  print(_:separator:terminator:)();

  return 1;
}

uint64_t static ClarityUIApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress(otherSettings:)(void *a1)
{
  if ([a1 objectForSetting_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v3[0] = v4;
  v3[1] = v5;
  if (*(&v5 + 1))
  {
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
    outlined destroy of Any?(v3);
    return 0;
  }
}

void (*ClarityUIMutableApplicationSceneClientSettings.navigationTitles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 otherSettings];
  v4 = static ClarityUIApplicationSceneClientSettingsProtocol.navigationTitles(otherSettings:)(v3);

  *a1 = v4;
  return ClarityUIMutableApplicationSceneClientSettings.navigationTitles.modify;
}

void ClarityUIMutableApplicationSceneClientSettings.navigationTitles.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    v4 = [v2 otherSettings];
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setObject:v3.super.isa forSetting:312000];
  }

  else
  {
    v4 = [*(a1 + 8) otherSettings];
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setObject:v3.super.isa forSetting:312000];
  }
}

void (*ClarityUIMutableApplicationSceneClientSettings.chromeVisible.modify(uint64_t a1))(id *a1)
{
  *a1 = v1;
  v3 = [v1 otherSettings];
  v4 = static ClarityUIApplicationSceneClientSettingsProtocol.chromeVisible(otherSettings:)(v3);

  *(a1 + 8) = v4 & 1;
  return ClarityUIMutableApplicationSceneClientSettings.chromeVisible.modify;
}

void ClarityUIMutableApplicationSceneClientSettings.chromeVisible.modify(id *a1)
{
  v2 = [*a1 otherSettings];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v2 setObject:isa forSetting:312001];
}

void (*ClarityUIMutableApplicationSceneClientSettings.bottomBarTransitionProgress.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 otherSettings];
  v4 = static ClarityUIApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress(otherSettings:)(v3);
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6 & 1;
  return ClarityUIMutableApplicationSceneClientSettings.bottomBarTransitionProgress.modify;
}

void ClarityUIMutableApplicationSceneClientSettings.bottomBarTransitionProgress.modify(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = [*(a1 + 16) otherSettings];
  if (v1)
  {
    isa = 0;
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  [v3 setObject:isa forSetting:312002];
  swift_unknownObjectRelease();
}

id ClarityUIApplicationSceneClientSettings.keyDescription(forSetting:)(uint64_t a1, uint64_t (*a2)(void))
{
  if ((a1 - 312000) > 2)
  {
    v7.receiver = v2;
    v7.super_class = a2();
    result = objc_msgSendSuper2(&v7, sel_keyDescriptionForSetting_, a1);
    if (result)
    {
      v5 = result;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v6;
    }
  }

  else
  {
    v8 = a1 + 64;
    return String.init<A>(describing:)();
  }

  return result;
}

id @objc ClarityUIApplicationSceneClientSettings.keyDescription(forSetting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a1;
  v7 = ClarityUIApplicationSceneClientSettings.keyDescription(forSetting:)(a3, a4);
  v9 = v8;

  if (v9)
  {
    v10 = MEMORY[0x18D00C850](v7, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ClarityUIApplicationSceneClientSettings.valueDescription(for:object:ofSetting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if ((a3 - 312000) > 2)
  {
    v9 = outlined init with copy of Any?(a2, v21);
    v10 = v22;
    if (v22)
    {
      v11 = __swift_project_boxed_opaque_existential_1(v21, v22);
      v12 = *(v10 - 8);
      v13 = MEMORY[0x1EEE9AC00](v11);
      v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v15, v13);
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v12 + 8))(v15, v10);
      v9 = __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v16 = 0;
    }

    v17 = a4(v9);
    v20.receiver = v4;
    v20.super_class = v17;
    v18 = objc_msgSendSuper2(&v20, sel_valueDescriptionForFlag_object_ofSetting_, a1, v16, a3);
    swift_unknownObjectRelease();
    if (v18)
    {
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v19;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined init with copy of Any?(a2, v21);
    _sypSgMaTm_5(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return String.init<A>(describing:)();
  }
}

id @objc ClarityUIApplicationSceneClientSettings.valueDescription(for:object:ofSetting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (a4)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    v11 = a1;
  }

  v12 = ClarityUIApplicationSceneClientSettings.valueDescription(for:object:ofSetting:)(a3, v17, a5, a6);
  v14 = v13;

  outlined destroy of Any?(v17);
  if (v14)
  {
    v15 = MEMORY[0x18D00C850](v12, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id @objc ClarityUIApplicationSceneClientSettings.mutableCopy(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = objc_allocWithZone(a4());

  return [v5 initWithSettings_];
}

id @objc ClarityUIApplicationSceneClientSettings.init(settings:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6.receiver = a1;
  v6.super_class = a4();
  return objc_msgSendSuper2(&v6, sel_initWithSettings_, a3);
}

id @objc ClarityUIApplicationSceneClientSettings.init()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ClarityUIApplicationSceneClientSettings.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.navigationTitles.setter in conformance ClarityUIMutableApplicationSceneClientSettings()
{
  v1 = [v0 otherSettings];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setObject:isa forSetting:312000];
}

uint64_t (*protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.navigationTitles.modify in conformance ClarityUIMutableApplicationSceneClientSettings(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = ClarityUIMutableApplicationSceneClientSettings.navigationTitles.modify(v2);
  return protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.navigationTitles.modify in conformance ClarityUIMutableApplicationSceneClientSettings;
}

void protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.chromeVisible.setter in conformance ClarityUIMutableApplicationSceneClientSettings()
{
  v1 = [v0 otherSettings];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  [v1 setObject:isa forSetting:312001];
}

uint64_t (*protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.chromeVisible.modify in conformance ClarityUIMutableApplicationSceneClientSettings(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ClarityUIMutableApplicationSceneClientSettings.chromeVisible.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress.setter in conformance ClarityUIMutableApplicationSceneClientSettings(uint64_t a1, char a2)
{
  v4 = [v2 otherSettings];
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  }

  [v4 setObject:isa forSetting:312002];

  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress.modify in conformance ClarityUIMutableApplicationSceneClientSettings(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = ClarityUIMutableApplicationSceneClientSettings.bottomBarTransitionProgress.modify(v2);
  return protocol witness for ClarityUIMutableApplicationSceneClientSettingsProtocol.navigationTitles.modify in conformance ClarityUIMutableApplicationSceneClientSettings;
}

uint64_t protocol witness for ClarityUIApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress.getter in conformance ClarityUIApplicationSceneClientSettings()
{
  v1 = [v0 otherSettings];
  v2 = static ClarityUIApplicationSceneClientSettingsProtocol.bottomBarTransitionProgress(otherSettings:)(v1);

  return v2;
}

unint64_t lazy protocol witness table accessor for type SearchAdjustment and conformance SearchAdjustment()
{
  result = lazy protocol witness table cache variable for type SearchAdjustment and conformance SearchAdjustment;
  if (!lazy protocol witness table cache variable for type SearchAdjustment and conformance SearchAdjustment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchAdjustment and conformance SearchAdjustment);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationSearchAdjustmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance NavigationSearchAdjustmentModifier(uint64_t a1, uint64_t a2)
{
  v3 = *AGGraphGetValue();

  return specialized static NavigationSearchAdjustmentModifier.updateEnvironment(searchAdjustment:environment:)(v3, a2);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationSearchAdjustmentModifier()
{
  lazy protocol witness table accessor for type NavigationSearchAdjustmentModifier and conformance NavigationSearchAdjustmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationSearchDisabledAdjustmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance NavigationSearchAdjustmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationSearchDisabledAdjustmentModifier()
{
  lazy protocol witness table accessor for type NavigationSearchDisabledAdjustmentModifier and conformance NavigationSearchDisabledAdjustmentModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

unint64_t getter of isSearchImplemented #1 in static IsSearchImplementedModifier._makeView(modifier:inputs:body:)(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    return *(a1 + 16);
  }

  if (one-time initialization token for searchFieldPlacement != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for presentationKind != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  swift_beginAccess();
  result = a2 | (v4 << 32);
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 28) = 0;
  return result;
}

uint64_t implicit closure #1 in static IsSearchImplementedModifier._makeView(modifier:inputs:body:)(uint64_t a1, unsigned int a2)
{
  getter of isSearchImplemented #1 in static IsSearchImplementedModifier._makeView(modifier:inputs:body:)(a1, a2);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type IsSearchImplementedModifier.IsSearchImplemented and conformance IsSearchImplementedModifier.IsSearchImplemented();
  return Attribute.init<A>(body:value:flags:update:)();
}

_BYTE *(*IsSearchImplementedModifier.IsSearchImplemented.value.getter())(_BYTE *result)
{
  v0 = *AGGraphGetValue();
  Value = AGGraphGetValue();
  if (v0)
  {
    static Semantics.v6.getter();
    v2 = isLinkedOnOrAfter(_:)();
  }

  else
  {
    v3 = *Value;
    AGGraphGetValue();
    v2 = (v3 & 0xFE) != 6;
  }

  *(swift_allocObject() + 16) = v2 & 1;
  return _s7SwiftUI27IsSearchImplementedModifier33_B12688D62B96A847C61E3B59FA9667D2LLV0cdE0V5valueyySbzcvgySbzcfU_TA_0;
}

uint64_t protocol witness for Rule.value.getter in conformance IsSearchImplementedModifier.IsSearchImplemented@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = IsSearchImplementedModifier.IsSearchImplemented.value.getter();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a1[1] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IsSearchImplementedModifier.IsSearchImplemented and conformance IsSearchImplementedModifier.IsSearchImplemented()
{
  result = lazy protocol witness table cache variable for type IsSearchImplementedModifier.IsSearchImplemented and conformance IsSearchImplementedModifier.IsSearchImplemented;
  if (!lazy protocol witness table cache variable for type IsSearchImplementedModifier.IsSearchImplemented and conformance IsSearchImplementedModifier.IsSearchImplemented)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchImplementedModifier.IsSearchImplemented and conformance IsSearchImplementedModifier.IsSearchImplemented);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSearchAdjustmentModifier and conformance NavigationSearchAdjustmentModifier()
{
  result = lazy protocol witness table cache variable for type NavigationSearchAdjustmentModifier and conformance NavigationSearchAdjustmentModifier;
  if (!lazy protocol witness table cache variable for type NavigationSearchAdjustmentModifier and conformance NavigationSearchAdjustmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSearchAdjustmentModifier and conformance NavigationSearchAdjustmentModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchImplementation and conformance SearchImplementation()
{
  result = lazy protocol witness table cache variable for type SearchImplementation and conformance SearchImplementation;
  if (!lazy protocol witness table cache variable for type SearchImplementation and conformance SearchImplementation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchImplementation and conformance SearchImplementation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSearchDisabledAdjustmentModifier and conformance NavigationSearchDisabledAdjustmentModifier()
{
  result = lazy protocol witness table cache variable for type NavigationSearchDisabledAdjustmentModifier and conformance NavigationSearchDisabledAdjustmentModifier;
  if (!lazy protocol witness table cache variable for type NavigationSearchDisabledAdjustmentModifier and conformance NavigationSearchDisabledAdjustmentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSearchDisabledAdjustmentModifier and conformance NavigationSearchDisabledAdjustmentModifier);
  }

  return result;
}

uint64_t TooltipBridge.responder(at:)()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      type metadata accessor for ViewResponder();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        MEMORY[0x1EEE9AC00](v6);
        type metadata accessor for ViewResponder?();
        static Update.ensure<A>(_:)();
        if (v7)
        {
          type metadata accessor for TooltipResponder();
          ResponderNode.firstAncestor<A>(ofType:)();

          return v7;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t specialized TooltipBridge.toolTipInteraction(_:configurationAt:)(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtC7SwiftUI13TooltipBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v7 + 16) + 8));
    if (v9)
    {
      v10 = v9;
      [v9 convertPoint:0 toView:{a1, a2}];
      if (TooltipBridge.responder(at:)())
      {
        type metadata accessor for String?();
        static Update.dispatchImmediately<A>(reason:_:)();
        if (v21)
        {
          [v10 convertRect:0 fromView:TooltipResponder.globalFrame.getter()];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = MEMORY[0x18D00C850]();

          v20 = [objc_opt_self() configurationWithToolTip:v19 inRect:{v12, v14, v16, v18}];
          swift_unknownObjectRelease();

          return v20;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t partial apply for closure #1 in TooltipBridge.responder(at:)@<X0>(uint64_t *a1@<X8>)
{
  result = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();
  *a1 = result;
  return result;
}

void type metadata accessor for ViewResponder?()
{
  if (!lazy cache variable for type metadata for ViewResponder?)
  {
    type metadata accessor for ViewResponder();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewResponder?);
    }
  }
}

double protocol witness for static View._makeView(view:inputs:) in conformance TimelineProgressView<A>.ArchivableTimelineProgressView@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  swift_getWitnessTable();

  return static _ArchivableView._makeView(view:inputs:)(a1, a2, a3);
}

uint64_t ArchivableDisplayList.updateValue()(uint64_t a1)
{
  v2 = v1;
  v38 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  Value = AGGraphGetValue();
  v12 = v11;
  v25 = v4;
  v13 = *(v4 + 16);
  v13(v9, Value, v3);
  DisplayList.Version.init(forUpdate:)();
  v14 = v34;
  if (v12)
  {
    if (v34)
    {
      v15 = (2 * ((33 * (v34 >> 16)) ^ v34)) | 1;
    }

    else
    {
      LOWORD(v15) = 0;
    }

    *(v2 + 10) = v15;
  }

  v24 = v14;
  v16 = swift_allocObject();
  v13(v6, v9, v3);
  *(v16 + 40) = type metadata accessor for ArchivableFactory();
  *(v16 + 48) = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 16));
  v18 = v25;
  (*(v25 + 32))(boxed_opaque_existential_1, v6, v3);
  v19 = *(v2 + 10);
  type metadata accessor for CGPoint(0);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v30 = v16 | 0xD000000000000000;
  *(&v30 + 1) = v19;
  v31 = 0uLL;
  outlined copy of DisplayList.Content.Value(v16 | 0xD000000000000000);
  v20 = AGGraphGetValue();
  v21 = v20[1];
  v34 = *v20;
  v35 = v21;
  MEMORY[0x18D00B390]();
  v26 = *v2;
  v27 = v24;
  DisplayList.Item.init(_:frame:identity:version:)();
  v33[0] = v37[0];
  *(v33 + 12) = *(v37 + 12);
  v31 = v35;
  v32 = v36;
  v30 = v34;
  outlined init with copy of DisplayList.Item(&v34, &v27);
  DisplayList.init(_:)();
  *&v30 = v27;
  WORD4(v30) = v28;
  HIDWORD(v30) = v29;
  AGGraphSetOutputValue();
  outlined destroy of DisplayList.Item(&v34);
  outlined consume of DisplayList.Content.Value(v16 | 0xD000000000000000);
  (*(v18 + 8))(v9, v3);
}

uint64_t ArchivableLayoutComputer.updateValue()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArchivableLayoutComputer.Engine();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  Value = AGGraphGetValue();
  (*(v2 + 16))(v4, Value, v1);
  default argument 0 of ViewSizeCache.init(cache:)();
  ViewSizeCache.init(cache:)();
  (*(v2 + 32))(v8, v4, v1);
  v10 = &v8[*(v5 + 36)];
  v11 = v17[9];
  *(v10 + 8) = v17[8];
  *(v10 + 9) = v11;
  v10[160] = v18;
  v12 = v17[5];
  *(v10 + 4) = v17[4];
  *(v10 + 5) = v12;
  v13 = v17[7];
  *(v10 + 6) = v17[6];
  *(v10 + 7) = v13;
  v14 = v17[1];
  *v10 = v17[0];
  *(v10 + 1) = v14;
  v15 = v17[3];
  *(v10 + 2) = v17[2];
  *(v10 + 3) = v15;
  swift_getWitnessTable();
  swift_getWitnessTable();
  StatefulRule<>.update<A>(to:)();
  return (*(v6 + 8))(v8, v5);
}

double ArchivableLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v14 + 8);
  v16 = v14[2];
  v17 = *(v14 + 24);
  v31 = *v14;
  v13 = v31;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  (*(v18 + 16))(v5, v2, a2, v10);
  (*(v8 + 32))(v12, v5, v7);
  v19 = *(a2 + 24);
  v24 = v7;
  v25 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  ViewSizeCache.get(_:makeValue:)();
  v21 = v20;
  (*(v8 + 8))(v12, v7);
  return v21;
}

uint64_t ArchivableFactory.encoding()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = _typeName(_:qualified:)();
  a2[1] = v5;
  a2[5] = a1;
  a2[6] = swift_getWitnessTable();
  a2[7] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  v7 = *(*(a1 - 8) + 16);

  return v7(boxed_opaque_existential_1, v2, a1);
}

{
  *a2 = _typeName(_:qualified:)();
  a2[1] = v5;
  a2[5] = a1;
  a2[6] = swift_getWitnessTable();
  a2[7] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  v7 = *(*(a1 - 8) + 16);

  return v7(boxed_opaque_existential_1, v2, a1);
}

uint64_t ArchivableFactory.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 2003134838 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

{
  v4 = a1 == 0x7265696669646F6DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ArchivableFactory.encode(to:)(void *a1, uint64_t a2)
{
  v8 = *(a2 + 16);
  type metadata accessor for ArchivableFactory.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

{
  v3 = v2;
  v5 = *(a2 + 16);
  v16 = *(a2 + 32);
  v17 = v5;
  v15 = a2;
  v19 = v5;
  v20 = v16;
  type metadata accessor for ArchivableFactory.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  v10 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v12 = v7;
  v13 = v15;
  LODWORD(v19) = *(v3 + *(v15 + 52));
  v21 = 1;
  lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19 = *(v3 + *(v13 + 56));
  v21 = 2;
  type metadata accessor for CGSize(0);
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v12 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableFactory<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ArchivableFactory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

{
  result = ArchivableFactory.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ArchivableFactory<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key();
  *a1 = result & 1;
  return result;
}

{
  result = protocol witness for AnyGestureResponder.mask.getter in conformance EntityGestureResponder();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableFactory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableFactory<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ArchivableFactory<A>(void *a1, uint64_t a2)
{
  return ArchivableFactory.encode(to:)(a1, a2);
}

{
  return ArchivableFactory.encode(to:)(a1, a2);
}

__n128 __swift_memcpy22_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArchivableDisplayList(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 22))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArchivableDisplayList(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 22) = v3;
  return result;
}

uint64_t type metadata completion function for ArchivableLayoutComputer.Engine()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ArchivableLayoutComputer.Engine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = *(v11 + 16);
    v12 = *(v11 + 32);
    *v10 = *v11;
    *(v10 + 16) = v13;
    *(v10 + 32) = v12;
    v14 = *(v11 + 96);
    v16 = *(v11 + 48);
    v15 = *(v11 + 64);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 96) = v14;
    *(v10 + 48) = v16;
    *(v10 + 64) = v15;
    v18 = *(v11 + 128);
    v17 = *(v11 + 144);
    v19 = *(v11 + 112);
    *(v10 + 160) = *(v11 + 160);
    *(v10 + 128) = v18;
    *(v10 + 144) = v17;
    *(v10 + 112) = v19;
  }

  return v3;
}

uint64_t initializeWithCopy for ArchivableLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

uint64_t assignWithCopy for ArchivableLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  v12 = *(v8 + 56);
  v13 = *(v8 + 72);
  v14 = *(v8 + 88);
  *(v7 + 104) = *(v8 + 104);
  *(v7 + 88) = v14;
  *(v7 + 72) = v13;
  *(v7 + 56) = v12;
  v15 = *(v8 + 160);
  v17 = *(v8 + 128);
  v16 = *(v8 + 144);
  *(v7 + 112) = *(v8 + 112);
  *(v7 + 128) = v17;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  return a1;
}

uint64_t initializeWithTake for ArchivableLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

uint64_t assignWithTake for ArchivableLayoutComputer.Engine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  v11 = *v8;
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *v7 = v11;
  v12 = *(v8 + 56);
  v13 = *(v8 + 72);
  v14 = *(v8 + 88);
  *(v7 + 104) = *(v8 + 104);
  *(v7 + 88) = v14;
  *(v7 + 72) = v13;
  *(v7 + 56) = v12;
  v15 = *(v8 + 160);
  v17 = *(v8 + 128);
  v16 = *(v8 + 144);
  *(v7 + 112) = *(v8 + 112);
  *(v7 + 128) = v17;
  *(v7 + 144) = v16;
  *(v7 + 160) = v15;
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableLayoutComputer.Engine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 161;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xF8) - 95));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for ArchivableLayoutComputer.Engine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t base witness table accessor for Equatable in ArchivableFactory<A>.CodingKeys()
{
  return swift_getWitnessTable();
}

{
  return swift_getWitnessTable();
}

uint64_t partial apply for closure #1 in ArchivableLayoutComputer.Engine.sizeThatFits(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v6;
  return (*(v2 + 32))(&v7, v1);
}

id specialized UIViewSnapshotResponder.portalTargetedPreview<A>(kind:id:host:parameters:options:)(uint64_t a1, __int32 a2, id a3, uint64_t a4, char a5)
{
  v6 = v5;
  result = [a3 window];
  if (result)
  {

    if (!AGSubgraphIsValid())
    {
      return 0;
    }

    type metadata accessor for _SemanticFeature<Semantics_v5>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      v89.i8[0] = 17;
      static Update.dispatchImmediately<A>(reason:_:)();
      if (v78.u8[0] == 1)
      {
        v78.i32[0] = a2;
        v13 = UIView.findPortal(kind:id:excludingGroups:)(a1, &v78, (a5 & 4) != 0);
        if (v13)
        {
          v15 = v14;
          v16 = v13;
          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v17 = *(v5 + 136);
          v80 = *(v5 + 120);
          v81 = v17;
          v82 = *(v5 + 152);
          v83 = *(v5 + 168);
          v18 = *(v5 + 104);
          v78 = *(v5 + 88);
          v79 = v18;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          Value = AGGraphGetValue();
          v20 = *Value;
          v21 = Value[1];
          AGGraphSetUpdate();
          v22 = v20 - *(v5 + 240);
          v23 = v21 - *(v5 + 248);
          UIViewSnapshotResponder.contentPath.getter(v84);
          v24 = v85;
          if (v85 == 255)
          {
            v31 = 0uLL;
            v28 = 0.0;
            v30 = 0.0;
          }

          else
          {
            v86 = v84[0];
            v87 = v84[1];
            v88 = v85;
            Path.boundingRect.getter();
            v76 = v25;
            v77 = v26;
            v28 = v27;
            v30 = v29;
            outlined destroy of AnyAccessibilityValue?(v84, &lazy cache variable for type metadata for Path?);
            v31.i64[0] = v76;
            v31.i64[1] = v77;
          }

          v78 = v31;
          *&v79 = v28;
          *(&v79 + 1) = v30;
          LOBYTE(v80) = v24 == 255;
          v58 = v16;
          [v58 convertPoint:a3 toCoordinateSpace:{0.0, 0.0}];
          v60 = v59;
          v62 = v61;
          v63.f64[0] = v22;
          v64 = closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(a5, &v78, v5, v63, v23);
          v66 = v65;

          if (v15)
          {
            v67 = v60 - v64;
          }

          else
          {
            v67 = v64 - v60;
          }

          if (v15)
          {
            v68 = v62 - v66;
          }

          else
          {
            v68 = v66 - v62;
          }

          if ((a5 & 2) != 0 || v24 == 255)
          {
            [v58 bounds];
            v28 = v69;
            v30 = v70;
          }

          v93.origin.x = v67;
          v93.origin.y = v68;
          v93.size.width = v28;
          v93.size.height = v30;
          v94 = CGRectOffset(v93, v22, v23);
          v89.i64[0] = *&v94.origin.x;
          v89.i64[1] = *&v94.origin.y;
          *&v90 = v94.size.width;
          *(&v90 + 1) = *&v94.size.height;
          v91 = 0;
          v71 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v89, a3, a5, 0);
          v73 = v72;
          v55 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v72 center:{v71, v74}];

          static Update.end()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedDragPreview);
          v75 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v56 = v58;
          v57 = [v75 initWithView:v56 parameters:a4 target:v55];

          goto LABEL_27;
        }
      }
    }

    if ((a5 & 8) == 0)
    {
      return 0;
    }

    MEMORY[0x18D00ABE0]();
    AGGraphClearUpdate();
    v32 = *(v5 + 136);
    v80 = *(v5 + 120);
    v81 = v32;
    v82 = *(v5 + 152);
    v83 = *(v5 + 168);
    v33 = *(v5 + 104);
    v78 = *(v5 + 88);
    v79 = v33;
    _ViewInputs.position.getter();
    type metadata accessor for CGPoint(0);
    v34 = AGGraphGetValue();
    v35 = *v34;
    v36 = v34[1];
    AGGraphSetUpdate();
    v37 = v35 - *(v5 + 240);
    v38 = v36 - *(v5 + 248);
    UIViewSnapshotResponder.contentPath.getter(&v86);
    if (v88 == 255)
    {
      v42 = 0;
      v40 = 0;
    }

    else
    {
      v89 = v86;
      v90 = v87;
      v91 = v88;
      Path.boundingRect.getter();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      outlined destroy of AnyAccessibilityValue?(&v86, &lazy cache variable for type metadata for Path?);
      if ((a5 & 2) == 0)
      {
        v47 = v44;
        v48 = v46;
LABEL_15:
        v49 = v40;
        v50 = v42;
        v92 = CGRectOffset(*(&v47 - 2), v37, v38);
        v78.i64[0] = *&v92.origin.x;
        v78.i64[1] = *&v92.origin.y;
        *&v79 = v92.size.width;
        *(&v79 + 1) = *&v92.size.height;
        LOBYTE(v80) = 0;
        v51 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v78, a3, a5, 0);
        v53 = v52;
        v55 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v52 center:{v51, v54}];

        static Update.end()();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedDragPreview);
        AGGraphClearUpdate();
        closure #1 in UIViewSnapshotResponder.snapshotView(host:)(v6, a3, v84);
        AGGraphSetUpdate();
        v56 = *&v84[0];
        v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithView:*&v84[0] parameters:a4 target:v55];
LABEL_27:

        return v57;
      }
    }

    v47 = *(v5 + 224);
    v48 = *(v5 + 232);
    goto LABEL_15;
  }

  return result;
}

{
  v6 = v5;
  result = [a3 window];
  if (result)
  {

    if (!AGSubgraphIsValid())
    {
      return 0;
    }

    type metadata accessor for _SemanticFeature<Semantics_v5>();
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      v89.i8[0] = 17;
      static Update.dispatchImmediately<A>(reason:_:)();
      if (v78.u8[0] == 1)
      {
        v78.i32[0] = a2;
        v13 = UIView.findPortal(kind:id:excludingGroups:)(a1, &v78, (a5 & 4) != 0);
        if (v13)
        {
          v15 = v14;
          v16 = v13;
          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v17 = *(v5 + 136);
          v80 = *(v5 + 120);
          v81 = v17;
          v82 = *(v5 + 152);
          v83 = *(v5 + 168);
          v18 = *(v5 + 104);
          v78 = *(v5 + 88);
          v79 = v18;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          Value = AGGraphGetValue();
          v20 = *Value;
          v21 = Value[1];
          AGGraphSetUpdate();
          v22 = v20 - *(v5 + 240);
          v23 = v21 - *(v5 + 248);
          UIViewSnapshotResponder.contentPath.getter(v84);
          v24 = v85;
          if (v85 == 255)
          {
            v31 = 0uLL;
            v28 = 0.0;
            v30 = 0.0;
          }

          else
          {
            v86 = v84[0];
            v87 = v84[1];
            v88 = v85;
            Path.boundingRect.getter();
            v76 = v25;
            v77 = v26;
            v28 = v27;
            v30 = v29;
            outlined destroy of AnyAccessibilityValue?(v84, &lazy cache variable for type metadata for Path?);
            v31.i64[0] = v76;
            v31.i64[1] = v77;
          }

          v78 = v31;
          *&v79 = v28;
          *(&v79 + 1) = v30;
          LOBYTE(v80) = v24 == 255;
          v58 = v16;
          [v58 convertPoint:a3 toCoordinateSpace:{0.0, 0.0}];
          v60 = v59;
          v62 = v61;
          v63.f64[0] = v22;
          v64 = closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(a5, &v78, v5, v63, v23);
          v66 = v65;

          if (v15)
          {
            v67 = v60 - v64;
          }

          else
          {
            v67 = v64 - v60;
          }

          if (v15)
          {
            v68 = v62 - v66;
          }

          else
          {
            v68 = v66 - v62;
          }

          if ((a5 & 2) != 0 || v24 == 255)
          {
            [v58 bounds];
            v28 = v69;
            v30 = v70;
          }

          v93.origin.x = v67;
          v93.origin.y = v68;
          v93.size.width = v28;
          v93.size.height = v30;
          v94 = CGRectOffset(v93, v22, v23);
          v89.i64[0] = *&v94.origin.x;
          v89.i64[1] = *&v94.origin.y;
          *&v90 = v94.size.width;
          *(&v90 + 1) = *&v94.size.height;
          v91 = 0;
          v71 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v89, a3, a5, 0);
          v73 = v72;
          v55 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v72 center:{v71, v74}];

          static Update.end()();
          v75 = objc_allocWithZone(MEMORY[0x1E69DD070]);
          v56 = v58;
          v57 = [v75 initWithView:v56 parameters:a4 target:v55];

          goto LABEL_27;
        }
      }
    }

    if ((a5 & 8) == 0)
    {
      return 0;
    }

    MEMORY[0x18D00ABE0]();
    AGGraphClearUpdate();
    v32 = *(v5 + 136);
    v80 = *(v5 + 120);
    v81 = v32;
    v82 = *(v5 + 152);
    v83 = *(v5 + 168);
    v33 = *(v5 + 104);
    v78 = *(v5 + 88);
    v79 = v33;
    _ViewInputs.position.getter();
    type metadata accessor for CGPoint(0);
    v34 = AGGraphGetValue();
    v35 = *v34;
    v36 = v34[1];
    AGGraphSetUpdate();
    v37 = v35 - *(v5 + 240);
    v38 = v36 - *(v5 + 248);
    UIViewSnapshotResponder.contentPath.getter(&v86);
    if (v88 == 255)
    {
      v42 = 0;
      v40 = 0;
    }

    else
    {
      v89 = v86;
      v90 = v87;
      v91 = v88;
      Path.boundingRect.getter();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      outlined destroy of AnyAccessibilityValue?(&v86, &lazy cache variable for type metadata for Path?);
      if ((a5 & 2) == 0)
      {
        v47 = v44;
        v48 = v46;
LABEL_15:
        v49 = v40;
        v50 = v42;
        v92 = CGRectOffset(*(&v47 - 2), v37, v38);
        v78.i64[0] = *&v92.origin.x;
        v78.i64[1] = *&v92.origin.y;
        *&v79 = v92.size.width;
        *(&v79 + 1) = *&v92.size.height;
        LOBYTE(v80) = 0;
        v51 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v78, a3, a5, 0);
        v53 = v52;
        v55 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v52 center:{v51, v54}];

        static Update.end()();
        AGGraphClearUpdate();
        closure #1 in UIViewSnapshotResponder.snapshotView(host:)(v6, a3, v84);
        AGGraphSetUpdate();
        v56 = *&v84[0];
        v57 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView:*&v84[0] parameters:a4 target:v55];
LABEL_27:

        return v57;
      }
    }

    v47 = *(v5 + 224);
    v48 = *(v5 + 232);
    goto LABEL_15;
  }

  return result;
}

UIContextMenuConfiguration_optional __swiftcall ContextMenuBridge.outermostConfiguration()()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 24))(ObjectType, v4);
    v7 = swift_unknownObjectRelease();
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v7);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    Strong = 0;
  }

  else
  {
    __break(1u);
  }

  result.value.super.isa = Strong;
  result.is_nil = v3;
  return result;
}

id UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
  v16 = &block_descriptor_51;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v16 = &block_descriptor_48;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a4);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

Swift::Void __swiftcall ContextMenuIdentity.stopTrackingUpdates()()
{
  swift_beginAccess();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
  }

  else
  {
    AGGraphGetFlags();

    AGGraphSetFlags();
  }

  swift_endAccess();
}

id ContextMenuBridge.menuConfigurationFromResponder(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for PlatformItemList?);
  static Update.ensure<A>(_:)();
  if (v18)
  {
    v4 = v18;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  if (*(v4 + 16))
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
    v5 = type metadata accessor for ContextMenuIdentity();
    v6 = objc_allocWithZone(v5);
    v7 = OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_sourceIndexPath;
    v8 = type metadata accessor for IndexPath();
    (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
    *&v6[OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base] = a1;
    v17.receiver = v6;
    v17.super_class = v5;

    v9 = objc_msgSendSuper2(&v17, sel_init);
    v11 = (*(*a1 + class metadata base offset for ContextMenuResponder + 16))(v9, v10);
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    v15 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(v9, v11, v13, partial apply for closure #1 in ContextMenuBridge.menuConfigurationFromResponder(_:), v14);
    [v15 setPreferredMenuElementOrder_];
  }

  else
  {

    return 0;
  }

  return v15;
}

uint64_t closure #1 in ContextMenuBridge.outermostContextMenuResponder.getter@<X0>(uint64_t *a1@<X1>, char *a2@<X8>)
{
  type metadata accessor for ContextMenuResponder(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    *a1 = result;

    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void closure #1 in ContextMenuBridge.menuConfigurationFromResponder(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v6 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = MEMORY[0x1E69E7CC8];
  v5[8] = 0;
  *(v5 + 2) = v8;
  *(v5 + 3) = v7;
  *(v5 + 4) = v6;
  *(v5 + 5) = v8;
  v5[48] = 0;
  _s10Foundation9IndexPathVSgMaTm_3(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v9 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v9, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of MenuVisitor.MenuStackGroup(v12, v11 + v10);
  *(v5 + 7) = v11;
  v13 = *(v3 + 32);
  v14 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  *v5 = 0;
  MenuVisitor.visit(_:uniqueNames:)(a2, &v20);

  v15 = *(v5 + 4);

  outlined destroy of MenuVisitor(v5);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v17, v16, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, v15, v18);
}

uint64_t closure #1 in closure #1 in ContextMenuBridge.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?);
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  v5 = *(Value + 16);
  *(a1 + 16) = v5;

  return outlined copy of ContextMenuPreviewAction?(v4, v3, v5);
}

uint64_t ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  if (a3)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = partial apply for closure #1 in ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:);
    *(v7 + 24) = v6;
    v15[4] = partial apply for closure #2 in ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:);
    v15[5] = v7;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = thunk for @escaping @callee_guaranteed () -> ();
    v15[3] = &block_descriptor_20_0;
    v8 = _Block_copy(v15);
    v9 = a2;
    v10 = a1;
    swift_unknownObjectRetain();

    [a3 addCompletion_];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v15[0]) = 17;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #1 in ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:);
    *(v11 + 24) = v6;
    v12 = a2;
    v13 = a1;

    static Update.enqueueAction(reason:_:)();
  }

  ContextMenuBridge.setupNotifications()();
}

uint64_t closure #1 in ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  type metadata accessor for ContextMenuIdentity();
  v4 = *(*(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base) + 296);
  swift_beginAccess();

  MenuChangeDetectorHelper.startTrackingUpdatesIfNeeded(menuInteration:itemListAttr:)(a2, v4);
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t closure #2 in ContextMenuBridge.contextMenuInteraction(_:willDisplayMenuFor:animator:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  static Update.enqueueAction(reason:_:)();
}

uint64_t ContextMenuBridge.setupNotifications()()
{
  v1 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  v2 = static SheetPopoverBridgeNotifications.willPresent;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = partial apply for closure #1 in ContextMenuBridge.setupNotifications();
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v7[3] = &block_descriptor_29_1;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];

  _Block_release(v4);
  *(v0 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_popoverBridgeToken) = v5;
  return swift_unknownObjectRelease();
}

void closure #1 in ContextMenuBridge.contextMenuInteraction(_:willEndFor:animator:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu];
    v2 = *&Strong[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu];
    v3 = Strong[OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu + 4];
    *v1 = 0;
    v1[4] = 0;
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (!v4)
    {
      v5 = Strong;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        __break(1u);
        return;
      }

      swift_getObjectType();
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      swift_unknownObjectRelease();
      Strong = v5;
    }
  }
}

void closure #1 in ContextMenuBridge.setupNotifications()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissMenu];
  }
}

BOOL ContextMenuIdentity.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      v3 = *&v6[OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base];

      if (v3)
      {
        v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base);
        swift_unknownObjectRelease();
        return v4 == v3;
      }
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v7, &lazy cache variable for type metadata for Any?);
  }

  return 0;
}

uint64_t ContextMenuIdentity.description.getter()
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x18D00C9B0](0xD000000000000016, 0x800000018CD520F0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](62, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for ContextMenuIdentity()
{
  result = type metadata singleton initialization cache for ContextMenuIdentity;
  if (!type metadata singleton initialization cache for ContextMenuIdentity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ContextMenuIdentity()
{
  _s10Foundation9IndexPathVSgMaTm_3(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined destroy of IndexPath?(uint64_t a1)
{
  _s10Foundation9IndexPathVSgMaTm_3(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized ContextMenuBridge.contextMenuInteraction(_:configurationForMenuAtLocation:)(double a1, double a2)
{
  v3 = v2;
  v6 = v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v8 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_10;
  }

  [v10 convertPoint:0 toView:{a1, a2}];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v6 + 8);
  v12 = swift_getObjectType();
  v13 = (*(v11 + 24))(v12, v11);
  swift_unknownObjectRelease();
  if (!v13)
  {
    goto LABEL_8;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v14 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  if (v14)
  {
    type metadata accessor for ContextMenuResponder(0);
    ResponderNode.firstAncestor<A>(ofType:)();
  }

  else
  {
LABEL_8:
  }

LABEL_10:
  v15 = v3 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu;
  v16 = *(v3 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu);
  v17 = *(v3 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu + 4);
  *v15 = 0;
  *(v15 + 4) = 0;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17 == 0;
  }

  if (v18)
  {
    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
    swift_unknownObjectRelease();
    return 0;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized ContextMenuBridge.contextMenuInteraction(_:configuration:highlightPreviewForItemWithIdentifier:)(void *a1)
{
  type metadata accessor for ContextMenuIdentity();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(*(v6 + 16) + 8);
      swift_unknownObjectRetain();
      v9 = ViewGraphDelegate.uiView.getter(ObjectType, v8);
      swift_unknownObjectRelease();
      if (!v9)
      {
        swift_unknownObjectRelease();
        return 0;
      }

      if ([a1 menuAppearance] != 2)
      {
        v10 = *(*(v4 + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base) + 304);
        type metadata accessor for _SemanticFeature<Semantics_v5>();
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();

        if (static SemanticFeature.isEnabled.getter())
        {
          LOBYTE(v26[0]) = 17;
          static Update.dispatchImmediately<A>(reason:_:)();

          v11 = LOBYTE(v28[0]);
        }

        else
        {

          v11 = 0;
        }

        v12 = v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu;
        v13 = *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu);
        v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu + 4);
        *v12 = v10;
        *(v12 + 4) = v11;
        if (v13 != v10 || ((v11 ^ v14) & 1) != 0)
        {
          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            __break(1u);
            return result;
          }

          swift_getObjectType();
          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
          swift_unknownObjectRelease();
        }
      }

      v25 = *(*(v4 + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base) + 304);
      v15 = objc_allocWithZone(MEMORY[0x1E69DCE28]);

      v16 = [v15 init];
      v17 = [objc_opt_self() clearColor];
      [v16 setBackgroundColor_];

      UIViewSnapshotResponder.contentPath.getter(v26);
      v18 = v26[0];
      v19 = v26[1];
      v20 = v26[2];
      v21 = v26[3];
      v22 = v27;

      if (v22 != 255)
      {
        v28[0] = v18;
        v28[1] = v19;
        v28[2] = v20;
        v28[3] = v21;
        v29 = v22;
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
        outlined copy of Path.Storage(v18, v19, v20, v21, v22);
        outlined copy of Path.Storage(v18, v19, v20, v21, v22);
        v23 = UIBezierPath.init(_:)(v28);
        [v16 setVisiblePath_];

        outlined destroy of AnyAccessibilityValue?(v26, &lazy cache variable for type metadata for Path?);
        outlined destroy of AnyAccessibilityValue?(v26, &lazy cache variable for type metadata for Path?);
      }

      v24 = specialized UIViewSnapshotResponder.portalTargetedPreview<A>(kind:id:host:parameters:options:)(1, v25, v9, v16, 8);
      swift_unknownObjectRelease();

      return v24;
    }
  }

  return result;
}

uint64_t specialized ContextMenuBridge.contextMenuInteraction(_:configuration:dismissalPreviewForItemWithIdentifier:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 window];
  if (!v8)
  {

    return 0;
  }

  v9 = [a1 identifier];
  type metadata accessor for ContextMenuIdentity();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v21 = *(*(v10 + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base) + 304);
  v11 = objc_allocWithZone(MEMORY[0x1E69DCE28]);

  v12 = [v11 init];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  UIViewSnapshotResponder.contentPath.getter(v22);
  v14 = v22[0];
  v15 = v22[1];
  v16 = v22[2];
  v17 = v22[3];
  v18 = v23;

  if (v18 != 255)
  {
    v24[0] = v14;
    v24[1] = v15;
    v24[2] = v16;
    v24[3] = v17;
    v25 = v18;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBezierPath);
    outlined copy of Path.Storage(v14, v15, v16, v17, v18);
    outlined copy of Path.Storage(v14, v15, v16, v17, v18);
    v19 = UIBezierPath.init(_:)(v24);
    [v12 setVisiblePath_];

    outlined destroy of AnyAccessibilityValue?(v22, &lazy cache variable for type metadata for Path?);
    outlined destroy of AnyAccessibilityValue?(v22, &lazy cache variable for type metadata for Path?);
  }

  v20 = specialized UIViewSnapshotResponder.portalTargetedPreview<A>(kind:id:host:parameters:options:)(1, v21, v7, v12, 9);
  swift_unknownObjectRelease();

  return v20;
}

uint64_t specialized ContextMenuBridge.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, void *a2)
{
  [a1 identifier];
  type metadata accessor for ContextMenuIdentity();
  v3 = swift_dynamicCastClass();
  if (!v3 || (*(*(v3 + OBJC_IVAR____TtC7SwiftUI19ContextMenuIdentity_base) + 316) & 1) != 0 || AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return swift_unknownObjectRelease();
  }

  v4 = AGGraphClearUpdate();
  v19 = 17;
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ContextMenuPreviewAction?);
  static Update.dispatchImmediately<A>(reason:_:)();
  AGGraphSetUpdate();
  v5 = v15;
  if (v15 > 0xFDu)
  {
    return swift_unknownObjectRelease();
  }

  v7 = aBlock;
  v8 = v14;
  if ((v15 & 0x80) != 0)
  {

    [a2 setPreferredCommitStyle_];
    v11 = swift_allocObject();
    *(v11 + 16) = aBlock;
    *(v11 + 24) = v8;
    *(v11 + 32) = v5 & 1;
    v17 = partial apply for closure #3 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
    v18 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> ();
    v16 = &block_descriptor_35_0;
    v12 = _Block_copy(&aBlock);

    [a2 addAnimations_];
    swift_unknownObjectRelease();
    outlined consume of ContextMenuPreviewAction?(v7, v8, v5);
    _Block_release(v12);
  }

  else
  {
    outlined copy of ContextMenuPreviewAction(aBlock, v14, v15);
    [a2 setPreferredCommitStyle_];
    v9 = swift_allocObject();
    *(v9 + 16) = aBlock;
    *(v9 + 24) = v8;
    v17 = partial apply for closure #2 in UICollectionViewListCoordinator.collectionView(_:willPerformPreviewActionForMenuWith:animator:);
    v18 = v9;
    aBlock = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = thunk for @escaping @callee_guaranteed () -> ();
    v16 = &block_descriptor_41_0;
    v10 = _Block_copy(&aBlock);
    outlined copy of ContextMenuPreviewAction(v7, v8, v5);

    [a2 addAnimations_];
    swift_unknownObjectRelease();
    outlined consume of ContextMenuPreviewAction?(v7, v8, v5);
    _Block_release(v10);
    return outlined consume of ContextMenuPreviewAction?(v7, v8, v5);
  }
}

uint64_t specialized ContextMenuBridge.contextMenuInteraction(_:willEndFor:animator:)(void *a1, void *a2)
{
  v4 = [a1 identifier];
  type metadata accessor for ContextMenuIdentity();
  swift_dynamicCastClassUnconditional();
  ContextMenuIdentity.stopTrackingUpdates()();
  result = swift_unknownObjectRelease();
  if (a2)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = partial apply for closure #1 in ContextMenuBridge.contextMenuInteraction(_:willEndFor:animator:);
    v12[5] = v6;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_53;
    v7 = _Block_copy(v12);
    swift_unknownObjectRetain();

    [a2 addCompletion_];
    _Block_release(v7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v8 = v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu;
    v9 = *(v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu);
    v10 = *(v2 + OBJC_IVAR____TtC7SwiftUI17ContextMenuBridge_presentedMenu + 4);
    *v8 = 0;
    *(v8 + 4) = 0;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10 == 0;
    }

    if (!v11)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        swift_getObjectType();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t outlined destroy of MenuVisitor(uint64_t a1)
{
  v2 = type metadata accessor for MenuVisitor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UIView._findMatchedTransitionSource<A>(id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a2;
  v7[5] = a1;
  v5 = _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_n(v4, partial apply for closure #1 in UIView._findMatchedTransitionSource<A>(id:in:), v7);
  type metadata accessor for MatchedTransitionSourceMarkingView();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _ResolvedMatchedTransitionSourceConfiguration.Shadow(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (*a1 == *a2)
  {
    if (v3 != v6)
    {
      return 0;
    }

    return v4 == v7 && v2 == v5;
  }

  v8 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();
  result = 0;
  if ((v8 & 1) != 0 && v3 == v6)
  {
    return v4 == v7 && v2 == v5;
  }

  return result;
}

uint64_t MatchedTransitionSourceConfiguration.shadow(color:radius:x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v7[0] = a1;
  *&v7[1] = a4;
  *&v7[2] = a5;
  *&v7[3] = a6;
  return MatchedTransitionSourceConfiguration.concat<A>(_:)(v7, a2, &unk_1EFFE4C98, a3);
}

uint64_t protocol witness for MatchedTransitionSourceConfiguration._update(configuration:) in conformance BackgroundColorConfiguration(uint64_t a1)
{
  v3 = *v1;

  *(a1 + 32) = v3;
  return result;
}

__n128 protocol witness for MatchedTransitionSourceConfiguration._update(configuration:) in conformance ShadowConfiguration(uint64_t a1)
{
  v3 = *v1;
  v6 = *(v1 + 1);
  v4 = v1[3];

  *a1 = v3;
  result = v6;
  *(a1 + 8) = v6;
  *(a1 + 24) = v4;
  return result;
}

id UIView.findMatchedTransitionSource<A>(id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = UIView._findMatchedTransitionSource<A>(id:in:)(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView);

  return v6;
}

id UIView.findMatchedTransitionSource<A>(id:in:zoomingViewController:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = UIView._findMatchedTransitionSource<A>(id:in:)(a1, a2, a4, a5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a3 transitionCoordinator];
  if (v8)
  {
    v9 = v8;
    v7[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom] = 1;
    MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(0);
    [v7 setNeedsLayout];
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v14[4] = partial apply for closure #1 in UIView.findMatchedTransitionSource<A>(id:in:zoomingViewController:);
    v14[5] = v10;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v14[3] = &block_descriptor_54;
    v11 = _Block_copy(v14);
    v7 = v7;

    [v9 animateAlongsideTransitionInView:0 animation:0 completion:v11];
    swift_unknownObjectRelease();
    _Block_release(v11);
  }

  v12 = *&v7[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView];

  return v12;
}

uint64_t closure #1 in UIView._findMatchedTransitionSource<A>(id:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = (*v10 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect);
  swift_beginAccess();
  if (*v11 == a2)
  {
    outlined init with copy of AnyHashable((v11 + 1), v16);
    (*(v7 + 16))(v9, a3, a4);
    AnyHashable.init<A>(_:)();
    v12 = MEMORY[0x18D00E7E0](v16, v15);
    outlined destroy of AnyHashable(v15);
    outlined destroy of AnyHashable(v16);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t assignWithCopy for _ResolvedMatchedTransitionSourceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for _ResolvedMatchedTransitionSourceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ResolvedMatchedTransitionSourceConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for _ResolvedMatchedTransitionSourceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t MatchedTransitionSourceMarkingView.__ivar_destroyer()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect;

  return outlined destroy of MatchedTransitionSourceSourceMarkingEffect(v1);
}

uint64_t assignWithTake for MatchedTransitionSourceSourceMarkingEffect(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  return a1;
}

uint64_t getEnumTagSinglePayload for CornerConfiguration(uint64_t a1, unsigned int a2)
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
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t initializeWithCopy for _ResolvedMatchedTransitionSourceConfiguration.Shadow(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *assignWithCopy for _ResolvedMatchedTransitionSourceConfiguration.Shadow(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for _ResolvedMatchedTransitionSourceConfiguration.Shadow(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for MatchedTransitionSourceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for MatchedTransitionSourceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MatchedTransitionSourceModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for (MatchedTransitionSourceSourceMarkingEffect?, MatchedTransitionSourceSourceMarkingEffect?)()
{
  if (!lazy cache variable for type metadata for (MatchedTransitionSourceSourceMarkingEffect?, MatchedTransitionSourceSourceMarkingEffect?))
  {
    type metadata accessor for MatchedTransitionSourceSourceMarkingEffect?();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (MatchedTransitionSourceSourceMarkingEffect?, MatchedTransitionSourceSourceMarkingEffect?));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(255, &lazy cache variable for type metadata for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>, type metadata accessor for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>);
    lazy protocol witness table accessor for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>> and conformance EnvironmentReader<A>, type metadata accessor for EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<EnvironmentReader<ModifiedContent<_ViewModifier_Content<MatchedTransitionSourceModifier>, MatchedTransitionSourceSourceMarkingEffect>>, PreventsToolbarItemBridgingModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<MatchedTransitionSourceModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v8 - 8);
  outlined init with copy of AccessibilityCustomAttributes.Value(a3, v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));

  AccessibilityCustomAttributes.init(_:value:)();
  v11[0] = v11[1];
  View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E69800C0], v11, 1, a4, MEMORY[0x1E69800C0], a5);
}

{
  v9 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11->super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_storeEnumTagMultiPayload();
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v11, a4, a5);
  return outlined destroy of AccessibilityCustomAttributes.Value(v11);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E6969E50]);
}

{
  v9 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11->super.super.isa = Int8._bridgeToObjectiveC()().super.super.isa;
  swift_storeEnumTagMultiPayload();
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v11, a4, a5);
  return outlined destroy of AccessibilityCustomAttributes.Value(v11);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E696A038]);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E6968FB0]);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5, MEMORY[0x1E6969530]);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5);
}

{
  return View.accessibilityCustomAttribute(_:value:)(a1, a2, a3, a4, a5);
}

{
  v10 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a3;
  swift_storeEnumTagMultiPayload();
  v13 = a3;
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v12, a4, a5);
  return outlined destroy of AccessibilityCustomAttributes.Value(v12);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, double))
{
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a6(a3, v13);
  swift_storeEnumTagMultiPayload();
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v15, a4, a5);
  return outlined destroy of AccessibilityCustomAttributes.Value(v15);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10->super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  swift_storeEnumTagMultiPayload();
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v10, a3, a4);
  return outlined destroy of AccessibilityCustomAttributes.Value(v10);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a3;
  v14[1] = a4;
  swift_storeEnumTagMultiPayload();

  View.accessibilityCustomAttribute(_:value:)(a1, a2, v14, a5, a6);
  return outlined destroy of AccessibilityCustomAttributes.Value(v14);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a3;
  v14[1] = a4;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(a3, a4);
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v14, a5, a6);
  return outlined destroy of AccessibilityCustomAttributes.Value(v14);
}

uint64_t View.accessibilityCustomAttribute(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, double))
{
  v12 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a6(0, v13);
  (*(*(v16 - 8) + 16))(v15, a3, v16);
  swift_storeEnumTagMultiPayload();
  View.accessibilityCustomAttribute(_:value:)(a1, a2, v15, a4, a5);
  return outlined destroy of AccessibilityCustomAttributes.Value(v15);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, a3);
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)(a1, a2, a3);
}

{
  v6 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v8, a2, a3);
  return outlined destroy of AccessibilityCustomAttributes.Value(v8);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t, double)@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = a3(a1, v9);
  swift_storeEnumTagMultiPayload();
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v11, a2, a4);
  return outlined destroy of AccessibilityCustomAttributes.Value(v11);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6->super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  swift_storeEnumTagMultiPayload();
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v6, a1, a2);
  return outlined destroy of AccessibilityCustomAttributes.Value(v6);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();

  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v10, a3, a4);
  return outlined destroy of AccessibilityCustomAttributes.Value(v10);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(a1, a2);
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v10, a3, a4);
  return outlined destroy of AccessibilityCustomAttributes.Value(v10);
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(void, double)@<X4>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AccessibilityCustomAttributes.Value();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3(0, v9);
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  ModifiedContent<>.accessibilityCustomAttribute(_:value:)(v11, a2, a4);
  return outlined destroy of AccessibilityCustomAttributes.Value(v11);
}

double TransformGestureAnchorHelper.startPoints(_:)(double a1, double a2)
{
  MEMORY[0x18D00ABE0]();
  AGGraphClearUpdate();
  Value = AGGraphGetValue();
  v5 = *(Value + 8);
  v20 = *Value;
  v21 = v5;
  v6 = *(Value + 32);
  v22 = *(Value + 16);
  v23 = v6;

  AGGraphSetUpdate();
  AGGraphClearUpdate();
  type metadata accessor for CGPoint(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  AGGraphSetUpdate();
  ViewTransform.appendPosition(_:)(__PAIR128__(v9, v8));
  AGGraphClearUpdate();
  AGGraphGetValue();
  AGGraphSetUpdate();
  v18 = a1;
  v19 = a2;
  v14 = 1;
  v15 = 0u;
  v16 = 0u;
  v17 = 2;

  ApplyViewTransform.convertGlobal(to:transform:)();

  v10 = outlined destroy of CoordinateSpace(&v14);
  MEMORY[0x18D00B390](v10);
  UnitPoint.init(_:in:)();
  v12 = v11;

  static Update.end()();
  return v12;
}

__n128 key path getter for EnvironmentValues.listPadding : EnvironmentValues@<Q0>(uint64_t a1@<X8>)
{
  EnvironmentValues.listPadding.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t EnvironmentValues.listPadding.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListPaddingAnchorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListPaddingAnchorKey>);

  PropertyList.subscript.setter();
  v1 = *(v0 + 8);
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.listPadding(top:bottom:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v8 = (a2 & 1) == 0;
  }

  else
  {
    v8 = ((a2 & 1) == 0) | 4u;
  }

  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(&v10);
  return View.contentMargins(_:_:for:)(v8, &v10, a5, a6);
}

uint64_t View.listPadding(anchor:)()
{
  swift_getKeyPath();
  MEMORY[0x18D007050](v1);
  View.environment<A>(_:_:)();
}

uint64_t View.listPadding(_:_:anchor:)()
{
  swift_getKeyPath();
  OptionalEdgeInsets.init(_:edges:)();
  View.environment<A>(_:_:)();
}

{
  swift_getKeyPath();
  OptionalEdgeInsets.init(_:edges:)();
  View.environment<A>(_:_:)();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<ListPadding>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListPadding>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListPadding>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListPadding> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListPadding> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListPadding> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ListPadding>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListPadding> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListPaddingAnchor.Storage and conformance ListPaddingAnchor.Storage()
{
  result = lazy protocol witness table cache variable for type ListPaddingAnchor.Storage and conformance ListPaddingAnchor.Storage;
  if (!lazy protocol witness table cache variable for type ListPaddingAnchor.Storage and conformance ListPaddingAnchor.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPaddingAnchor.Storage and conformance ListPaddingAnchor.Storage);
  }

  return result;
}

uint64_t type metadata accessor for DefaultPreviewDropPayloadResponder()
{
  result = type metadata singleton initialization cache for DefaultPreviewDropPayloadResponder;
  if (!type metadata singleton initialization cache for DefaultPreviewDropPayloadResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DropPreviewModifier.init(base:preview:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t static DropPreviewModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v53 = *(a2 + 32);
  v54 = v7;
  v55 = *(a2 + 64);
  v56 = *(a2 + 80);
  v8 = *(a2 + 16);
  v51 = *a2;
  v52 = v8;
  v36 = *(a2 + 48);
  v37 = *(a2 + 56);
  *&v45 = *(a2 + 48);
  DWORD2(v45) = *(a2 + 56);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PortalGroupID and conformance PortalGroupID();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    UniqueID.init()();
    v10 = DWORD2(v52);
    closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(&v51, DWORD2(v52), a3);
    *&v45 = v34;
    DWORD2(v45) = v35;
    v11 = PreferencesOutputs.subscript.getter();
    if ((v11 & 0x100000000) == 0)
    {
      v33 = v6;
      type metadata accessor for DropPreviewModifier();
      type metadata accessor for _GraphValue();
      v31 = _GraphValue.value.getter();
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v45 = v51;
      v46 = v52;
      v38[0] = v34;
      v38[1] = v35;
      outlined init with copy of _ViewInputs(&v51, &v39);

      v12 = a4;
      v13 = v6;
      v14 = _ViewOutputs.viewResponders()();

      type metadata accessor for DropPayloadCustomPreviewResponder();
      v41 = v53;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v39 = v51;
      v40 = v52;
      v32 = v10;
      outlined init with copy of _ViewInputs(&v51, v38);
      LOBYTE(v38[0]) = 0;
      v15 = DropPayloadCustomPreviewResponder.__allocating_init(inputs:space:displayList:)(&v39, &v32);
      v16 = v14;
      v6 = v13;
      a4 = v12;
      v17 = DropPreviewResponderFilter.init(modifier:inputs:identity:children:responder:)(v31, &v45, v9, v16, v15, &v39);
      MEMORY[0x1EEE9AC00](v17);
      v18 = type metadata accessor for DropPreviewResponderFilter();
      v29 = v18;
      WitnessTable = swift_getWitnessTable();
      _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v39, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_9, &v28, v18, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
      v45 = v39;
      v46 = v40;
      v47 = v41;
      *&v48 = v42;
      (*(*(v18 - 8) + 8))(&v45, v18);
      LOBYTE(v39) = 0;
      v11 = PreferencesOutputs.subscript.setter();
    }

    *&v45 = v36;
    DWORD2(v45) = v37;
    MEMORY[0x1EEE9AC00](v11);
    v29 = &v51;
    outlined init with copy of PreferencesInputs(&v36, &v39);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    *&v45 = v36;
    DWORD2(v45) = v37;
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if ((result & 1) == 0)
    {
      goto LABEL_9;
    }

    LODWORD(v45) = v6;
    type metadata accessor for DropPreviewModifier();
    type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    closure #2 in static DropPreviewModifier._makeView(modifier:inputs:body:)(1);
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v23 = v34;
    v24 = v35;
    *&v45 = v36;
    DWORD2(v45) = v37;
    v25 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if ((v25 & 1) == 0)
    {
LABEL_8:
      LOBYTE(v45) = (v25 & 1) == 0;
      result = PreferencesOutputs.subscript.setter();
LABEL_9:
      *a4 = v34;
      a4[1] = v35;
      return result;
    }

    result = AGSubgraphGetCurrent();
    if (result)
    {
      v26 = result;
      v27 = *MEMORY[0x1E698D3F8];
      v29 = &type metadata for AccessibilityAttachmentModifier;
      _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5Tm(v27, &v51, v23, v24, 1, v26, OffsetAttribute2, &type metadata for AccessibilityDropActivationPointAttachment, &protocol witness table for AccessibilityDropActivationPointAttachment, 0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);

      goto LABEL_8;
    }

    __break(1u);
  }

  else
  {
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v50 = v56;
    v45 = v51;
    v46 = v52;
    return (a3)();
  }

  return result;
}

uint64_t DropPreviewResponderFilter.init(modifier:inputs:identity:children:responder:)@<X0>(int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a2[2];
  v8 = a2[4];
  v33 = a2[3];
  v34 = v8;
  v9 = a2[1];
  v30 = *a2;
  v10 = a2[2];
  v31 = v9;
  v32 = v10;
  v26 = v7;
  v27 = v33;
  v28 = a2[4];
  v35 = *(a2 + 20);
  v11 = _ViewInputs.animatedPosition()();
  v12 = HIDWORD(v33);
  swift_beginAccess();
  v13 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v14 = _ViewInputs.isEnabled.getter();
  outlined init with copy of _GraphInputs(&v30, &v24);
  if (one-time initialization token for prefersFullSizeDragPreviews != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v30);
  outlined init with copy of _GraphInputs(&v30, &v24);
  if (one-time initialization token for dragItemGroupID != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for Namespace.ID?(0, &lazy cache variable for type metadata for Namespace.ID?, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
  v16 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v30);
  outlined init with copy of _GraphInputs(&v30, &v24);
  if (one-time initialization token for dragPreviewMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v30);
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v24 = v30;
  v25 = v31;
  v18 = _ViewInputs.containerPosition.getter();
  result = outlined destroy of _ViewInputs(&v30);
  *a6 = a1;
  *(a6 + 4) = a4;
  *(a6 + 8) = v11;
  *(a6 + 12) = v12;
  *(a6 + 16) = v13;
  *(a6 + 20) = v14;
  *(a6 + 24) = v15;
  *(a6 + 28) = v16;
  *(a6 + 32) = v17;
  *(a6 + 36) = v18;
  *(a6 + 40) = a3;
  *(a6 + 48) = a5;
  return result;
}

uint64_t closure #2 in static DropPreviewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v7[2] = type metadata accessor for DropPreviewModifier();
  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_15, v7, v3, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t DropPreviewResponderFilter.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DropPreviewModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DropPreviewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t DropPreviewResponderFilter.updateValue()(uint64_t a1)
{
  v2 = v1;
  v59 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v6 = v5;
  v38 = *Value;
  v40 = Value[1];
  v7 = *(v2 + 6);
  type metadata accessor for CGPoint(0);
  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  if (((v6 | v11) & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    v47 = v38;
    v48 = v40;
    *(v7 + 224) = MEMORY[0x18D00B390]();
    *(v7 + 232) = v12;
    *(v7 + 240) = v9;
    *(v7 + 248) = v10;
  }

  v13 = v2[1];
  v47 = *v2;
  v48 = v13;
  v49 = v2[2];
  v50 = *(v2 + 6);
  AccessibilityLargeContentViewModifier.AccessibilityLargeContentViewTransform.transform.getter(&v53);
  ViewTransform.appendPosition(_:)(__PAIR128__(*&v10, *&v9));
  v14 = v2[1];
  v43 = *v2;
  v44 = v14;
  v45 = v2[2];
  v46 = *(v2 + 6);
  v15 = v46;
  DropPreviewResponderFilter.modifier.getter(v56);
  v17 = *(&v57 + 1);
  v16 = v58;
  v18 = type metadata accessor for DropPreviewModifier();
  v19 = *(*(v18 - 8) + 8);

  v19(v56, v18);
  v20 = (v50 + *(*v50 + class metadata base offset for CustomPreviewDropResponder + 32));
  v21 = *v20;
  *v20 = v17;
  v20[1] = v16;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v21);
  v22 = v2[1];
  v56[0] = *v2;
  v56[1] = v22;
  v57 = v2[2];
  v58 = *(v2 + 6);
  v23 = v58;
  *(v15 + 264) = *AGGraphGetValue();
  v24 = *(v2 + 6);
  v25 = *(a1 - 8);
  v39 = *(v25 + 16);
  v39(v41, v56, a1);
  *(v23 + 256) = AGCreateWeakAttribute();
  v26 = *(v2 + 6);
  v27 = AGGraphGetValue();
  v28 = v10 - v27[1];
  *(v24 + 280) = v9 - *v27;
  *(v24 + 288) = v28;
  v29 = v2[1];
  v41[0] = *v2;
  v41[1] = v29;
  v41[2] = v2[2];
  v42 = *(v2 + 6);
  DropPreviewResponderFilter.modifier.getter(v54);
  outlined init with copy of AccessibilityGeometryUpdater?(v54, v51, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_2);
  v19(v54, v18);
  v30 = *(*v26 + class metadata base offset for DropPayloadCustomPreviewResponder + 16);
  swift_beginAccess();
  outlined assign with take of DropDelegate?(v51, v26 + v30);
  swift_endAccess();
  v31 = *(v2 + 6);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v32)
  {

    MultiViewResponder.children.setter();
  }

  (*(v25 + 8))(v56, a1);
  v33 = *(v2 + 6);
  *(v31 + 312) = *AGGraphGetValue();
  v34 = v2[2];
  v54[1] = v2[1];
  v54[2] = v34;
  v55 = *(v2 + 6);
  v54[0] = *v2;
  *(v33 + 304) = *AGGraphGetValue();
  if (!AGGraphGetOutputValue())
  {
    v35 = v55;
    type metadata accessor for Namespace.ID?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_18CD69590;
    *(v36 + 32) = v35;
    v52 = v36;
    v39(v51, v54, a1);
    AGGraphSetOutputValue();
  }
}

uint64_t static DropModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t *a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v45 = *(a2 + 32);
  v46 = v7;
  v47 = *(a2 + 64);
  v48 = *(a2 + 80);
  v8 = *(a2 + 16);
  v43 = *a2;
  v44 = v8;
  v33 = *(a2 + 48);
  v34 = *(a2 + 56);
  *&v37 = *(a2 + 48);
  DWORD2(v37) = *(a2 + 56);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    UniqueID.init()();
    v9 = v37;
    ViewIdentity.init()();
    v29 = Attribute.init<A>(body:value:flags:update:)();
    closure #1 in static PointerHoverEffectModifier._makeView(modifier:inputs:body:)(&v43, v37, a3);
    *&v37 = v31;
    DWORD2(v37) = v32;
    v10 = PreferencesOutputs.subscript.getter();
    if ((v10 & 0x100000000) == 0)
    {

      v28 = _ViewOutputs.viewResponders()();

      type metadata accessor for DefaultPreviewDropPayloadResponder();
      v11 = swift_allocObject();
      *(v11 + 296) = 0;
      *(v11 + 304) = 0;
      *(v11 + 312) = 0;
      *(v11 + 320) = 0u;
      *(v11 + 336) = 0u;
      *(v11 + 352) = 0;
      *(v11 + 316) = 2;
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v37 = v43;
      v38 = v44;
      v30 = v9;
      outlined init with copy of _ViewInputs(&v43, v35);
      LOBYTE(v35[0]) = 0;
      v12 = UIViewSnapshotResponder.init(inputs:space:displayList:)(&v37, &v30);
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v37 = v43;
      v38 = v44;
      v13 = _ViewInputs.animatedPosition()();
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v26 = HIDWORD(v46);
      v27 = v13;
      v42 = v48;
      v37 = v43;
      v38 = v44;
      swift_beginAccess();
      v25 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v37 = v43;
      v38 = v44;
      v14 = _ViewInputs.isEnabled.getter();
      if (one-time initialization token for prefersFullSizeDragPreviews != -1)
      {
        swift_once();
      }

      *&v35[0] = static CachedEnvironment.ID.prefersFullSizeDragPreviews;
      swift_beginAccess();
      v15 = CachedEnvironment.attribute<A>(id:_:)();
      swift_endAccess();
      if (one-time initialization token for dragItemGroupID != -1)
      {
        swift_once();
      }

      *&v35[0] = static CachedEnvironment.ID.dragItemGroupID;
      swift_beginAccess();
      type metadata accessor for Namespace.ID?(0, &lazy cache variable for type metadata for Namespace.ID?, MEMORY[0x1E6981EA0], MEMORY[0x1E69E6720]);
      v16 = CachedEnvironment.attribute<A>(id:_:)();
      swift_endAccess();
      if (one-time initialization token for dragPreviewMode != -1)
      {
        swift_once();
      }

      *&v35[0] = static CachedEnvironment.ID.dragPreviewMode;
      swift_beginAccess();
      v17 = CachedEnvironment.attribute<A>(id:_:)();
      swift_endAccess();
      v39 = v45;
      v40 = v46;
      v41 = v47;
      v42 = v48;
      v37 = v43;
      v38 = v44;
      v18 = _ViewInputs.containerPosition.getter();
      *&v37 = __PAIR64__(v28, v6);
      *(&v37 + 1) = __PAIR64__(v26, v27);
      *&v38 = __PAIR64__(v14, v25);
      *(&v38 + 1) = __PAIR64__(v16, v15);
      *&v39 = __PAIR64__(v18, v17);
      DWORD2(v39) = v29;
      *&v40 = v12;
      v35[0] = v37;
      v35[1] = v38;
      v35[2] = v39;
      v36 = v12;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for [ViewResponder](0);
      lazy protocol witness table accessor for type DropResponderFilter and conformance DropResponderFilter();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of DropResponderFilter(&v37);
      LOBYTE(v35[0]) = 0;
      v10 = PreferencesOutputs.subscript.setter();
    }

    *&v37 = v33;
    DWORD2(v37) = v34;
    MEMORY[0x1EEE9AC00](v10);
    outlined init with copy of PreferencesInputs(&v33, v35);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    *&v37 = v33;
    DWORD2(v37) = v34;
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v21 = v31;
    v22 = v32;
    *&v37 = v33;
    DWORD2(v37) = v34;
    v23 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if ((v23 & 1) == 0)
    {
LABEL_14:
      LOBYTE(v37) = (v23 & 1) == 0;
      result = PreferencesOutputs.subscript.setter();
LABEL_15:
      *a4 = v31;
      a4[1] = v32;
      return result;
    }

    result = AGSubgraphGetCurrent();
    if (result)
    {
      v24 = result;
      _s7SwiftUI25AccessibilityViewModifierPAAE23makePropertiesTransform33_71F62EDC1DAE3BBC7A74521E45BA5A668modifier6inputs7outputs15includeGeometry010resolvableE012scrapeableID14AttributeGraph0Y0VyAA0C8NodeListVGSo11AGAttributea_AA01_D6InputsVAA01_D7OutputsVSbAA010ResolvableE0AELLVSgAA010ScrapeableX0VtFZAA0c10AttachmentE0V_Tt5B5Tm(*MEMORY[0x1E698D3F8], &v43, v21, v22, 1, result, OffsetAttribute2, &type metadata for AccessibilityDropActivationPointAttachment, &protocol witness table for AccessibilityDropActivationPointAttachment, 0, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier);

      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v39 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v37 = v43;
    v38 = v44;
    return (a3)();
  }

  return result;
}

uint64_t DropResponderFilter.updateValue()()
{
  v1 = v0;
  v21 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v18 = Value[1];
  v19 = *Value;
  type metadata accessor for CGPoint(0);
  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = v5[1];
  if (((v4 | v8) & 1) != 0 || (type metadata accessor for [ViewResponder](0), !AGGraphGetOutputValue()))
  {
    v9 = *(v1 + 48);
    v20[0] = v19;
    v20[1] = v18;
    *(v9 + 224) = MEMORY[0x18D00B390]();
    *(v9 + 232) = v10;
    *(v9 + 240) = v6;
    *(v9 + 248) = v7;
  }

  v11 = *(v1 + 48);

  *(v11 + 256) = AGCreateWeakAttribute();
  *(v11 + 264) = *AGGraphGetValue();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v12)
  {

    MultiViewResponder.children.setter();
  }

  *(v11 + 296) = *AGGraphGetValue();
  v13 = AGGraphGetValue();
  v14 = v7 - v13[1];
  *(v11 + 280) = v6 - *v13;
  *(v11 + 288) = v14;
  *(v11 + 312) = *AGGraphGetValue();
  *(v11 + 304) = *AGGraphGetValue();
  v15 = AGGraphGetValue();
  outlined init with copy of DropModifier(v15, v20);
  swift_beginAccess();
  outlined assign with take of DropDelegate?(v20, v11 + 320);
  swift_endAccess();
  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for Namespace.ID?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD69590;
    *(v17 + 32) = v11;
    *&v20[0] = v17;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t DefaultPreviewDropPayloadResponder.__deallocating_deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  outlined destroy of AccessibilityGeometryUpdater?(v0 + 320, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DropPayloadProvider.delegate.getter in conformance DefaultPreviewDropPayloadResponder@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return outlined init with copy of AccessibilityGeometryUpdater?(v3 + 320, a1, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_2);
}

uint64_t DropPayloadCustomPreviewResponder.init(inputs:space:displayList:)(uint64_t a1, uint64_t *a2)
{
  v10 = *(a1 + 80);
  v3 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v3;
  v9[4] = *(a1 + 64);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v5 = *a2;
  v6 = v2 + *(*v2 + class metadata base offset for DropPayloadCustomPreviewResponder + 16);
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v8 = v5;
  return CustomPreviewDropResponder.init(inputs:space:displayList:)(v9, &v8);
}

uint64_t DropPayloadCustomPreviewResponder.__deallocating_deinit()
{
  v0 = CustomPreviewDropResponder.deinit();
  outlined destroy of AccessibilityGeometryUpdater?(&v0[*(*v0 + class metadata base offset for DropPayloadCustomPreviewResponder + 16)], &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_2);

  return swift_deallocClassInstance();
}

uint64_t destroy for DropPreviewModifier(uint64_t a1)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t initializeWithCopy for DropPreviewModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  return a1;
}

uint64_t assignWithCopy for DropPreviewModifier(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  v7 = *(a2 + 6);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = v7;

  return a1;
}

uint64_t assignWithTake for DropPreviewModifier(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t protocol witness for DropPayloadProvider.delegate.getter in conformance DropPayloadCustomPreviewResponder<A>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + class metadata base offset for DropPayloadCustomPreviewResponder + 16);
  swift_beginAccess();
  return outlined init with copy of AccessibilityGeometryUpdater?(v3 + v4, a1, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720], _sSay7SwiftUI13ViewResponderCGMaTm_2);
}

void *AccessibilityDropActivationPointAttachment.value.getter@<X0>(uint64_t *a1@<X8>)
{
  AccessibilityProperties.init()();
  v2 = MEMORY[0x1E69E6720];
  _sSay7SwiftUI13ViewResponderCGMaTm_2(0, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  outlined init with copy of AccessibilityGeometryUpdater?(Value, __src, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, v2, _sSay7SwiftUI13ViewResponderCGMaTm_2);
  v4 = *(&__src[1] + 1);
  outlined destroy of AccessibilityGeometryUpdater?(__src, &lazy cache variable for type metadata for DropDelegate?, type metadata accessor for DropDelegate, v2, _sSay7SwiftUI13ViewResponderCGMaTm_2);
  if (v4)
  {
    static AccessibilityActivationPointStorage.defaultDrop.getter();
    v5 = __src[0];
    v6 = LOBYTE(__src[1]);
    v7 = *(&__src[1] + 8);
  }

  else
  {
    v6 = 0;
    v5 = 0uLL;
    v7 = 0uLL;
  }

  __src[0] = v5;
  *&__src[1] = v6;
  *(&__src[1] + 8) = v7;
  AccessibilityProperties.activationPointStorage.setter();
  outlined init with copy of AccessibilityProperties(v13, v12);
  outlined init with copy of AccessibilityProperties(v12, &v10);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v12);
  outlined destroy of AccessibilityProperties(v13);
  type metadata accessor for Namespace.ID?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v8 = swift_allocObject();
  result = memcpy((v8 + 16), __src, 0x128uLL);
  *a1 = v8;
  a1[1] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type DropResponderFilter and conformance DropResponderFilter()
{
  result = lazy protocol witness table cache variable for type DropResponderFilter and conformance DropResponderFilter;
  if (!lazy protocol witness table cache variable for type DropResponderFilter and conformance DropResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropResponderFilter and conformance DropResponderFilter);
  }

  return result;
}

uint64_t outlined init with copy of DropModifier(__int128 *a1, uint64_t a2)
{
  v3 = *(a1 + 3);
  if (v3)
  {
    v4 = *(a1 + 4);
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
    (**(v3 - 8))(a2);
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    *(a2 + 32) = *(a1 + 4);
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return a2;
}

uint64_t initializeWithCopy for DropPreviewResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for DropPreviewResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for DropPreviewResponderFilter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

unint64_t instantiation function for generic protocol witness table for AccessibilityDropActivationPointAttachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AccessibilityDropActivationPointAttachment and conformance AccessibilityDropActivationPointAttachment();
  *(a1 + 8) = result;
  return result;
}

uint64_t AccessibilityRotorEntry.resolveForList(in:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v37 - v11;
  v40 = *(v12 + 24);
  v13 = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  if (*(v3 + 24))
  {
    v17 = a1;
    v18 = *(v3 + 16);
    v38 = v8;
    v39 = v4;
    v20 = *v3;
    v19 = *(v3 + 8);
    v46 = *v17;
    v44 = 0;
    v45 = 0;
    outlined copy of Text.Storage(v20, v19, v18 & 1);

    default argument 2 of static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    v43 = static AccessibilityCore.textResolvedToAttributedText(_:in:options:idiom:)();
    v21 = v20;
    v22 = v19;
    v8 = v38;
    v4 = v39;
    outlined consume of Text.Storage(v21, v22, v18 & 1);
  }

  else
  {
    v43 = 0;
  }

  (*(v14 + 16))(v16, v3 + *(v4 + 40), v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = *&v16[*(swift_getTupleTypeMetadata2() + 48)];
      v25 = v42;
      (*(v8 + 32))(v42, v16, v7);
      (*(v8 + 16))(v41, v25, v7);
      AnyHashable.init<A>(_:)();
      (*(v8 + 8))(v25, v7);
      *(&v48 + 1) = v24;
      v26 = 1;
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      v26 = 2;
    }

    v49 = v26;
  }

  else
  {
    v27 = v42;
    (*(v8 + 32))(v42, v16, v7);
    (*(v8 + 16))(v41, v27, v7);
    AnyHashable.init<A>(_:)();
    (*(v8 + 8))(v27, v7);
    v49 = 0;
  }

  v28 = v43;
  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  v31 = (v3 + *(v4 + 44));
  v32 = *v31;
  v33 = v31[1];
  v34 = v47;
  *a3 = v46;
  *(a3 + 16) = v34;
  *(a3 + 32) = v48;
  *(a3 + 48) = v49;
  *(a3 + 56) = v28;
  *(a3 + 64) = v29;
  *(a3 + 72) = v30;
  v35 = *(v3 + 48);
  *(a3 + 80) = v35;
  *(a3 + 88) = v32;
  *(a3 + 96) = v33;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  outlined copy of AccessibilityRotorEntryRange?(v29, v30, v35);
}

uint64_t AccessibilityRotorEntry.init(_:id:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = a7;
  v25 = a9;
  v28 = a2;
  v29 = a4;
  v26 = a3;
  v27 = a1;
  v15 = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v19 = *(a12 - 8);
  (*(v19 + 16))(&v24 - v17, a5, a12, v16);
  swift_storeEnumTagMultiPayload();
  if (a8)
  {
    v20 = 0;
  }

  else
  {
    v20 = a6;
  }

  if (a8)
  {
    v21 = 0;
  }

  else
  {
    v21 = v24;
  }

  if (a8)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  AccessibilityRotorEntry.init(_:elementSpecifier:textRange:prepare:)(v27, v28, v26 & 1, v29, v18, v20, v21, v22, v25, a10, a11);
  return (*(v19 + 8))(a5, a12);
}

uint64_t AccessibilityRotorEntry.init(_:elementSpecifier:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v15 = type metadata accessor for AccessibilityRotorEntry();
  v16 = *(v15 + 40);
  v17 = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  result = (*(*(v17 - 8) + 32))(a9 + v16, a5, v17);
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  v19 = (a9 + *(v15 + 44));
  *v19 = a10;
  v19[1] = a11;
  return result;
}

uint64_t AccessibilityRotorEntry.init(_:id:in:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a7;
  v26 = a8;
  v30 = a2;
  v31 = a4;
  v28 = a3;
  v29 = a1;
  v27 = a9;
  v24 = a11;
  v15 = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  v19 = *(a13 - 8);
  (*(v19 + 16))(v17, a5, a13);
  *&v17[v18] = a6;
  swift_storeEnumTagMultiPayload();
  if (a10)
  {
    v20 = 0;
  }

  else
  {
    v20 = v25;
  }

  if (a10)
  {
    v21 = 0;
  }

  else
  {
    v21 = v26;
  }

  if (a10)
  {
    v22 = -1;
  }

  else
  {
    v22 = 1;
  }

  AccessibilityRotorEntry.init(_:elementSpecifier:textRange:prepare:)(v29, v30, v28 & 1, v31, v17, v20, v21, v22, v27, v24, a12);
  return (*(v19 + 8))(a5, a13);
}

uint64_t AccessibilityRotorEntry.init<>(_:textRange:prepare:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = 1;
  *(a9 + 56) = 0;
  *(a9 + 64) = 2;
  *(a9 + 72) = a7;
  *(a9 + 80) = a8;
  return result;
}

uint64_t AccessibilityRotorEntry.init(_:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  v15 = type metadata accessor for AccessibilityRotorEntry();
  type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  result = swift_storeEnumTagMultiPayload();
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v17 = (a9 + *(v15 + 44));
  *v17 = a8;
  v17[1] = a10;
  return result;
}

uint64_t AccessibilityRotorEntry.init(_:id:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, int a5@<W7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a5;
  v24 = a3;
  v25 = a4;
  v22 = a6;
  v10 = *(a9 - 8);
  v21 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v10 + 16))(v12, a2, a9);
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v13, v15, v17 & 1, v19, v12, v24, v25, v23 & 1, v22, v21, a8, a9);
  return (*(v10 + 8))(a2, a9);
}

uint64_t AccessibilityRotorEntry.init<A>(_:id:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v33 = a7;
  v34 = a6;
  v32 = a5;
  v35 = a3;
  v36 = a4;
  v29 = a1;
  v31 = a9;
  v13 = *(a8 - 8);
  v30 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a10 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v16 + 16))(&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v13 + 16))(v15, a2, a8);
  AccessibilityRotorEntry.init(_:id:textRange:prepare:)(v20, v22, v24 & 1, v26, v15, v35, v36, v32 & 1, v31, v34, v33, a8);
  (*(v13 + 8))(a2, a8);
  return (*(v16 + 8))(v29, a10);
}

uint64_t AccessibilityRotorEntry.init(_:id:in:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a4;
  v28 = a5;
  v25 = a6;
  v26 = a3;
  v23 = a9;
  v24 = a8;
  v11 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = Text.init(_:tableName:bundle:comment:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v11 + 16))(v13, a2, a10);
  AccessibilityRotorEntry.init(_:id:in:textRange:prepare:)(v14, v16, v18 & 1, v20, v13, v26, v27, v28, v25, a7 & 1, v24, v23, a10);
  return (*(v11 + 8))(a2, a10);
}

uint64_t AccessibilityRotorEntry.init<A>(_:_:in:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a8;
  v32 = a7;
  v29 = a6;
  v34 = a4;
  v35 = a5;
  v33 = a3;
  v28[0] = a1;
  v30 = a9;
  v13 = *(a10 - 8);
  v28[1] = a12;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a11 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  (*(v16 + 16))(v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v13 + 16))(v15, a2, a10);
  AccessibilityRotorEntry.init(_:id:in:textRange:prepare:)(v20, v22, v24 & 1, v26, v15, v33, v34, v35, v30, v29 & 1, v32, v31, a10);
  (*(v13 + 8))(a2, a10);
  return (*(v16 + 8))(v28[0], a11);
}

uint64_t AccessibilityRotorEntry.init<A>(_:textRange:prepare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a4;
  v26 = a5;
  v12 = *(a6 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15, v13);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = (*(v12 + 8))(a1, a6);
  *a7 = v16;
  *(a7 + 8) = v18;
  *(a7 + 16) = v20 & 1;
  *(a7 + 24) = v22;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = 1;
  *(a7 + 56) = 0;
  *(a7 + 64) = 2;
  v24 = v26;
  *(a7 + 72) = v25;
  *(a7 + 80) = v24;
  return result;
}

uint64_t type metadata completion function for AccessibilityRotorEntry()
{
  result = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_OWORD *initializeBufferWithCopyOfBuffer for AccessibilityRotorEntry(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = v6 & 0xF8 | 7;
  v8 = *(v5 + 64);
  if (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v8)
  {
    v9 = *(v5 + 64);
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if ((v6 & 0x1000F8) != 0 || ((v9 + (((v6 & 0xF8) + 56) & ~v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v7 + 16) & ~v7));
    goto LABEL_38;
  }

  v12 = *(a2 + 24);
  if (v12 < 0xFFFFFFFF)
  {
    v16 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v16;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v14, v15);
    *v4 = v13;
    *(v4 + 1) = v14;
    *(v4 + 16) = v15;
    *(v4 + 3) = v12;
  }

  v17 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v18 + 16);
  if (v19 > 2)
  {
    v22 = *v18;
    *(v17 + 16) = *(v18 + 16);
    *v17 = v22;
  }

  else
  {
    v20 = *v18;
    v21 = *(v18 + 8);
    outlined copy of AccessibilityRotorEntryRange(*v18, v21, *(v18 + 16));
    *v17 = v20;
    *(v17 + 8) = v21;
    *(v17 + 16) = v19;
  }

  v23 = v4 + 63;
  v24 = a2 + 63;
  v25 = ((a2 + 63) & 0xFFFFFFFFFFFFFFF8);
  v26 = *(v25 + v9);
  v27 = v26 - 2;
  if (v26 >= 2)
  {
    if (v9 <= 3)
    {
      v28 = v9;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *v25;
        if (v9 < 4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v28 == 3)
        {
          v29 = *v25 | (*(v25 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        v29 = *v25;
        if (v9 < 4)
        {
LABEL_31:
          v26 = (v29 | (v27 << (8 * v9))) + 2;
          goto LABEL_32;
        }
      }

LABEL_29:
      v26 = v29 + 2;
      goto LABEL_32;
    }

    if (v28)
    {
      v29 = *v25;
      if (v9 < 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

LABEL_32:
  v30 = v9 + 1;
  v31 = v23 & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 1)
  {
    (*(v5 + 16))(v23 & 0xFFFFFFFFFFFFFFF8);
    *(((v23 | 7) + v8) & 0xFFFFFFFFFFFFFFF8) = *(((v24 | 7) + v8) & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 1;
  }

  else if (v26)
  {
    memcpy((v23 & 0xFFFFFFFFFFFFFFF8), v25, v9 + 1);
  }

  else
  {
    (*(v5 + 16))(v23 & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 0;
  }

  v32 = (((v24 | 7) + v30) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  v34 = (((v23 | 7) + v30) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v32;
  v34[1] = v33;
LABEL_38:

  return v4;
}

uint64_t destroy for AccessibilityRotorEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v4 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v4 + 16);
  if (v5 <= 2)
  {
    outlined consume of AccessibilityRotorEntryRange(*v4, *(v4 + 8), v5);
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((v4 + v7 + 17) & ~v7);
  v9 = *(v6 + 64);
  if (((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v9)
  {
    v10 = *(v6 + 64);
  }

  else
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v11 = v8[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = *v8;
    }

    else if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (v8[2] << 16);
    }

    else
    {
      v14 = *v8;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_22:
  if (v11 <= 1)
  {
    (*(v6 + 8))(v8);
  }
}

uint64_t initializeWithCopy for AccessibilityRotorEntry(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6 < 0xFFFFFFFF)
  {
    v10 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v6;
  }

  v11 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 16);
  if (v13 > 2)
  {
    v16 = *v12;
    *(v11 + 16) = *(v12 + 16);
    *v11 = v16;
  }

  else
  {
    v14 = *v12;
    v15 = *(v12 + 8);
    outlined copy of AccessibilityRotorEntryRange(*v12, v15, *(v12 + 16));
    *v11 = v14;
    *(v11 + 8) = v15;
    *(v11 + 16) = v13;
  }

  v17 = *(*(a3 + 16) - 8);
  v18 = *(v17 + 80) & 0xF8 | 7;
  v19 = ((v11 + v18 + 17) & ~v18);
  v20 = ((v12 + v18 + 17) & ~v18);
  v21 = *(v17 + 64);
  v22 = v21 + 7;
  if (((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v21)
  {
    v23 = *(v17 + 64);
  }

  else
  {
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v24 = v20[v23];
  v25 = v24 - 2;
  if (v24 < 2)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v26 = v23;
  }

  else
  {
    v26 = 4;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v27 = *v20;
  }

  else if (v26 == 2)
  {
    v27 = *v20;
  }

  else if (v26 == 3)
  {
    v27 = *v20 | (v20[2] << 16);
  }

  else
  {
    v27 = *v20;
  }

  v28 = (v27 | (v25 << (8 * v23))) + 2;
  v24 = v27 + 2;
  if (v23 < 4)
  {
    v24 = v28;
  }

LABEL_24:
  if (v24 == 1)
  {
    (*(v17 + 16))(v19, v20);
    *(&v19[v22] & 0xFFFFFFFFFFFFFFF8) = *(&v20[v22] & 0xFFFFFFFFFFFFFFF8);
    v19[v23] = 1;
  }

  else if (v24)
  {
    memcpy(v19, v20, v23 + 1);
  }

  else
  {
    (*(v17 + 16))(v19, v20);
    v19[v23] = 0;
  }

  v29 = (&v20[v23 + 8] & 0xFFFFFFFFFFFFFFF8);
  v31 = *v29;
  v30 = v29[1];
  v32 = (&v19[v23 + 8] & 0xFFFFFFFFFFFFFFF8);
  *v32 = v31;
  v32[1] = v30;

  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v14, v15);
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v6 >= 0xFFFFFFFF)
    {
      v7 = *a2;
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v8, v9);
      v10 = *a1;
      v11 = *(a1 + 8);
      v12 = *(a1 + 16);
      *a1 = v7;
      *(a1 + 8) = v8;
      *(a1 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
LABEL_8:
  v17 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v18 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = *(v17 + 16);
  v20 = *(v18 + 16);
  if (v19 > 2)
  {
    if (v20 <= 2)
    {
      v26 = *v18;
      v27 = *(v18 + 8);
      outlined copy of AccessibilityRotorEntryRange(*v18, v27, *(v18 + 16));
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v20;
      goto LABEL_15;
    }
  }

  else
  {
    if (v20 <= 2)
    {
      v21 = *v18;
      v22 = *(v18 + 8);
      outlined copy of AccessibilityRotorEntryRange(*v18, v22, *(v18 + 16));
      v23 = *v17;
      v24 = *(v17 + 8);
      *v17 = v21;
      *(v17 + 8) = v22;
      v25 = *(v17 + 16);
      *(v17 + 16) = v20;
      outlined consume of AccessibilityRotorEntryRange(v23, v24, v25);
      goto LABEL_15;
    }

    outlined consume of AccessibilityRotorEntryRange(*v17, *(v17 + 8), v19);
  }

  v28 = *v18;
  *(v17 + 16) = *(v18 + 16);
  *v17 = v28;
LABEL_15:
  v29 = *(a3 + 16);
  v30 = *(v29 - 8);
  v31 = *(v30 + 80) & 0xF8 | 7;
  v32 = ((v17 + v31 + 17) & ~v31);
  v33 = ((v18 + v31 + 17) & ~v31);
  v34 = *(v30 + 64);
  if (((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v34)
  {
    v35 = *(v30 + 64);
  }

  else
  {
    v35 = ((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v32 != v33)
  {
    v36 = v32[v35];
    v37 = v36 - 2;
    if (v36 < 2)
    {
      goto LABEL_33;
    }

    if (v35 <= 3)
    {
      v38 = v35;
    }

    else
    {
      v38 = 4;
    }

    if (v38 <= 1)
    {
      if (!v38)
      {
        goto LABEL_33;
      }

      v39 = *v32;
    }

    else if (v38 == 2)
    {
      v39 = *v32;
    }

    else if (v38 == 3)
    {
      v39 = *v32 | (v32[2] << 16);
    }

    else
    {
      v39 = *v32;
    }

    v40 = (v39 | (v37 << (8 * v35))) + 2;
    v36 = v39 + 2;
    if (v35 < 4)
    {
      v36 = v40;
    }

LABEL_33:
    if (v36 <= 1)
    {
      (*(v30 + 8))(v32, v29);
    }

    v41 = v33[v35];
    v42 = v41 - 2;
    if (v41 < 2)
    {
      goto LABEL_49;
    }

    if (v35 <= 3)
    {
      v43 = v35;
    }

    else
    {
      v43 = 4;
    }

    if (v43 <= 1)
    {
      if (!v43)
      {
LABEL_49:
        if (v41 == 1)
        {
          (*(v30 + 16))(v32, v33, v29);
          *(&v32[v34 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v33[v34 + 7] & 0xFFFFFFFFFFFFFFF8);
          v32[v35] = 1;
        }

        else if (v41)
        {
          memcpy(v32, v33, v35 + 1);
        }

        else
        {
          (*(v30 + 16))(v32, v33, v29);
          v32[v35] = 0;
        }

        goto LABEL_54;
      }

      v44 = *v33;
    }

    else if (v43 == 2)
    {
      v44 = *v33;
    }

    else if (v43 == 3)
    {
      v44 = *v33 | (v33[2] << 16);
    }

    else
    {
      v44 = *v33;
    }

    v45 = (v44 | (v42 << (8 * v35))) + 2;
    v41 = v44 + 2;
    if (v35 < 4)
    {
      v41 = v45;
    }

    goto LABEL_49;
  }

LABEL_54:
  v46 = (&v32[v35 + 8] & 0xFFFFFFFFFFFFFFF8);
  v47 = (&v33[v35 + 8] & 0xFFFFFFFFFFFFFFF8);
  v48 = v47[1];
  *v46 = *v47;
  v46[1] = v48;

  return a1;
}

_OWORD *initializeWithTake for AccessibilityRotorEntry(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  *(v5 + 16) = *(v6 + 16);
  *v5 = v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v5 + v9 + 17) & ~v9);
  v11 = ((v6 + v9 + 17) & ~v9);
  v12 = *(v8 + 64);
  v13 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v12)
  {
    v14 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v14 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v15 = v11[v14];
  v16 = v15 - 2;
  if (v15 < 2)
  {
    goto LABEL_18;
  }

  if (v14 <= 3)
  {
    v17 = v14;
  }

  else
  {
    v17 = 4;
  }

  if (v17 <= 1)
  {
    if (!v17)
    {
      goto LABEL_18;
    }

    v18 = *v11;
  }

  else if (v17 == 2)
  {
    v18 = *v11;
  }

  else if (v17 == 3)
  {
    v18 = *v11 | (v11[2] << 16);
  }

  else
  {
    v18 = *v11;
  }

  v19 = (v18 | (v16 << (8 * v14))) + 2;
  v15 = v18 + 2;
  if (v14 < 4)
  {
    v15 = v19;
  }

LABEL_18:
  if (v15 == 1)
  {
    (*(v8 + 32))(v10, v11);
    *(&v10[v13] & 0xFFFFFFFFFFFFFFF8) = *(&v11[v13] & 0xFFFFFFFFFFFFFFF8);
    v10[v14] = 1;
  }

  else if (v15)
  {
    memcpy(v10, v11, v14 + 1);
  }

  else
  {
    (*(v8 + 32))(v10, v11);
    v10[v14] = 0;
  }

  *(&v10[v14 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&v11[v14 + 8] & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(a2 + 24) >= 0xFFFFFFFFuLL)
    {
      v6 = *(a2 + 16);
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);
      *a1 = *a2;
      *(a1 + 16) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
LABEL_6:
  v11 = (a1 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v11 + 16);
  if (v13 <= 2)
  {
    v14 = *(v12 + 16);
    v15 = *v11;
    v16 = *(v11 + 8);
    if (v14 <= 2)
    {
      *v11 = *v12;
      *(v11 + 16) = v14;
      outlined consume of AccessibilityRotorEntryRange(v15, v16, v13);
      goto LABEL_11;
    }

    outlined consume of AccessibilityRotorEntryRange(v15, v16, v13);
  }

  v17 = *v12;
  *(v11 + 16) = *(v12 + 16);
  *v11 = v17;
LABEL_11:
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  v20 = *(v19 + 80) & 0xF8 | 7;
  v21 = v12 + v20;
  v22 = ((v11 + v20 + 17) & ~v20);
  v23 = ((v21 + 17) & ~v20);
  v24 = *(v19 + 64);
  if (((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v24)
  {
    v25 = *(v19 + 64);
  }

  else
  {
    v25 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v22 != v23)
  {
    v26 = v22[v25];
    v27 = v26 - 2;
    if (v26 < 2)
    {
      goto LABEL_29;
    }

    if (v25 <= 3)
    {
      v28 = v25;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_29;
      }

      v29 = *v22;
    }

    else if (v28 == 2)
    {
      v29 = *v22;
    }

    else if (v28 == 3)
    {
      v29 = *v22 | (v22[2] << 16);
    }

    else
    {
      v29 = *v22;
    }

    v30 = (v29 | (v27 << (8 * v25))) + 2;
    v26 = v29 + 2;
    if (v25 < 4)
    {
      v26 = v30;
    }

LABEL_29:
    if (v26 <= 1)
    {
      (*(v19 + 8))(v22, v18);
    }

    v31 = v23[v25];
    v32 = v31 - 2;
    if (v31 < 2)
    {
      goto LABEL_45;
    }

    if (v25 <= 3)
    {
      v33 = v25;
    }

    else
    {
      v33 = 4;
    }

    if (v33 <= 1)
    {
      if (!v33)
      {
LABEL_45:
        if (v31 == 1)
        {
          (*(v19 + 32))(v22, v23, v18);
          *(&v22[v24 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v23[v24 + 7] & 0xFFFFFFFFFFFFFFF8);
          v22[v25] = 1;
        }

        else if (v31)
        {
          memcpy(v22, v23, v25 + 1);
        }

        else
        {
          (*(v19 + 32))(v22, v23, v18);
          v22[v25] = 0;
        }

        goto LABEL_50;
      }

      v34 = *v23;
    }

    else if (v33 == 2)
    {
      v34 = *v23;
    }

    else if (v33 == 3)
    {
      v34 = *v23 | (v23[2] << 16);
    }

    else
    {
      v34 = *v23;
    }

    v35 = (v34 | (v32 << (8 * v25))) + 2;
    v31 = v34 + 2;
    if (v25 < 4)
    {
      v31 = v35;
    }

    goto LABEL_45;
  }

LABEL_50:
  *(&v22[v25 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&v23[v25 + 8] & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorEntry(int *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v6 = *(v3 + 80) & 0xF8;
  v7 = v6 | 7;
  v8 = v5 + 8;
  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v11 = ((v8 + ((v6 + 56) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  v13 = a2 - 2147483646;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == 4)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  else if (v15 == 2)
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = *(a1 + v11);
    if (!v16)
    {
LABEL_5:
      v9 = *((v8 + ((((a1 + 39) & 0xFFFFFFFFFFFFFFF8) + v7 + 17) & ~v7)) & 0xFFFFFFFFFFFFFFF8);
      if (v9 >= 0xFFFFFFFF)
      {
        LODWORD(v9) = -1;
      }

      return (v9 + 1);
    }
  }

  v17 = v16 - 1;
  if (v12)
  {
    v17 = 0;
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  return (v18 | v17) ^ 0x80000000;
}

int *storeEnumTagSinglePayload for AccessibilityRotorEntry(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v6 = *(v4 + 64);
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = (v7 + 56) & ~(v7 | 7);
  v10 = v6 + 8;
  v11 = ((v6 + 8 + v9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0)
  {
    v13 = a3 - 2147483646;
    if (v11)
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v12 = 1;
    }

    else
    {
      v12 = v14;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v15 = a2 & 0x7FFFFFFF;
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15 + 1;
    }

    if (v11)
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v15;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        *(result + v11) = v16;
      }

      else
      {
        *(result + v11) = v16;
      }
    }

    else if (v12)
    {
      *(result + v11) = v16;
    }

    return result;
  }

  v12 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v12 <= 1)
  {
    if (v12)
    {
      *(result + v11) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    *(result + v11) = 0;
    goto LABEL_28;
  }

  *(result + v11) = 0;
  if (a2)
  {
LABEL_29:
    *((v10 + ((((result + 39) & 0xFFFFFFFFFFFFFFF8) + v8 + 17) & ~v8)) & 0xFFFFFFFFFFFFFFF8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityRotorEntryElementSpecifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2[4] = *(result - 8) + 64;
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AccessibilityRotorEntryElementSpecifier(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v5)
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = *(v4 + 80);
  if ((v7 & 0x1000F8) != 0 || v6 + 1 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + (((v7 & 0xF8) + 23) & ~(v7 & 0xF8) & 0x1F8));

    return v3;
  }

  v10 = a2[v6];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v6))) + 2;
    v10 = v13 + 2;
    if (v6 < 4)
    {
      v10 = v14;
    }
  }

LABEL_24:
  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v6) = 1;
    return v3;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v6) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v6 + 1);
}

unsigned __int8 *destroy for AccessibilityRotorEntryElementSpecifier(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v2)
  {
    v2 = ((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *result;
    }

    else if (v5 == 2)
    {
      v6 = *result;
    }

    else if (v5 == 3)
    {
      v6 = *result | (result[2] << 16);
    }

    else
    {
      v6 = *result;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    v3 = v6 + 2;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *initializeWithCopy for AccessibilityRotorEntryElementSpecifier(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v4)
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_18:
  if (v6 == 1)
  {
    v11 = a1;
    (*(v3 + 16))();
    *(&v11[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v4 + 7] & 0xFFFFFFFFFFFFFFF8);
    v11[v5] = 1;
    return v11;
  }

  if (!v6)
  {
    v11 = a1;
    (*(v3 + 16))();
    v11[v5] = 0;
    return v11;
  }

  return memcpy(a1, a2, v5 + 1);
}

unsigned __int8 *assignWithCopy for AccessibilityRotorEntryElementSpecifier(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v4)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = result[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v5);
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_35;
  }

  if (v5 <= 3)
  {
    v15 = v5;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_33:
    v17 = (v16 | (v14 << (8 * v5))) + 2;
    v13 = v16 + 2;
    if (v5 < 4)
    {
      v13 = v17;
    }

    goto LABEL_35;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_33;
  }

LABEL_35:
  if (v13 == 1)
  {
    v19 = result;
    v20 = a2;
    (*(v3 + 16))();
    result = v19;
    *(&v19[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *((v20 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19[v5] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v5 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 16))();
    result = v18;
    v18[v5] = 0;
  }

  return result;
}

_BYTE *initializeWithTake for AccessibilityRotorEntryElementSpecifier(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v4)
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = a2[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = *a2;
    }

    else if (v8 == 2)
    {
      v9 = *a2;
    }

    else if (v8 == 3)
    {
      v9 = *a2 | (a2[2] << 16);
    }

    else
    {
      v9 = *a2;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_18:
  if (v6 == 1)
  {
    v11 = a1;
    (*(v3 + 32))();
    *(&v11[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v4 + 7] & 0xFFFFFFFFFFFFFFF8);
    v11[v5] = 1;
    return v11;
  }

  if (!v6)
  {
    v11 = a1;
    (*(v3 + 32))();
    v11[v5] = 0;
    return v11;
  }

  return memcpy(a1, a2, v5 + 1);
}

unsigned __int8 *assignWithTake for AccessibilityRotorEntryElementSpecifier(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v4)
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = result[v5];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << (8 * v5))) + 2;
    v6 = v9 + 2;
    if (v5 < 4)
    {
      v6 = v10;
    }
  }

LABEL_19:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v5);
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_35;
  }

  if (v5 <= 3)
  {
    v15 = v5;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_33:
    v17 = (v16 | (v14 << (8 * v5))) + 2;
    v13 = v16 + 2;
    if (v5 < 4)
    {
      v13 = v17;
    }

    goto LABEL_35;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_33;
  }

LABEL_35:
  if (v13 == 1)
  {
    v19 = result;
    v20 = a2;
    (*(v3 + 32))();
    result = v19;
    *(&v19[v4 + 7] & 0xFFFFFFFFFFFFFFF8) = *((v20 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    v19[v5] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v5 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v18[v5] = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorEntryElementSpecifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
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
      if (v11 >= 3)
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

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for AccessibilityRotorEntryElementSpecifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
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

uint64_t getEnumTag for AccessibilityRotorEntryElementSpecifier(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = ((v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 <= v2)
  {
    v3 = *(*(*(a2 + 16) - 8) + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 2;
    LODWORD(v4) = v7 + 2;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for AccessibilityRotorEntryElementSpecifier(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v3)
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 2;
      if (v4)
      {
        v7 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v7;
          a1[2] = BYTE2(v7);
        }

        else if (v4 == 2)
        {
          *a1 = v7;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 2;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t static AccessibilityRotorEntryElementSpecifier.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v47 = a2;
  v44 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v45 = v7;
  v42 = v8;
  v9 = type metadata accessor for AccessibilityRotorEntryElementSpecifier();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v40 - v19;
  v22 = &v40 + *(v21 + 48) - v19;
  v43 = v10;
  v23 = *(v10 + 16);
  v23(&v40 - v19, v46, v9, v18);
  (v23)(v22, v47, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v23)(v12, v20, v9);
      v25 = v45;
      v26 = *(swift_getTupleTypeMetadata2() + 48);
      v27 = *&v12[v26];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *&v22[v26];
        v29 = v44;
        v30 = v41;
        (*(v44 + 32))(v41, v22, v25);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *(v29 + 8);
        v32(v30, v25);
        v32(v12, v25);
        v33 = (v31 & 1) != 0 && v27 == v28;
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_11;
    }

    v33 = 1;
LABEL_14:
    v17 = v43;
    goto LABEL_15;
  }

  (v23)(v15, v20, v9);
  if (!swift_getEnumCaseMultiPayload())
  {
    v34 = v44;
    v35 = v6;
    v36 = v6;
    v37 = v45;
    (*(v44 + 32))(v36, v22, v45);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();
    v38 = *(v34 + 8);
    v38(v35, v37);
    v38(v15, v37);
    goto LABEL_14;
  }

  v12 = v15;
  v25 = v45;
LABEL_8:
  (*(v44 + 8))(v12, v25);
LABEL_11:
  v33 = 0;
  v9 = TupleTypeMetadata2;
LABEL_15:
  (*(v17 + 8))(v20, v9);
  return v33 & 1;
}

id outlined copy of AccessibilityRotorEntryRange?(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of AccessibilityRotorEntryRange(result, a2, a3);
  }

  return result;
}

uint64_t AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1, &v32);
  if (!v36)
  {
    v30[0] = v32;
    v30[1] = v33;
    v31 = v34;
    v12 = v5[1];
    v27 = *v5;
    v28 = v12;
    v29[0] = v5[2];
    *(v29 + 9) = *(v5 + 41);
    v13 = AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(v30, a2, a3 & 1, a5 & 1);
    v14 = v13;
    if (a4)
    {
      if (v13)
      {
        v15 = AccessibilityNode.resolvedRotorLeafElement.getter();
LABEL_12:
        v17 = v15;

LABEL_24:
        v22 = v30;
LABEL_42:
        outlined destroy of AnyHashable(v22);
        return v17;
      }
    }

    else if (v13)
    {
      v15 = AccessibilityNode.representedElement.getter();
      goto LABEL_12;
    }

    v17 = 0;
    goto LABEL_24;
  }

  if (v36 != 1)
  {
    if (a4)
    {
      v16 = AccessibilityNode.resolvedRotorLeafElement.getter();
    }

    else
    {
      v16 = AccessibilityNode.representedElement.getter();
    }

    v17 = [v16 rotorOwnerElement];

    return v17;
  }

  v27 = v32;
  v28 = v33;
  v10 = v35;
  *&v29[0] = v34;
  if (*(a2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope))
  {

    v11 = specialized AccessibilityRelationshipScope.nodes<A>(for:with:in:)(4u, &v27, v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_18;
    }

LABEL_30:

    if ((a5 & 1) == 0)
    {
      v20 = 0;
      if (a4)
      {
LABEL_34:
        if (v20)
        {
          v25 = v20;
          v26 = AccessibilityNode.resolvedRotorLeafElement.getter();
LABEL_39:
          v17 = v26;

LABEL_41:
          v22 = &v27;
          goto LABEL_42;
        }

        goto LABEL_40;
      }

LABEL_37:
      if (v20)
      {
        v25 = v20;
        v26 = AccessibilityNode.representedElement.getter();
        goto LABEL_39;
      }

LABEL_40:
      v17 = 0;
      goto LABEL_41;
    }

    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(319);
    MEMORY[0x18D00C9B0](0xD000000000000059, 0x800000018CD52390);
    v24 = AnyHashable.description.getter();
    MEMORY[0x18D00C9B0](v24);

    MEMORY[0x18D00C9B0](0xD0000000000000E4, 0x800000018CD523F0);
    MEMORY[0x18D009810](*&v30[0], *(&v30[0] + 1));
    v20 = 0;
    goto LABEL_32;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x18D00E9C0](0, v11);
    goto LABEL_21;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v11 + 32);
LABEL_21:
    v20 = v19;
    if (v11 >> 62)
    {
      v21 = __CocoaSet.count.getter();
    }

    else
    {
      v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < 2 || (a5 & 1) == 0)
    {
LABEL_33:
      if (a4)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(230);
    MEMORY[0x18D00C9B0](0xD000000000000066, 0x800000018CD522A0);
    v23 = AnyHashable.description.getter();
    MEMORY[0x18D00C9B0](v23);

    MEMORY[0x18D00C9B0](0xD00000000000007ELL, 0x800000018CD52310);
    MEMORY[0x18D009810](*&v30[0], *(&v30[0] + 1));
LABEL_32:

    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in AccessibilityRotorInfo.readEntryList(_:)(uint64_t a1, void (*a2)(void *))
{
  if ((*(a1 + 40) & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
  {
    *(&v9 + 1) = &type metadata for EmptyGenerator;
    v10 = &protocol witness table for EmptyGenerator;
  }

  else
  {
    outlined init with copy of DropInfo(WeakValue, v6);
    v8 = v6[0];
    v9 = v6[1];
    v10 = v7;
  }

  outlined init with copy of _Benchmark(&v8, v6);
  v5[3] = &unk_1EFFE5498;
  v5[4] = &protocol witness table for IndexingWrappingGenerator #1 in closure #1 in AccessibilityRotorInfo.readEntryList(_:);
  v5[0] = swift_allocObject();
  outlined init with copy of DropInfo(v6, v5[0] + 16);
  a2(v5);
  outlined destroy of AccessibilityRelationshipScope.Key(v5);
  outlined destroy of AccessibilityRelationshipScope.Key(v6);
  return outlined destroy of AccessibilityRelationshipScope.Key(&v8);
}

uint64_t closure #1 in AccessibilityRotorInfo.resolveAllEntries()(void *a1)
{
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 8))(&v5, &v4, &unk_1EFFE54C0, &protocol witness table for AccumulatingVisitor #1 in closure #1 in AccessibilityRotorInfo.resolveAllEntries(), v1, v2);
  return specialized Array.append<A>(contentsOf:)(v5);
}

uint64_t closure #1 in AccessibilityRotorInfo.entry(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      outlined init with copy of DropInfo(WeakValue, &v20);
      *&v13 = a2;
      v6 = *(&v21 + 1);
      v7 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
      (*(v7 + 8))(&v28, &v13, &unk_1EFFE5418, &protocol witness table for FirstVisitor #1 in AccessibilityRotorInfo.entry(at:), v6, v7);
      outlined destroy of AccessibilityRelationshipScope.Key(&v20);
    }
  }

  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v23 = v31;
  if (!*(&v33 + 1))
  {
    return outlined destroy of AnyAccessibilityValue?(&v20, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  }

  v17 = v32;
  v18 = v33;
  v19 = v34;
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v31;
  LOBYTE(v20) = 0;
  result = outlined destroy of AnyAccessibilityValue?(a3, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
  v9 = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v9;
  v10 = v19;
  v11 = v14;
  *a3 = v13;
  *(a3 + 16) = v11;
  v12 = v16;
  *(a3 + 32) = v15;
  *(a3 + 48) = v12;
  *(a3 + 96) = v10;
  *(a3 + 104) = a2;
  *(a3 + 112) = v20;
  return result;
}

void AccessibilityRotorInfo.closestEntry(in:on:going:from:range:resolveToLeaf:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v328) = a7;
  v327 = a6;
  v329 = a5;
  v330 = a4;
  v320 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v320);
  v319 = &v311 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v9[1];
  v385 = *v9;
  v386 = v18;
  v387[0] = v9[2];
  *(v387 + 9) = *(v9 + 41);
  v335 = *(a1 + 16);
  if (!v335)
  {
    *(a9 + 112) = 0;
    *(a9 + 80) = 0u;
    *(a9 + 96) = 0u;
    *(a9 + 48) = 0u;
    *(a9 + 64) = 0u;
    *(a9 + 16) = 0u;
    *(a9 + 32) = 0u;
    *a9 = 0u;
    return;
  }

  v336 = a8;
  LODWORD(v321) = a3;
  v315 = v16;
  v318 = a9;
  v19 = 0;
  v331 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_relationshipScope;
  v20 = MEMORY[0x1E69E7CC0];
  v334 = a1 + 32;
  v332 = a2;
  do
  {
    outlined init with copy of AccessibilityListRotorEntry(v334 + 120 * v19, &v368);
    outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(&v368, &v356);
    outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(&v356, &v360);
    v343 = v19;
    if (v363)
    {
      if (v363 != 1)
      {
        if (v336)
        {
          v33 = AccessibilityNode.resolvedRotorLeafElement.getter();
        }

        else
        {
          v33 = AccessibilityNode.representedElement.getter();
        }

        *&v341 = [v33 rotorOwnerElement];

        goto LABEL_40;
      }

      v345 = v360;
      v346 = v361;
      v21 = *(&v362 + 1);
      *&v347[0] = v362;
      v22 = *(a2 + v331);
      if (v22)
      {
        outlined init with copy of AnyHashable(&v345, v355);
        outlined init with copy of AnyHashable(v355, &v350);

        AnyHashable.init<A>(_:)();
        outlined destroy of AnyHashable(v355);
        *(&v379[0] + 1) = v21;
        swift_beginAccess();
        v23 = *(v22 + 16);
        if (*(v23 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(&v377), (v25 & 1) != 0) && (v26 = *(*(v23 + 56) + 8 * v24), *(v26 + 16)) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(4u), (v28 & 1) != 0))
        {
          v29 = *(*(v26 + 56) + 8 * v27);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v29 = MEMORY[0x1E69E7CC0];
        }

        outlined destroy of AccessibilityRelationshipScope.Key(&v377);
      }

      else
      {
        v29 = MEMORY[0x1E69E7CC0];
      }

      v34 = v29 >> 62;
      if (v29 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
LABEL_3:

LABEL_4:
          outlined destroy of AnyHashable(&v345);
          outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(&v356);
          outlined destroy of AccessibilityListRotorEntry(&v368);
          goto LABEL_5;
        }
      }

      else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_3;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x18D00E9C0](0, v29);
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
          goto LABEL_334;
        }

        v35 = *(v29 + 32);
        if (!v34)
        {
          goto LABEL_33;
        }
      }

      __CocoaSet.count.getter();
LABEL_33:

      if (v336)
      {
        if (!v35)
        {
          goto LABEL_4;
        }

        v31 = v35;
        v36 = AccessibilityNode.resolvedRotorLeafElement.getter();
      }

      else
      {
        if (!v35)
        {
          goto LABEL_4;
        }

        v31 = v35;
        v36 = AccessibilityNode.representedElement.getter();
      }

      *&v341 = v36;

      goto LABEL_39;
    }

    v345 = v360;
    v346 = v361;
    *&v347[0] = v362;
    v377 = v385;
    v378 = v386;
    v379[0] = v387[0];
    *(v379 + 9) = *(v387 + 9);
    v30 = AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(&v345, a2, 0, 0);
    v31 = v30;
    if (v336)
    {
      if (!v30)
      {
        goto LABEL_4;
      }

      v32 = AccessibilityNode.resolvedRotorLeafElement.getter();
    }

    else
    {
      if (!v30)
      {
        goto LABEL_4;
      }

      v32 = AccessibilityNode.representedElement.getter();
    }

    *&v341 = v32;
LABEL_39:

    outlined destroy of AnyHashable(&v345);
LABEL_40:
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(&v356);
    LODWORD(v10) = v373;
    if (v373 == 255)
    {
      v38 = 0;
      goto LABEL_71;
    }

    v37 = *(&v372 + 1);
    v38 = v372;
    if (v373 == 2)
    {
      outlined copy of AccessibilityRotorEntryRange(v372, *(&v372 + 1), 2);
      goto LABEL_71;
    }

    v39 = v341;
    ObjectType = swift_getObjectType();
    outlined copy of AccessibilityRotorEntryRange(v38, v37, v10);
    *&v342 = ObjectType;
    v41 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
    v34 = *(v41 + 2);
    v42 = v39;
    outlined copy of AccessibilityRotorEntryRange?(v38, v37, v10);
    v29 = v42;
    *&v340 = v29;
    *&v339 = v41;
    if (!v34)
    {
      goto LABEL_59;
    }

    v333 = v20;
    v43 = 0;
    v44 = (v41 + 40);
    *&v344 = v34;
    *&v338 = v38;
    LODWORD(v337) = v10;
    while (1)
    {
      a2 = *v44;
      if (!v10)
      {

        v50 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v38, v37);
        goto LABEL_55;
      }

      if (v10 != 1)
      {
        break;
      }

      v45 = *(v44 - 1);
      *&v377 = v38;
      *(&v377 + 1) = v37;
      *&v356 = v45;
      *(&v356 + 1) = a2;
      type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
      lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
      lazy protocol witness table accessor for type String and conformance String();
      swift_bridgeObjectRetain_n();
      v34 = _NSRange.init<A, B>(_:in:)();
      v29 = v46;
      if (v34 == NSNotFound.getter())
      {
        goto LABEL_46;
      }

      if (__OFADD__(v34, v29))
      {
        __break(1u);
        goto LABEL_329;
      }

      v47 = MEMORY[0x18D00C850](v45, a2);
      v48 = [v47 length];

      if (v48 < (v34 + v29))
      {
LABEL_46:

        v38 = v338;
        LODWORD(v10) = v337;
        v29 = v340;
        v41 = v339;
        goto LABEL_47;
      }

      v49 = v29;
      v29 = v340;
      v50 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v34, v49);
      v38 = v338;
      LODWORD(v10) = v337;
      v41 = v339;
LABEL_55:

      if (v50)
      {
        v34 = v43;
        goto LABEL_58;
      }

LABEL_47:
      ++v43;
      v44 += 2;
      v34 = v344;
      if (v344 == v43)
      {
        goto LABEL_58;
      }
    }

    v34 = 0;
LABEL_58:
    a2 = v332;
    v20 = v333;
LABEL_59:
    v51 = *(v41 + 2);
    if (v34 == v51)
    {

      outlined consume of AccessibilityRotorEntryRange?(v38, v37, v10);

      v52 = 0;
      goto LABEL_70;
    }

    if (v34 >= v51)
    {
      goto LABEL_332;
    }

    v53 = &v41[16 * v34 + 32];
    a2 = v53[1];
    if (!v10)
    {

      v55 = v38;
      v56 = v37;
      goto LABEL_67;
    }

    if (v10 == 1)
    {
      v54 = *v53;

      v55 = specialized String.resolveNSRange(_:in:)(v38, v37, v54, a2);
      if (v57)
      {
        goto LABEL_390;
      }

LABEL_67:
      v52 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v55, v56);

      outlined consume of AccessibilityRotorEntryRange?(v38, v37, v10);
      if (v52)
      {

        a2 = v332;
        v29 = v340;
        goto LABEL_70;
      }

LABEL_391:

      __break(1u);
      goto LABEL_392;
    }

    LOBYTE(v10) = 2;
    v52 = v38;
    a2 = v332;
LABEL_70:
    outlined consume of AccessibilityRotorEntryRange?(v38, v37, v10);

    v38 = v52;
LABEL_71:
    v381 = v373;
    v382 = v374;
    LOBYTE(v383) = v375;
    v377 = v368;
    v378 = v369;
    v379[0] = v370;
    v379[1] = v371;
    v380 = v372;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v59 = *(v20 + 2);
    v58 = *(v20 + 3);
    if (v59 >= v58 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v20);
    }

    *(v20 + 2) = v59 + 1;
    v60 = &v20[136 * v59];
    v61 = v377;
    v62 = v378;
    v63 = v379[1];
    *(v60 + 4) = v379[0];
    *(v60 + 5) = v63;
    *(v60 + 2) = v61;
    *(v60 + 3) = v62;
    v64 = v380;
    v65 = v382;
    v66 = v383;
    *(v60 + 7) = v381;
    *(v60 + 8) = v65;
    *(v60 + 6) = v64;
    v67 = v341;
    *(v60 + 18) = v66;
    *(v60 + 19) = v67;
    *(v60 + 20) = v38;
LABEL_5:
    v19 = v343 + 1;
  }

  while ((v343 + 1) != v335);
  v34 = *(v20 + 2);
  if (!v34)
  {

    v73 = outlined init with copy of AccessibilityListRotorEntry(v334, &v368);
    (*(&v373 + 1))(v73);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      *&v377 = 0;
      BYTE8(v377) = 1;
      ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
      swift_unknownObjectRelease();
    }

    v356 = v385;
    v357 = v386;
    v358[0] = v387[0];
    *(v358 + 9) = *(v387 + 9);
    v74 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v368, a2, 1, v336 & 1, 0);
    if (!v74)
    {
      *&v344 = *MEMORY[0x1E695D918];
      v91 = *MEMORY[0x1E695DA28];
      v92 = (v315 + 8);
      v93 = 4;
      do
      {
        if (!v93)
        {
          v75 = 0;
          v343 = 0;
          v116 = 0;
          v117 = 0;
          v344 = 0u;
          v340 = 0u;
          v341 = 0u;
          v338 = 0u;
          v339 = 0u;
          v342 = 0u;
          goto LABEL_324;
        }

        v94 = objc_opt_self();

        type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
        v95 = swift_allocObject();
        v96 = v344;
        *(v95 + 32) = v344;
        *(v95 + 40) = v91;
        swift_setDeallocating();
        type metadata accessor for NSRunLoopMode(0);
        v97 = v96;
        v98 = v91;
        v34 = v97;
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v99 = [v94 currentRunLoop];
        v100 = v319;
        Date.init(timeIntervalSinceNow:)();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v92)(v100, v320);
        LOBYTE(v100) = [v99 runMode:v34 beforeDate:isa];

        if ((v100 & 1) == 0)
        {
          [objc_opt_self() sleepForTimeInterval_];
        }

        --v93;
        v356 = v385;
        v357 = v386;
        v358[0] = v387[0];
        *(v358 + 9) = *(v387 + 9);
        v74 = AccessibilityRotorInfo.resolveElement(with:on:scrollIfNeeded:resolveToLeaf:shouldLog:)(&v368, v332, 1, v336 & 1, v93 == 0);
      }

      while (!v74);
    }

    v76 = *(&v372 + 1);
    v75 = v372;
    v77 = v373;
    v343 = v74;
    if (v373 == 2)
    {
      outlined copy of AccessibilityRotorEntryRange(v372, *(&v372 + 1), 2);
      goto LABEL_323;
    }

    if (v373 == 255)
    {
      v75 = 0;
      goto LABEL_323;
    }

    v106 = v74;
    v107 = swift_getObjectType();
    outlined copy of AccessibilityRotorEntryRange(v75, v76, v77);
    *&v342 = v107;
    a2 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
    v10 = *(a2 + 16);
    v29 = v106;
    outlined copy of AccessibilityRotorEntryRange?(v75, v76, v77);
    *&v344 = v29;
    if (!v10)
    {
      goto LABEL_311;
    }

    v34 = 0;
    *&v338 = a2;
    v108 = (a2 + 40);
    *&v341 = v76;
    LODWORD(v340) = v77;
    *&v339 = v10;
    while (1)
    {
      a2 = *v108;
      if (v77)
      {
        if (v77 != 1)
        {
          v10 = 0;
LABEL_310:
          a2 = v338;
LABEL_311:
          v277 = *(a2 + 16);
          if (v10 == v277)
          {

            outlined consume of AccessibilityRotorEntryRange?(v75, v76, v77);

            v10 = 0;
            goto LABEL_322;
          }

          if (v10 >= v277)
          {
            goto LABEL_340;
          }

          v278 = v76;
          v279 = (a2 + 32 + 16 * v10);
          v280 = v279[1];
          if (!v77)
          {

            v282 = v75;
            v283 = v278;
            goto LABEL_319;
          }

          if (v77 == 1)
          {
            v281 = *v279;

            v282 = specialized String.resolveNSRange(_:in:)(v75, v278, v281, v280);
            if (v284)
            {

              goto LABEL_396;
            }

LABEL_319:
            v10 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v282, v283);

            outlined consume of AccessibilityRotorEntryRange?(v75, v278, v77);
            if (!v10)
            {
              goto LABEL_396;
            }

            v76 = v278;
          }

          else
          {

            LOBYTE(v77) = 2;
            v10 = v75;
            v76 = v278;
          }

LABEL_322:
          outlined consume of AccessibilityRotorEntryRange?(v75, v76, v77);

          v75 = v10;
LABEL_323:
          outlined init with copy of AccessibilityListRotorEntry(&v368, &v377);
          v344 = v377;
          v340 = v379[0];
          v341 = v378;
          v342 = v381;
          v338 = v380;
          v339 = v379[1];
          v93 = *(&v382 + 1);
          v117 = v382;
          v116 = v383;
LABEL_324:
          outlined destroy of AccessibilityListRotorEntry(&v368);
          v377 = v344;
          v378 = v341;
          v379[0] = v340;
          v379[1] = v339;
          v381 = v342;
          v380 = v338;
          *&v382 = v117;
          *(&v382 + 1) = v93;
          *&v383 = v116;
          *(&v383 + 1) = v343;
          v384 = v75;
          if (*(&v342 + 1))
          {
            outlined init with copy of AccessibilityListRotorEntry(&v377, v318);
            outlined destroy of AccessibilityNavigationRotorEntry(&v377);
          }

          else
          {
            outlined destroy of AnyAccessibilityValue?(&v377, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
            v285 = v318;
            *(v318 + 112) = 0;
            v285[5] = 0u;
            v285[6] = 0u;
            v285[3] = 0u;
            v285[4] = 0u;
            v285[1] = 0u;
            v285[2] = 0u;
            *v285 = 0u;
          }

          return;
        }

        v109 = *(v108 - 1);
        *&v356 = v75;
        *(&v356 + 1) = v76;
        *&v360 = v109;
        *(&v360 + 1) = a2;
        type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
        lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
        lazy protocol witness table accessor for type String and conformance String();
        swift_bridgeObjectRetain_n();
        v110 = _NSRange.init<A, B>(_:in:)();
        v29 = v111;
        if (v110 == NSNotFound.getter())
        {
          goto LABEL_116;
        }

        if (__OFADD__(v110, v29))
        {
          goto LABEL_336;
        }

        v112 = MEMORY[0x18D00C850](v109, a2);
        v113 = [v112 length];

        if (v113 < (v110 + v29))
        {
LABEL_116:

          v76 = v341;
          v77 = v340;
          v10 = v339;
          goto LABEL_117;
        }

        v114 = v29;
        v29 = v344;
        v115 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v110, v114);
        v76 = v341;
        v77 = v340;
        v10 = v339;
      }

      else
      {

        v29 = v344;
        v115 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v75, v76);
      }

      if (v115)
      {
        v10 = v34;
        goto LABEL_310;
      }

LABEL_117:
      ++v34;
      v108 += 2;
      if (v10 == v34)
      {
        goto LABEL_310;
      }
    }
  }

  *&v344 = swift_getObjectType();
  v68 = NSObject.platformAccessibilityFrame.getter();
  v324 = v69;
  v325 = v68;
  v322 = v71;
  v323 = v70;
  v384 = 0;
  v383 = 0u;
  v382 = 0u;
  v381 = 0u;
  v380 = 0u;
  v378 = 0u;
  memset(v379, 0, sizeof(v379));
  v377 = 0u;
  v368 = *(a2 + OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_environment);
  v29 = &v368;
  EnvironmentValues.layoutDirection.getter();
  v72 = v356;
  v333 = v20;
  v337 = v34;
  if (!v328)
  {
    LODWORD(v338) = 0;
    goto LABEL_132;
  }

  if (v328 == 255)
  {
    v329 = 0;
    LODWORD(v338) = 1;
    goto LABEL_132;
  }

  LODWORD(v343) = v356;
  v78 = v330;
  v38 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
  a2 = *(v38 + 16);
  outlined copy of AccessibilityRotorEntryRange?(v329, v327, v328);
  v29 = v78;
  if (!a2)
  {
    goto LABEL_103;
  }

  v79 = 0;
  *&v342 = v38;
  v80 = (v38 + 40);
  while (2)
  {
    v83 = *v80;
    if (v328 == 2)
    {

      PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v329);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        break;
      }

      goto LABEL_95;
    }

    v10 = *(v80 - 1);
    *&v368 = v329;
    *(&v368 + 1) = v327;
    *&v356 = v10;
    *(&v356 + 1) = v83;
    type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_bridgeObjectRetain_n();
    v34 = _NSRange.init<A, B>(_:in:)();
    v85 = v84;
    if (v34 == NSNotFound.getter())
    {

      goto LABEL_95;
    }

    v86 = v34 + v85;
    if (__OFADD__(v34, v85))
    {
      goto LABEL_335;
    }

    v87 = MEMORY[0x18D00C850](v10, v83);
    v88 = [v87 length];

    if (v88 < v86)
    {
LABEL_95:
      ++v79;
      v80 += 2;
      if (a2 == v79)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

  a2 = v79;
LABEL_102:
  v20 = v333;
  v34 = v337;
  v38 = v342;
LABEL_103:
  v89 = *(v38 + 16);
  LODWORD(v338) = a2 == v89;
  if (a2 == v89)
  {

    v90 = 0;
    a2 = v332;
  }

  else
  {
    if (a2 >= v89)
    {
      goto LABEL_338;
    }

    v102 = (v38 + 32 + 16 * a2);
    v103 = v102[1];
    if (v328 == 2)
    {

      v104 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v329);
    }

    else
    {
      v118 = *v102;

      v104 = specialized String.resolveNSRange(_:in:)(v329, v327, v118, v103);
    }

    v90 = v104;
    v119 = v105;

    a2 = v332;
    if (v119)
    {
      goto LABEL_394;
    }

    v34 = v337;
  }

  outlined consume of AccessibilityRotorEntryRange?(v329, v327, v328);

  v329 = v90;
  v72 = v343;
LABEL_132:
  v314 = 0;
  v326 = 0;
  v311 = 0;
  v120 = 0;
  v121 = (v20 + 32);
  v336 = v72 ^ v321;
  v316 = 0;
  v317 = v72 ^ v321 ^ 1;
  v122 = 1.79769313e308;
  LODWORD(v327) = 1;
  v312 = 1;
  v328 = v20 + 32;
LABEL_133:
  while (2)
  {
    v313 = v122;
    while (2)
    {
      while (2)
      {
        v123 = v121 + 136 * v120++;
        outlined init with copy of AccessibilityNavigationRotorEntry(v123, &v368);
        if (v375)
        {
          goto LABEL_136;
        }

        *&v341 = *(&v374 + 1);
        v343 = v120;
        if ((v338 & 1) == 0)
        {
          v124 = v373;
          if (v373 != 255)
          {
            v38 = v372;
            if (v373)
            {
              v125 = a2;
              v34 = *(&v372 + 1);
              v126 = *(&v375 + 1);
              *&v339 = swift_getObjectType();
              v127 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
              v128 = *(v127 + 2);
              outlined copy of AccessibilityRotorEntryRange?(v38, v34, v124);
              v129 = v126;
              *&v342 = v34;
              outlined copy of AccessibilityRotorEntryRange?(v38, v34, v124);
              v29 = v129;
              LODWORD(v340) = v124;
              *&v344 = v128;
              v321 = v127;
              if (!v128)
              {
                goto LABEL_152;
              }

              v34 = v38;
              v130 = 0;
              v131 = (v127 + 40);
              while (1)
              {
                a2 = *v131;
                if (v124 == 2)
                {

                  PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v34);
                  v133 = v132;

                  if ((v133 & 1) == 0)
                  {
                    goto LABEL_150;
                  }
                }

                else
                {
                  v134 = *(v131 - 1);
                  *&v356 = v34;
                  *(&v356 + 1) = v342;
                  *&v360 = v134;
                  *(&v360 + 1) = a2;
                  type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
                  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
                  lazy protocol witness table accessor for type String and conformance String();
                  swift_bridgeObjectRetain_n();
                  v135 = _NSRange.init<A, B>(_:in:)();
                  v137 = v136;
                  if (v135 == NSNotFound.getter())
                  {

                    v20 = v333;
                    v124 = v340;
                  }

                  else
                  {
                    v138 = v135 + v137;
                    if (__OFADD__(v135, v137))
                    {
                      goto LABEL_330;
                    }

                    v139 = MEMORY[0x18D00C850](v134, a2);
                    v140 = [v139 length];

                    v141 = v140 < v138;
                    v20 = v333;
                    v124 = v340;
                    if (!v141)
                    {
LABEL_150:
                      *&v344 = v130;
LABEL_151:
                      v125 = v332;
                      v120 = v343;
                      v38 = v34;
LABEL_152:
                      a2 = v321;
                      v142 = *(v321 + 16);
                      if (v344 == v142)
                      {
                        v143 = v342;
                        outlined consume of AccessibilityRotorEntryRange?(v38, v342, v124);

                        outlined consume of AccessibilityRotorEntryRange?(v38, v143, v124);
                        v34 = v337;
                        a2 = v125;
                        v121 = v328;
                        goto LABEL_161;
                      }

                      if (v344 < v142)
                      {
                        v144 = (v321 + 32 + 16 * v344);
                        v145 = v124;
                        v10 = v144[1];
                        if (v145 == 2)
                        {

                          v146 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v38);
                          v147 = v38;
                          v38 = v146;
                          v149 = v148;
                          a2 = v147;
                          v150 = v147;
                          v151 = v342;
                          v152 = 2;
                        }

                        else
                        {
                          v153 = *v144;

                          v154 = v342;
                          v155 = specialized String.resolveNSRange(_:in:)(v38, v342, v153, v10);
                          v156 = v38;
                          v38 = v155;
                          v149 = v157;
                          a2 = v156;
                          v150 = v156;
                          v151 = v154;
                          v152 = v145;
                        }

                        outlined consume of AccessibilityRotorEntryRange?(v150, v151, v152);

                        v34 = v337;
                        if ((v149 & 1) == 0)
                        {

                          outlined consume of AccessibilityRotorEntryRange?(a2, v342, v340);

                          v121 = v328;
                          a2 = v332;
                          break;
                        }

LABEL_392:
                        outlined consume of AccessibilityRotorEntryRange?(a2, v342, v340);

                        __break(1u);
LABEL_393:
                        __break(1u);
LABEL_394:
                        outlined consume of AccessibilityRotorEntryRange?(v329, v327, v328);

                        __break(1u);
LABEL_395:
                        outlined consume of AccessibilityRotorEntryRange?(v38, v342, v340);

                        __break(1u);
LABEL_396:

                        __break(1u);
LABEL_397:

                        __break(1u);
LABEL_398:
                        outlined consume of AccessibilityRotorEntryRange?(v311, v342, v10);

                        __break(1u);
                        return;
                      }

LABEL_334:
                      __break(1u);
LABEL_335:
                      __break(1u);
LABEL_336:
                      __break(1u);
LABEL_337:
                      __break(1u);
LABEL_338:
                      __break(1u);
LABEL_339:
                      __break(1u);
LABEL_340:
                      __break(1u);
                      goto LABEL_341;
                    }
                  }
                }

                ++v130;
                v131 += 2;
                if (v344 == v130)
                {
                  goto LABEL_151;
                }
              }
            }

            if (v329 == v38)
            {
              goto LABEL_136;
            }
          }
        }

LABEL_161:
        v29 = *(&v375 + 1);
        *&v344 = swift_getObjectType();
        if (v29 == v330)
        {
          LODWORD(v10) = v373;
          if (v373 == 255)
          {
            goto LABEL_136;
          }

          v38 = v372;
          if (!v373)
          {
            goto LABEL_202;
          }

          v176 = a2;
          v177 = *(&v372 + 1);
          v178 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
          v179 = *(v178 + 2);
          v29 = v29;
          outlined copy of AccessibilityRotorEntryRange?(v38, v177, v10);
          *&v341 = v29;
          *&v342 = v177;
          v180 = v177;
          v34 = v179;
          outlined copy of AccessibilityRotorEntryRange?(v38, v180, v10);
          LODWORD(v340) = v10;
          if (!v179)
          {
            a2 = v176;
            v121 = v328;
            goto LABEL_193;
          }

          v181 = v178;
          v182 = 0;
          *&v339 = v181;
          v183 = (v181 + 40);
          while (1)
          {
            a2 = *v183;
            if (v10 == 2)
            {

              v29 = v341;
              PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v38);
              v185 = v184;

              if ((v185 & 1) == 0)
              {
                break;
              }

              goto LABEL_181;
            }

            v29 = v34;
            v10 = *(v183 - 1);
            v34 = v38;
            *&v356 = v38;
            *(&v356 + 1) = v342;
            *&v360 = v10;
            *(&v360 + 1) = a2;
            type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
            lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
            lazy protocol witness table accessor for type String and conformance String();
            swift_bridgeObjectRetain_n();
            v186 = _NSRange.init<A, B>(_:in:)();
            v188 = v187;
            if (v186 == NSNotFound.getter())
            {

              v120 = v343;
              v38 = v34;
              LODWORD(v10) = v340;
              v34 = v29;
              goto LABEL_181;
            }

            v189 = __OFADD__(v186, v188);
            v190 = v186 + v188;
            if (v189)
            {
              goto LABEL_331;
            }

            v191 = MEMORY[0x18D00C850](v10, a2);
            v192 = [v191 length];

            v141 = v192 < v190;
            v120 = v343;
            v38 = v34;
            LODWORD(v10) = v340;
            v34 = v29;
            if (!v141)
            {
              break;
            }

LABEL_181:
            ++v182;
            v183 += 2;
            if (v34 == v182)
            {
              goto LABEL_188;
            }
          }

          v34 = v182;
LABEL_188:
          a2 = v332;
          v20 = v333;
          v121 = v328;
          v178 = v339;
LABEL_193:
          v206 = *(v178 + 2);
          if (v34 == v206)
          {
            v207 = v342;
            outlined consume of AccessibilityRotorEntryRange?(v38, v342, v10);

            v29 = v341;

            outlined consume of AccessibilityRotorEntryRange?(v38, v207, v10);
            v34 = v337;
LABEL_136:
            outlined destroy of AccessibilityNavigationRotorEntry(&v368);
            if (v120 == v34)
            {
              goto LABEL_252;
            }

            continue;
          }

          if (v34 >= v206)
          {
            goto LABEL_339;
          }

          v208 = &v178[16 * v34 + 32];
          v10 = v208[1];
          v209 = v340;
          if (v340 == 2)
          {

            v29 = v341;
            v210 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v38);
            v212 = v211;
            outlined consume of AccessibilityRotorEntryRange?(v38, v342, 2);

            v34 = v337;
            if (v212)
            {
              goto LABEL_395;
            }
          }

          else
          {
            v213 = *v208;

            v214 = v342;
            v210 = specialized String.resolveNSRange(_:in:)(v38, v342, v213, v10);
            v29 = v215;
            outlined consume of AccessibilityRotorEntryRange?(v38, v214, v209);

            v34 = v337;
            if (v29)
            {
              goto LABEL_395;
            }
          }

          outlined consume of AccessibilityRotorEntryRange?(v38, v342, v340);

          v38 = v210;
          v121 = v328;
          v120 = v343;
LABEL_202:
          if (v338)
          {
            goto LABEL_203;
          }

          if (v312)
          {
            v216 = v329 < v38;
            if ((v336 & 1) == 0)
            {
              v216 = v38 < v329;
            }

            if (!v216)
            {
              goto LABEL_203;
            }

            goto LABEL_223;
          }

          v217 = v38 - v329;
          if (__OFSUB__(v38, v329))
          {
            goto LABEL_342;
          }

          if (v217 < 0)
          {
            v189 = __OFSUB__(0, v217);
            v217 = &v329[-v38];
            if (v189)
            {
              goto LABEL_385;
            }

            v218 = v311 - v329;
            if (!__OFSUB__(v311, v329))
            {
              goto LABEL_217;
            }

LABEL_386:
            __break(1u);
LABEL_387:
            __break(1u);
          }

          else
          {
            v218 = v311 - v329;
            if (__OFSUB__(v311, v329))
            {
              goto LABEL_343;
            }

LABEL_217:
            if (v218 < 0)
            {
              v189 = __OFSUB__(0, v218);
              v218 = -v218;
              if (v189)
              {
                goto LABEL_387;
              }
            }

            v219 = v329 < v38;
            if ((v336 & 1) == 0)
            {
              v219 = v38 < v329;
            }

            if (v219 && v217 < v218)
            {
LABEL_223:
              outlined destroy of AnyAccessibilityValue?(&v377, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
              outlined init with copy of AccessibilityNavigationRotorEntry(&v368, &v377);
              outlined destroy of AccessibilityNavigationRotorEntry(&v368);
              v312 = 0;
              v314 = 1;
              v316 = 1;
              v311 = v38;
              v122 = v313;
              if (v120 == v34)
              {
                goto LABEL_296;
              }

              goto LABEL_133;
            }

LABEL_203:
            outlined destroy of AccessibilityNavigationRotorEntry(&v368);
            v314 = 1;
            v122 = v313;
            if (v120 != v34)
            {
              goto LABEL_133;
            }

LABEL_252:
            if ((v327 | v316))
            {
              goto LABEL_296;
            }

            if (v336)
            {
              v250 = v326 + 1;
              if (!__OFADD__(v326, 1))
              {
                goto LABEL_258;
              }

              __break(1u);
            }

            v250 = v326 - 1;
            if (__OFSUB__(v326, 1))
            {
              goto LABEL_337;
            }

LABEL_258:
            if (v250 >= v335)
            {
              LOBYTE(v375) = 0;
              v373 = 0u;
              v374 = 0u;
              v371 = 0u;
              v372 = 0u;
              v369 = 0u;
              v370 = 0u;
              v368 = 0u;
              outlined destroy of AnyAccessibilityValue?(&v368, &lazy cache variable for type metadata for AccessibilityListRotorEntry?);
              goto LABEL_296;
            }

            outlined init with copy of AccessibilityListRotorEntry(v334 + 120 * v250, &v368);
            v251 = 0;
            v364 = v372;
            v365 = v373;
            v366 = v374;
            v367 = v375;
            v360 = v368;
            v361 = v369;
            v362 = v370;
            v363 = v371;
            v34 = *(&v374 + 1);
            v29 = v121;
            v252 = v375;
            do
            {
              if (v251 >= *(v20 + 2))
              {
                goto LABEL_333;
              }

              outlined init with copy of AccessibilityNavigationRotorEntry(v29, &v368);
              v38 = *(&v374 + 1);
              LOBYTE(v10) = v375;
              v254 = outlined destroy of AccessibilityNavigationRotorEntry(&v368);
              if (v10)
              {
                if (v252)
                {
                  goto LABEL_268;
                }
              }

              else
              {
                if (v38 == v34)
                {
                  v253 = v252;
                }

                else
                {
                  v253 = 1;
                }

                if ((v253 & 1) == 0)
                {
LABEL_268:
                  outlined destroy of AccessibilityListRotorEntry(&v360);
                  goto LABEL_295;
                }
              }

              ++v251;
              v29 += 136;
            }

            while (v337 != v251);
            (*(&v365 + 1))(v254);
            if (swift_unknownObjectWeakLoadStrong())
            {
              swift_getObjectType();
              *&v356 = 0;
              BYTE8(v356) = 1;
              ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
              swift_unknownObjectRelease();
            }

            v343 = "ng the first matching element.";
            *&v342 = "h namespaced identifier: ";
            *&v344 = *MEMORY[0x1E695D918];
            v255 = *MEMORY[0x1E695DA28];
            v256 = (v315 + 8);
            a2 = 4;
            while (2)
            {
              outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(&v360, v355);
              outlined init with copy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(v355, &v350);
              if (!v354)
              {
                v348[0] = v350;
                v348[1] = v351;
                v349 = v352;
                v345 = v385;
                v346 = v386;
                v347[0] = v387[0];
                *(v347 + 9) = *(v387 + 9);
                v29 = &v345;
                v258 = AccessibilityRotorInfo.resolveImplicitElement(with:on:scrollIfNeeded:shouldLog:)(v348, v332, 1, a2 == 0);
                if (v258)
                {
                  v286 = v258;

                  v276 = AccessibilityNode.representedElement.getter();

                  v287 = v348;
                  goto LABEL_350;
                }

                v259 = v348;
                goto LABEL_286;
              }

              if (v354 != 1)
              {

                v275 = AccessibilityNode.representedElement.getter();
                v276 = [v275 rotorOwnerElement];

                goto LABEL_351;
              }

              v345 = v350;
              v346 = v351;
              v257 = v353;
              *&v347[0] = v352;
              if (*(v332 + v331))
              {

                v29 = specialized AccessibilityRelationshipScope.nodes<A>(for:with:in:)(4u, &v345, v257);
              }

              else
              {
                v29 = MEMORY[0x1E69E7CC0];
              }

              v34 = v29 >> 62;
              if (!(v29 >> 62))
              {
                if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_290;
                }

LABEL_283:

                if (!a2)
                {
                  *&v348[0] = 0;
                  *(&v348[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(319);
                  MEMORY[0x18D00C9B0](0xD000000000000059, v343 | 0x8000000000000000);
                  v260 = AnyHashable.description.getter();
                  v34 = v261;
                  MEMORY[0x18D00C9B0](v260);

                  MEMORY[0x18D00C9B0](0xD0000000000000E4, v342 | 0x8000000000000000);
                  v29 = *(&v348[0] + 1);
                  MEMORY[0x18D009810](*&v348[0], *(&v348[0] + 1));
                }

                v259 = &v345;
LABEL_286:
                outlined destroy of AnyHashable(v259);
                outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(v355);
                if (!a2)
                {
                  outlined destroy of AccessibilityListRotorEntry(&v360);
                  v20 = v333;
LABEL_295:
                  v121 = v328;
                  goto LABEL_296;
                }

                v262 = objc_opt_self();

                type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>, type metadata accessor for NSRunLoopMode, MEMORY[0x1E69E6F90]);
                v263 = swift_allocObject();
                v264 = v344;
                *(v263 + 32) = v344;
                *(v263 + 40) = v255;
                swift_setDeallocating();
                type metadata accessor for NSRunLoopMode(0);
                LOBYTE(v10) = v265;
                v266 = v264;
                v267 = v255;
                v34 = v266;
                swift_arrayDestroy();
                swift_deallocClassInstance();
                v268 = [v262 currentRunLoop];
                v269 = v319;
                Date.init(timeIntervalSinceNow:)();
                v270 = Date._bridgeToObjectiveC()().super.isa;
                (*v256)(v269, v320);
                v38 = [v268 runMode:v34 beforeDate:v270];

                if ((v38 & 1) == 0)
                {
                  [objc_opt_self() sleepForTimeInterval_];
                }

                --a2;
                continue;
              }

              break;
            }

            if (!__CocoaSet.count.getter())
            {
              goto LABEL_283;
            }

LABEL_290:
            if ((v29 & 0xC000000000000001) != 0)
            {
              goto LABEL_344;
            }

            if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_384;
            }

            v271 = *(v29 + 32);
            v272 = v29 & 0xFFFFFFFFFFFFFF8;
            if (v34)
            {
              goto LABEL_345;
            }

LABEL_293:
            v273 = *(v272 + 16);
LABEL_346:

            if (v273 >= 2 && !a2)
            {
              *&v348[0] = 0;
              *(&v348[0] + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(230);
              MEMORY[0x18D00C9B0](0xD000000000000066, 0x800000018CD522A0);
              v288 = AnyHashable.description.getter();
              MEMORY[0x18D00C9B0](v288);

              MEMORY[0x18D00C9B0](0xD00000000000007ELL, 0x800000018CD52310);
              MEMORY[0x18D009810](*&v348[0], *(&v348[0] + 1));
            }

            v289 = v271;

            v276 = AccessibilityNode.representedElement.getter();

            v287 = &v345;
LABEL_350:
            outlined destroy of AnyHashable(v287);
LABEL_351:
            outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(v355);
            v10 = *(&v364 + 1);
            v38 = v364;
            v290 = v365;
            if (v365 == 2)
            {
              outlined copy of AccessibilityRotorEntryRange(v364, *(&v364 + 1), 2);
LABEL_382:
              outlined init with copy of AccessibilityListRotorEntry(&v360, &v356);
              *(&v359 + 1) = v276;
              v376 = v38;
              v370 = v358[0];
              v371 = v358[1];
              v372 = v358[2];
              v373 = v358[3];
              v368 = v356;
              v369 = v357;
              v374 = v358[4];
              v375 = v359;
              outlined destroy of AnyAccessibilityValue?(&v377, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
              v382 = v374;
              v383 = v375;
              v384 = v376;
              v379[0] = v370;
              v379[1] = v371;
              v381 = v373;
              v380 = v372;
              v377 = v368;
              v378 = v369;
              outlined destroy of AccessibilityListRotorEntry(&v360);
              goto LABEL_304;
            }

            if (v365 == 255)
            {
              v38 = 0;
              goto LABEL_382;
            }

            v291 = swift_getObjectType();
            outlined copy of AccessibilityRotorEntryRange(v38, v10, v290);
            v343 = v291;
            v292 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
            v293 = *(v292 + 2);
            v29 = v276;
            outlined copy of AccessibilityRotorEntryRange?(v38, v10, v290);
            *&v344 = v29;
            if (v293)
            {
              *&v339 = v276;
              v294 = 0;
              *&v338 = v292;
              v295 = (v292 + 40);
              *&v342 = v10;
              LODWORD(v341) = v290;
              *&v340 = v293;
              while (1)
              {
                a2 = *v295;
                if (v290)
                {
                  if (v290 != 1)
                  {
                    v293 = 0;
                    goto LABEL_369;
                  }

                  v296 = *(v295 - 1);
                  *&v345 = v38;
                  *(&v345 + 1) = v10;
                  v355[0] = v296;
                  v355[1] = a2;
                  type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
                  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
                  lazy protocol witness table accessor for type String and conformance String();
                  swift_bridgeObjectRetain_n();
                  v10 = _NSRange.init<A, B>(_:in:)();
                  v29 = v297;
                  if (v10 == NSNotFound.getter())
                  {
                    goto LABEL_357;
                  }

                  v298 = v38;
                  v38 = v10 + v29;
                  if (__OFADD__(v10, v29))
                  {
                    __break(1u);
LABEL_384:
                    __break(1u);
LABEL_385:
                    __break(1u);
                    goto LABEL_386;
                  }

                  v299 = MEMORY[0x18D00C850](v296, a2);
                  v300 = [v299 length];

                  v141 = v300 < v38;
                  v38 = v298;
                  if (v141)
                  {
LABEL_357:

                    v10 = v342;
                    v290 = v341;
                    v293 = v340;
                    goto LABEL_358;
                  }

                  v301 = v29;
                  v29 = v344;
                  v302 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v10, v301);
                  v10 = v342;
                  v290 = v341;
                  v293 = v340;
                }

                else
                {

                  v29 = v344;
                  v302 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v38, v10);
                }

                if (v302)
                {
                  v293 = v294;
LABEL_369:
                  v276 = v339;
                  v292 = v338;
                  break;
                }

LABEL_358:
                ++v294;
                v295 += 2;
                if (v293 == v294)
                {
                  goto LABEL_369;
                }
              }
            }

            v303 = *(v292 + 2);
            if (v293 == v303)
            {

              outlined consume of AccessibilityRotorEntryRange?(v38, v10, v290);

              v304 = 0;
LABEL_381:
              outlined consume of AccessibilityRotorEntryRange?(v38, v10, v290);

              v38 = v304;
              goto LABEL_382;
            }

            if (v293 < v303)
            {
              v305 = &v292[16 * v293 + 32];
              v306 = v305[1];
              if (v290)
              {
                if (v290 != 1)
                {

                  LOBYTE(v290) = 2;
                  v304 = v38;
                  goto LABEL_381;
                }

                v307 = *v305;

                v308 = specialized String.resolveNSRange(_:in:)(v38, v10, v307, v306);
                if (v310)
                {

                  goto LABEL_397;
                }
              }

              else
              {

                v308 = v38;
                v309 = v10;
              }

              v304 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedUITextRange(from:)(v308, v309);

              outlined consume of AccessibilityRotorEntryRange?(v38, v10, v290);
              if (!v304)
              {
                goto LABEL_397;
              }

              goto LABEL_381;
            }
          }

          __break(1u);
LABEL_389:
          __break(1u);
LABEL_390:

          goto LABEL_391;
        }

        break;
      }

      [v29 accessibilityFrame];
      x = v388.origin.x;
      y = v388.origin.y;
      width = v388.size.width;
      height = v388.size.height;
      if (CGRectIsEmpty(v388))
      {
        v162 = MEMORY[0x18D00C850](0x4774694B49555841, 0xEB0000000065756CLL);
        v163 = NSClassFromString(v162);

        if (v163)
        {
          v121 = v328;
          goto LABEL_165;
        }

        objc_opt_self();
        v193 = swift_dynamicCastObjCClass();
        v121 = v328;
        v34 = v337;
        if (v193)
        {
          v194 = v193;
          v195 = v29;
          [v194 frame];
          x = v196;
          y = v197;
          width = v198;
          height = v199;
          v200 = [v194 window];
          if (v200)
          {
            v201 = v200;
            [v194 bounds];
            [v201 convertRect:v194 fromCoordinateSpace:?];
            x = v202;
            y = v203;
            width = v204;
            height = v205;
          }

          else
          {
          }

LABEL_165:
          v34 = v337;
        }
      }

      *&v342 = x;
      v389.origin.x = x;
      v389.origin.y = y;
      v389.size.width = width;
      v389.size.height = height;
      MinX = CGRectGetMinX(v389);
      v166 = v324;
      v165 = v325;
      v390.origin.x = v325;
      v390.origin.y = v324;
      v168 = v322;
      v167 = v323;
      v390.size.width = v323;
      v390.size.height = v322;
      v169 = MinX - CGRectGetMinX(v390);
      *&v391.origin.x = v342;
      v391.origin.y = y;
      v391.size.width = width;
      v391.size.height = height;
      MinY = CGRectGetMinY(v391);
      v392.origin.x = v165;
      v392.origin.y = v166;
      v392.size.width = v167;
      v392.size.height = v168;
      v171 = CGRectGetMinY(v392);
      if ((v169 <= 0.0) | v336 & 1)
      {
        v172 = (v169 < 0.0) & v336;
      }

      else
      {
        v172 = 1;
      }

      v173 = fabs(v169);
      v174 = vabdd_f64(MinY, v171);
      if (v172 && v174 < v173 || ((v175 = MinY - v171, !((v175 <= 0.0) | v336 & 1)) || !((v175 >= 0.0) | v317 & 1)) && v174 >= v173)
      {
        LODWORD(v327) = 0;
        v326 = v341;
        goto LABEL_136;
      }

      v122 = v169 * v169 + v175 * v175;
      if (v122 >= v313)
      {
        outlined destroy of AccessibilityNavigationRotorEntry(&v368);
        v316 = 1;
        if (v120 == v34)
        {
          goto LABEL_296;
        }

        continue;
      }

      break;
    }

    v10 = v373;
    if (!v373)
    {
      v311 = v372;
      v312 = 0;
      goto LABEL_250;
    }

    if (v373 == 255)
    {
      v311 = 0;
      v312 = 1;
      goto LABEL_250;
    }

    v38 = *(&v372 + 1);
    v220 = v372;
    v221 = PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter();
    v222 = *(v221 + 2);
    v223 = v29;
    outlined copy of AccessibilityRotorEntryRange?(v220, v38, v10);
    v29 = v223;
    v311 = v220;
    *&v342 = v38;
    outlined copy of AccessibilityRotorEntryRange?(v220, v38, v10);
    *&v341 = v29;
    *&v340 = v221;
    if (!v222)
    {
      v233 = v342;
      goto LABEL_241;
    }

    v224 = 0;
    v225 = (v221 + 40);
    while (2)
    {
      v38 = *v225;
      if (v10 == 2)
      {

        PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v311);
        v227 = v226;

        if ((v227 & 1) == 0)
        {
          goto LABEL_238;
        }

LABEL_232:
        ++v224;
        v225 += 2;
        if (v222 == v224)
        {
          goto LABEL_239;
        }

        continue;
      }

      break;
    }

    v29 = v10;
    v10 = *(v225 - 1);
    *&v356 = v311;
    *(&v356 + 1) = v342;
    *&v360 = v10;
    *(&v360 + 1) = v38;
    type metadata accessor for AccessibilityRotorEntryElementSpecifier<AnyHashable>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
    lazy protocol witness table accessor for type String and conformance String();
    swift_bridgeObjectRetain_n();
    v228 = _NSRange.init<A, B>(_:in:)();
    v230 = v229;
    if (v228 == NSNotFound.getter())
    {

      a2 = v332;
      v10 = v29;
      v29 = v341;
      goto LABEL_232;
    }

    v189 = __OFADD__(v228, v230);
    a2 = v228 + v230;
    if (v189)
    {
      goto LABEL_389;
    }

    v231 = MEMORY[0x18D00C850](v10, v38);
    v232 = [v231 length];

    v141 = v232 < a2;
    a2 = v332;
    v10 = v29;
    v29 = v341;
    if (v141)
    {
      goto LABEL_232;
    }

LABEL_238:
    v222 = v224;
LABEL_239:
    v121 = v328;
    v34 = v337;
    v233 = v342;
    v221 = v340;
LABEL_241:
    v234 = *(v221 + 2);
    v312 = v222 == v234;
    if (v222 == v234)
    {
      v235 = v311;
      outlined consume of AccessibilityRotorEntryRange?(v311, v233, v10);

      v236 = 0;
      v20 = v333;
      goto LABEL_249;
    }

    if (v222 >= v234)
    {
      goto LABEL_393;
    }

    v237 = &v221[16 * v222 + 32];
    v238 = v237[1];
    v239 = v10;
    if (v10 == 2)
    {

      v240 = v311;
      v236 = PlatformAccessibilityElementProtocol<>.accessibilityResolvedNSRange(from:)(v311);
      v242 = v241;
      v243 = v240;
      v244 = v342;
      v245 = 2;
    }

    else
    {
      v246 = *v237;

      v247 = v311;
      v248 = v342;
      v236 = specialized String.resolveNSRange(_:in:)(v311, v342, v246, v238);
      v242 = v249;
      v243 = v247;
      v244 = v248;
      v245 = v239;
    }

    outlined consume of AccessibilityRotorEntryRange?(v243, v244, v245);

    v20 = v333;
    LOBYTE(v10) = v239;
    if (v242)
    {
      goto LABEL_398;
    }

    v121 = v328;
    v235 = v311;
    v233 = v342;
    v29 = v341;
LABEL_249:
    outlined consume of AccessibilityRotorEntryRange?(v235, v233, v10);

    v311 = v236;
    v120 = v343;
LABEL_250:
    outlined destroy of AnyAccessibilityValue?(&v377, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
    v382 = v374;
    v383 = v375;
    v384 = v376;
    v379[0] = v370;
    v379[1] = v371;
    v381 = v373;
    v380 = v372;
    v316 = 1;
    v377 = v368;
    v378 = v369;
    if (v120 != v34)
    {
      continue;
    }

    break;
  }

LABEL_296:
  outlined init with copy of AnyAccessibilityValue?(&v377, &v368, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
  if (*(&v373 + 1))
  {

    outlined destroy of AnyAccessibilityValue?(&v368, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
    goto LABEL_304;
  }

  outlined destroy of AnyAccessibilityValue?(&v368, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
  if (v314 & 1) != 0 && (v338 & 1) != 0 && (v336)
  {
    if (*(v20 + 2))
    {
      outlined init with copy of AccessibilityNavigationRotorEntry(v121, &v368);

      outlined assign with take of AccessibilityNavigationRotorEntry?(&v368, &v377);
      goto LABEL_304;
    }

LABEL_341:
    __break(1u);
LABEL_342:
    __break(1u);
LABEL_343:
    __break(1u);
LABEL_344:
    v271 = MEMORY[0x18D00E9C0](0, v29);
    v272 = v29 & 0xFFFFFFFFFFFFFF8;
    if (!v34)
    {
      goto LABEL_293;
    }

LABEL_345:
    v273 = __CocoaSet.count.getter();
    goto LABEL_346;
  }

LABEL_304:
  v274 = v318;
  if (*(&v381 + 1))
  {
    outlined init with copy of AccessibilityListRotorEntry(&v377, v318);
  }

  else
  {
    *(v318 + 112) = 0;
    v274[5] = 0u;
    v274[6] = 0u;
    v274[3] = 0u;
    v274[4] = 0u;
    v274[1] = 0u;
    v274[2] = 0u;
    *v274 = 0u;
  }

  outlined destroy of AnyAccessibilityValue?(&v377, &lazy cache variable for type metadata for AccessibilityNavigationRotorEntry?);
}