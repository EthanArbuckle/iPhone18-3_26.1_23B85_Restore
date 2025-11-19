uint64_t initializeWithCopy for ToolbarReader.UpdateToolbarBridge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for ToolbarReader.UpdateToolbarBridge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = v5;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for ToolbarReader.UpdateToolbarBridge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarReader.UpdateToolbarBridge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for ToolbarReader.UpdateToolbarBridge(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined assign with take of ToolbarStorage.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double (*LongPressGesture.maximumDistance.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return LongPressGesture.maximumDistance.modify;
}

double LongPressGesture.maximumDistance.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type LongPressGesture and conformance LongPressGesture()
{
  result = lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture;
  if (!lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture;
  if (!lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LongPressGesture and conformance LongPressGesture);
  }

  return result;
}

__n128 LongPressGesture.internalBody.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = specialized closure #1 in Gesture.longPressPhase();
  *(a1 + 16) = 0;
  result = *v1;
  *(a1 + 24) = *v1;
  *(a1 + 40) = 16;
  *(a1 + 48) = 1;
  return result;
}

uint64_t View.pressableGesture<A>(_:action:pressingAction:)()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for PressableGestureCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  swift_getWitnessTable();
  type metadata accessor for ModifierGesture();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
  type metadata accessor for AddGestureModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_checkMetadataState();
  swift_getOpaqueTypeConformance2();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t closure #1 in View.pressableGesture<A>(_:action:pressingAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a5;
  v52 = a6;
  v47 = a3;
  v48 = a4;
  v49 = a2;
  v50 = a1;
  v53 = a8;
  v46 = a11;
  v45 = a7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for PressableGestureCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  swift_getWitnessTable();
  v11 = type metadata accessor for ModifierGesture();
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E69801F8];
  v54 = v11;
  v55 = MEMORY[0x1E69801F8];
  v14 = MEMORY[0x1E69801F0];
  v56 = WitnessTable;
  v57 = MEMORY[0x1E69801F0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v38 - v16;
  v54 = v11;
  v55 = v13;
  v56 = WitnessTable;
  v57 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = OpaqueTypeConformance2;
  v19 = lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
  v54 = OpaqueTypeMetadata2;
  v55 = MEMORY[0x1E697FE30];
  v20 = OpaqueTypeMetadata2;
  v56 = OpaqueTypeConformance2;
  v57 = v19;
  type metadata accessor for AddGestureModifier();
  v21 = type metadata accessor for ModifiedContent();
  v43 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v38 = &v38 - v22;
  v23 = swift_getWitnessTable();
  v61 = a9;
  v62 = v23;
  v39 = swift_getWitnessTable();
  v54 = v21;
  v55 = &type metadata for PrimitiveButtonGesture;
  v56 = v39;
  v57 = &protocol witness table for PrimitiveButtonGesture;
  v40 = MEMORY[0x1E69813C8];
  v24 = swift_getOpaqueTypeMetadata2();
  v41 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v38 - v28;
  Gesture<>.callbacks(pressing:pressed:)(0, 0, v47, v48, v45, a10, v17);
  View.gesture<A>(_:including:)();
  (*(v44 + 8))(v17, v20);
  v30 = v51;
  if (v51)
  {
    v31 = v52;
  }

  else
  {
    v31 = 0;
  }

  if (v51)
  {
    v32 = 1;
  }

  else
  {
    v32 = -1;
  }

  v54 = v51;
  v55 = v31;
  LOBYTE(v56) = v32;
  v58 = 0;
  v59 = 0;
  v57 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v60 = 1;
  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v51, v52);
  v33 = v39;
  v34 = v38;
  View.globallySimultaneousGesture<A>(_:name:isEnabled:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v30);
  (*(v43 + 8))(v34, v21);
  v54 = v21;
  v55 = &type metadata for PrimitiveButtonGesture;
  v56 = v33;
  v57 = &protocol witness table for PrimitiveButtonGesture;
  v35 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v26, v24, v35);
  v36 = *(v41 + 8);
  v36(v26, v24);
  static ViewBuilder.buildExpression<A>(_:)(v29, v24, v35);
  return (v36)(v29, v24);
}

uint64_t closure #2 in View.pressableGesture<A>(_:action:pressingAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37 = a5;
  v38 = a6;
  v35 = a3;
  v36 = a4;
  v41 = a1;
  v42 = a8;
  v34 = a11;
  v39 = a2;
  v40 = a9;
  v33 = a7;
  swift_getAssociatedTypeWitness();
  type metadata accessor for PressableGestureCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  swift_getWitnessTable();
  v11 = type metadata accessor for ModifierGesture();
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x1E69801F8];
  v45 = v11;
  v46 = MEMORY[0x1E69801F8];
  v14 = MEMORY[0x1E69801F0];
  v47 = WitnessTable;
  v48 = MEMORY[0x1E69801F0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v32 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v32 - v16;
  v45 = v11;
  v46 = v13;
  v47 = WitnessTable;
  v48 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
  v45 = OpaqueTypeMetadata2;
  v46 = MEMORY[0x1E697FE30];
  v47 = OpaqueTypeConformance2;
  v48 = v19;
  type metadata accessor for AddGestureModifier();
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v32 - v25;
  Gesture<>.callbacks(pressing:pressed:)(v35, v36, v37, v38, v33, a10, v17);
  v27 = v40;
  View.gesture<A>(_:including:)();
  (*(v32 + 8))(v17, OpaqueTypeMetadata2);
  v28 = swift_getWitnessTable();
  v43 = v27;
  v44 = v28;
  v29 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v23, v20, v29);
  v30 = *(v21 + 8);
  v30(v23, v20);
  static ViewBuilder.buildExpression<A>(_:)(v26, v20, v29);
  return (v30)(v26, v20);
}

uint64_t protocol witness for static PressableEventValue.isPressing(_:) in conformance Bool(char *a1)
{
  v1 = *a1;
  if (a1[1] == 2)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1] > 1u)
  {
    v1 = v2;
  }

  return v1 & 1;
}

uint64_t (*DelayedLongPressGesture.maximumDistance.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return DelayedLongPressGesture.maximumDistance.modify;
}

uint64_t DelayedLongPressGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
  v3 = v2;
  v34 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
  v35 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
  v37 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>();
  v39 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  default argument 0 of DistanceGesture.init(minimumDistance:maximumDistance:)();
  DistanceGesture.init(minimumDistance:maximumDistance:)();
  v50 = 0;
  memset(&v49[1], 0, 32);
  v51 = 2;
  v49[0] = v41;
  v45 = 0;
  v46 = specialized closure #1 in Gesture.longPressPhase();
  v47 = 0;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = v13;
  v42 = 0x7FF0000000000000;
  LOBYTE(v43) = 0;
  type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>();
  v15 = v14;
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
  v17 = v16;
  v18 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
  v19 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
  Gesture.ended<A>(by:advanceImmediately:)();

  v45 = 0;
  v46 = v13;
  v47 = 0x7FF0000000000000;
  v48 = 0;
  *&v41 = v15;
  *(&v41 + 1) = v17;
  v20 = MEMORY[0x1E69E6370];
  v42 = MEMORY[0x1E69E6370];
  v43 = v18;
  v44 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  Gesture.enabled<A>(by:)();
  (*(v34 + 8))(v5, v3);
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
  v23 = v22;
  *&v41 = v3;
  *(&v41 + 1) = v17;
  v42 = v20;
  v43 = OpaqueTypeConformance2;
  v44 = v19;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
  v26 = v32;
  v27 = v35;
  Gesture.gated<A>(by:)();
  (*(v36 + 8))(v8, v27);
  *&v41 = v27;
  *(&v41 + 1) = v23;
  v42 = v20;
  v43 = v24;
  v44 = v25;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  v29 = v37;
  Gesture.eventFilter<A>(forType:_:)();
  (*(v38 + 8))(v26, v29);
  LOBYTE(v41) = 2;
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>);
  Gesture.dependency(_:)();
  sub_18C0EC860(v28);
  return outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v49);
}

uint64_t SingleLongPressGesture.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = *(a1 + 24);
  v35 = v3;
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
  v6 = v5;
  v38 = v5;
  v37 = *(a1 + 32);
  v7 = v37;
  v40 = MEMORY[0x1E697E860];
  v36 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
  *&v48 = v3;
  *(&v48 + 1) = v6;
  *&v49 = v7;
  *(&v49 + 1) = v36;
  v8 = type metadata accessor for EndedByWrapper();
  v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v31 - v9;
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
  v11 = v10;
  v12 = *(a1 + 16);
  WitnessTable = swift_getWitnessTable();
  v31[0] = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
  *&v48 = v8;
  *(&v48 + 1) = v11;
  v31[1] = v11;
  *&v49 = v12;
  *(&v49 + 1) = WitnessTable;
  v31[2] = WitnessTable;
  *&v50 = v31[0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = v31 - v15;
  v17 = type metadata accessor for EventFilter();
  v18 = swift_getWitnessTable();
  *&v48 = v8;
  *(&v48 + 1) = v11;
  *&v49 = v12;
  *(&v49 + 1) = WitnessTable;
  *&v50 = v31[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v48 = v17;
  *(&v48 + 1) = OpaqueTypeMetadata2;
  *&v49 = v18;
  *(&v49 + 1) = OpaqueTypeConformance2;
  v19 = type metadata accessor for ModifierGesture();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v31 - v21;
  v23 = *(a1 + 44);
  v24 = v39;
  v25 = *(v39 + v23);
  default argument 0 of DistanceGesture.init(minimumDistance:maximumDistance:)();
  DistanceGesture.init(minimumDistance:maximumDistance:)();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v52 = 2;
  v48 = v45;
  v26 = v41;
  v27 = v24;
  v28 = v35;
  (*(v43 + 16))(v41, v27, v35);
  LOBYTE(v45) = 0;
  *(&v45 + 1) = v25;
  v46 = 0x7FF0000000000000;
  v47 = 0;
  v29 = v33;
  EndedByWrapper.init(base:condition:)(v26, &v45, v28, v38, v33);
  swift_checkMetadataState();
  Gesture.gated<A>(by:)();
  (*(v42 + 8))(v29, v8);
  Gesture.eventFilter<A>(forType:_:)();
  (*(v34 + 8))(v16, OpaqueTypeMetadata2);
  LOBYTE(v45) = 2;
  swift_getWitnessTable();
  Gesture.dependency(_:)();
  (*(v20 + 8))(v22, v19);
  return outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(&v48);
}

uint64_t EndedByWrapper.init(base:condition:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for EndedByWrapper();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t static EndedByWrapper._makeGesture(gesture:inputs:)()
{
  type metadata accessor for EndedByWrapper();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  swift_getAssociatedTypeWitness();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for EndedByWrapper.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getOpaqueTypeConformance2();
  return static Gesture.makeDebuggableGesture(gesture:inputs:)();
}

uint64_t EndedByWrapper.Child.wrapper.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EndedByWrapper();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t EndedByWrapper.Child.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v32 = *(a3 - 8);
  v33 = HIDWORD(a1) & 1;
  MEMORY[0x1EEE9AC00](a1);
  v31 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v17 = type metadata accessor for EndedByWrapper();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v29 - v22;
  v29[1] = a4;
  EndedByWrapper.Child.wrapper.getter(v29 - v22);
  (*(v35 + 16))(v12, v23, a2);
  v24 = *(v18 + 8);
  v24(v23, v17);
  EndedByWrapper.Child.wrapper.getter(v20);
  v25 = v31;
  v26 = v32;
  (*(v32 + 16))(v31, &v20[*(v17 + 52)], a3);
  v24(v20, v17);
  v27 = v30;
  Gesture.ended<A>(by:advanceImmediately:)();
  (*(v26 + 8))(v25, a3);
  return (*(v35 + 8))(v27, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance EndedByWrapper<A, B>.Child@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  return (*(*(OpaqueTypeMetadata2 - 8) + 56))(a1, 1, 1, OpaqueTypeMetadata2);
}

uint64_t protocol witness for Rule.value.getter in conformance EndedByWrapper<A, B>.Child@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x100000000;
  if (!*(v2 + 4))
  {
    v3 = 0;
  }

  return EndedByWrapper.Child.value.getter(v3 | *v2, a1[2], a1[3], a1[4], a2);
}

unint64_t lazy protocol witness table accessor for type DelayedLongPressGesture and conformance DelayedLongPressGesture()
{
  result = lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture;
  if (!lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture;
  if (!lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DelayedLongPressGesture and conformance DelayedLongPressGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>)
  {
    v0 = MEMORY[0x1E697E1D0];
    type metadata accessor for MapGesture<TappableEvent, Bool>(255, &lazy cache variable for type metadata for MapGesture<TappableEvent, Bool>, MEMORY[0x1E697E1D0], MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    type metadata accessor for MapGesture<TappableEvent, Bool>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, v0, MEMORY[0x1E697E1C8], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<TappableEvent, Bool> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<TappableEvent, Bool> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<TappableEvent, Bool> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<TappableEvent, Bool> and conformance MapGesture<A, B>)
  {
    type metadata accessor for MapGesture<TappableEvent, Bool>(255, &lazy cache variable for type metadata for MapGesture<TappableEvent, Bool>, MEMORY[0x1E697E1D0], MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<TappableEvent, Bool> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<TappableEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<TappableEvent> and conformance EventListener<A>)
  {
    type metadata accessor for MapGesture<TappableEvent, Bool>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, MEMORY[0x1E697E1D0], MEMORY[0x1E697E1C8], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<TappableEvent> and conformance EventListener<A>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>)
  {
    v0 = MEMORY[0x1E697E1D0];
    type metadata accessor for DurationGesture<TappableEvent>(255, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, MEMORY[0x1E697E1D0], MEMORY[0x1E697E6A8]);
    type metadata accessor for MapGesture<TappableEvent, Bool>(255, &lazy cache variable for type metadata for EventListener<TappableEvent>, v0, MEMORY[0x1E697E1C8], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type DurationGesture<TappableEvent> and conformance DurationGesture<A>();
    lazy protocol witness table accessor for type EventListener<TappableEvent> and conformance EventListener<A>();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DurationGesture<TappableEvent> and conformance DurationGesture<A>()
{
  result = lazy protocol witness table cache variable for type DurationGesture<TappableEvent> and conformance DurationGesture<A>;
  if (!lazy protocol witness table cache variable for type DurationGesture<TappableEvent> and conformance DurationGesture<A>)
  {
    type metadata accessor for DurationGesture<TappableEvent>(255, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, MEMORY[0x1E697E1D0], MEMORY[0x1E697E6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DurationGesture<TappableEvent> and conformance DurationGesture<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CategoryGesture<Bool> and conformance CategoryGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DurationGesture<TappableEvent>(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CategoryGesture<Bool>, SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<Bool>, SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>>)
  {
    v0 = MEMORY[0x1E697E628];
    type metadata accessor for DurationGesture<TappableEvent>(255, &lazy cache variable for type metadata for CategoryGesture<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697E628]);
    type metadata accessor for SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>();
    lazy protocol witness table accessor for type CategoryGesture<Bool> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type CategoryGesture<Bool> and conformance CategoryGesture<A>, &lazy cache variable for type metadata for CategoryGesture<Bool>, v0);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>> and conformance SingleLongPressGesture<A, B>, type metadata accessor for SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<Bool>, SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>>);
    }
  }
}

void type metadata accessor for SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>()
{
  if (!lazy cache variable for type metadata for SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>)
  {
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
    v0 = type metadata accessor for SingleLongPressGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SingleLongPressGesture<Bool, ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>>);
    }
  }
}

void type metadata accessor for MapGesture<TappableEvent, Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongPressGesture>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<Bool>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>);
    v3 = type metadata accessor for ModifierGesture();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t type metadata completion function for SingleLongPressGesture()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SingleLongPressGesture(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for SingleLongPressGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for SingleLongPressGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for SingleLongPressGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for SingleLongPressGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SingleLongPressGesture(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for SingleLongPressGesture(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void type metadata accessor for DurationGesture<TappableEvent>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SliderTickContentForEach.init<A>(_:id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30[0] = a3;
  v30[1] = a4;
  v31 = a9;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
  v32 = v20;
  v33 = v19;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v24 = type metadata accessor for ForEach();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v30 - v26;
  (*(v15 + 16))(v17, a1, a5, v25);
  v32 = a2;
  ForEach.init(_:idGenerator:content:)();
  (*(v15 + 8))(a1, a5);
  v32 = a5;
  v33 = v19;
  v34 = a6;
  v35 = a7;
  v36 = a8;
  v28 = type metadata accessor for ForEach();
  return (*(*(v28 - 8) + 32))(v31, v27, v28);
}

uint64_t SliderTickContentForEach.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v29 = a2;
  v30 = a3;
  v31 = a9;
  v16 = *(a4 - 8);
  v28 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  KeyPath = a4;
  v40 = a5;
  v41 = a6;
  v42 = a8;
  v43 = AssociatedConformanceWitness;
  v20 = type metadata accessor for ForEach();
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v26 - v22;
  (*(v16 + 16))(v18, a1, a4, v21);
  v32 = a4;
  v33 = a5;
  v34 = a6;
  v35 = v27;
  v36 = a8;
  v37 = v28;
  v38 = a11;
  KeyPath = swift_getKeyPath();
  ForEach.init(_:idGenerator:content:)();
  (*(v16 + 8))(a1, a4);
  KeyPath = a4;
  v40 = a5;
  v41 = a6;
  v42 = a8;
  v43 = AssociatedConformanceWitness;
  v24 = type metadata accessor for ForEach();
  return (*(*(v24 - 8) + 32))(v31, v23, v24);
}

double SliderTickContentForEach.init<A>(_:content:)@<D0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a8;
  v15[7] = a1;
  v15[8] = a2;
  type metadata accessor for Range<Int>();
  v17 = v16;
  v18 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  ForEach.init(_:idGenerator:content:)();
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v24 = v28;
  *&v29 = v17;
  *(&v29 + 1) = a3;
  *&v30 = a4;
  *(&v30 + 1) = v18;
  *&v31 = a6;
  v19 = type metadata accessor for ForEach();
  (*(*(v19 - 8) + 32))(&v29, v23, v19);
  v20 = v32;
  v21 = v30;
  *a7 = v29;
  *(a7 + 16) = v21;
  result = *&v31;
  *(a7 + 32) = v31;
  *(a7 + 48) = v20;
  return result;
}

uint64_t SliderTickContentForEach.body.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v7 + 40);
  v10.i64[0] = v3;
  v23 = *(v7 + 48);
  v8 = v23;
  v14 = *(v7 + 24);
  *&v11 = vdupq_laneq_s64(v14, 1).u64[0];
  *(&v11 + 1) = v9;
  v21 = vzip1q_s64(v10, v14);
  v22 = v11;
  type metadata accessor for ForEach();
  ForEach.data.getter();
  v15 = v3;
  v16 = v14;
  v17 = v9;
  v18 = v8;
  v19 = *(a1 + 56);
  v20 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = Sequence.flatMap<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t closure #1 in SliderTickContentForEach.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = v14;
  v22[2] = v15;
  v22[3] = v16;
  v22[4] = v17;
  v22[5] = v18;
  v19 = type metadata accessor for ForEach();
  v20 = specialized ForEach.content.getter(v19);

  v20(a1);

  (*(a8 + 40))(a5, a8);
  return (*(v11 + 8))(v13, a5);
}

uint64_t protocol witness for SliderTickContent.body.getter in conformance SliderTickContentForEach<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = SliderTickContentForEach.body.getter(a1);
  *a2 = result;
  return result;
}

uint64_t _ConditionalContent<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v22[0] = a3;
  v22[1] = a4;
  v7 = *(a1 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _ConditionalContent.Storage();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v22 - v18;
  (*(v20 + 16))(v22 - v18, v5, v16, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v19, v7);
    (*(v22[0] + 40))(v7);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    (*(v13 + 32))(v15, v19, v12);
    (*(a2 + 40))(v12, a2);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t Optional<A>.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v24 - v7;
  v9 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v2, a1, v14);
  if ((*(v9 + 48))(v16, 1, v5) == 1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for SliderTick();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v5);
    v19 = (*(a2 + 40))(v5, a2);
    MEMORY[0x1EEE9AC00](v19);
    v24[-2] = v5;
    v24[-1] = a2;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v20 = type metadata accessor for SliderTick();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in Optional<A>.body.getter, &v24[-4], AssociatedTypeWitness, v20, MEMORY[0x1E69E73E0], *(*(AssociatedConformanceWitness + 8) + 8), MEMORY[0x1E69E7410], v22);
    (*(v24[0] + 8))(v8, AssociatedTypeWitness);
    (*(v9 + 8))(v12, v5);
    return v23;
  }
}

uint64_t closure #1 in Optional<A>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for SliderTick();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t protocol witness for SliderTickContent.body.getter in conformance <A> A?@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Optional<A>.body.getter(a1, *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t protocol witness for SliderTickContent.body.getter in conformance EmptySliderTick<A>@<X0>(uint64_t *a1@<X8>)
{
  result = specialized EmptySliderTick.body.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for SliderTickContentForEach()
{
  result = type metadata accessor for ForEach();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized EmptySliderTick.body.getter()
{
  type metadata accessor for SliderTick();

  return static Array._allocateUninitialized(_:)();
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for UTType();
    ++v2;
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t View.multimodalNavigationChrome(shouldDisplay:bottomBarTransitionProgress:backButtonAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  static Binding.constant(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = a7;

  *&v15 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
  *(&v15 + 1) = v13;
  View.multimodalNavigationChrome(shouldDisplay:isKeyboardVisible:bottomBarTransitionProgress:backButtonAction:)(a1, a2, a3, v20, v21, v22, a4, a5 & 1, v15, a8, a9);
}

uint64_t View.multimodalNavigationChrome(shouldDisplay:isKeyboardVisible:bottomBarTransitionProgress:backButtonAction:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *&v34 = a1;
  *(&v34 + 1) = a2;
  LOBYTE(v35) = a3;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v20);
  v16 = v20;
  v33 = a8 & 1;
  KeyPath = swift_getKeyPath();
  v32 = 0;
  v18 = swift_getKeyPath();
  v31 = 0;
  LOBYTE(v20) = v16;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  BYTE8(v21) = a6;
  *&v22 = a7;
  BYTE8(v22) = v33;
  v23 = a9;
  *&v24 = KeyPath;
  BYTE8(v24) = v32;
  *&v25 = v18;
  BYTE8(v25) = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;

  MEMORY[0x18D00A570](&v20, a10, &type metadata for MultimodalNavigationChromeModifier, a11);
  v42 = v28;
  v43 = v29;
  v44 = v30;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  return outlined destroy of MultimodalNavigationChromeModifier(&v34);
}

uint64_t View.scrollsUnderMultimodalNavigationChrome(scrollInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v8 = *(a1 + 96);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v5;
  return MEMORY[0x18D00A570](v7, a2, &unk_1EFFF3108, a3);
}

void closure #1 in MultimodalNavigationChromeModifier.body(content:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>();
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>(0);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>, MEMORY[0x1E697E830]);
  v71 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v68 - v16;
  v17 = *(a1 + 16);
  v96[0] = *a1;
  v96[1] = v17;
  v96[2] = *(a1 + 32);
  v97 = *(a1 + 48);
  v18 = static HorizontalAlignment.center.getter();
  closure #1 in closure #1 in MultimodalNavigationChromeModifier.body(content:)(a2, v96, &v86);
  v98[6] = v92;
  v98[7] = v93;
  v98[8] = v94;
  v98[9] = v95;
  v98[2] = v88;
  v98[3] = v89;
  v98[4] = v90;
  v98[5] = v91;
  v98[0] = v86;
  v98[1] = v87;
  v112 = v94;
  v113 = v95;
  v108 = v90;
  v109 = v91;
  LOBYTE(v85) = 0;
  v110 = v92;
  v111 = v93;
  v104 = v86;
  v105 = v87;
  v98[10] = xmmword_18CD6A6D0;
  LOWORD(v99) = 512;
  *(&v99 + 1) = v18;
  v106 = v88;
  v107 = v89;
  v114 = xmmword_18CD6A6D0;
  v115 = v99;
  v100[6] = v92;
  v100[7] = v93;
  v100[8] = v94;
  v100[9] = v95;
  v100[2] = v88;
  v100[3] = v89;
  v100[4] = v90;
  v100[5] = v91;
  v100[0] = v86;
  v100[1] = v87;
  v100[10] = xmmword_18CD6A6D0;
  v101 = 0;
  v102 = 2;
  v103 = v18;
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v98, &v74, type metadata accessor for _InsetViewModifier<BackButtonActionableBar?>);
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v100, type metadata accessor for _InsetViewModifier<BackButtonActionableBar?>);
  v19 = *(a2 + 144);
  v82 = *(a2 + 128);
  v83 = v19;
  v84 = *(a2 + 160);
  v20 = *(a2 + 80);
  v78 = *(a2 + 64);
  v79 = v20;
  v21 = *(a2 + 112);
  v80 = *(a2 + 96);
  v81 = v21;
  v22 = *(a2 + 16);
  v74 = *a2;
  v75 = v22;
  v23 = *(a2 + 48);
  v76 = *(a2 + 32);
  v77 = v23;
  if (MultimodalNavigationChromeModifier.shouldDisplayInCurrentProcess.getter() && (v86 = *(a2 + 8), LOBYTE(v87) = *(a2 + 24), _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v85), (v85 & 1) == 0))
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_self();
  v26 = [v25 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v27 = swift_allocObject();
  v28 = *(a2 + 144);
  *(v27 + 144) = *(a2 + 128);
  *(v27 + 160) = v28;
  *(v27 + 176) = *(a2 + 160);
  v29 = *(a2 + 80);
  *(v27 + 80) = *(a2 + 64);
  *(v27 + 96) = v29;
  v30 = *(a2 + 112);
  *(v27 + 112) = *(a2 + 96);
  *(v27 + 128) = v30;
  v31 = *(a2 + 16);
  *(v27 + 16) = *a2;
  *(v27 + 32) = v31;
  v32 = *(a2 + 48);
  *(v27 + 48) = *(a2 + 32);
  *(v27 + 64) = v32;
  v33 = v113;
  *(v8 + 8) = v112;
  *(v8 + 9) = v33;
  v34 = v115;
  *(v8 + 10) = v114;
  *(v8 + 11) = v34;
  v35 = v109;
  *(v8 + 4) = v108;
  *(v8 + 5) = v35;
  v36 = v111;
  *(v8 + 6) = v110;
  *(v8 + 7) = v36;
  v37 = v105;
  *v8 = v104;
  *(v8 + 1) = v37;
  v38 = v107;
  *(v8 + 2) = v106;
  *(v8 + 3) = v38;
  v8[192] = v24;
  v39 = &v8[*(v6 + 56)];
  *v39 = partial apply for closure #2 in closure #1 in MultimodalNavigationChromeModifier.body(content:);
  v39[1] = v27;
  outlined init with copy of MultimodalNavigationChromeModifier(a2, &v74);
  v40 = [v25 defaultCenter];
  v41 = v69;
  NSNotificationCenter.publisher(for:object:)();

  v42 = swift_allocObject();
  v43 = *(a2 + 144);
  *(v42 + 144) = *(a2 + 128);
  *(v42 + 160) = v43;
  *(v42 + 176) = *(a2 + 160);
  v44 = *(a2 + 80);
  *(v42 + 80) = *(a2 + 64);
  *(v42 + 96) = v44;
  v45 = *(a2 + 112);
  *(v42 + 112) = *(a2 + 96);
  *(v42 + 128) = v45;
  v46 = *(a2 + 16);
  *(v42 + 16) = *a2;
  *(v42 + 32) = v46;
  v47 = *(a2 + 48);
  *(v42 + 48) = *(a2 + 32);
  *(v42 + 64) = v47;
  outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v8, v11, type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>);
  v48 = &v11[*(v41 + 56)];
  *v48 = partial apply for closure #3 in closure #1 in MultimodalNavigationChromeModifier.body(content:);
  v48[1] = v42;
  v49 = swift_allocObject();
  v50 = *(a2 + 144);
  *(v49 + 144) = *(a2 + 128);
  *(v49 + 160) = v50;
  *(v49 + 176) = *(a2 + 160);
  v51 = *(a2 + 80);
  *(v49 + 80) = *(a2 + 64);
  *(v49 + 96) = v51;
  v52 = *(a2 + 112);
  *(v49 + 112) = *(a2 + 96);
  *(v49 + 128) = v52;
  v53 = *(a2 + 16);
  *(v49 + 16) = *a2;
  *(v49 + 32) = v53;
  v54 = *(a2 + 48);
  *(v49 + 48) = *(a2 + 32);
  *(v49 + 64) = v54;
  outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v11, v14, type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>);
  v55 = &v14[*(v70 + 36)];
  *v55 = partial apply for closure #4 in closure #1 in MultimodalNavigationChromeModifier.body(content:);
  v55[1] = v49;
  v56 = swift_allocObject();
  v57 = *(a2 + 144);
  *(v56 + 144) = *(a2 + 128);
  *(v56 + 160) = v57;
  *(v56 + 176) = *(a2 + 160);
  v58 = *(a2 + 80);
  *(v56 + 80) = *(a2 + 64);
  *(v56 + 96) = v58;
  v59 = *(a2 + 112);
  *(v56 + 112) = *(a2 + 96);
  *(v56 + 128) = v59;
  v60 = *(a2 + 16);
  *(v56 + 16) = *a2;
  *(v56 + 32) = v60;
  v61 = *(a2 + 48);
  *(v56 + 48) = *(a2 + 32);
  *(v56 + 64) = v61;
  v62 = v72;
  outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v14, v72, type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>);
  v63 = (v62 + *(v71 + 36));
  *v63 = partial apply for closure #5 in closure #1 in MultimodalNavigationChromeModifier.body(content:);
  v63[1] = v56;
  v86 = *(a2 + 96);
  outlined init with copy of MultimodalNavigationChromeModifier(a2, &v74);
  outlined init with copy of MultimodalNavigationChromeModifier(a2, &v74);
  outlined init with copy of MultimodalNavigationChromeModifier(a2, &v74);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for State<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v64 = static Animation.coreAnimationDefault(duration:)();
  v74 = *(a2 + 8);
  LOBYTE(v75) = *(a2 + 24);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v86);
  LOBYTE(v56) = v86;
  v65 = v73;
  outlined init with take of ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>(v62, v73);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>();
  v67 = v65 + *(v66 + 36);
  *v67 = v64;
  *(v67 + 8) = v56;
}

double closure #1 in closure #1 in MultimodalNavigationChromeModifier.body(content:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  if ((*a1 & 1) == 0)
  {
    goto LABEL_7;
  }

  v45 = *(a1 + 8);
  v46 = *(a1 + 24);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 128);
  v41 = *(a1 + 112);
  v42 = v8;
  v43 = *(a1 + 144);
  v44 = *(a1 + 160);
  specialized Environment.wrappedValue.getter(v6, v7, &v47);
  if (v47 == 1)
  {
    v47 = *(a1 + 8);
    LOBYTE(v48) = *(a1 + 24);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v33);
    if (v33 == 1)
    {
      v47 = v41;
      v48 = v42;
      v49 = v43;
      *&v50 = v44;
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
      State.wrappedValue.getter();
      if (*(&v33 + 1))
      {
        outlined consume of MultimodalCustomKeyboardActionKeyData?(v33, *(&v33 + 1));
        goto LABEL_6;
      }
    }

LABEL_7:
    _s7SwiftUI23BackButtonActionableBar33_94927F8A97ECE008E6A618C158753C28LLVSgWOi0_(&v47);
    goto LABEL_8;
  }

LABEL_6:
  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v47 = v45;
  LOBYTE(v48) = v46;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v12 = v11;

  MEMORY[0x18D00ACC0](&v33, v12);
  LOBYTE(v12) = v33;
  v39 = *(a1 + 32);
  v40 = *(a1 + 40);
  v47 = v41;
  v48 = v42;
  v49 = v43;
  *&v50 = v44;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  v13 = *&v34[16];
  v14 = a2[1];
  v47 = *a2;
  v48 = v14;
  v49 = a2[2];
  LODWORD(v50) = *(a2 + 12);
  v30 = *v34;
  v31 = v33;
  GeometryProxy.size.getter();
  v16 = v15;
  *(&v32 + 7) = v39;
  HIBYTE(v32) = v40;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v19 = specialized static BackButtonActionableBar.defaultBodyLeading.getter();
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  *&v33 = v10;
  *(&v33 + 1) = v9;
  v34[0] = v12;
  *&v34[1] = v32;
  *&v34[40] = v30;
  *&v34[24] = v31;
  *&v34[56] = v13;
  v35 = *(&v13 + 1);
  *&v36 = v16;
  BYTE8(v36) = v18 == 1;
  *&v37 = KeyPath;
  BYTE8(v37) = 0;
  *v38 = v21;
  v38[8] = 0;
  *&v38[16] = v19;
  v38[24] = 4;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(&v33, v22, v23, v24);
  v53 = v36;
  v54 = v37;
  v55[0] = *v38;
  *(v55 + 9) = *&v38[9];
  v49 = *&v34[16];
  v50 = *&v34[32];
  v51 = *&v34[48];
  v52 = v35;
  v47 = v33;
  v48 = *v34;
LABEL_8:
  v25 = v54;
  a3[6] = v53;
  a3[7] = v25;
  a3[8] = v55[0];
  *(a3 + 137) = *(v55 + 9);
  v26 = v50;
  a3[2] = v49;
  a3[3] = v26;
  v27 = v52;
  a3[4] = v51;
  a3[5] = v27;
  result = *&v47;
  v29 = v48;
  *a3 = v47;
  a3[1] = v29;
  return result;
}

BOOL MultimodalNavigationChromeModifier.shouldDisplayInCurrentProcess.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 80);
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v11 = *(v0 + 144);
  v5 = *(v0 + 160);
  if (*(v0 + 88) == 1)
  {
    if (v4)
    {
      goto LABEL_4;
    }

    return 1;
  }

  outlined copy of Environment<Selector?>.Content(v4, 0);
  v7 = static os_log_type_t.fault.getter();
  v8 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F490, &v14);
    _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x18D0110E0](v10, -1, -1);
    MEMORY[0x18D0110E0](v9, -1, -1);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  outlined consume of Environment<Selector?>.Content(v4, 0);

  if ((v18 & 1) == 0)
  {
    return 1;
  }

LABEL_4:
  *&v14 = v1;
  *(&v14 + 1) = v2;
  LOBYTE(v15) = v3;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v18);
  if (v18 != 1)
  {
    return 0;
  }

  v14 = v13;
  v15 = v12;
  v16 = v11;
  v17 = v5;
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  result = v19 != 0;
  if (v19)
  {
    outlined consume of MultimodalCustomKeyboardActionKeyData?(v18, v19);
    return 1;
  }

  return result;
}

void MultimodalNavigationChromeModifier.update(for:isKeyboardVisible:)(uint64_t a1, char a2)
{
  v4 = *(v2 + 144);
  v29 = *(v2 + 128);
  v30 = v4;
  v31 = *(v2 + 160);
  v5 = *(v2 + 80);
  v26[4] = *(v2 + 64);
  v26[5] = v5;
  v6 = *(v2 + 112);
  v27 = *(v2 + 96);
  v28 = v6;
  v7 = *(v2 + 16);
  v26[0] = *v2;
  v26[1] = v7;
  v8 = *(v2 + 48);
  v26[2] = *(v2 + 32);
  v26[3] = v8;
  v9 = Notification.userInfo.getter();
  if (v9)
  {
    v10 = v9;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v11;
    AnyHashable.init<A>(_:)();
    if (*(v10 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v13 & 1) != 0))
    {
      outlined init with copy of Any(*(v10 + 56) + 32 * v12, v25);
      outlined destroy of AnyHashable(v22);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v14 = v23;
        if ([v23 BOOLValue])
        {
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v15;
          AnyHashable.init<A>(_:)();
          if (*(v10 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v17 & 1) != 0))
          {
            outlined init with copy of Any(*(v10 + 56) + 32 * v16, v25);
            outlined destroy of AnyHashable(v22);

            if (swift_dynamicCast())
            {
              v18 = v23;
              [v23 doubleValue];
              v22[0] = v19;
              if (*(&v27 + 1))
              {
                dispatch thunk of AnyLocation.set(_:transaction:)();
              }
            }
          }

          else
          {

            outlined destroy of AnyHashable(v22);
          }

          if (a2)
          {
            v20 = objc_opt_self();
            outlined init with copy of MultimodalNavigationChromeModifier(v26, v22);
            v21 = [v20 isInHardwareKeyboardMode] ^ 1;
          }

          else
          {
            outlined init with copy of MultimodalNavigationChromeModifier(v26, v22);
            v21 = 0;
          }

          LOBYTE(v22[0]) = v21;
          dispatch thunk of AnyLocation.set(_:transaction:)();

          outlined destroy of MultimodalNavigationChromeModifier(v26);
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

      outlined destroy of AnyHashable(v22);
    }
  }
}

uint64_t closure #4 in closure #1 in MultimodalNavigationChromeModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v9 = v4;
  v10 = v5;
  if (*(a2 + 160))
  {
    outlined copy of MultimodalCustomKeyboardActionKeyData?(v4, v5);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    return outlined consume of MultimodalCustomKeyboardActionKeyData?(v9, v10);
  }

  else
  {
    v7 = v4;
    v8 = a1[1];
    outlined copy of MultimodalCustomKeyboardActionKeyData?(v4, v5);

    return outlined consume of MultimodalCustomKeyboardActionKeyData?(v7, v8);
  }
}

void closure #5 in closure #1 in MultimodalNavigationChromeModifier.body(content:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = specialized Environment.wrappedValue.getter(*(a2 + 64), *(a2 + 72));
  if (v3)
  {
    v4 = v3;
    v5 = [v3 scene];

    if (v5)
    {
      v6 = [v5 _FBSScene];

      if (v6)
      {
        MEMORY[0x1EEE9AC00](v7);
        v11[16] = v2;
        v8 = swift_allocObject();
        *(v8 + 16) = partial apply for closure #1 in closure #5 in closure #1 in MultimodalNavigationChromeModifier.body(content:);
        *(v8 + 24) = v11;
        v9 = swift_allocObject();
        *(v9 + 16) = partial apply for closure #1 in FBSScene.updateClarityUIClientSettings(_:);
        *(v9 + 24) = v8;
        aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
        aBlock[5] = v9;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ();
        aBlock[3] = &block_descriptor_66;
        v10 = _Block_copy(aBlock);

        [v6 updateClientSettingsWithBlock_];
        _Block_release(v10);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t key path getter for EnvironmentValues.navigationBarHost : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.navigationBarHost : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationBarHostKey>, &type metadata for NavigationBarHostKey, &protocol witness table for NavigationBarHostKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationBarHostKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance MultimodalNavigationChromeModifier@<X0>(void (**a1)(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 144);
  v16[8] = *(v1 + 128);
  v16[9] = v3;
  v17 = *(v1 + 160);
  v4 = *(v1 + 80);
  v16[4] = *(v1 + 64);
  v16[5] = v4;
  v5 = *(v1 + 112);
  v16[6] = *(v1 + 96);
  v16[7] = v5;
  v6 = *(v1 + 16);
  v16[0] = *v1;
  v16[1] = v6;
  v7 = *(v1 + 48);
  v16[2] = *(v1 + 32);
  v16[3] = v7;
  v8 = swift_allocObject();
  v9 = *(v1 + 144);
  *(v8 + 144) = *(v1 + 128);
  *(v8 + 160) = v9;
  *(v8 + 176) = *(v1 + 160);
  v10 = *(v1 + 80);
  *(v8 + 80) = *(v1 + 64);
  *(v8 + 96) = v10;
  v11 = *(v1 + 112);
  *(v8 + 112) = *(v1 + 96);
  *(v8 + 128) = v11;
  v12 = *(v1 + 16);
  *(v8 + 16) = *v1;
  *(v8 + 32) = v12;
  v13 = *(v1 + 48);
  *(v8 + 48) = *(v1 + 32);
  *(v8 + 64) = v13;
  *a1 = partial apply for closure #1 in MultimodalNavigationChromeModifier.body(content:);
  a1[1] = v8;
  return outlined init with copy of MultimodalNavigationChromeModifier(v16, v15);
}

void __swiftcall MultimodalNavigationChromeScrollInfo.init(scrollView:representedView:)(SwiftUI::MultimodalNavigationChromeScrollInfo *__return_ptr retstr, UIScrollView *scrollView, UIView *representedView)
{
  [(UIScrollView *)scrollView bounds];
  [(UIScrollView *)scrollView convertRect:representedView toCoordinateSpace:?];
  v28 = v7;
  v29 = v6;
  v26 = v9;
  v27 = v8;
  [(UIScrollView *)scrollView contentOffset];
  v11 = v10;
  v13 = v12;
  [(UIScrollView *)scrollView contentSize];
  v15 = v14;
  v17 = v16;
  [(UIScrollView *)scrollView adjustedContentInset];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  retstr->boundsInRepresentedView.origin.x = v29;
  retstr->boundsInRepresentedView.origin.y = v28;
  retstr->boundsInRepresentedView.size.width = v27;
  retstr->boundsInRepresentedView.size.height = v26;
  retstr->contentOffset.x = v11;
  retstr->contentOffset.y = v13;
  retstr->contentSize.width = v15;
  retstr->contentSize.height = v17;
  retstr->adjustedContentInset.top = v19;
  retstr->adjustedContentInset.left = v21;
  retstr->adjustedContentInset.bottom = v23;
  retstr->adjustedContentInset.right = v25;
}

uint64_t static ScrollsUnderMultimodalNavigationChromeModifier._makeView(modifier:inputs:body:)@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  AGGraphCreateOffsetAttribute2();
  _ViewInputs.position.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type MultimodalScrollGeometryTransformProvider and conformance MultimodalScrollGeometryTransformProvider();
  Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type MultimodalScrollGeometryState and conformance MultimodalScrollGeometryState();
  Attribute.init<A>(body:value:flags:update:)();

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

double MultimodalScrollGeometryTransformProvider.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v8 = *Value;
  v9 = Value[1];
  v10 = Value[2];
  type metadata accessor for CGPoint(0);

  v3 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v3);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for MultimodalNavigationChromeScrollInfo?, &type metadata for MultimodalNavigationChromeScrollInfo, MEMORY[0x1E69E6720]);
  v4 = AGGraphGetValue();
  if ((*(v4 + 96) & 1) == 0)
  {
    v5 = UIEdgeInsetsInsetRect_0(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 64), *(v4 + 72));
    ViewTransform.appendPosition(_:)(__PAIR128__(v6, *&v5));
  }

  *a1 = v8;
  a1[1] = v9;
  result = *&v10;
  a1[2] = v10;
  return result;
}

uint64_t MultimodalScrollGeometryState.updateValue()()
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for MultimodalNavigationChromeScrollInfo?, &type metadata for MultimodalNavigationChromeScrollInfo, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  if (*(Value + 96))
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
    return AGGraphSetOutputValue();
  }

  else
  {
    v3 = *(Value + 32);
    v4 = *(Value + 40);
    v5 = *(Value + 48);
    rect2_8 = *(Value + 56);
    rect2 = UIEdgeInsetsInsetRect_0(*Value, *(Value + 8), *(Value + 16), *(Value + 24), *(Value + 64), *(Value + 72));
    v7 = v6;
    v9 = v8;
    v11 = v10;
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
    if (AGGraphGetOutputValue() && (*(v0 + 24) & 1) == 0 && *(v0 + 8) == v3 && *(v0 + 16) == v4 && (*(v0 + 48) & 1) == 0 && *(v0 + 32) == v5 && *(v0 + 40) == rect2_8 && (*(v0 + 88) & 1) == 0 && (v23.origin.x = rect2, v23.origin.y = v7, v23.size.width = v9, v23.size.height = v11, result = CGRectEqualToRect(*(v0 + 56), v23), (result & 1) != 0))
    {
      *(v0 + 8) = v3;
      *(v0 + 16) = v4;
      *(v0 + 24) = 0;
      *(v0 + 32) = v5;
      *(v0 + 40) = rect2_8;
      *(v0 + 48) = 0;
      *(v0 + 56) = rect2;
      *(v0 + 64) = v7;
      *(v0 + 72) = v9;
    }

    else
    {
      ScrollGeometry.init(contentOffset:contentSize:contentInsets:containerSize:)();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScrollGeometryState>, MEMORY[0x1E697F7D0], MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18CD63400;
      v13 = AGCreateWeakAttribute();
      *(v12 + 96) = v20;
      *(v12 + 112) = v21;
      *(v12 + 128) = v22;
      *(v12 + 32) = rect2_24;
      *(v12 + 48) = v17;
      *(v12 + 64) = v18;
      *(v12 + 80) = v19;
      *(v12 + 144) = 2;
      *(v12 + 148) = v13;
      AGGraphSetOutputValue();

      *(v0 + 8) = v3;
      *(v0 + 16) = v4;
      *(v0 + 24) = 0;
      *(v0 + 32) = v5;
      *(v0 + 40) = rect2_8;
      *(v0 + 48) = 0;
      *(v0 + 56) = rect2;
      *(v0 + 64) = v7;
      *(v0 + 72) = v9;
    }

    *(v0 + 80) = v11;
    *(v0 + 88) = 0;
  }

  return result;
}

void *MultimodalNavigationTitleBar.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v60 = v1[4];
  *v61 = v2;
  *&v61[9] = *(v1 + 89);
  v3 = v1[1];
  v57 = *v1;
  v58 = v3;
  v4 = v1[2];
  *&v59[16] = v1[3];
  *v59 = v4;
  v42 = static VerticalAlignment.center.getter();
  LOBYTE(v47[0]) = 1;
  closure #1 in MultimodalNavigationTitleBar.body.getter(&v57, __src);
  v66 = __src[4];
  v67 = __src[5];
  v68 = __src[6];
  v69 = __src[7];
  v62 = __src[0];
  v63 = __src[1];
  v64 = __src[2];
  v65 = __src[3];
  v70[0] = __src[0];
  v70[1] = __src[1];
  v70[2] = __src[2];
  v70[3] = __src[3];
  v70[4] = __src[4];
  v70[5] = __src[5];
  v70[6] = __src[6];
  v71 = __src[7];
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v62, __dst, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>);
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v70, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>);
  *&v51[71] = v66;
  *&v51[87] = v67;
  *&v51[103] = v68;
  *&v51[7] = v62;
  *&v51[23] = v63;
  *&v51[39] = v64;
  v51[119] = v69;
  *&v51[55] = v65;
  if (one-time initialization token for titleTopPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v40 = v6;
  v41 = v5;
  v38 = v8;
  v39 = v7;
  v52 = 0;
  v9 = static Edge.Set.horizontal.getter();
  if ((BYTE8(v60) & 1) != 0 && one-time initialization token for titleHorizontalPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v53 = 0;
  if ((v61[8] & 1) != 0 && one-time initialization token for titleBottomPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v54 = 0;
  v26 = *&v61[16];
  v27 = v61[24];
  v28 = static Alignment.center.getter();
  v30 = v29;
  v55 = v27;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v31 = static AccessibilityChildBehavior.contain;
  *&__src[0] = 21;
  BYTE8(__src[0]) = 0;

  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(__dst, v47);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(__dst);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v32 = swift_allocObject();
  memcpy((v32 + 16), __src, 0x128uLL);
  *(&v47[10] + 1) = *&v51[64];
  *(&v47[12] + 1) = *&v51[80];
  *(&v47[14] + 1) = *&v51[96];
  *(&v47[2] + 1) = *v51;
  *(&v47[4] + 1) = *&v51[16];
  *(&v47[6] + 1) = *&v51[32];
  v47[0] = v42;
  v47[1] = 0;
  LOBYTE(v47[2]) = 1;
  *(&v47[16] + 1) = *&v51[112];
  *(&v47[8] + 1) = *&v51[48];
  LOBYTE(v47[18]) = 1;
  v47[19] = v41;
  v47[20] = v40;
  v47[21] = v39;
  v47[22] = v38;
  LOBYTE(v47[23]) = 0;
  LOBYTE(v47[24]) = v9;
  v47[25] = v11;
  v47[26] = v13;
  v47[27] = v15;
  v47[28] = v17;
  LOBYTE(v47[29]) = 0;
  LOBYTE(v47[30]) = 4;
  v47[31] = v19;
  v47[32] = v21;
  v47[33] = v23;
  v47[34] = v25;
  LOBYTE(v47[35]) = 0;
  LOBYTE(v47[36]) = 1;
  v47[37] = v26;
  LOBYTE(v47[38]) = v27;
  v47[39] = v28;
  v47[40] = v30;
  v47[41] = v31;
  v47[42] = v32;
  v47[43] = 0;
  v44 = v57;
  v45 = v58;
  *v46 = *v59;
  *&v46[9] = *&v59[9];
  v33 = swift_allocObject();
  v34 = *v61;
  v33[5] = v60;
  v33[6] = v34;
  *(v33 + 105) = *&v61[9];
  v35 = v58;
  v33[1] = v57;
  v33[2] = v35;
  v36 = *&v59[16];
  v33[3] = *v59;
  v33[4] = v36;
  outlined init with copy of MultimodalNavigationTitleBar(&v57, __src);
  outlined init with copy of MultimodalNavigationTitleBar(&v57, __src);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>(0);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData? and conformance <A> A?(&lazy protocol witness table cache variable for type NavigationTitleStorage? and conformance <A> A?, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, lazy protocol witness table accessor for type NavigationTitleStorage and conformance NavigationTitleStorage);
  View.onChange<A>(of:initial:_:)();

  v48[0] = v44;
  v48[1] = v45;
  v49[0] = *v46;
  *(v49 + 9) = *&v46[9];
  outlined destroy of NavigationTitleStorage?(v48);
  memcpy(__dst, v47, sizeof(__dst));
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(__dst, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>);
  return memcpy(a1, __src, 0x1D0uLL);
}

uint64_t closure #1 in MultimodalNavigationTitleBar.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[6];
  if (v3 == 1)
  {
    v28 = 0;
    v5 = 0;
    LOBYTE(v6) = 0;
    goto LABEL_6;
  }

  v7 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (!v3)
  {
    v28 = *a1;
LABEL_6:
    LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    v7 = Text.init(_:tableName:bundle:comment:)();
    v13 = v12;
    v8 = v14;
    v9 = v15;
    outlined consume of Text?(v28, v5, v6, 0);
    v5 = v13;
    if (v3 == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  outlined copy of Text.Storage(*a1, v5, v6 & 1);

  v8 = v6;
  v9 = v3;
LABEL_7:
  if (v4)
  {

    goto LABEL_10;
  }

LABEL_9:
  specialized Image.init(systemName:)(0xD00000000000001DLL, 0x800000018CD3DF80);
  v16 = Image.symbolRenderingMode(_:)();

  *&v37 = v16;
  v4 = AnyView.init<A>(_:)();
LABEL_10:
  KeyPath = swift_getKeyPath();
  v18 = v8 & 1;
  v57 = v8 & 1;
  v56 = 0;
  if (one-time initialization token for clarityUINavigationTitle != -1)
  {
    swift_once();
  }

  v19 = static Font.clarityUINavigationTitle;
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  v58 = 0;
  *&v30 = v7;
  *(&v30 + 1) = v5;
  LOBYTE(v31) = v18;
  *(&v31 + 1) = v9;
  *&v32 = v4;
  BYTE8(v32) = 1;
  *&v33 = KeyPath;
  BYTE8(v33) = 0;
  *&v34 = v20;
  *(&v34 + 1) = v19;
  *&v35 = v21;
  *(&v35 + 1) = 3;
  v36 = 0;
  v37 = v30;
  v38 = v31;
  LOBYTE(v43) = 0;
  v41 = v34;
  v42 = v35;
  v39 = v32;
  v40 = v33;
  v29[104] = 0;
  v22 = v31;
  *a2 = v30;
  *(a2 + 16) = v22;
  v23 = v39;
  v24 = v40;
  v25 = v42;
  v26 = v43;
  *(a2 + 64) = v41;
  *(a2 + 80) = v25;
  *(a2 + 32) = v23;
  *(a2 + 48) = v24;
  *(a2 + 96) = v26;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  v44[0] = v7;
  v44[1] = v5;
  v45 = v18;
  v46 = v9;
  v47 = v4;
  v48 = 1;
  v49 = KeyPath;
  v50 = 0;
  v51 = v20;
  v52 = v19;
  v53 = v21;
  v54 = 3;
  v55 = 0;

  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v30, v29, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
  return outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v44, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
}

uint64_t *closure #2 in MultimodalNavigationTitleBar.body.getter(uint64_t *result)
{
  if (result[3] != 1 && !result[6])
  {
    v4[16] = v1;
    v4[17] = v2;
    v3 = result;
    outlined init with copy of MultimodalNavigationTitleBar(result, v4);
    MEMORY[0x18D009810](0xD00000000000008FLL, 0x800000018CD551F0);
    return outlined destroy of MultimodalNavigationTitleBar(v3);
  }

  return result;
}

uint64_t MultimodalNavigationTitleLabelStyle.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

double MultimodalNavigationTitleLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = static VerticalAlignment.firstTextLineCenter.getter();
  if (one-time initialization token for navigationIconToTitleSpacing != -1)
  {
    swift_once();
  }

  v6 = static ClarityUIMetrics.navigationIconToTitleSpacing;
  v21 = 0;
  closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:)(v3, v4, &v13);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v29[6] = v19;
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v22, &v12, type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v29, type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  v7 = *&v20[80];
  *(a1 + 81) = *&v20[64];
  *(a1 + 97) = v7;
  *(a1 + 113) = *&v20[96];
  v8 = *&v20[16];
  *(a1 + 17) = *v20;
  *(a1 + 33) = v8;
  result = *&v20[32];
  v10 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  v11 = v21;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 128) = *&v20[111];
  *(a1 + 65) = v10;
  return result;
}

uint64_t closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  static EdgeInsets.zero.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  a2 &= 1u;
  *(v14 + 24) = a2;
  outlined copy of Environment<Selector?>.Content(a1, a2);
  specialized Environment.wrappedValue.getter(a1, a2);
  specialized Environment.wrappedValue.getter(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  specialized Environment.wrappedValue.getter(a1, a2);
  if (one-time initialization token for navigationIconToTitleSpacing != -1)
  {
    swift_once();
  }

  View.bodyHeadOutdent(_:)();
  v15 = v28;
  v16 = v29;
  *&v22 = v7;
  *(&v22 + 1) = v9;
  *&v23 = v11;
  *(&v23 + 1) = v13;
  *&v24 = partial apply for closure #1 in closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:);
  *(&v24 + 1) = v14;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  *(a3 + 32) = v24;
  *(a3 + 48) = v19;
  *(a3 + 64) = v20;
  *(a3 + 80) = v21;
  v17 = v23;
  *a3 = v22;
  *(a3 + 16) = v17;
  *(a3 + 96) = v15;
  *(a3 + 104) = v16;
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v22, &v28, type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>);
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v31 = v13;
  v32 = partial apply for closure #1 in closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:);
  v33 = v14;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  return outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v28, type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>);
}

double closure #1 in closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  specialized Environment.wrappedValue.getter(a1, a2 & 1);
  specialized Environment.wrappedValue.getter(a1, a2 & 1);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a3 = v7;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10 & 1;
  result = *&v11;
  *(a3 + 32) = v11;
  return result;
}

double EnvironmentValues.clarityUINavigationTitleIconWidth.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

double key path getter for EnvironmentValues.clarityUINavigationTitleIconWidth : EnvironmentValues@<D0>(double *a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

double protocol witness for LabelStyle.makeBody(configuration:) in conformance MultimodalNavigationTitleLabelStyle@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = static VerticalAlignment.firstTextLineCenter.getter();
  if (one-time initialization token for navigationIconToTitleSpacing != -1)
  {
    swift_once();
  }

  v6 = static ClarityUIMetrics.navigationIconToTitleSpacing;
  v21 = 0;
  closure #1 in MultimodalNavigationTitleLabelStyle.makeBody(configuration:)(v3, v4, &v13);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v29[0] = v13;
  v29[1] = v14;
  v29[2] = v15;
  v29[3] = v16;
  v29[4] = v17;
  v29[5] = v18;
  v29[6] = v19;
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v22, &v12, type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v29, type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
  *&v20[55] = v25;
  *&v20[71] = v26;
  *&v20[87] = v27;
  *&v20[103] = v28;
  *&v20[7] = v22;
  *&v20[23] = v23;
  *&v20[39] = v24;
  v7 = *&v20[80];
  *(a1 + 81) = *&v20[64];
  *(a1 + 97) = v7;
  *(a1 + 113) = *&v20[96];
  v8 = *&v20[16];
  *(a1 + 17) = *v20;
  *(a1 + 33) = v8;
  result = *&v20[32];
  v10 = *&v20[48];
  *(a1 + 49) = *&v20[32];
  v11 = v21;
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v11;
  *(a1 + 128) = *&v20[111];
  *(a1 + 65) = v10;
  return result;
}

void protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.ClarityUIIconWidthKey(void *a1@<X8>)
{
  EnvironmentValues.effectiveFont.getter();
  v2 = Font.platformFont(in:)();

  CTFontRef.bodyLeading.getter();
  v4 = v3;

  *a1 = v4;
}

uint64_t MultimodalCustomKeyboardActionKeyData.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MultimodalCustomKeyboardActionKeyData.systemImageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MultimodalCustomKeyboardActionKeyData.action.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MultimodalCustomKeyboardActionKeyData.init(title:systemImageName:action:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static MultimodalCustomKeyboardActionKeyData.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

double static MultimodalCustomKeyboardActionKey.defaultValue.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void *static MultimodalCustomKeyboardActionKey.reduce(value:nextValue:)(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = result[1];
  if (v3)
  {
    v4 = *(result + 1);
    v5 = *(result + 2);
    v6 = result;
  }

  else
  {
    v6 = v7;
    result = a2(v7);
    v3 = v7[1];
    v4 = v8;
    v5 = v9;
  }

  *v2 = *v6;
  v2[1] = v3;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalCustomKeyboardActionKey(void *result, void *(*a2)(void *__return_ptr))
{
  v2 = result;
  v3 = result[1];
  if (v3)
  {
    v4 = *(result + 1);
    v5 = *(result + 2);
    v6 = result;
  }

  else
  {
    v6 = v7;
    result = a2(v7);
    v3 = v7[1];
    v4 = v8;
    v5 = v9;
  }

  *v2 = *v6;
  v2[1] = v3;
  *(v2 + 1) = v4;
  *(v2 + 2) = v5;
  return result;
}

uint64_t static MultimodalChromeVisiblePreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  *(inited + 32) = *a1;
  LOBYTE(a2) = a2() & 1;
  *(inited + 33) = a2;
  v5 = *(inited + 32);

  *a1 = a2 & v5;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalChromeVisiblePreferenceKey(BOOL *a1, void (*a2)(uint64_t *__return_ptr))
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  *(inited + 32) = *a1;
  a2(&v6);
  *(inited + 33) = v6;
  LOBYTE(a2) = specialized Sequence<>.contains(_:)(0, inited);
  result = swift_setDeallocating();
  *a1 = (a2 & 1) == 0;
  return result;
}

uint64_t BackButtonActionableBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v41 = v1[6];
  v42 = v3;
  v43[0] = v1[8];
  *(v43 + 9) = *(v1 + 137);
  v4 = v1[3];
  v37 = v1[2];
  v38 = v4;
  v5 = v1[5];
  v39 = v1[4];
  v40 = v5;
  v6 = v1[1];
  v35 = *v1;
  v36 = v6;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for _VariadicView.Tree<_HStackLayout, _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>();
  closure #1 in BackButtonActionableBar.body.getter(&v35, a1 + *(v7 + 44));
  if (one-time initialization token for backButtonPadding != -1)
  {
    swift_once();
  }

  v8 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>(0);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = v36;
  v20 = *(&v36 + 1);
  v21 = v37;
  KeyPath = swift_getKeyPath();
  v23 = static Edge.Set.all.getter();
  v45 = v21;
  v44 = 0;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = v45;
  v28 = v44;
  LOBYTE(v46) = v19;
  *(&v46 + 1) = v20;
  LOBYTE(v47) = v45;
  *(&v47 + 1) = KeyPath;
  LOBYTE(v48) = 0;
  BYTE1(v48) = v44;
  *(&v48 + 1) = -1;
  LOBYTE(v49) = v23;
  *(&v49 + 1) = v24;
  v50 = v25;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>, MEMORY[0x1E697E830]);
  v30 = a1 + *(v29 + 36);
  v31 = v49;
  *(v30 + 32) = v48;
  *(v30 + 48) = v31;
  *(v30 + 64) = v50;
  v32 = v47;
  *v30 = v46;
  *(v30 + 16) = v32;
  v51[0] = v19;
  v52 = v20;
  v53 = v27;
  v54 = KeyPath;
  v55 = 0;
  v56 = v28;
  v57 = -1;
  v58 = v23;
  v59 = v24;
  v60 = v26;
  outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v46, v34, type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>);
  return outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v51, type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>);
}

uint64_t closure #1 in BackButtonActionableBar.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>(0);
  v75 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  v32 = *(a1 + 16);
  v77 = a2;
  if (v32)
  {
    v33 = swift_allocObject();
    v34 = *(a1 + 112);
    v33[7] = *(a1 + 96);
    v33[8] = v34;
    v33[9] = *(a1 + 128);
    *(v33 + 153) = *(a1 + 137);
    v35 = *(a1 + 48);
    v33[3] = *(a1 + 32);
    v33[4] = v35;
    v36 = *(a1 + 80);
    v33[5] = *(a1 + 64);
    v33[6] = v36;
    v37 = *(a1 + 16);
    v33[1] = *a1;
    v33[2] = v37;
    *v31 = 4;
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    v39 = v38;
    v40 = &v31[*(v38 + 36)];
    *v40 = partial apply for closure #1 in closure #1 in BackButtonActionableBar.body.getter;
    v40[1] = v33;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v41 = *(v39 + 40);
    outlined init with copy of BackButtonActionableBar(a1, v78);

    closure #2 in closure #1 in BackButtonActionableBar.body.getter(a1, &v31[v41]);

    v42 = swift_allocObject();
    v43 = *(a1 + 112);
    v42[7] = *(a1 + 96);
    v42[8] = v43;
    v42[9] = *(a1 + 128);
    *(v42 + 153) = *(a1 + 137);
    v44 = *(a1 + 48);
    v42[3] = *(a1 + 32);
    v42[4] = v44;
    v45 = *(a1 + 80);
    v42[5] = *(a1 + 64);
    v42[6] = v45;
    v46 = *(a1 + 16);
    v42[1] = *a1;
    v42[2] = v46;
    *v25 = 4;
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    v48 = v47;
    v49 = &v25[*(v47 + 36)];
    *v49 = partial apply for closure #3 in closure #1 in BackButtonActionableBar.body.getter;
    v49[1] = v42;
    swift_storeEnumTagMultiPayload();
    v50 = *(v48 + 40);
    outlined init with copy of BackButtonActionableBar(a1, v78);

    closure #4 in closure #1 in BackButtonActionableBar.body.getter(a1, &v25[v50]);

    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v31, v28, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v25, v22, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    v51 = v74;
    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v28, v74, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    type metadata accessor for (ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)(0, &lazy cache variable for type metadata for (ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>), type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v22, v51 + *(v52 + 48), type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v25, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v31, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v22, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v28, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v51, v77, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>);
  }

  else
  {
    v53 = *(a1 + 104) ^ 1;
    v54 = swift_allocObject();
    v55 = *(a1 + 112);
    v54[7] = *(a1 + 96);
    v54[8] = v55;
    v54[9] = *(a1 + 128);
    *(v54 + 153) = *(a1 + 137);
    v56 = *(a1 + 48);
    v54[3] = *(a1 + 32);
    v54[4] = v56;
    v57 = *(a1 + 80);
    v54[5] = *(a1 + 64);
    v54[6] = v57;
    v58 = *(a1 + 16);
    v54[1] = *a1;
    v54[2] = v58;
    *v9 = 4;
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(0, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    v60 = v59;
    v61 = &v9[*(v59 + 36)];
    *v61 = partial apply for closure #1 in OnInteractiveResizeChangeModifier.ActionDispatcher.updateValue();
    v61[1] = v54;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v62 = *(v60 + 40);
    outlined init with copy of BackButtonActionableBar(a1, v78);

    closure #2 in closure #1 in BackButtonActionableBar.body.getter(a1, &v9[v62]);

    if ((v53 & 1) == 0)
    {
      v63 = [objc_opt_self() mainScreen];
      [v63 bounds];
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v9, v14, type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    v64 = &v14[*(v75 + 36)];
    v65 = v78[5];
    *(v64 + 4) = v78[4];
    *(v64 + 5) = v65;
    *(v64 + 6) = v78[6];
    v66 = v78[1];
    *v64 = v78[0];
    *(v64 + 1) = v66;
    v67 = v78[3];
    *(v64 + 2) = v78[2];
    *(v64 + 3) = v67;
    outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v14, v17, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>);
    v68 = v76;
    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v17, v76, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>);
    *v6 = 0;
    v6[8] = 0;
    v6[9] = v53 & 1;
    type metadata accessor for (Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)();
    v70 = v69;
    outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v68, &v6[*(v69 + 48)], type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>);
    v71 = &v6[*(v70 + 64)];
    *v71 = 0;
    v71[8] = 0;
    v71[9] = v53 & 1;
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v17, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>);
    outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(v68, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>);
    outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(v6, v77, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>);
  }

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(0, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>.Storage, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>, MEMORY[0x1E697F948]);
  return swift_storeEnumTagMultiPayload();
}

uint64_t BackButtonActionableBar.backButtonText.getter()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t closure #3 in closure #1 in BackButtonActionableBar.body.getter(uint64_t a1)
{
  (*a1)(*(a1 + 16));
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (!v4)
  {
    return outlined consume of MultimodalCustomKeyboardActionKeyData?(v3, 0);
  }

  v1 = outlined consume of MultimodalCustomKeyboardActionKeyData?(v3, v4);
  v5(v1);
}

__n128 closure #4 in closure #1 in BackButtonActionableBar.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  closure #1 in closure #4 in closure #1 in BackButtonActionableBar.body.getter(&v22);
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v13 = *(a1 + 72);
  v14.n128_u64[0] = *(a1 + 88);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v19)
  {

    outlined consume of MultimodalCustomKeyboardActionKeyData?(v18, v19);
    specialized Image.init(systemName:)(v20, v21);
    v5 = v4;
  }

  else
  {
    outlined consume of MultimodalCustomKeyboardActionKeyData?(v18, 0);
    v5 = 0;
  }

  v9 = *v23;
  v10 = v22;
  v6 = v23[16];
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  if (one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }

  v7 = *(a1 + 128);
  v22 = *(a1 + 112);
  *v23 = v7;
  *&v23[9] = *(a1 + 137);
  specialized ScaledClarityUIMetric.wrappedValue.getter();
  specialized static BackButtonActionableBar.defaultBodyLeading.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a2 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 112) = v15;
  *(a2 + 128) = v16;
  *(a2 + 144) = v17;
  *(a2 + 48) = v11;
  *(a2 + 64) = v12;
  result = v14;
  *(a2 + 80) = v13;
  *(a2 + 96) = v14;
  return result;
}

uint64_t closure #1 in closure #4 in closure #1 in BackButtonActionableBar.body.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(0, &lazy cache variable for type metadata for State<MultimodalCustomKeyboardActionKeyData?>, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v9)
  {

    outlined consume of MultimodalCustomKeyboardActionKeyData?(v8, v9);
    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
  }

  else
  {
    outlined consume of MultimodalCustomKeyboardActionKeyData?(v8, 0);
    LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    result = Text.init(_:tableName:bundle:comment:)();
  }

  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v9 == 0;
  return result;
}

double closure #2 in closure #1 in BackButtonActionableBar.body.getter@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1[6];
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[4];
  v21 = a1[5];
  v16 = *a1;
  v17 = a1[1];
  v4 = BackButtonActionableBar.backButtonText.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (a1[1])
  {
    v11 = 0x6F642E776F727261;
  }

  else
  {
    v11 = 0x61622E776F727261;
  }

  if (a1[1])
  {
    v12 = 0xEA00000000006E77;
  }

  else
  {
    v12 = 0xEE00647261776B63;
  }

  specialized Image.init(systemName:)(v11, v12);
  v14 = v13;
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  if (one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }

  specialized ScaledClarityUIMetric.wrappedValue.getter();
  specialized static BackButtonActionableBar.defaultBodyLeading.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 88) = v19;
  *(a2 + 104) = v20;
  *(a2 + 120) = v21;
  *(a2 + 136) = v22;
  result = *&v16;
  *(a2 + 40) = v16;
  *(a2 + 56) = v17;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  *(a2 + 32) = v14;
  *(a2 + 72) = v18;
  return result;
}

void specialized ScaledClarityUIMetric.wrappedValue.getter()
{
  v5 = *(v0 + 40);
  v1 = v5;
  specialized Environment.wrappedValue.getter(*v0, *(v0 + 8), &v4);
  MEMORY[0x18D0099E0](&v5, &v4);
  v3 = v1;
  v2 = 7;
  MEMORY[0x18D0099E0](&v3, &v2);
  specialized Environment.wrappedValue.getter(*(v0 + 16), *(v0 + 24));
}

uint64_t protocol witness for View.body.getter in conformance BackButtonActionableBar.Background@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 3);
  v5 = v1[32];
  v6 = v1[33];
  if (v3 == 1)
  {
    KeyPath = swift_getKeyPath();
    result = specialized Environment.wrappedValue.getter(v4, v5 | (v6 << 8));
    v9 = 0;
    v10 = 0;
    v12 = v11 & 1 | 0x10000;
    v13 = 1;
  }

  else
  {
    v13 = v1[16];
    v9 = *(v1 + 1);
    v12 = specialized Environment.wrappedValue.getter(*(v1 + 3), v5 | (v6 << 8));
    KeyPath = 0;
    result = 0;
    v10 = v14 & 1;
  }

  *a1 = KeyPath;
  *(a1 + 8) = v9;
  *(a1 + 16) = v13;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  *(a1 + 40) = v10;
  *(a1 + 41) = v3 ^ 1;
  return result;
}

uint64_t BackButtonActionableBar.KeyboardBackdropView.style.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    return 3908;
  }

  specialized Environment.wrappedValue.getter(v1, v2, &v4);
  if (v4)
  {
    return 2030;
  }

  else
  {
    return 3901;
  }
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance BackButtonActionableBar.KeyboardBackdropView()
{
  LOBYTE(v2) = *(v0 + 8);
  result = [objc_allocWithZone(MEMORY[0x1E69DCB90]) initWithFrame:BackButtonActionableBar.KeyboardBackdropView.style.getter() style:{0.0, 0.0, 0.0, 0.0, *v0, v2}];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance BackButtonActionableBar.KeyboardBackdropView(void *a1)
{
  v2 = BackButtonActionableBar.KeyboardBackdropView.style.getter();

  return [a1 transitionToStyle_];
}

double BackButtonActionableBar.BarShape.path(in:)@<D0>(char a1@<W0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  if (a1)
  {
    v9 = a2;
    if ((a3 & 1) != 0 || (v10 = a2, a2 < 30.0))
    {
      if (one-time initialization token for fallbackDisplayCornerRadius == -1)
      {
        v10 = *&static ClarityUIMetrics.fallbackDisplayCornerRadius;
        if (a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v22 = a8;
        v23 = a7;
        v24 = a6;
        v25 = a5;
        swift_once();
        a5 = v25;
        a6 = v24;
        a7 = v23;
        a8 = v22;
        v10 = *&static ClarityUIMetrics.fallbackDisplayCornerRadius;
        if (a3)
        {
          goto LABEL_9;
        }
      }
    }

    if (v9 >= 30.0)
    {
      v11 = a5;
      v12 = a6;
      v13 = a7;
      v14 = a8;
      goto LABEL_12;
    }

    if (one-time initialization token for fallbackDisplayCornerRadius != -1)
    {
      v18 = a8;
      v19 = a7;
      v20 = a6;
      v21 = a5;
      swift_once();
      a5 = v21;
      a6 = v20;
      a7 = v19;
      a8 = v18;
    }

LABEL_9:
    v11 = a5;
    v12 = a6;
    v13 = a7;
    v14 = a8;
    v9 = *&static ClarityUIMetrics.fallbackDisplayCornerRadius;
LABEL_12:
    v15 = [objc_opt_self() bezierPathWithRoundedRect:3 byRoundingCorners:v11 cornerRadii:{v12, v13, v14, v10, v9}];
    v16 = [v15 CGPath];

    Path.init(_:)();
    goto LABEL_13;
  }

  Path.init(_:)();
LABEL_13:
  result = *&v27;
  *a4 = v27;
  *(a4 + 16) = v28;
  *(a4 + 32) = v29;
  return result;
}

double protocol witness for Shape.path(in:) in conformance BackButtonActionableBar.BarShape@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  BackButtonActionableBar.BarShape.path(in:)(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void protocol witness for View.body.getter in conformance BackButtonActionableBar.BarShape(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = 256;
}

uint64_t MultimodalNavigationBackButtonLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for backIconToTitleSpacing != -1)
  {
    swift_once();
  }

  v2 = static ClarityUIMetrics.backIconToTitleSpacing;
  v3 = static VerticalAlignment.center.getter();
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t protocol witness for LabelStyle.makeBody(configuration:) in conformance MultimodalNavigationBackButtonLabelStyle@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for backIconToTitleSpacing != -1)
  {
    swift_once();
  }

  v2 = static ClarityUIMetrics.backIconToTitleSpacing;
  v3 = static VerticalAlignment.center.getter();
  result = sub_18C0ECCC8(v8);
  v5 = v8[0];
  v6 = v8[1];
  v7 = v9;
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t MultimodalNavigationKeyboardLabelStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 3;
  *(a1 + 40) = 0;
  return result;
}

uint64_t protocol witness for LabelStyle.makeBody(configuration:) in conformance MultimodalNavigationKeyboardLabelStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  result = sub_18C0ECCC8(v7);
  v4 = v7[0];
  v5 = v7[1];
  v6 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t BackButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v10[4] = closure #1 in static Color.clarityUIButtonBackground.getter;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
  v10[3] = &block_descriptor_114;
  v6 = _Block_copy(v10);
  [v5 initWithDynamicProvider_];
  _Block_release(v6);

  type metadata accessor for UIKitPlatformColorDefinition();
  Color.init(_platformColor:definition:)();
  v7 = Color.opacity(_:)();

  v8 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  *(a2 + 32) = 257;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t protocol witness for ButtonStyle.makeBody(configuration:) in conformance PrimaryActionButtonStyle@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = static Color.blue.getter();
  v6 = static Color.white.getter();
  result = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = 1;
  *(a2 + 32) = 257;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t BarBackground.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v62 = a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for _ShadowView();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v56 - v7;
  v77 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v79 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v56 - v10;
  type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>(255);
  v61 = v11;
  v59 = v5;
  v56 = v4;
  v67 = type metadata accessor for _ClipEffect();
  v12 = type metadata accessor for ModifiedContent();
  v72 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v13;
  v99 = &protocol witness table for _ShadowView<A>;
  v100 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v80 = v9;
  v63 = WitnessTable;
  v15 = type metadata accessor for _BackgroundModifier();
  v75 = v12;
  v65 = v15;
  v16 = type metadata accessor for ModifiedContent();
  v69 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v56 - v17;
  v70 = v18;
  v73 = type metadata accessor for ModifiedContent();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v56 - v21;
  v58 = static Alignment.center.getter();
  v57 = v22;
  closure #1 in BarBackground.body.getter(v3, &v92);
  v23 = v92;
  v24 = BYTE8(v92);
  v25 = BYTE9(v92);
  v26 = v93;
  if (*(v3 + 16))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = *(v3 + 8) * 0.8;
  }

  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  static Material.coreMaterial(bundle:provider:)();

  v30 = v96;
  v31 = v98;
  if (*(v3 + 16))
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *(v3 + 8);
  }

  v33 = v97;
  v35 = static Edge.Set.all.getter();
  outlined copy of Material.ID(v30, v33);
  outlined consume of Material.ID(v30, v33);
  *&v88 = v58;
  *(&v88 + 1) = v57;
  *&v89 = v23;
  v36 = v60;
  BYTE8(v89) = v24;
  BYTE9(v89) = v25;
  v90 = v26;
  *v91 = v27;
  *&v91[8] = v30;
  v91[16] = v33;
  *&v91[20] = v31;
  v37 = v59;
  v34 = v32;
  *&v91[24] = v34;
  v91[28] = v35;
  v38 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>();
  View.clipShape<A>(_:style:)();
  v94 = v90;
  *v95 = *v91;
  *&v95[13] = *&v91[13];
  v92 = v88;
  v93 = v89;
  outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(&v92, type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>);
  if (one-time initialization token for clarityUIBarShadowColor != -1)
  {
    swift_once();
  }

  v39 = v74;
  Shape.fillShadow(color:radius:x:y:)(static Color.clarityUIBarShadowColor, v37, v74, 4.0, 0.0, 2.0);
  v40 = v78;
  v41 = v77;
  View.opacity(_:)();
  (*(v76 + 8))(v39, v41);
  static Alignment.center.getter();
  v42 = swift_getWitnessTable();
  v86 = v38;
  v87 = v42;
  v43 = v75;
  v44 = swift_getWitnessTable();
  v45 = v66;
  v46 = v80;
  View.background<A>(_:alignment:)();
  (*(v79 + 8))(v40, v46);
  (*(v72 + 8))(v36, v43);
  static Edge.Set.all.getter();
  v47 = swift_getWitnessTable();
  v84 = v44;
  v85 = v47;
  v48 = v70;
  v49 = swift_getWitnessTable();
  v50 = v64;
  View.edgesIgnoringSafeArea(_:)();
  (*(v69 + 8))(v45, v48);
  v82 = v49;
  v83 = MEMORY[0x1E6980318];
  v51 = v73;
  v52 = swift_getWitnessTable();
  v53 = v68;
  static ViewBuilder.buildExpression<A>(_:)(v50, v51, v52);
  v54 = *(v71 + 8);
  v54(v50, v51);
  static ViewBuilder.buildExpression<A>(_:)(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t closure #1 in BarBackground.body.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for clarityUIContentBackground != -1)
  {
    v7 = a1;
    v8 = a2;
    swift_once();
    a1 = v7;
    a2 = v8;
  }

  v3 = *a1 == 0;
  v4 = 2;
  if (*a1)
  {
    v4 = 256;
  }

  v5 = 0x3FC3333333333333;
  *a2 = static Color.clarityUIContentBackground;
  if (v3)
  {
    v5 = 0;
  }

  *(a2 + 8) = 256;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FBSMutableSceneClientSettings) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t specialized static MultimodalNavigationChromeScrollInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v9 = *(a1 + 64);
  v10 = *(a1 + 80);
  v7 = *(a2 + 64);
  v8 = *(a2 + 80);
  v4 = CGRectEqualToRect(*a1, *a2);
  v5 = 0;
  if (v4 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_18CDD90F0)) & 0xF) == 0)
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v10, v8))));
  }

  return v5 & 1;
}

void type metadata accessor for MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>()
{
  if (!lazy cache variable for type metadata for MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for MultimodalNavigationStackViewHost();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>, &type metadata for LabelStyleConfiguration.Icon, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for MultimodalCustomKeyboardActionKeyData()
{
}

uint64_t initializeWithCopy for MultimodalCustomKeyboardActionKeyData(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for MultimodalCustomKeyboardActionKeyData(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;

  return a1;
}

uint64_t assignWithTake for MultimodalCustomKeyboardActionKeyData(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v5;

  return a1;
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier);
  }

  return result;
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>)
  {
    type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>);
    }
  }
}

void type metadata accessor for (LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)()
{
  if (!lazy cache variable for type metadata for (LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>))
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>));
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for VStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>)
  {
    type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>>);
    }
  }
}

uint64_t destroy for MultimodalNavigationChromeModifier(uint64_t a1)
{

  outlined consume of Environment<NSManagedObjectContext>.Content(*(a1 + 64), *(a1 + 72));
  outlined consume of Environment<Selector?>.Content(*(a1 + 80), *(a1 + 88));

  if (*(a1 + 120))
  {
  }
}

uint64_t initializeWithCopy for MultimodalNavigationChromeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);

  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v6, v7);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  v8 = *(a2 + 80);
  LOBYTE(v5) = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v8, v5);
  *(a1 + 80) = v8;
  *(a1 + 88) = v5;
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  v10 = *(a2 + 120);

  if (v10)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = v10;
    *(a1 + 128) = *(a2 + 128);
    v11 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v11;
  }

  else
  {
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 144) = *(a2 + 144);
  }

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t assignWithCopy for MultimodalNavigationChromeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v6, v7);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  outlined consume of Environment<NSManagedObjectContext>.Content(v8, v9);
  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  v14 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (v14)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);

      v15 = *(a2 + 152);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v15;
    }

    else
    {
      outlined destroy of MultimodalCustomKeyboardActionKeyData(a1 + 112);
      v18 = *(a2 + 128);
      v17 = *(a2 + 144);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v18;
      *(a1 + 144) = v17;
    }
  }

  else if (v14)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    v16 = *(a2 + 152);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = v16;
  }

  else
  {
    v19 = *(a2 + 112);
    v20 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v20;
    *(a1 + 112) = v19;
  }

  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t assignWithTake for MultimodalNavigationChromeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  v4 = *(a2 + 72);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  outlined consume of Environment<NSManagedObjectContext>.Content(v5, v6);
  v7 = *(a2 + 88);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  if (!*(a1 + 120))
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 120);
  if (!v10)
  {
    outlined destroy of MultimodalCustomKeyboardActionKeyData(a1 + 112);
LABEL_5:
    v12 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v12;
    *(a1 + 144) = *(a2 + 144);
    goto LABEL_6;
  }

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;

  v11 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v11;

  *(a1 + 144) = *(a2 + 144);

LABEL_6:
  *(a1 + 160) = *(a2 + 160);

  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalNavigationChromeModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalNavigationChromeModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollsUnderMultimodalNavigationChromeModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 97))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollsUnderMultimodalNavigationChromeModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = (a2 - 1);
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

  *(result + 97) = v3;
  return result;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>, type metadata accessor for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for SubscriptionView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<MultimodalNavigationChromeModifier>, lazy protocol witness table accessor for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier, &type metadata for MultimodalNavigationChromeModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _InsetViewModifier<BackButtonActionableBar?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>);
    }
  }
}

void type metadata accessor for _InsetViewModifier<BackButtonActionableBar?>()
{
  if (!lazy cache variable for type metadata for _InsetViewModifier<BackButtonActionableBar?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for BackButtonActionableBar?, &unk_1EFFF3428, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type BackButtonActionableBar? and conformance <A> A?();
    v0 = type metadata accessor for _InsetViewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _InsetViewModifier<BackButtonActionableBar?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BackButtonActionableBar? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar? and conformance <A> A?)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for BackButtonActionableBar?, &unk_1EFFF3428, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type BackButtonActionableBar and conformance BackButtonActionableBar();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackButtonActionableBar and conformance BackButtonActionableBar()
{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar and conformance BackButtonActionableBar;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar and conformance BackButtonActionableBar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar and conformance BackButtonActionableBar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>, type metadata accessor for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<MultimodalNavigationChromeModifier> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<BackButtonActionableBar?> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<BackButtonActionableBar?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<MultimodalNavigationChromeModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<MultimodalNavigationChromeModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<MultimodalNavigationChromeModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<MultimodalNavigationChromeModifier>, lazy protocol witness table accessor for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier, &type metadata for MultimodalNavigationChromeModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<MultimodalNavigationChromeModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>()
{
  if (!lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20]);
    v0 = type metadata accessor for SubscriptionView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>)
  {
    lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData? and conformance <A> A?(&lazy protocol witness table cache variable for type MultimodalCustomKeyboardActionKeyData? and conformance <A> A?, &lazy cache variable for type metadata for MultimodalCustomKeyboardActionKeyData?, &type metadata for MultimodalCustomKeyboardActionKeyData, lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData and conformance MultimodalCustomKeyboardActionKeyData);
    v0 = type metadata accessor for _PreferenceActionModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData and conformance MultimodalCustomKeyboardActionKeyData()
{
  result = lazy protocol witness table cache variable for type MultimodalCustomKeyboardActionKeyData and conformance MultimodalCustomKeyboardActionKeyData;
  if (!lazy protocol witness table cache variable for type MultimodalCustomKeyboardActionKeyData and conformance MultimodalCustomKeyboardActionKeyData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalCustomKeyboardActionKeyData and conformance MultimodalCustomKeyboardActionKeyData);
  }

  return result;
}

void type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceActionModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>);
    }
  }
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_38Tm()
{

  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 80), *(v0 + 88));
  outlined consume of Environment<Selector?>.Content(*(v0 + 96), *(v0 + 104));

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>, MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #5 in closure #1 in MultimodalNavigationChromeModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  return (*(a2 + 32))(v4, ObjectType, a2);
}

uint64_t outlined copy of MultimodalCustomKeyboardActionKeyData?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of MultimodalCustomKeyboardActionKeyData?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double _s7SwiftUI23BackButtonActionableBar33_94927F8A97ECE008E6A618C158753C28LLVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double specialized static BackButtonActionableBar.defaultBodyLeading.getter()
{
  if ((byte_1EAA326D8 & 1) == 0)
  {
    return *&static BackButtonActionableBar.cachedDefaultBodyLeading;
  }

  v0 = Font.TextStyle.ctTextStyle.getter();
  v1 = DynamicTypeSize.ctTextSize.getter();
  CTFontDescriptorGetTextStyleSize();

  result = 0.0;
  static BackButtonActionableBar.cachedDefaultBodyLeading = 0;
  byte_1EAA326D8 = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalScrollGeometryTransformProvider and conformance MultimodalScrollGeometryTransformProvider()
{
  result = lazy protocol witness table cache variable for type MultimodalScrollGeometryTransformProvider and conformance MultimodalScrollGeometryTransformProvider;
  if (!lazy protocol witness table cache variable for type MultimodalScrollGeometryTransformProvider and conformance MultimodalScrollGeometryTransformProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalScrollGeometryTransformProvider and conformance MultimodalScrollGeometryTransformProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalScrollGeometryState and conformance MultimodalScrollGeometryState()
{
  result = lazy protocol witness table cache variable for type MultimodalScrollGeometryState and conformance MultimodalScrollGeometryState;
  if (!lazy protocol witness table cache variable for type MultimodalScrollGeometryState and conformance MultimodalScrollGeometryState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalScrollGeometryState and conformance MultimodalScrollGeometryState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.ClarityUIIconWidthKey and conformance EnvironmentValues.ClarityUIIconWidthKey);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalScrollGeometryState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultimodalScrollGeometryState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = (a2 - 1);
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

  *(result + 89) = v3;
  return result;
}

uint64_t destroy for BackButtonActionableBar(uint64_t a1)
{

  if (*(a1 + 48))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 112), *(a1 + 120));
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for BackButtonActionableBar(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 48);

  if (v5)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v5;
    *(a1 + 56) = *(a2 + 56);
    v6 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  v7 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v7;
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 112);
  v9 = *(a2 + 120);

  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 112) = v8;
  *(a1 + 120) = v9;
  v10 = *(a2 + 128);
  v11 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  *(a1 + 128) = v10;
  *(a1 + 136) = v11;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithCopy for BackButtonActionableBar(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v5;
  v6 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v6)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);

      v7 = *(a2 + 80);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v7;
    }

    else
    {
      outlined destroy of MultimodalCustomKeyboardActionKeyData(a1 + 40);
      v9 = *(a2 + 72);
      v10 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v10;
      *(a1 + 72) = v9;
    }
  }

  else if (v6)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v8 = *(a2 + 80);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = v8;
  }

  else
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v12;
    *(a1 + 40) = v11;
  }

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v13 = *(a2 + 112);
  v14 = *(a2 + 120);
  outlined copy of Environment<Selector?>.Content(v13, v14);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  *(a1 + 112) = v13;
  *(a1 + 120) = v14;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 128);
  v18 = *(a2 + 136);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  v19 = *(a1 + 128);
  v20 = *(a1 + 136);
  *(a1 + 128) = v17;
  *(a1 + 136) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t assignWithTake for BackButtonActionableBar(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 48);
  if (!v4)
  {
    outlined destroy of MultimodalCustomKeyboardActionKeyData(a1 + 40);
LABEL_5:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    goto LABEL_6;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);

LABEL_6:
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v9 = *(a2 + 136);
  v10 = *(a1 + 128);
  v11 = *(a1 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

uint64_t getEnumTagSinglePayload for BackButtonActionableBar(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

uint64_t storeEnumTagSinglePayload for BackButtonActionableBar(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<MultimodalCustomKeyboardActionKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_HStackLayout, _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)(255, a3, a4, a5);
    v6 = type metadata accessor for TupleView();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for (ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>)
  {
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(255, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BackButtonStyle>, lazy protocol witness table accessor for type BackButtonStyle and conformance BackButtonStyle, &unk_1EFFF3588, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>)
  {
    type metadata accessor for Label<Text, Image>();
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle, &type metadata for MultimodalNavigationKeyboardLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle, &type metadata for MultimodalNavigationKeyboardLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackButtonStyle and conformance BackButtonStyle()
{
  result = lazy protocol witness table cache variable for type BackButtonStyle and conformance BackButtonStyle;
  if (!lazy protocol witness table cache variable for type BackButtonStyle and conformance BackButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonStyle and conformance BackButtonStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)
  {
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(255, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PrimaryActionButtonStyle>, lazy protocol witness table accessor for type PrimaryActionButtonStyle and conformance PrimaryActionButtonStyle, &unk_1EFFF3568, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>)
  {
    type metadata accessor for Label<_ConditionalContent<Text, Text>, Image?>();
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationKeyboardLabelStyle and conformance MultimodalNavigationKeyboardLabelStyle, &type metadata for MultimodalNavigationKeyboardLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>);
    }
  }
}

void type metadata accessor for Label<_ConditionalContent<Text, Text>, Image?>()
{
  if (!lazy cache variable for type metadata for Label<_ConditionalContent<Text, Text>, Image?>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for _ConditionalContent<Text, Text>, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for Image?, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type Image? and conformance <A> A?();
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Label<_ConditionalContent<Text, Text>, Image?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<_ConditionalContent<Text, Text>, Image?> and conformance Label<A, B>, type metadata accessor for Label<_ConditionalContent<Text, Text>, Image?>);
    lazy protocol witness table accessor for type LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle> and conformance LabelStyleWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimaryActionButtonStyle and conformance PrimaryActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type PrimaryActionButtonStyle and conformance PrimaryActionButtonStyle;
  if (!lazy protocol witness table cache variable for type PrimaryActionButtonStyle and conformance PrimaryActionButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimaryActionButtonStyle and conformance PrimaryActionButtonStyle);
  }

  return result;
}

void type metadata accessor for (Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)()
{
  if (!lazy cache variable for type metadata for (Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?))
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for Spacer?, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?));
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>)
  {
    type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(255, &lazy cache variable for type metadata for Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for Button);
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BackButtonStyle>, lazy protocol witness table accessor for type BackButtonStyle and conformance BackButtonStyle, &unk_1EFFF3588, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>);
    }
  }
}

void type metadata accessor for GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<SubscriptionView<NSNotificationCenter.Publisher, SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<_ViewModifier_Content<MultimodalNavigationChromeModifier>, _InsetViewModifier<BackButtonActionableBar?>>, _SafeAreaIgnoringLayout>>>, _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>>, _PreferenceActionModifier<MultimodalChromeVisiblePreferenceKey>>, _AnimationModifier<Bool>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>)
  {
    type metadata accessor for Label<Text, Image>();
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle, &type metadata for MultimodalNavigationBackButtonLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, lazy protocol witness table accessor for type LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle> and conformance LabelStyleWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, type metadata accessor for Label<Text, Image>);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationBackButtonLabelStyle and conformance MultimodalNavigationBackButtonLabelStyle, &type metadata for MultimodalNavigationBackButtonLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>()
{
  if (!lazy cache variable for type metadata for HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>, &unk_1EFFF3538, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>, &unk_1EFFF3538, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type BackButtonActionableBar.Background and conformance BackButtonActionableBar.Background();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BackButtonActionableBar.Background and conformance BackButtonActionableBar.Background()
{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar.Background and conformance BackButtonActionableBar.Background;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar.Background and conformance BackButtonActionableBar.Background)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar.Background and conformance BackButtonActionableBar.Background);
  }

  return result;
}

uint64_t objectdestroy_97Tm()
{

  if (*(v0 + 64))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(v0 + 128), *(v0 + 136));
  outlined consume of Environment<Selector?>.Content(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t initializeWithCopy for BackButtonActionableBar.Background(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = *(a2 + 33);
  v5 = *(a2 + 32);
  outlined copy of Environment<CGFloat?>.Content(v3, v5, v4);
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 33) = v4;
  return a1;
}

uint64_t assignWithCopy for BackButtonActionableBar.Background(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  v5 = *(a2 + 33);
  v6 = *(a2 + 32);
  outlined copy of Environment<CGFloat?>.Content(v4, v6, v5);
  v7 = *(a1 + 24);
  v8 = *(a1 + 33);
  *(a1 + 24) = v4;
  v9 = *(a1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 33) = v5;
  outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
  return a1;
}

uint64_t assignWithTake for BackButtonActionableBar.Background(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 33);
  v5 = *(a1 + 24);
  v6 = *(a1 + 33);
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a1 + 32);
  *(a1 + 32) = v3;
  *(a1 + 33) = v4;
  outlined consume of Environment<CGFloat?>.Content(v5, v7, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for BackButtonActionableBar.Background(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[34])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackButtonActionableBar.Background(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>>, type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>, _BackgroundModifier<ModifiedContent<BackButtonActionableBar.Background, _SafeAreaRegionsIgnoringLayout>>> and conformance <> ModifiedContent<A);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>> and conformance HStack<A>, type metadata accessor for HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<_ConditionalContent<Text, Text>, Image?>, LabelStyleWritingModifier<MultimodalNavigationKeyboardLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<PrimaryActionButtonStyle>>)>, TupleView<(Spacer?, ModifiedContent<ModifiedContent<Button<ModifiedContent<ModifiedContent<Label<Text, Image>, LabelStyleWritingModifier<MultimodalNavigationBackButtonLabelStyle>>, _FlexFrameLayout>>, ButtonStyleContainerModifier<BackButtonStyle>>, _FlexFrameLayout>, Spacer?)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for BarBackground()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for BarBackground(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-18 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v9 = a1 & 0xFFFFFFFFFFFFFFF8;
    v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v9 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    *(v9 + 8) = v10;
    (*(v4 + 16))(((a1 & 0xFFFFFFFFFFFFFFF8) + v5 + 17) & ~v5, ((a2 & 0xFFFFFFFFFFFFFFF8) + v5 + 17) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

unint64_t initializeWithCopy for BarBackground(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 16))((*(v6 + 80) + 17 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80), (*(v6 + 80) + 17 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80));
  return a1;
}

unint64_t assignWithCopy for BarBackground(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((*(v6 + 80) + 17 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80), (*(v6 + 80) + 17 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80));
  return a1;
}

unint64_t assignWithTake for BarBackground(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v4 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v4 + 8) = v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((*(v6 + 80) + 17 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80), (*(v6 + 80) + 17 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~*(v6 + 80));
  return a1;
}

uint64_t *assignWithCopy for MultimodalNavigationTitleLabelStyle(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  a4(*a2, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PlatterButtonStyleView<Color> and conformance PlatterButtonStyleView<A>()
{
  result = lazy protocol witness table cache variable for type PlatterButtonStyleView<Color> and conformance PlatterButtonStyleView<A>;
  if (!lazy protocol witness table cache variable for type PlatterButtonStyleView<Color> and conformance PlatterButtonStyleView<A>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for PlatterButtonStyleView<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], type metadata accessor for PlatterButtonStyleView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterButtonStyleView<Color> and conformance PlatterButtonStyleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>>();
    lazy protocol witness table accessor for type ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type BarBackground<BackButtonActionableBar.BarShape> and conformance BarBackground<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>>)
  {
    type metadata accessor for ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>();
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for BarBackground<BackButtonActionableBar.BarShape>, lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape, &unk_1EFFF3680, type metadata accessor for BarBackground);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>, BarBackground<BackButtonActionableBar.BarShape>>);
    }
  }
}

void type metadata accessor for ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for _ClipEffect<BackButtonActionableBar.BarShape>, lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape, &unk_1EFFF3680, MEMORY[0x1E697DDA0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape()
{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape;
  if (!lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>>();
    lazy protocol witness table accessor for type _ClipEffect<BackButtonActionableBar.BarShape> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BackButtonActionableBar.KeyboardBackdropView, _ClipEffect<BackButtonActionableBar.BarShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<BackButtonActionableBar.BarShape> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<BackButtonActionableBar.BarShape> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<BackButtonActionableBar.BarShape> and conformance _ClipEffect<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for _ClipEffect<BackButtonActionableBar.BarShape>, lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape, &unk_1EFFF3680, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<BackButtonActionableBar.BarShape> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarBackground<BackButtonActionableBar.BarShape> and conformance BarBackground<A>()
{
  result = lazy protocol witness table cache variable for type BarBackground<BackButtonActionableBar.BarShape> and conformance BarBackground<A>;
  if (!lazy protocol witness table cache variable for type BarBackground<BackButtonActionableBar.BarShape> and conformance BarBackground<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for BarBackground<BackButtonActionableBar.BarShape>, lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape, &unk_1EFFF3680, type metadata accessor for BarBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarBackground<BackButtonActionableBar.BarShape> and conformance BarBackground<A>);
  }

  return result;
}

void type metadata accessor for _ShapeView<BackButtonActionableBar.BarShape, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<BackButtonActionableBar.BarShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<BackButtonActionableBar.BarShape, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for BackButtonActionableBar.BarShape(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape();
  result = lazy protocol witness table accessor for type BackButtonActionableBar.BarShape and conformance BackButtonActionableBar.BarShape();
  *(a1 + 16) = result;
  return result;
}

void type metadata accessor for ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>)
  {
    type metadata accessor for TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>);
    }
  }
}

void type metadata accessor for (_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)()
{
  if (!lazy cache variable for type metadata for (_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?))
  {
    type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(255, &lazy cache variable for type metadata for _ShapeView<Rectangle, Color>);
    type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?, type metadata accessor for ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?));
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v3 = type metadata accessor for _ShapeView();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>)
  {
    type metadata accessor for _ShapeView<Rectangle, TintShapeStyle>(255, &lazy cache variable for type metadata for _ShapeView<Rectangle, TintShapeStyle>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>);
    }
  }
}

void type metadata accessor for _BackgroundStyleModifier<_OpacityShapeStyle<Material>>()
{
  if (!lazy cache variable for type metadata for _BackgroundStyleModifier<_OpacityShapeStyle<Material>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E697F5B0]);
    lazy protocol witness table accessor for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>();
    v0 = type metadata accessor for _BackgroundStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundStyleModifier<_OpacityShapeStyle<Material>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>()
{
  result = lazy protocol witness table cache variable for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>;
  if (!lazy protocol witness table cache variable for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for _OpacityShapeStyle<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E697F5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _OpacityShapeStyle<Material> and conformance _OpacityShapeStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<_OpacityShapeStyle<Material>> and conformance _BackgroundStyleModifier<A>, type metadata accessor for _BackgroundStyleModifier<_OpacityShapeStyle<Material>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t destroy for MultimodalNavigationTitleBar(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    if (v2 == 1)
    {
      return result;
    }

    outlined consume of Text.Storage(*result, *(result + 8), *(result + 16));
  }

  if (*(v1 + 32) != 1)
  {
  }
}

uint64_t initializeWithCopy for MultimodalNavigationTitleBar(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 32) = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      goto LABEL_9;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v6;
  }

  v10 = a2[4];
  if (v10 != 1)
  {
  }

  *(a1 + 32) = v10;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = a2[6];
  *(a1 + 56) = *(a2 + 56);

LABEL_9:
  *(a1 + 64) = a2[8];
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = a2[10];
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithCopy for MultimodalNavigationTitleBar(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 3);
  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of NavigationTitleStorage(a1);
      v10 = a2[1];
      v9 = a2[2];
      v11 = *a2;
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v10;
      *(a1 + 32) = v9;
      *a1 = v11;
      goto LABEL_28;
    }

    if (v4)
    {
      if (v5)
      {
        v12 = *a2;
        v13 = *(a2 + 1);
        v14 = *(a2 + 16);
        outlined copy of Text.Storage(*a2, v13, v14);
        v15 = *a1;
        v16 = *(a1 + 8);
        v17 = *(a1 + 16);
        *a1 = v12;
        *(a1 + 8) = v13;
        *(a1 + 16) = v14;
        outlined consume of Text.Storage(v15, v16, v17);
        *(a1 + 24) = *(a2 + 3);
      }

      else
      {
        outlined destroy of Text(a1);
        v26 = a2[1];
        *a1 = *a2;
        *(a1 + 16) = v26;
      }
    }

    else if (v5)
    {
      v23 = *a2;
      v24 = *(a2 + 1);
      v25 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v24, v25);
      *a1 = v23;
      *(a1 + 8) = v24;
      *(a1 + 16) = v25;
      *(a1 + 24) = *(a2 + 3);
    }

    else
    {
      v27 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v27;
    }

    v28 = (a1 + 32);
    v29 = *(a2 + 4);
    if (*(a1 + 32) == 1)
    {
      if (v29 != 1)
      {
        *v28 = v29;

        goto LABEL_27;
      }

      v30 = 1;
    }

    else
    {
      if (v29 != 1)
      {
        *v28 = v29;

        goto LABEL_27;
      }

      outlined destroy of Transaction(a1 + 32);
      v30 = *(a2 + 4);
    }

    *v28 = v30;
LABEL_27:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 6);

    *(a1 + 56) = *(a2 + 56);
    goto LABEL_28;
  }

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *a1 = v6;
      goto LABEL_28;
    }

    v19 = *a2;
    v20 = *(a2 + 1);
    v21 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v20, v21);
    *a1 = v19;
    *(a1 + 8) = v20;
    *(a1 + 16) = v21;
    *(a1 + 24) = *(a2 + 3);
  }

  else
  {
    v18 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v18;
  }

  v22 = *(a2 + 4);
  if (v22 != 1)
  {
  }

  *(a1 + 32) = v22;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 56);

LABEL_28:
  v31 = *(a2 + 8);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v31;
  v32 = *(a2 + 10);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v32;
  v33 = *(a2 + 12);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = v33;
  return a1;
}

uint64_t assignWithTake for MultimodalNavigationTitleBar(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 24);
  if (v5 != 1)
  {
    if (v4)
    {
      if (v5)
      {
        v7 = *(a2 + 16);
        v8 = *a1;
        v9 = *(a1 + 8);
        v10 = *(a1 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        outlined consume of Text.Storage(v8, v9, v10);
        *(a1 + 24) = v5;

        goto LABEL_10;
      }

      outlined destroy of Text(a1);
    }

    v11 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v11;
LABEL_10:
    v12 = (a1 + 32);
    v13 = *(a2 + 32);
    if (*(a1 + 32) != 1)
    {
      if (v13 != 1)
      {
        *v12 = v13;

        goto LABEL_15;
      }

      outlined destroy of Transaction(a1 + 32);
      v13 = 1;
    }

    *v12 = v13;
LABEL_15:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);

    *(a1 + 56) = *(a2 + 56);
    goto LABEL_16;
  }

  outlined destroy of NavigationTitleStorage(a1);
LABEL_4:
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
LABEL_16:
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for MultimodalNavigationTitleBar(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 105))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for MultimodalNavigationTitleBar(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for TupleView<(LabelStyleConfiguration.Icon, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<Int?>>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_5(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>)
  {
    type metadata accessor for Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>();
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>, lazy protocol witness table accessor for type MultimodalNavigationTitleLabelStyle and conformance MultimodalNavigationTitleLabelStyle, &type metadata for MultimodalNavigationTitleLabelStyle, type metadata accessor for LabelStyleWritingModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>);
    }
  }
}

void type metadata accessor for Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>()
{
  if (!lazy cache variable for type metadata for Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>, MEMORY[0x1E6981910], &type metadata for _AccessibilityIgnoresInvertColorsViewModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>, MEMORY[0x1E6981910], &type metadata for _AccessibilityIgnoresInvertColorsViewModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationTitleLabelStyle and conformance MultimodalNavigationTitleLabelStyle()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitleLabelStyle and conformance MultimodalNavigationTitleLabelStyle;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitleLabelStyle and conformance MultimodalNavigationTitleLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitleLabelStyle and conformance MultimodalNavigationTitleLabelStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<BarBackground<Rectangle>>, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<BarBackground<Rectangle>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<BarBackground<Rectangle>>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for BarBackground<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], type metadata accessor for BarBackground);
    lazy protocol witness table accessor for type BarBackground<Rectangle> and conformance BarBackground<A>();
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<BarBackground<Rectangle>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type BarBackground<Rectangle> and conformance BarBackground<A>()
{
  result = lazy protocol witness table cache variable for type BarBackground<Rectangle> and conformance BarBackground<A>;
  if (!lazy protocol witness table cache variable for type BarBackground<Rectangle> and conformance BarBackground<A>)
  {
    type metadata accessor for _ViewModifier_Content<MultimodalNavigationChromeModifier>(255, &lazy cache variable for type metadata for BarBackground<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], type metadata accessor for BarBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarBackground<Rectangle> and conformance BarBackground<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, type metadata accessor for _BackgroundModifier<BarBackground<Rectangle>>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<BarBackground<Rectangle>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<BarBackground<Rectangle>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, a2, a3, MEMORY[0x1E69E6720]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationTitleStorage and conformance NavigationTitleStorage()
{
  result = lazy protocol witness table cache variable for type NavigationTitleStorage and conformance NavigationTitleStorage;
  if (!lazy protocol witness table cache variable for type NavigationTitleStorage and conformance NavigationTitleStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationTitleStorage and conformance NavigationTitleStorage);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, type metadata accessor for _ValueActionModifier2<NavigationTitleStorage?>, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier>);
    }
  }
}

void type metadata accessor for _ValueActionModifier2<NavigationTitleStorage?>()
{
  if (!lazy cache variable for type metadata for _ValueActionModifier2<NavigationTitleStorage?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(255, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type MultimodalCustomKeyboardActionKeyData? and conformance <A> A?(&lazy protocol witness table cache variable for type NavigationTitleStorage? and conformance <A> A?, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, lazy protocol witness table accessor for type NavigationTitleStorage and conformance NavigationTitleStorage);
    v0 = type metadata accessor for _ValueActionModifier2();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ValueActionModifier2<NavigationTitleStorage?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, type metadata accessor for _ValueActionModifier2<NavigationTitleStorage?>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<MultimodalNavigationStackViewHost<ModifiedContent<LabelStyleConfiguration.Icon, _FrameLayout>>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ValueActionModifier2<NavigationTitleStorage?> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<NavigationTitleStorage?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Label<Text, ModifiedContent<AnyView, _AccessibilityIgnoresInvertColorsViewModifier>>, LabelStyleWritingModifier<MultimodalNavigationTitleLabelStyle>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _BackgroundModifier<BarBackground<Rectangle>>>, AccessibilityContainerModifier>, AccessibilityAttachmentModifier>, _ValueActionModifier2<NavigationTitleStorage?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

Swift::Int DraggingItem.Identifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DraggingItem<A>.Identifier<A1>()
{
  Hasher.init(_seed:)();
  DraggingItem.Identifier.hash(into:)();
  return Hasher._finalize()();
}

uint64_t type metadata completion function for DraggingItem()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DraggingItem(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = v10;
    v11 = v10;
  }

  return v3;
}

void destroy for DraggingItem(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for DraggingItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = v8;
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for DraggingItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = v8;
  v10 = v8;

  return a1;
}

uint64_t assignWithTake for DraggingItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

void storeEnumTagSinglePayload for DraggingItem(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, v9);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

  *(a1 + v9) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *v21 = v22;
  }

  else if (v6 >= a2)
  {
    v23 = *(v5 + 56);

    v23();
  }

  else
  {
    if (v8 <= 3)
    {
      v17 = ~(-1 << (8 * v8));
    }

    else
    {
      v17 = -1;
    }

    if (v8)
    {
      v18 = v17 & (~v6 + a2);
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      v20 = a1;
      bzero(a1, v8);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          *v20 = v18;
          *(v20 + 2) = BYTE2(v18);
        }

        else
        {
          *v20 = v18;
        }
      }

      else if (v19 == 1)
      {
        *v20 = v18;
      }

      else
      {
        *v20 = v18;
      }
    }
  }
}

uint64_t protocol witness for Identifiable.id.getter in conformance DraggingItem<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8.val[0] = *(a1 + 16);
  v8.val[1] = v8.val[0];
  v4 = &v7;
  vst2q_f64(v4, v8);
  v5 = type metadata accessor for DraggingItem.Identifier();
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

double SliderStyleConfiguration.value.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4[1] = *v0;
  v4[2] = v1;
  v4[3] = v2;
  type metadata accessor for Binding<Double>();
  MEMORY[0x18D00ACC0](v4);
  return *v4;
}

void type metadata accessor for Binding<Double>()
{
  if (!lazy cache variable for type metadata for Binding<Double>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Double>);
    }
  }
}

double SliderStyleConfiguration.$value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t View.sliderStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SliderStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedSliderStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return outlined init with copy of SliderStyleConfiguration(v15, &v14);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedSliderStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedSliderStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedSliderStyle and conformance ResolvedSliderStyle();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance ResolvedSliderStyle@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return outlined init with copy of ResolvedSliderStyle(v15, &v14);
}

uint64_t SliderStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - v10;
  v12 = a1[7];
  v19[6] = a1[6];
  v19[7] = v12;
  v19[8] = a1[8];
  v13 = a1[3];
  v19[2] = a1[2];
  v19[3] = v13;
  v14 = a1[5];
  v19[4] = a1[4];
  v19[5] = v14;
  v15 = a1[1];
  v19[0] = *a1;
  v19[1] = v15;
  (*(v3 + 24))(v19, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = *(v6 + 8);
  v17(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v17)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SliderStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SliderStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

double key path getter for SliderStyleConfiguration.value : SliderStyleConfiguration@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v6[1] = *a1;
  v6[2] = v3;
  v6[3] = v4;
  type metadata accessor for Binding<Double>();
  MEMORY[0x18D00ACC0](v6);
  result = *v6;
  *a2 = v6[0];
  return result;
}

uint64_t key path setter for SliderStyleConfiguration.value : SliderStyleConfiguration(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[7];
  v10[6] = a2[6];
  v10[7] = v3;
  v10[8] = a2[8];
  v4 = a2[3];
  v10[2] = a2[2];
  v10[3] = v4;
  v5 = a2[5];
  v10[4] = a2[4];
  v10[5] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v9 = v2;
  outlined init with copy of SliderStyleConfiguration(v10, v8);
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return outlined destroy of SliderStyleConfiguration(v10);
}

void (*SliderStyleConfiguration.value.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v5 = v1[1];
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v1[2];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  type metadata accessor for Binding<Double>();
  MEMORY[0x18D00ACC0]();
  return SliderStyleConfiguration.value.modify;
}

void SliderStyleConfiguration.value.modify(uint64_t a1)
{
  v1 = *a1;
  *(*a1 + 32) = *(*a1 + 24);
  dispatch thunk of AnyLocation.set(_:transaction:)();

  free(v1);
}

uint64_t key path setter for SliderStyleConfiguration.onEditingChanged : SliderStyleConfiguration(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 56) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
  *(a2 + 64) = v5;
  return result;
}

uint64_t SliderStyleConfiguration.onEditingChanged.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SliderStyleConfiguration.onEditingChanged.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SliderStyleConfiguration.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SliderStyleConfiguration.MinimumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for SliderStyleConfiguration.MaximumValueLabel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel>)
  {
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<SliderStyleConfiguration.MinimumValueLabel, SliderStyleConfiguration.MaximumValueLabel>);
    }
  }
}

uint64_t initializeWithCopy for SliderStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  v8 = (a2 + 112);
  v7 = *(a2 + 112);
  v9 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);

  if (v7)
  {
    v10 = *(a2 + 120);
    v11 = *(a2 + 128);
    *(a1 + 112) = v7;
    *(a1 + 120) = v10;
    v12 = *(a2 + 136);
    *(a1 + 128) = v11;
    *(a1 + 136) = v12;
    v13 = v7;
    v14 = v10;
    v15 = v11;
    v16 = v12;
  }

  else
  {
    v17 = v8[1];
    *(a1 + 112) = *v8;
    *(a1 + 128) = v17;
  }

  return a1;
}

uint64_t assignWithCopy for SliderStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v6 = (a1 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  v9 = (a2 + 112);
  v8 = *(a2 + 112);
  if (v7)
  {
    if (v8)
    {
      *(a1 + 112) = v8;
      v10 = v8;

      v11 = *(a1 + 120);
      v12 = *(a2 + 120);
      *(a1 + 120) = v12;
      v13 = v12;

      v14 = *(a1 + 128);
      v15 = *(a2 + 128);
      *(a1 + 128) = v15;
      v16 = v15;

      v17 = *(a1 + 136);
      v18 = *(a2 + 136);
      *(a1 + 136) = v18;
      v19 = v18;
    }

    else
    {
      outlined destroy of AccessibilityBoundedNumber(a1 + 112);
      v27 = *(a2 + 128);
      *v6 = *v9;
      *(a1 + 128) = v27;
    }
  }

  else if (v8)
  {
    *(a1 + 112) = v8;
    v20 = *(a2 + 120);
    *(a1 + 120) = v20;
    v21 = *(a2 + 128);
    *(a1 + 128) = v21;
    v22 = *(a2 + 136);
    *(a1 + 136) = v22;
    v23 = v8;
    v24 = v20;
    v25 = v21;
    v26 = v22;
  }

  else
  {
    v28 = *(a2 + 128);
    *v6 = *v9;
    *(a1 + 128) = v28;
  }

  return a1;
}

uint64_t assignWithTake for SliderStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);

  v6 = *(a2 + 112);
  v7 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (!v6)
  {
    outlined destroy of AccessibilityBoundedNumber(a1 + 112);
LABEL_5:
    v11 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v11;
    return a1;
  }

  *(a1 + 112) = v6;

  v8 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v9 = *(a1 + 128);
  *(a1 + 128) = *(a2 + 128);

  v10 = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);

  return a1;
}

unint64_t lazy protocol witness table accessor for type SliderStyleModifier<AutomaticSliderStyle> and conformance SliderStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type SliderStyleModifier<AutomaticSliderStyle> and conformance SliderStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type SliderStyleModifier<AutomaticSliderStyle> and conformance SliderStyleModifier<A>)
  {
    type metadata accessor for SliderStyleModifier<AutomaticSliderStyle>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderStyleModifier<AutomaticSliderStyle> and conformance SliderStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for SliderStyleModifier<AutomaticSliderStyle>()
{
  if (!lazy cache variable for type metadata for SliderStyleModifier<AutomaticSliderStyle>)
  {
    lazy protocol witness table accessor for type AutomaticSliderStyle and conformance AutomaticSliderStyle();
    v0 = type metadata accessor for SliderStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SliderStyleModifier<AutomaticSliderStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticSliderStyle and conformance AutomaticSliderStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticSliderStyle and conformance AutomaticSliderStyle;
  if (!lazy protocol witness table cache variable for type AutomaticSliderStyle and conformance AutomaticSliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticSliderStyle and conformance AutomaticSliderStyle);
  }

  return result;
}

uint64_t type metadata completion function for EnvironmentWritingTableColumnContent()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for EnvironmentWritingTableColumnContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + v11) & ~v11) + *(v10 + 64);
  v14 = (*(v7 + 80) | *(v10 + 80));
  if (v14 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v14 + 16) & ~v14));
  }

  else
  {
    v18 = ~v11;
    (*(v7 + 16))(a1, a2, AssociatedTypeWitness);
    (*(v10 + 16))((a1 + v12) & v18, (a2 + v12) & v18, v9);
  }

  return a1;
}

uint64_t destroy for EnvironmentWritingTableColumnContent(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 8;
  (*v5)(a1, AssociatedTypeWitness);
  v6 = *(*(a2 + 24) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t initializeWithCopy for EnvironmentWritingTableColumnContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 16;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 16))((*(v7 + 48) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 48) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithCopy for EnvironmentWritingTableColumnContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 24;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 24))((*(v7 + 40) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 40) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t initializeWithTake for EnvironmentWritingTableColumnContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 32;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 32))((*(v7 + 32) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 32) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithTake for EnvironmentWritingTableColumnContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8) + 40;
  (*v7)(a1, a2, AssociatedTypeWitness);
  v8 = *(*(a3 + 24) - 8);
  (*(v8 + 40))((*(v7 + 24) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 24) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentWritingTableColumnContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for EnvironmentWritingTableColumnContent(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 24) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t instantiation function for generic protocol witness table for EnvironmentWritingTableColumnContent<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t TableColumnContent.environment<A>(key:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a2, v12);
  (*(v8 + 16))(v10, v4, a3);
  return EnvironmentWritingTableColumnContent.init(value:content:)(v14, v10, a3, a4);
}

uint64_t EnvironmentWritingTableColumnContent.init(value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a4, a1, AssociatedTypeWitness);
  v9 = type metadata accessor for EnvironmentWritingTableColumnContent();
  return (*(*(a3 - 8) + 32))(a4 + *(v9 + 52), a2, a3);
}

uint64_t static EnvironmentWritingTableColumnContent._makeContent(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a7;
  v75 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = &v37 - v15;
  *&v69 = a3;
  *(&v69 + 1) = a4;
  *&v70 = a5;
  *(&v70 + 1) = a6;
  v41 = type metadata accessor for EnvironmentWritingTableColumnContent.ChildEnvironment();
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v37 - v16;
  v17 = a2[3];
  v18 = a2[1];
  v71 = a2[2];
  v72 = v17;
  v19 = a2[3];
  v73 = a2[4];
  v20 = a2[1];
  v69 = *a2;
  v70 = v20;
  v65 = v71;
  v66 = v19;
  v67 = a2[4];
  v21 = *a1;
  v74 = *(a2 + 20);
  v68 = *(a2 + 20);
  v63 = v69;
  v64 = v18;
  v42 = v21;
  v46[5] = v21;
  outlined init with copy of _TableColumnInputs(&v69, &v57);
  *&v57 = a3;
  *(&v57 + 1) = a4;
  *&v58 = a5;
  *(&v58 + 1) = a6;
  v22 = a6;
  type metadata accessor for EnvironmentWritingTableColumnContent();
  v40 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(AssociatedTypeWitness - 8) + 64))
  {
    closure #1 in static EnvironmentWritingTableColumnContent._makeContent(content:inputs:)(1, a3, a4, a5, a6);
  }

  v23 = a4;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v25 = v70;
  swift_beginAccess();
  LODWORD(v25) = *(v25 + 16);
  v26 = swift_getAssociatedTypeWitness();
  v27 = *(*(v26 - 8) + 56);
  v38 = a5;
  v28 = v39;
  v27(v39, 1, 1, v26);
  v29 = v43;
  v30 = EnvironmentWritingTableColumnContent.ChildEnvironment.init(newValue:environment:oldValue:)(OffsetAttribute2, v25, v28, v43);
  MEMORY[0x1EEE9AC00](v30);
  v31 = v41;
  *(&v37 - 2) = v41;
  *(&v37 - 1) = swift_getWitnessTable();
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, (&v37 - 4), v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  (*(v44 + 8))(v29, v31);
  v34 = _GraphInputs.environment.setter();
  MEMORY[0x1EEE9AC00](v34);
  *(&v37 - 4) = a3;
  *(&v37 - 3) = v23;
  *(&v37 - 2) = v38;
  *(&v37 - 1) = v22;
  v46[1] = v42;
  _GraphValue.subscript.getter();
  v53[2] = v65;
  v53[3] = v66;
  v53[4] = v67;
  v54 = v68;
  v53[0] = v63;
  v53[1] = v64;
  v49 = v65;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v47 = v63;
  v48 = v64;
  v35 = *(v22 + 64);
  outlined init with copy of _TableColumnInputs(v53, &v57);
  v35(v46, &v47, v23, v22);
  v55[2] = v49;
  v55[3] = v50;
  v55[4] = v51;
  v56 = v52;
  v55[0] = v47;
  v55[1] = v48;
  outlined destroy of _TableColumnInputs(v55);
  v59 = v65;
  v60 = v66;
  v61 = v67;
  v62 = v68;
  v57 = v63;
  v58 = v64;
  return outlined destroy of _TableColumnInputs(&v57);
}

uint64_t closure #1 in static EnvironmentWritingTableColumnContent._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v9[2] = type metadata accessor for EnvironmentWritingTableColumnContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v9, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v11;
}

uint64_t EnvironmentWritingTableColumnContent.ChildEnvironment.init(newValue:environment:oldValue:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for EnvironmentWritingTableColumnContent.ChildEnvironment() + 56);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  return (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
}

uint64_t closure #2 in static EnvironmentWritingTableColumnContent._makeContent(content:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for EnvironmentWritingTableColumnContent();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

uint64_t static EnvironmentWritingTableColumnContent._tableColumnCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return (*(a5 + 72))(v8, a3, a5);
}

uint64_t EnvironmentWritingTableColumnContent.ChildEnvironment.updateValue()(uint64_t a1)
{
  v2 = v1;
  v37 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v29 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  Value = AGGraphGetValue();
  v31 = v17;
  v19 = *Value;
  v18 = Value[1];
  v35 = v19;
  v36 = v18;

  v20 = AGGraphGetValue();
  v22 = v21;
  (*(v9 + 16))(v15, v20, AssociatedTypeWitness);
  v23 = 0;
  if (v22)
  {
    v24 = v32;
    (*(v6 + 16))(v8, v2 + *(a1 + 56), v32);
    if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
    {
      (*(v6 + 8))(v8, v24);
      v23 = 1;
    }

    else
    {
      v25 = (*(v9 + 32))(v12, v8, AssociatedTypeWitness);
      MEMORY[0x1EEE9AC00](v25);
      *(&v29 - 4) = AssociatedTypeWitness;
      *(&v29 - 3) = v15;
      *(&v29 - 4) = 3;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v12, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v29 - 6), AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v26);
      (*(v9 + 8))(v12, AssociatedTypeWitness);
      v23 = v33 ^ 1;
    }
  }

  if (!AGGraphGetOutputValue() || (v31 & 1) != 0 || (v23 & 1) != 0)
  {
    specialized EnvironmentValues.subscript.setter(v15, v29, v29, v30);
    v33 = v35;
    v34 = v36;

    AGGraphSetOutputValue();

    v28 = *(a1 + 56);
    (*(v6 + 8))(v2 + v28, v32);
    (*(v9 + 32))(v2 + v28, v15, AssociatedTypeWitness);
    return (*(v9 + 56))(v2 + v28, 0, 1, AssociatedTypeWitness);
  }

  else
  {

    return (*(v9 + 8))(v15, AssociatedTypeWitness);
  }
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance EnvironmentWritingTableColumnContent<A, B>.ChildEnvironment(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t type metadata completion function for EnvironmentWritingTableColumnContent.ChildEnvironment()
{
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for EnvironmentWritingTableColumnContent.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  v9 = v6 & 0x100000;
  if (v7 <= 7 && v9 == 0 && ((-9 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v13 = AssociatedTypeWitness;
    *a1 = *a2;
    v14 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v15 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v14 = *v15;
    v16 = v14 + v7 + 4;
    v17 = v15 + v7 + 4;
    if ((*(v5 + 48))(v17 & ~v7, 1, AssociatedTypeWitness))
    {
      memcpy((v16 & ~v7), (v17 & ~v7), v8);
    }

    else
    {
      (*(v5 + 16))(v16 & ~v7, v17 & ~v7, v13);
      (*(v5 + 56))(v16 & ~v7, 0, 1, v13);
    }
  }

  else
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v7 & 0xFC ^ 0x1FC) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for EnvironmentWritingTableColumnContent.ChildEnvironment(uint64_t a1)
{
  v1 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = v1 + v4 + 4;
  v8 = v3;
  result = (*(v3 + 48))(v5 & ~v4, 1, AssociatedTypeWitness);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(v5 & ~v4, AssociatedTypeWitness);
  }

  return result;
}

_DWORD *initializeWithCopy for EnvironmentWritingTableColumnContent.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v3 + v7 + 4;
  v9 = v4 + v7 + 4;
  if ((*(v6 + 48))(v9 & ~v7, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = *(v6 + 64) + 1;
    }

    memcpy((v8 & ~v7), (v9 & ~v7), v10);
  }

  else
  {
    (*(v6 + 16))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
    (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithCopy for EnvironmentWritingTableColumnContent.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v3 + v7 + 4;
  v9 = v4 + v7 + 4;
  v10 = *(v6 + 48);
  LODWORD(v3) = v10(v8 & ~v7, 1, AssociatedTypeWitness);
  v11 = v10(v9 & ~v7, 1, AssociatedTypeWitness);
  if (v3)
  {
    if (!v11)
    {
      (*(v6 + 16))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v6 + 24))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      return a1;
    }

    v15 = *(v6 + 8);
    v14 = v6 + 8;
    v15(v8 & ~v7, AssociatedTypeWitness);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v8 & ~v7), (v9 & ~v7), v16);
  return a1;
}

_DWORD *initializeWithTake for EnvironmentWritingTableColumnContent.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v3 + v7 + 4;
  v9 = v4 + v7 + 4;
  if ((*(v6 + 48))(v9 & ~v7, 1, AssociatedTypeWitness))
  {
    if (*(v6 + 84))
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = *(v6 + 64) + 1;
    }

    memcpy((v8 & ~v7), (v9 & ~v7), v10);
  }

  else
  {
    (*(v6 + 32))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
    (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithTake for EnvironmentWritingTableColumnContent.ChildEnvironment(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v3 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v3 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = v3 + v7 + 4;
  v9 = v4 + v7 + 4;
  v10 = *(v6 + 48);
  LODWORD(v3) = v10(v8 & ~v7, 1, AssociatedTypeWitness);
  v11 = v10(v9 & ~v7, 1, AssociatedTypeWitness);
  if (v3)
  {
    if (!v11)
    {
      (*(v6 + 32))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      (*(v6 + 56))(v8 & ~v7, 0, 1, AssociatedTypeWitness);
      return a1;
    }

    v12 = *(v6 + 84);
    v13 = *(v6 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v6 + 40))(v8 & ~v7, v9 & ~v7, AssociatedTypeWitness);
      return a1;
    }

    v15 = *(v6 + 8);
    v14 = v6 + 8;
    v15(v8 & ~v7, AssociatedTypeWitness);
    v12 = *(v14 + 76);
    v13 = *(v14 + 56);
  }

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = v13 + 1;
  }

  memcpy((v8 & ~v7), (v9 & ~v7), v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for EnvironmentWritingTableColumnContent.ChildEnvironment(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = *(v5 + 80);
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v10 = v9 + ((v8 + 8) & ~v8);
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((a2 - v7 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_28;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 <= 3)
          {
            v15 = v10;
          }

          else
          {
            v15 = 4;
          }

          if (v15 > 2)
          {
            if (v15 == 3)
            {
              v16 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v16 = *a1;
            }
          }

          else if (v15 == 1)
          {
            v16 = *a1;
          }

          else
          {
            v16 = *a1;
          }
        }

        else
        {
          v16 = 0;
        }

        return v7 + (v16 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v6 < 2)
  {
    return 0;
  }

  v18 = (*(v5 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
  if (v18 >= 2)
  {
    return v18 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for EnvironmentWritingTableColumnContent.ChildEnvironment(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = v11 + ((v10 + 8) & ~v10);
  if (a3 <= v9)
  {
    goto LABEL_17;
  }

  if (v12 <= 3)
  {
    v13 = ((a3 - v9 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v13))
    {
      v6 = 4;
      if (v9 >= a2)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

LABEL_17:
    if (v9 >= a2)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v6 = 1;
  if (v9 >= a2)
  {
LABEL_27:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    if (!a2)
    {
      return;
    }

LABEL_34:
    if (v8 >= 2)
    {
      v18 = *(v7 + 56);

      v18((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 4) & ~v10, a2 + 1);
    }

    return;
  }

LABEL_18:
  v15 = ~v9 + a2;
  if (v12 >= 4)
  {
    bzero(a1, v12);
    *a1 = v15;
    v16 = 1;
    if (v6 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v16 = (v15 >> (8 * v12)) + 1;
  if (!v12)
  {
LABEL_41:
    if (v6 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v17 = v15 & ~(-1 << (8 * v12));
  bzero(a1, v12);
  if (v12 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_41;
  }

  if (v12 == 2)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_45:
      if (v6 == 2)
      {
        *&a1[v12] = v16;
      }

      else
      {
        *&a1[v12] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v6 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6)
  {
    a1[v12] = v16;
  }
}

uint64_t type metadata completion function for CollectionViewTableRoot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CollectionViewTableRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((((((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (a2 + v9) & v16;
    (*(v7 + 16))((v3 + v9) & v16, v18, v6);
    v19 = (v10 + ((v3 + v9) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v10 + v18) & 0xFFFFFFFFFFFFFFF8;
    if (*(v20 + 8) < 0xFFFFFFFFuLL)
    {
      v23 = *v20;
      v24 = *(v20 + 16);
      v25 = *(v20 + 32);
      *(v19 + 48) = *(v20 + 48);
      *(v19 + 16) = v24;
      *(v19 + 32) = v25;
      *v19 = v23;
    }

    else
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      v21 = *(v20 + 40);
      *(v19 + 40) = v21;
      *(v19 + 48) = *(v20 + 48);
      v22 = **(v21 - 8);

      v22(v19 + 16, v20 + 16, v21);
    }

    v26 = (v19 + 63) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v20 + 63) & 0xFFFFFFFFFFFFFFF8;
    if (*(v27 + 8) < 0xFFFFFFFFuLL)
    {
      v28 = *v27;
      *(v26 + 16) = *(v27 + 16);
      *v26 = v28;
    }

    else
    {
      *v26 = *v27;
      *(v26 + 8) = *(v27 + 8);
      *(v26 + 16) = *(v27 + 16);
    }

    v29 = (v26 + 31) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
    if (*(v30 + 8) < 0xFFFFFFFFuLL)
    {
      v31 = *(v30 + 16);
      *v29 = *v30;
      *(v29 + 16) = v31;
    }

    else
    {
      *v29 = *v30;
      *(v29 + 8) = *(v30 + 8);
      *(v29 + 16) = *(v30 + 16);
      *(v29 + 24) = *(v30 + 24);
    }
  }

  return v3;
}

uint64_t destroy for CollectionViewTableRoot(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(*(a2 + 32) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  result = (*(v6 + 8))(v8);
  v10 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 8) >= 0xFFFFFFFFuLL)
  {

    result = __swift_destroy_boxed_opaque_existential_1(v10 + 16);
  }

  v11 = (v10 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v11 + 8) >= 0xFFFFFFFFuLL)
  {
  }

  if (*(((v11 + 31) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v16 + 8) < 0xFFFFFFFFuLL)
  {
    v19 = *v16;
    v20 = *(v16 + 16);
    v21 = *(v16 + 32);
    *(v15 + 48) = *(v16 + 48);
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *v15 = v19;
  }

  else
  {
    *v15 = *v16;
    *(v15 + 8) = *(v16 + 8);
    v17 = *(v16 + 40);
    *(v15 + 40) = v17;
    *(v15 + 48) = *(v16 + 48);
    v18 = **(v17 - 8);

    v18(v15 + 16, v16 + 16, v17);
  }

  v22 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  if (*(v23 + 8) < 0xFFFFFFFFuLL)
  {
    v24 = *v23;
    *(v22 + 16) = *(v23 + 16);
    *v22 = v24;
  }

  else
  {
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    *(v22 + 16) = *(v23 + 16);
  }

  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
  }

  else
  {
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  if (*(v15 + 8) < 0xFFFFFFFFuLL)
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      v18 = *(v16 + 40);
      *(v15 + 40) = v18;
      *(v15 + 48) = *(v16 + 48);
      v19 = **(v18 - 8);

      v19(v15 + 16, v16 + 16, v18);
      goto LABEL_8;
    }
  }

  else
  {
    if (v17 >= 0xFFFFFFFF)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_assign_boxed_opaque_existential_1((v15 + 16), (v16 + 16));
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  }

  v20 = *v16;
  v21 = *(v16 + 16);
  v22 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v21;
  *(v15 + 32) = v22;
  *v15 = v20;
LABEL_8:
  v23 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  if (v23[1] < 0xFFFFFFFFuLL)
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;
      v23[1] = v24[1];
      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  else
  {
    if (v25 >= 0xFFFFFFFF)
    {
      *v23 = *v24;

      v23[1] = v24[1];

      v23[2] = v24[2];

      goto LABEL_15;
    }
  }

  v26 = *v24;
  v23[2] = v24[2];
  *v23 = v26;
LABEL_15:
  v27 = ((v23 + 31) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = v28[1];
  if (v27[1] < 0xFFFFFFFFuLL)
  {
    if (v29 >= 0xFFFFFFFF)
    {
      *v27 = *v28;
      v27[1] = v28[1];
      v27[2] = v28[2];
      v27[3] = v28[3];

      return a1;
    }

LABEL_21:
    v30 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v30;
    return a1;
  }

  if (v29 < 0xFFFFFFFF)
  {

    goto LABEL_21;
  }

  *v27 = *v28;

  v27[1] = v28[1];

  v27[2] = v28[2];

  v27[3] = v28[3];

  return a1;
}

uint64_t initializeWithTake for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v17 = *(v16 + 32);
  v19 = *v16;
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v18;
  *(v15 + 32) = v17;
  *v15 = v19;
  v20 = (v15 + 63) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v16 + 63) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  *(v20 + 16) = *(v21 + 16);
  *v20 = v22;
  v23 = ((v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((v21 + 31) & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  return a1;
}

uint64_t assignWithTake for CollectionViewTableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  if (*(v15 + 8) >= 0xFFFFFFFFuLL)
  {
    if (*(v16 + 8) >= 0xFFFFFFFFuLL)
    {
      *v15 = *v16;

      *(v15 + 8) = *(v16 + 8);

      __swift_destroy_boxed_opaque_existential_1(v15 + 16);
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      *(v15 + 48) = *(v16 + 48);
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  }

  v19 = *v16;
  v20 = *(v16 + 16);
  v21 = *(v16 + 32);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 16) = v20;
  *(v15 + 32) = v21;
  *v15 = v19;
LABEL_6:
  v22 = ((v15 + 63) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v16 + 63) & 0xFFFFFFFFFFFFFFF8);
  if (v22[1] >= 0xFFFFFFFFuLL)
  {
    if (v23[1] >= 0xFFFFFFFFuLL)
    {
      *v22 = *v23;

      v22[1] = v23[1];

      v22[2] = v23[2];

      goto LABEL_11;
    }
  }

  v24 = *v23;
  v22[2] = v23[2];
  *v22 = v24;
LABEL_11:
  v25 = (v22 + 31) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 8) < 0xFFFFFFFFuLL)
  {
LABEL_15:
    v27 = *(v26 + 16);
    *v25 = *v26;
    *(v25 + 16) = v27;
    return a1;
  }

  if (*(v26 + 8) < 0xFFFFFFFFuLL)
  {

    goto LABEL_15;
  }

  *v25 = *v26;

  *(v25 + 8) = *(v26 + 8);

  *(v25 + 16) = *(v26 + 16);

  *(v25 + 24) = *(v26 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionViewTableRoot(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((((((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v10 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v13);
    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v10)
  {
    return (*(v4 + 48))();
  }

  v23 = (a1 + v11) & ~v9;
  if (v8 == v10)
  {
    return (*(v7 + 48))(v23, v8, v6);
  }

  v24 = *(((v12 + v23) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  if ((v24 + 1) >= 2)
  {
    return v24;
  }

  else
  {
    return 0;
  }
}

double storeEnumTagSinglePayload for CollectionViewTableRoot(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((((((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v12 >= a3)
  {
    v20 = 0;
    v21 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = a3 - v12;
    if (((((((v11 + 7 + v14) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v20)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v12)
      {
        v26 = *(v5 + 56);

        v26();
      }

      else
      {
        v27 = (a1 + v13) & ~v10;
        if (v8 == v12)
        {
          v28 = *(v7 + 56);

          v28(v27);
        }

        else
        {
          v29 = (v15 + v27) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0x7FFFFFFE)
          {
            *(v29 + 48) = 0;
            result = 0.0;
            *(v29 + 16) = 0u;
            *(v29 + 32) = 0u;
            *v29 = 0u;
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = a2;
          }
        }
      }

      return result;
    }
  }

  if (v16)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v16)
  {
    v23 = ~v12 + a2;
    v24 = a1;
    bzero(a1, v16);
    a1 = v24;
    *v24 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v16) = v22;
    }

    else
    {
      *(a1 + v16) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v16) = v22;
  }

  return result;
}

uint64_t _s7SwiftUI27AnyTableColumnCustomizationV15arrangedColumns_13customization13includeHidden17defaultVisibility2idSayxGq__ACSgSbAA0M0OxXEAA0deF2IDVxXEt7ElementQy_RszSlR_r0_lFZAA0D11CellFormulaV_SayARGTt4g5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t (*a5)(char *), uint64_t a6, void (*a7)(_OWORD *__return_ptr, char *), uint64_t a8)
{
  v63 = a8;
  v73 = a7;
  v66 = a6;
  v65 = a5;
  v76 = a4;
  v11 = type metadata accessor for TableCellFormula();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v79 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v61 - v15);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v18 = v17;
  v67 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v64 = &v61 - v25;
  type metadata accessor for (offset: Int, element: TableColumnCollection.Entry)(0, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula), type metadata accessor for TableCellFormula);
  v71 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  v77 = a2;
  if (!a2 || (v76 & 1) != 0 && !a3)
  {

    return a1;
  }

  v61 = a3;
  v62 = v12;
  v70 = *(a1 + 16);
  if (v70)
  {
    v29 = 0;
    v69 = (v67 + 56);
    v30 = (v67 + 48);
    v31 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v68 = *(v62 + 72);
    v78 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = *(v71 + 48);
      *v28 = v29;
      _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v31, &v28[v32], type metadata accessor for TableCellFormula);
      v73(v82, &v28[v32]);
      if (v76)
      {
        goto LABEL_14;
      }

      if (*(v77 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v82), (v34 & 1) != 0))
      {
        v35 = *(*(v77 + 56) + 16 * v33 + 9);
        v36 = v65(&v28[v32]);
        if (v35)
        {
          if (v35 != 1)
          {
            goto LABEL_17;
          }

          goto LABEL_14;
        }
      }

      else
      {
        v36 = v65(&v28[v32]);
      }

      if (v36 == 2)
      {
LABEL_17:
        outlined destroy of TableColumnCustomizationID(v82);
        v39 = 1;
        goto LABEL_18;
      }

LABEL_14:
      v37 = *(v18 + 48);
      v38 = v16 + *(v18 + 64);
      *v16 = v29;
      _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v28[v32], v16 + v37, type metadata accessor for TableCellFormula);
      v39 = 0;
      v40 = v82[1];
      *v38 = v82[0];
      *(v38 + 1) = v40;
      v38[32] = v83;
LABEL_18:
      (*v69)(v16, v39, 1, v18);
      outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v28, &lazy cache variable for type metadata for (offset: Int, element: TableCellFormula), type metadata accessor for TableCellFormula, type metadata accessor for (offset: Int, element: TableColumnCollection.Entry));
      if ((*v30)(v16, 1, v18) == 1)
      {
        outlined destroy of (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?(v16, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      }

      else
      {
        v41 = v64;
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v16, v64, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v41, v72, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v42 = v78;
        }

        else
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v78[2] + 1, 1, v78);
        }

        v44 = v42[2];
        v43 = v42[3];
        if (v44 >= v43 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43 > 1, v44 + 1, 1, v42);
        }

        v42[2] = v44 + 1;
        v45 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v78 = v42;
        outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v72, v42 + v45 + *(v67 + 72) * v44, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      }

      ++v29;
      v31 += v68;
      if (v70 == v29)
      {
        goto LABEL_27;
      }
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v46 = v78;
  v81 = v78;
  v47 = v61;
  if (v61)
  {

    specialized MutableCollection<>.sort(by:)(&v81, v47, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

    v46 = v81;
  }

  v48 = v46[2];
  v49 = v62;
  if (v48)
  {
    v80 = MEMORY[0x1E69E7CC0];
    v50 = v46;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    a1 = v80;
    v51 = *(v67 + 80);
    v78 = v50;
    v52 = v50 + ((v51 + 32) & ~v51);
    v53 = *(v67 + 72);
    v54 = v75;
    do
    {
      v55 = v74;
      outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v52, v74, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v55, v54, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
      v56 = *(v18 + 48);
      v57 = v54 + *(v18 + 64);
      outlined consume of TableColumnCustomizationID.Base(*v57, *(v57 + 8), *(v57 + 16), *(v57 + 24), *(v57 + 32));
      _s7SwiftUI16TableCellFormulaVWObTm_0(v54 + v56, v79, type metadata accessor for TableCellFormula);
      v80 = a1;
      v59 = *(a1 + 16);
      v58 = *(a1 + 24);
      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1);
        a1 = v80;
      }

      *(a1 + 16) = v59 + 1;
      _s7SwiftUI16TableCellFormulaVWObTm_0(v79, a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v59, type metadata accessor for TableCellFormula);
      v52 += v53;
      --v48;
    }

    while (v48);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return a1;
}