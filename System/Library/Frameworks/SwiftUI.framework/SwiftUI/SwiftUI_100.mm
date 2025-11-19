unint64_t specialized IdentifiedArray.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = specialized __RawDictionaryStorage.find<A>(_:)(result), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * result);
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v8 < *(a2 + 16))
    {
      result = outlined init with copy of NavigationViewDestinationView(a2 + 88 * v8 + 32, a4);
      *(a4 + 88) = v8;
      return result;
    }

    __break(1u);
  }

  else
  {
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized IdentifiedArray.subscript.setter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v3;
  v5 = a2;
  v6 = *v3;
  if (*(*v3 + 2) <= a2)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    goto LABEL_6;
  }

  v4 = a1;
  outlined init with copy of NavigationViewDestinationView(&v6[88 * a2 + 32], &v10);
  outlined init with copy of NavigationLinkSelectionIdentifier(&v11, v12);
  outlined destroy of NavigationViewDestinationView(&v10);
  outlined init with copy of NavigationLinkSelectionIdentifier(v4 + 8, &v10);
  if (!specialized static NavigationLinkSelectionIdentifier.== infix(_:_:)(&v10, v12))
  {
    outlined init with copy of NavigationLinkSelectionIdentifier(v12, v9);
    specialized Dictionary.subscript.setter(0, 1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = v3[1];
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v5, &v10, isUniquelyReferenced_nonNull_native);
    v3[1] = v9[0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  outlined destroy of NavigationLinkSelectionIdentifier(&v10);
  result = outlined destroy of NavigationLinkSelectionIdentifier(v12);
  if (*(v6 + 2) <= v5)
  {
    __break(1u);
  }

  else
  {
    result = outlined assign with take of NavigationViewDestinationView(v4, &v6[88 * v5 + 32]);
    *v2 = v6;
  }

  return result;
}

uint64_t outlined destroy of (NavigationViewDestinationView, Int)?(uint64_t a1)
{
  type metadata accessor for (NavigationViewDestinationView, Int)?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationViewDestinationView, Int)?()
{
  if (!lazy cache variable for type metadata for (NavigationViewDestinationView, Int)?)
  {
    type metadata accessor for (NavigationViewDestinationView, Int)();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (NavigationViewDestinationView, Int)?);
    }
  }
}

void type metadata accessor for (NavigationViewDestinationView, Int)()
{
  if (!lazy cache variable for type metadata for (NavigationViewDestinationView, Int))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationViewDestinationView, Int));
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<Bool>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>);
    lazy protocol witness table accessor for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<Bool>>()
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<Bool>>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for PressableGestureCallbacks<Bool>, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for PressableGestureCallbacks);
    lazy protocol witness table accessor for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>();
    v0 = type metadata accessor for CallbacksGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>()
{
  result = lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>;
  if (!lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for PressableGestureCallbacks<Bool>, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for PressableGestureCallbacks);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PressableGestureCallbacks<Bool> and conformance PressableGestureCallbacks<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture()
{
  result = lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture;
  if (!lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LongRemoteTouchGesture and conformance LongRemoteTouchGesture);
  }

  return result;
}

void type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0();
    lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>();
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.dependency(_:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of Gesture.dependency(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>>();
    lazy protocol witness table accessor for type CoordinateSpaceGesture<[EventID : TouchEvent]> and conformance CoordinateSpaceGesture<A>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<[EventID : TouchEvent]>, MultiEventListener<TouchEvent>>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.dependency(_:)>>.0);
    }
  }
}

void type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>);
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
    type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<SpatialEvent, Bool>, EventListener<SpatialEvent>>);
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<SpatialEvent>, EventListener<SpatialEvent>>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>();
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0)
  {
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>();
    type metadata accessor for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0();
    type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>();
    type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableEvent, Bool>, EventListener<TappableEvent>>);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for MapGesture<TouchEvent, Bool>, &type metadata for TouchEvent, MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    type metadata accessor for EventListener<TouchEvent>();
    lazy protocol witness table accessor for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TouchEvent, Bool>, EventListener<TouchEvent>>);
    }
  }
}

void type metadata accessor for PressableGestureCallbacks<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>)
  {
    type metadata accessor for PressableGestureCallbacks<Bool>(255, &lazy cache variable for type metadata for MapGesture<TouchEvent, Bool>, &type metadata for TouchEvent, MEMORY[0x1E69E6370], MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<TouchEvent, Bool> and conformance MapGesture<A, B>);
  }

  return result;
}

void type metadata accessor for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for DurationGesture<TouchEvent>, &type metadata for TouchEvent, MEMORY[0x1E697E6A8]);
    type metadata accessor for EventListener<TouchEvent>();
    lazy protocol witness table accessor for type DurationGesture<TouchEvent> and conformance DurationGesture<A>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type EventListener<TouchEvent> and conformance EventListener<A>, type metadata accessor for EventListener<TouchEvent>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>>);
    }
  }
}

void type metadata accessor for EventFilter<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DurationGesture<TouchEvent> and conformance DurationGesture<A>()
{
  result = lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>;
  if (!lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for DurationGesture<TouchEvent>, &type metadata for TouchEvent, MEMORY[0x1E697E6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DurationGesture<TouchEvent> and conformance DurationGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventFilter<Bool> and conformance EventFilter<A>()
{
  result = lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>;
  if (!lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>)
  {
    type metadata accessor for EventFilter<Bool>(255, &lazy cache variable for type metadata for EventFilter<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E697DCD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventFilter<Bool> and conformance EventFilter<A>);
  }

  return result;
}

uint64_t static CustomizationBehaviorModifier._makeToolbar(content:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *))
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = a2[3];
  v21 = a2[2];
  v22[0] = v5;
  *(v22 + 12) = *(a2 + 60);
  v6 = a2[1];
  v20[0] = *a2;
  v20[1] = v6;
  v7 = a2[3];
  v18 = v21;
  v19[0] = v7;
  *(v19 + 12) = *(a2 + 60);
  v8 = *a1;
  v9 = v6;
  v16 = v20[0];
  v17 = v4;
  swift_beginAccess();
  LODWORD(v25[0]) = *(v9 + 16);
  DWORD1(v25[0]) = v8;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ToolbarInputs(v20, v27);
  lazy protocol witness table accessor for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v18;
  v24[0] = v19[0];
  *(v24 + 12) = *(v19 + 12);
  v23[0] = v16;
  v23[1] = v17;
  v14 = v18;
  v15[0] = v19[0];
  *(v15 + 12) = *(v19 + 12);
  v12 = v16;
  v13 = v17;
  v10 = outlined init with copy of _ToolbarInputs(v23, v27);
  a3(v10, &v12);
  v25[2] = v14;
  v26[0] = v15[0];
  *(v26 + 12) = *(v15 + 12);
  v25[0] = v12;
  v25[1] = v13;
  outlined destroy of _ToolbarInputs(v25);
  v27[2] = v18;
  v28[0] = v19[0];
  *(v28 + 12) = *(v19 + 12);
  v27[0] = v16;
  v27[1] = v17;
  return outlined destroy of _ToolbarInputs(v27);
}

uint64_t CustomizationBehaviorModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.toolbarCustomizationBehavior.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarCustomizationBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role;
  if (!lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarCustomizationBehavior.Role and conformance ToolbarCustomizationBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationBehaviorModifier.ChildEnvironment and conformance CustomizationBehaviorModifier.ChildEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role;
  if (!lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneLaunchBehavior.Role and conformance SceneLaunchBehavior.Role);
  }

  return result;
}

void TextFieldLink.init(prompt:label:onSubmit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{

  outlined consume of Text?(a1, a2, a3, a4);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void TextFieldLink<>.init(_:prompt:onSubmit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{

  outlined consume of Text?(a5, a6, a7, a8);

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void TextFieldLink<>.init<A>(_:prompt:onSubmit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{

  outlined consume of Text?(a2, a3, a4, a5);
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void type metadata completion function for TextFieldLink()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Environment<Locale>.Content();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TextFieldLink(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v10 & 0xF8 | 7;
  if (*(v9 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v9 + 64);
  }

  v13 = v10 | *(v6 + 80);
  if ((v13 & 0x1000F8) != 0 || v12 - ((-41 - v11 - ((((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) | v11) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v13 & 0xF8 | 7u) + 16) & ~(v13 & 0xF8 | 7u)));
LABEL_30:

    return a1;
  }

  v41 = *(v8 - 8);
  (*(v6 + 16))(a1, a2, v5);
  v16 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 24) < 0xFFFFFFFFuLL)
  {
    v21 = *(v17 + 16);
    *v16 = *v17;
    *(v16 + 16) = v21;
  }

  else
  {
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    outlined copy of Text.Storage(*v17, v19, v20);
    *v16 = v18;
    *(v16 + 8) = v19;
    *(v16 + 16) = v20;
    *(v16 + 24) = *(v17 + 24);
  }

  v22 = ((v16 + 39) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v17 + 39) & 0xFFFFFFFFFFFFFFF8);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  v25 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  *(v25 + 8) = *(v26 + 8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  v28 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v27 = *v28;
  v27[1] = v28[1];
  v27[2] = v28[2];
  v29 = (v27 + 31) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v28 + 31) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  v32 = *(v30 + 8);

  outlined copy of Environment<Selector?>.Content(v31, v32);
  *v29 = v31;
  *(v29 + 8) = v32;
  v33 = ((v28 + 47) & 0xFFFFFFFFFFFFFFF8);
  v34 = v33[v12];
  v35 = v34 - 2;
  if (v34 >= 2)
  {
    if (v12 <= 3)
    {
      v36 = v12;
    }

    else
    {
      v36 = 4;
    }

    if (v36 <= 1)
    {
      if (!v36)
      {
        goto LABEL_27;
      }

      v37 = *v33;
    }

    else if (v36 == 2)
    {
      v37 = *v33;
    }

    else if (v36 == 3)
    {
      v37 = *v33 | (v33[2] << 16);
    }

    else
    {
      v37 = *v33;
    }

    v38 = (v37 | (v35 << (8 * v12))) + 2;
    v34 = v37 + 2;
    if (v12 < 4)
    {
      v34 = v38;
    }
  }

LABEL_27:
  v39 = ((v27 + 47) & 0xFFFFFFFFFFFFFFF8);
  if (v34 != 1)
  {
    *v39 = *v33;
    *(v39 + v12) = 0;
    goto LABEL_30;
  }

  (*(v41 + 16))(v39);
  *(v39 + v12) = 1;
  return a1;
}

uint64_t destroy for TextFieldLink(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = (((((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(type metadata accessor for Locale() - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = ((v5 + v7 + 9) & ~v7);
  v9 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v9 = *(v6 + 64);
  }

  v10 = v8[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *v8;
    }

    else if (v12 == 2)
    {
      v13 = *v8;
    }

    else if (v12 == 3)
    {
      v13 = *v8 | (v8[2] << 16);
    }

    else
    {
      v13 = *v8;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 + 8);

    return v15();
  }

  else
  {
  }
}

uint64_t initializeWithCopy for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) < 0xFFFFFFFFuLL)
  {
    v12 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v12;
  }

  else
  {
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 16);
    outlined copy of Text.Storage(*v8, v10, v11);
    *v7 = v9;
    *(v7 + 8) = v10;
    *(v7 + 16) = v11;
    *(v7 + 24) = *(v8 + 24);
  }

  v13 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = v14[1];
  *v13 = *v14;
  v13[1] = v15;
  v16 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);
  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v18[1] = v19[1];
  v18[2] = v19[2];
  v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *v21;
  v23 = *(v21 + 8);

  outlined copy of Environment<Selector?>.Content(v22, v23);
  *v20 = v22;
  *(v20 + 8) = v23;
  v24 = *(type metadata accessor for Locale() - 8);
  v25 = *(v24 + 80) & 0xF8;
  v26 = v25 + 16;
  v27 = v25 + 16 + v20;
  v28 = ~v25 & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 & v28);
  v30 = ((v26 + v21) & v28);
  if (*(v24 + 64) <= 8uLL)
  {
    v31 = 8;
  }

  else
  {
    v31 = *(v24 + 64);
  }

  v32 = v30[v31];
  v33 = v32 - 2;
  if (v32 < 2)
  {
    goto LABEL_21;
  }

  if (v31 <= 3)
  {
    v34 = v31;
  }

  else
  {
    v34 = 4;
  }

  if (v34 <= 1)
  {
    if (!v34)
    {
      goto LABEL_21;
    }

    v35 = *v30;
  }

  else if (v34 == 2)
  {
    v35 = *v30;
  }

  else if (v34 == 3)
  {
    v35 = *v30 | (v30[2] << 16);
  }

  else
  {
    v35 = *v30;
  }

  v36 = (v35 | (v33 << (8 * v31))) + 2;
  v32 = v35 + 2;
  if (v31 < 4)
  {
    v32 = v36;
  }

LABEL_21:
  if (v32 == 1)
  {
    (*(v24 + 16))(v29);
    v37 = 1;
  }

  else
  {
    *v29 = *v30;

    v37 = 0;
  }

  *(v29 + v31) = v37;
  return a1;
}

uint64_t assignWithCopy for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24);
  if (*(v7 + 24) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v16 = *v8;
      v17 = *(v8 + 8);
      v18 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v17, v18);
      *v7 = v16;
      *(v7 + 8) = v17;
      *(v7 + 16) = v18;
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_8;
    }
  }

  else
  {
    if (v9 >= 0xFFFFFFFF)
    {
      v10 = *v8;
      v11 = *(v8 + 8);
      v12 = *(v8 + 16);
      outlined copy of Text.Storage(*v8, v11, v12);
      v13 = *v7;
      v14 = *(v7 + 8);
      v15 = *(v7 + 16);
      *v7 = v10;
      *(v7 + 8) = v11;
      *(v7 + 16) = v12;
      outlined consume of Text.Storage(v13, v14, v15);
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_8;
    }

    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v19 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v19;
LABEL_8:
  v20 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;

  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);

  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v25[1] = v26[1];

  v25[2] = v26[2];

  v27 = (v25 + 31) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 31) & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  LOBYTE(v25) = *(v28 + 8);
  outlined copy of Environment<Selector?>.Content(*v28, v25);
  v30 = *v27;
  v31 = *(v27 + 8);
  *v27 = v29;
  *(v27 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  v32 = type metadata accessor for Locale();
  v33 = *(v32 - 8);
  v34 = *(v33 + 80) & 0xF8;
  v35 = v34 + 16;
  v36 = v34 + 16 + v27;
  v37 = ~v34 & 0xFFFFFFFFFFFFFFF8;
  v38 = (v36 & v37);
  v39 = v35 + v28;
  v40 = (v39 & v37);
  if ((v36 & v37) == (v39 & v37))
  {
    return a1;
  }

  v41 = v32;
  v42 = *(v32 - 8);
  if (*(v33 + 64) <= 8uLL)
  {
    v43 = 8;
  }

  else
  {
    v43 = *(v33 + 64);
  }

  v44 = v38[v43];
  v45 = v44 - 2;
  if (v44 >= 2)
  {
    if (v43 <= 3)
    {
      v46 = v43;
    }

    else
    {
      v46 = 4;
    }

    if (v46 <= 1)
    {
      if (!v46)
      {
        goto LABEL_26;
      }

      v47 = *v38;
    }

    else if (v46 == 2)
    {
      v47 = *v38;
    }

    else if (v46 == 3)
    {
      v47 = *v38 | (v38[2] << 16);
    }

    else
    {
      v47 = *v38;
    }

    v48 = (v47 | (v45 << (8 * v43))) + 2;
    v44 = v47 + 2;
    if (v43 < 4)
    {
      v44 = v48;
    }
  }

LABEL_26:
  if (v44 == 1)
  {
    (*(v33 + 8))(v38, v32);
  }

  else
  {
  }

  v49 = *(v40 + v43);
  v50 = v49 - 2;
  if (v49 < 2)
  {
    goto LABEL_43;
  }

  if (v43 <= 3)
  {
    v51 = v43;
  }

  else
  {
    v51 = 4;
  }

  if (v51 > 1)
  {
    if (v51 == 2)
    {
      v52 = *v40;
    }

    else if (v51 == 3)
    {
      v52 = *v40 | (*(v40 + 2) << 16);
    }

    else
    {
      v52 = *v40;
    }

LABEL_41:
    v53 = (v52 | (v50 << (8 * v43))) + 2;
    v49 = v52 + 2;
    if (v43 < 4)
    {
      v49 = v53;
    }

    goto LABEL_43;
  }

  if (v51)
  {
    v52 = *v40;
    goto LABEL_41;
  }

LABEL_43:
  if (v49 == 1)
  {
    (*(v42 + 16))(v38, v40, v41);
    v38[v43] = 1;
  }

  else
  {
    *v38 = *v40;
    v38[v43] = 0;
  }

  return a1;
}

uint64_t initializeWithTake for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v15;
  *(v14 + 16) = *(v15 + 16);
  *v14 = v16;
  v17 = (v14 + 31) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v15 + 31) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v15) = *(v18 + 8);
  *v17 = *v18;
  *(v17 + 8) = v15;
  v19 = *(type metadata accessor for Locale() - 8);
  v20 = *(v19 + 80) & 0xF8;
  v21 = v20 + 16;
  v22 = v20 + 16 + v17;
  v23 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 & v23);
  v25 = ((v21 + v18) & v23);
  if (*(v19 + 64) <= 8uLL)
  {
    v26 = 8;
  }

  else
  {
    v26 = *(v19 + 64);
  }

  v27 = v25[v26];
  v28 = v27 - 2;
  if (v27 < 2)
  {
    goto LABEL_18;
  }

  if (v26 <= 3)
  {
    v29 = v26;
  }

  else
  {
    v29 = 4;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_18;
    }

    v30 = *v25;
  }

  else if (v29 == 2)
  {
    v30 = *v25;
  }

  else if (v29 == 3)
  {
    v30 = *v25 | (v25[2] << 16);
  }

  else
  {
    v30 = *v25;
  }

  v31 = (v30 | (v28 << (8 * v26))) + 2;
  v27 = v30 + 2;
  if (v26 < 4)
  {
    v27 = v31;
  }

LABEL_18:
  if (v27 == 1)
  {
    (*(v19 + 32))(v24);
    v32 = 1;
  }

  else
  {
    v32 = 0;
    *v24 = *v25;
  }

  *(v24 + v26) = v32;
  return a1;
}

uint64_t assignWithTake for TextFieldLink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 24) >= 0xFFFFFFFFuLL)
  {
    if (*(v8 + 24) >= 0xFFFFFFFFuLL)
    {
      v9 = *(v8 + 16);
      v10 = *v7;
      v11 = *(v7 + 8);
      v12 = *(v7 + 16);
      *v7 = *v8;
      *(v7 + 16) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(v7 + 24) = *(v8 + 24);

      goto LABEL_6;
    }

    outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));
  }

  v13 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v13;
LABEL_6:
  v14 = ((v7 + 39) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v8 + 39) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;

  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = ((v16 + 23) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v18[1] = v19[1];

  v18[2] = v19[2];

  v20 = (v18 + 31) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 8);
  v23 = *v20;
  v24 = *(v20 + 8);
  *v20 = *v21;
  *(v20 + 8) = v22;
  outlined consume of Environment<Selector?>.Content(v23, v24);
  v25 = type metadata accessor for Locale();
  v26 = *(v25 - 8);
  v27 = *(v26 + 80) & 0xF8;
  v28 = v27 + 16;
  v29 = v27 + 16 + v20;
  v30 = ~v27 & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 & v30);
  v32 = v28 + v21;
  v33 = (v32 & v30);
  if ((v29 & v30) == (v32 & v30))
  {
    return a1;
  }

  v34 = v25;
  v35 = *(v25 - 8);
  if (*(v26 + 64) <= 8uLL)
  {
    v36 = 8;
  }

  else
  {
    v36 = *(v26 + 64);
  }

  v37 = v31[v36];
  v38 = v37 - 2;
  if (v37 >= 2)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    if (v39 <= 1)
    {
      if (!v39)
      {
        goto LABEL_24;
      }

      v40 = *v31;
    }

    else if (v39 == 2)
    {
      v40 = *v31;
    }

    else if (v39 == 3)
    {
      v40 = *v31 | (v31[2] << 16);
    }

    else
    {
      v40 = *v31;
    }

    v41 = (v40 | (v38 << (8 * v36))) + 2;
    v37 = v40 + 2;
    if (v36 < 4)
    {
      v37 = v41;
    }
  }

LABEL_24:
  if (v37 == 1)
  {
    (*(v26 + 8))(v31, v25);
  }

  else
  {
  }

  v42 = *(v33 + v36);
  v43 = v42 - 2;
  if (v42 >= 2)
  {
    if (v36 <= 3)
    {
      v44 = v36;
    }

    else
    {
      v44 = 4;
    }

    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v45 = *v33;
      }

      else if (v44 == 3)
      {
        v45 = *v33 | (*(v33 + 2) << 16);
      }

      else
      {
        v45 = *v33;
      }

LABEL_39:
      v46 = (v45 | (v43 << (8 * v36))) + 2;
      v42 = v45 + 2;
      if (v36 < 4)
      {
        v42 = v46;
      }

      goto LABEL_41;
    }

    if (v44)
    {
      v45 = *v33;
      goto LABEL_39;
    }
  }

LABEL_41:
  if (v42 == 1)
  {
    (*(v35 + 32))(v31, v33, v34);
    v47 = 1;
  }

  else
  {
    v47 = 0;
    *v31 = *v33;
  }

  v31[v36] = v47;
  return a1;
}

uint64_t getEnumTagSinglePayload for TextFieldLink(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for Locale() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((((((((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 < 0x7FFFFFFF)
      {
        v20 = *((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }

      else
      {
        v19 = *(v6 + 48);

        return v19(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void storeEnumTagSinglePayload for TextFieldLink(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for Locale() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 64);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((((((((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_48:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0x7FFFFFFF)
  {
    v23 = (((&a1[v13 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = (a2 - 1);
    }
  }

  else
  {
    v22 = *(v24 + 56);

    v22(a1, a2, v9, v7);
  }
}

void type metadata accessor for Environment<Locale>.Content()
{
  if (!lazy cache variable for type metadata for Environment<Locale>.Content)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Environment.Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Locale>.Content);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WindowIdealSize.Guts and conformance WindowIdealSize.Guts()
{
  result = lazy protocol witness table cache variable for type WindowIdealSize.Guts and conformance WindowIdealSize.Guts;
  if (!lazy protocol witness table cache variable for type WindowIdealSize.Guts and conformance WindowIdealSize.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowIdealSize.Guts and conformance WindowIdealSize.Guts);
  }

  return result;
}

void Scene.defaultWindowPlacement(_:)()
{
  Scene.idealWindowPlacement(_:)();
}

{
  Scene.idealWindowPlacement(_:)();
}

uint64_t specialized SubmitTriggerSource.updateTriggersIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v1 == 1)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    outlined copy of EnvironmentValues?(v1);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
    outlined consume of EnvironmentValues?(v1);

    v4 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
    v3 = outlined consume of EnvironmentValues?(v1);
    v4 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v5);
  static Update.dispatchImmediately<A>(reason:_:)();
  outlined consume of TriggerSubmitAction?(v4);
  return 1;
}

Swift::Void __swiftcall PlatformTextFieldCoordinator.update()()
{
  v1 = v0;
  type metadata accessor for Binding<TextSelection?>(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v89 - v14;
  v16 = *(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v16 == 1)
  {
    return;
  }

  v17 = v12;
  v99 = v13;
  v102 = *(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8);
  v18 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
  swift_beginAccess();
  outlined init with copy of PlatformItem.AccessibilityContent?(v1 + v18, v104, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  if (BYTE8(v104[0]) == 255)
  {
    return;
  }

  v96 = v4;
  v89 = v6;
  v98 = v9;
  if (BYTE8(v104[0]))
  {
    outlined init with take of WeakBox<VerticalTextView>(v104, v103, type metadata accessor for WeakBox<VerticalTextView>);
    Strong = swift_unknownObjectWeakLoadStrong();

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v103, type metadata accessor for WeakBox<VerticalTextView>);
    if (Strong)
    {
      v92 = v17;
      v93 = v3;
      v95 = v18;
      v20 = &protocol witness table for UITextView;
      v21 = &protocol witness table for VerticalTextView;
      v22 = &protocol witness table for VerticalTextView;
      goto LABEL_8;
    }

LABEL_10:
    outlined consume of EnvironmentValues?(v16);
    return;
  }

  outlined init with take of WeakBox<VerticalTextView>(v104, v103, type metadata accessor for WeakBox<UITextField>);
  Strong = swift_unknownObjectWeakLoadStrong();

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v103, type metadata accessor for WeakBox<UITextField>);
  if (!Strong)
  {
    goto LABEL_10;
  }

  v92 = v17;
  v93 = v3;
  v95 = v18;
  v20 = &protocol witness table for UITextField;
  v21 = &protocol witness table for UITextField;
  v22 = &protocol witness table for UITextField;
LABEL_8:
  v94 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating;
  *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating) = 1;
  ObjectType = swift_getObjectType();
  v24 = v102;
  *&v104[0] = v16;
  *(&v104[0] + 1) = v102;
  v97 = v22;
  v100 = v21;
  UIKitTextInput<>.update(in:)(v104, ObjectType, v22, v21);
  *&v104[0] = v16;
  *(&v104[0] + 1) = v24;
  UIKitTextInputTraits.updateTraits(in:)(v104, ObjectType, v20);
  *&v104[0] = v16;
  *(&v104[0] + 1) = v24;
  v101 = ObjectType;
  UITextInputTraits_Private.updatePrivateTraits(in:)(v104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey>, &type metadata for EnvironmentValues.InputAccessoryKey, &protocol witness table for EnvironmentValues.InputAccessoryKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.InputAccessoryKey> and conformance EnvironmentPropertyKey<A>();
  if (v24)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v25 = v98;
  v26 = swift_weakLoadStrong();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v104, type metadata accessor for WeakBox<InputAccessoryGenerator>);
  if (v26)
  {
    v90 = v1;
    v91 = v16;
    v27 = specialized InputAccessoryGenerator.callAsFunction()();
    v28 = v100;
    v29 = v100[12];
    v30 = v27;
    v31 = v29(v101, v28);
    if (!v31 || (v32 = v31, v31, v30 != v32))
    {
      v33 = v100;
      v34 = v100[13];
      v35 = v30;
      v34(v30, v101, v33);
    }

    v1 = v90;
    v16 = v91;
    v25 = v98;
  }

  v91 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing;
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing))
  {
    LODWORD(v90) = 0;
    v36 = v100;
    v37 = v97;
  }

  else
  {
    v38 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
    swift_beginAccess();
    outlined init with copy of TextField<_TextFieldStyleLabel>(v1 + v38, v15, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v39 = v15[180];
    v40 = *(v15 + 120);
    v41 = *(v15 + 152);
    v123 = *(v15 + 136);
    v124[0] = v41;
    if (v39)
    {
      *(v124 + 12) = *(v15 + 164);
      v42 = *(v15 + 88);
      v119 = *(v15 + 72);
      v120 = v42;
      v43 = *(v15 + 104);
      v122 = v40;
      v121 = v43;
      v104[0] = v119;
      v104[1] = v42;
      v104[2] = v43;
      v104[3] = v40;
      v104[4] = v123;
      v104[5] = v41;
      *(&v104[5] + 12) = *(v124 + 12);
      BYTE12(v104[6]) = v39;
      v44 = MEMORY[0x1E6981948];
      outlined init with copy of PlatformItem.AccessibilityContent?(v104, v103, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v44);
      MEMORY[0x18D00ACC0](&v105);
      v103[4] = v123;
      v103[5] = v124[0];
      *(&v103[5] + 12) = *(v124 + 12);
      v103[0] = v119;
      v103[1] = v120;
      v103[2] = v121;
      v103[3] = v122;
      v45 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    }

    else
    {
      *&v124[1] = *(v15 + 21);
      v46 = *(v15 + 88);
      v119 = *(v15 + 72);
      v120 = v46;
      v47 = *(v15 + 104);
      v122 = v40;
      v121 = v47;
      v104[4] = v123;
      v104[5] = v41;
      *(&v104[5] + 12) = *(v15 + 164);
      v104[0] = v119;
      v104[1] = v46;
      v104[2] = v47;
      v104[3] = v40;
      BYTE12(v104[6]) = v39;
      v44 = MEMORY[0x1E6981790];
      outlined init with copy of PlatformItem.AccessibilityContent?(v104, v103, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v44);
      State.wrappedValue.getter();
      v103[4] = v123;
      v103[5] = v124[0];
      *&v103[6] = *&v124[1];
      v103[0] = v119;
      v103[1] = v120;
      v103[2] = v121;
      v103[3] = v122;
      v45 = &lazy cache variable for type metadata for State<TextFieldState>;
    }

    outlined destroy of PlatformItem.AccessibilityContent?(v103, v45, &type metadata for TextFieldState, v44);
    outlined destroy of SelectionRanges<String.Index>(v15, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v104[2] = v107;
    v104[3] = v108;
    v104[4] = v109[0];
    *(&v104[4] + 12) = *(v109 + 12);
    v104[0] = v105;
    v104[1] = v106;
    v48 = v105;

    outlined destroy of TextFieldState(v104);
    *&v103[0] = v16;
    *(&v103[0] + 1) = v102;
    v37 = v97;
    v36 = v100;
    LODWORD(v90) = UIKitTextInput<>.setText(_:environment:)(v48, *(&v48 + 1), v103, v101, v97, v100);
  }

  v49 = (v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label);
  swift_beginAccess();
  v50 = v49[13];
  v51 = v49[15];
  v116 = v49[14];
  v117 = v51;
  v52 = v49[15];
  v118 = v49[16];
  v53 = v49[9];
  v54 = v49[11];
  v112 = v49[10];
  v113 = v54;
  v56 = v49[11];
  v55 = v49[12];
  v57 = v55;
  v115 = v49[13];
  v114 = v55;
  v58 = v49[5];
  v59 = v49[7];
  v109[0] = v49[6];
  v109[1] = v59;
  v61 = v49[7];
  v60 = v49[8];
  v62 = v60;
  v111 = v49[9];
  v110 = v60;
  v63 = v49[3];
  v105 = v49[2];
  v106 = v63;
  v64 = v49[4];
  v66 = v49[2];
  v65 = v49[3];
  v108 = v49[5];
  v107 = v64;
  v124[7] = v116;
  v124[8] = v52;
  v124[9] = v49[16];
  v124[3] = v112;
  v124[4] = v56;
  v124[6] = v50;
  v124[5] = v57;
  v123 = v109[0];
  v124[0] = v61;
  v124[2] = v53;
  v124[1] = v62;
  v119 = v66;
  v120 = v65;
  v122 = v58;
  v121 = v64;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v119) == 1 || (v104[12] = v116, v104[13] = v117, v104[14] = v118, v104[8] = v112, v104[9] = v113, v104[10] = v114, v104[11] = v115, v104[4] = v109[0], v104[5] = v109[1], v104[6] = v110, v104[7] = v111, v104[0] = v105, v104[1] = v106, v104[2] = v107, v104[3] = v108, (v67 = PlatformItem.PrimaryContent.text.getter()) == 0))
  {
    v69 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v70 = MEMORY[0x18D00C850](0, 0xE000000000000000);
    v68 = [v69 initWithString_];

    v36 = v100;
  }

  else
  {
    v68 = v67;
  }

  v71 = v37;
  v72 = Strong;
  UIKitTextInput<>.setPlaceholderText(_:)(v68, v101, v71, v36);

  v73 = v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  v100 = v73;
  v74 = v99;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v73, v99, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v75 = v93;
  v76 = *(v92 + 56);
  if ((*(v96 + 48))(v74 + v76, 1, v93))
  {
    outlined destroy of SelectionRanges<String.Index>(v74, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v77 = type metadata accessor for TextSelection(0);
    (*(*(v77 - 8) + 56))(v25, 1, 1, v77);
  }

  else
  {
    v78 = v74 + v76;
    v79 = v89;
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v78, v89, type metadata accessor for Binding<TextSelection?>);
    outlined destroy of SelectionRanges<String.Index>(v74, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    MEMORY[0x18D00ACC0](v75);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v79, type metadata accessor for Binding<TextSelection?>);
  }

  UIKitTextInput<>.setSelection(_:)(v25, v101, v97, v36);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v25, type metadata accessor for TextSelection?);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>();
  if (!v102)
  {
    PropertyList.subscript.getter();
    v80 = LOBYTE(v104[0]);
    if (!LOBYTE(v104[0]))
    {
      goto LABEL_36;
    }

LABEL_34:
    v81 = v80 != 1;
    if (v81 != (*(v36 + 216))(v101, v36))
    {
      (*(v36 + 224))(v81, v101, v36);
    }

    goto LABEL_36;
  }

  PropertyList.Tracker.value<A>(_:for:)();

  v80 = LOBYTE(v104[0]);
  if (LOBYTE(v104[0]))
  {
    goto LABEL_34;
  }

LABEL_36:
  *(v1 + v91) = 0;
  if (v90 & 1) != 0 && ((*(v36 + 8))(v101, v36))
  {
    [v72 invalidateIntrinsicContentSize];
  }

  outlined init with copy of PlatformItem(v49, v104);
  v82 = PlatformItem.accessibilityResolvedAttributedLabel.getter();
  outlined destroy of PlatformItem(v104);
  if (v82)
  {
    [v72 setAccessibilityAttributedLabel_];
  }

  outlined init with copy of PlatformItem.AccessibilityContent?(v49 + 328, v104, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8], MEMORY[0x1E69E6720]);
  if (*(&v104[17] + 1))
  {
    outlined init with copy of AccessibilityProperties(v104, v103);
    outlined destroy of PlatformItem.AccessibilityContent?(v104, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8], MEMORY[0x1E69E6720]);
    memcpy(v104, v103, 0x120uLL);
    v83 = *(&v104[0] + 1);
    if (*(&v104[0] + 1) && LOBYTE(v104[1]) < 2u)
    {
      v84 = *&v104[0];

      v85 = v72;
      v86 = MEMORY[0x18D00C850](v84, v83);

      [v85 setAccessibilityIdentifier_];
    }

    outlined destroy of AccessibilityProperties(v104);
  }

  else
  {
    outlined destroy of PlatformItem.AccessibilityContent?(v104, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?, MEMORY[0x1E697DEC8], MEMORY[0x1E69E6720]);
  }

  outlined init with copy of PlatformItem.AccessibilityContent?(v1 + v95, v104, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  if (BYTE8(v104[0]) == 255)
  {
    outlined consume of EnvironmentValues?(v16);

    outlined destroy of PlatformItem.AccessibilityContent?(v104, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  }

  else if (BYTE8(v104[0]))
  {
    outlined consume of EnvironmentValues?(v16);

    outlined destroy of weak FallbackResponderProvider?(v104);
  }

  else
  {
    outlined init with take of WeakBox<VerticalTextView>(v104, v103, type metadata accessor for WeakBox<UITextField>);
    v87 = swift_unknownObjectWeakLoadStrong();
    if (v87)
    {
      v88 = v87;
      [v87 setSecureTextEntry_];

      outlined consume of EnvironmentValues?(v16);
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v103, type metadata accessor for WeakBox<UITextField>);
    }

    else
    {
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v103, type metadata accessor for WeakBox<UITextField>);
      outlined consume of EnvironmentValues?(v16);
    }
  }

  *(v1 + v94) = 0;
}

void protocol witness for View.body.getter in conformance PlainTextFieldStyle.BodyContent(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  outlined init with copy of TextField<_TextFieldStyleLabel>(v2, a2, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  *(a2 + *(type metadata accessor for SystemTextFieldConfiguration(0) + 20)) = a1;
  type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>(0);
  *(a2 + *(v5 + 36)) = 769;
  LOBYTE(a1) = *(v2 + 33);
  type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout>, type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>);
  v7 = (a2 + *(v6 + 36));
  *v7 = 0;
  v7[1] = (a1 & 1) == 0;
}

uint64_t static SystemTextField._makeView(view:inputs:)()
{
  type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type _GraphInputs.SelectionBasedStorageKey<TextSelection> and conformance _GraphInputs.SelectionBasedStorageKey<A>, type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>);

  PropertyList.subscript.getter();

  (_s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5)();
  type metadata accessor for SystemTextFieldConfiguration(0);
  AGGraphCreateOffsetAttribute2();
  type metadata accessor for ResolvedSystemTextField(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SystemTextField.MakeRepresentable and conformance SystemTextField.MakeRepresentable();
  Attribute.init<A>(body:value:flags:update:)();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ResolvedSystemTextField and conformance ResolvedSystemTextField, type metadata accessor for ResolvedSystemTextField);
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance SystemTextField.MakeRepresentable@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ResolvedSystemTextField(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

__n128 protocol witness for Rule.value.getter in conformance SystemTextField.MakeRepresentable@<Q0>(uint64_t a1@<X8>)
{
  v7 = *(v1 + 4);
  v8 = *(v1 + 20);
  type metadata accessor for SystemTextFieldConfiguration(0);
  Value = AGGraphGetValue();
  v4 = type metadata accessor for ResolvedSystemTextField(0);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(Value, a1 + *(v4 + 24), type metadata accessor for SystemTextFieldConfiguration);
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v5 = (a1 + *(v4 + 28));
  result = v7;
  *v5 = v7;
  v5[1] = v8;
  return result;
}

uint64_t ResolvedSystemTextField.adaptorView(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v86 = a1;
  *&v87 = a2;
  v77 = type metadata accessor for PlatformTextFieldAdaptor(0);
  MEMORY[0x1EEE9AC00](v77);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TextViewAdaptor(0);
  MEMORY[0x1EEE9AC00](v78);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<TextViewAdaptor, _PaddingLayout>(0);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>(0);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>(0);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v76 - v14;
  v15 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  v21 = type metadata accessor for ResolvedSystemTextField(0);
  v22 = v2;
  v23 = v2 + *(v21 + 24);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v23, v20, type metadata accessor for SystemTextFieldConfiguration);
  v24 = v20[33];
  outlined destroy of SelectionRanges<String.Index>(v20, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v24 == 1)
  {
    v25 = v87;
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v23, v17, type metadata accessor for SystemTextFieldConfiguration);
    outlined init with copy of PlatformItem(v86, v105);
    v26 = (v22 + *(v21 + 28));
    v27 = v26[1];
    v106 = *v26;
    v107 = v27;
    v28 = *(v23 + *(v15 + 20));
    if (v28 == 3)
    {
      v29 = 6.0;
      v30 = 4.0;
      v31 = 4.0;
      v32 = 6.0;
    }

    else
    {
      static EdgeInsets.zero.getter();
      v30 = v38;
      v29 = v39;
      v31 = v40;
      v32 = v41;
    }

    KeyPath = swift_getKeyPath();
    v43 = swift_getKeyPath();
    outlined init with take of WeakBox<VerticalTextView>(v17, v6, type metadata accessor for SystemTextFieldConfiguration);
    v44 = v78;
    memcpy(&v6[*(v78 + 20)], v105, 0x271uLL);
    v45 = &v6[v44[6]];
    v46 = v107;
    *v45 = v106;
    *(v45 + 1) = v46;
    v47 = &v6[v44[7]];
    *v47 = v30;
    v47[1] = v29;
    v47[2] = v31;
    v47[3] = v32;
    v48 = &v6[v44[8]];
    *v48 = KeyPath;
    v48[8] = 0;
    v49 = &v6[v44[9]];
    *v49 = v43;
    v49[8] = 0;
    v50 = xmmword_18CDA0CA0;
    v51 = xmmword_18CDA0CA0;
    if (v28 != 3)
    {
      static EdgeInsets.zero.getter();
      *(&v51 + 1) = v52;
      *(&v50 + 1) = v53;
    }

    v86 = v51;
    v87 = v50;
    v54 = static Edge.Set.all.getter();
    v55 = v81;
    outlined init with take of WeakBox<VerticalTextView>(v6, v81, type metadata accessor for TextViewAdaptor);
    v56 = v55 + *(v79 + 36);
    *v56 = v54;
    v57 = v87;
    *(v56 + 24) = v86;
    *(v56 + 8) = v57;
    *(v56 + 40) = 0;
    ResolvedSystemTextField.borderedBorder.getter(v96);
    v92 = v96[2];
    v93 = v96[3];
    v94 = v96[4];
    v95 = v97;
    v90 = v96[0];
    v91 = v96[1];
    v58 = static Alignment.center.getter();
    v60 = v59;
    v100 = v92;
    v101 = v93;
    v102 = v94;
    v98 = v90;
    v99 = v91;
    *&v103 = v95;
    *(&v103 + 1) = v58;
    v104 = v59;
    v61 = v55;
    v62 = v85;
    outlined init with take of WeakBox<VerticalTextView>(v61, v85, type metadata accessor for ModifiedContent<TextViewAdaptor, _PaddingLayout>);
    v63 = v62 + *(v80 + 36);
    v64 = v103;
    *(v63 + 64) = v102;
    *(v63 + 80) = v64;
    *(v63 + 96) = v104;
    v65 = v99;
    *v63 = v98;
    *(v63 + 16) = v65;
    v66 = v101;
    *(v63 + 32) = v100;
    *(v63 + 48) = v66;
    v105[0] = v90;
    v105[1] = v91;
    v105[3] = v93;
    v105[4] = v94;
    v105[2] = v92;
    *&v105[5] = v95;
    *(&v105[5] + 1) = v58;
    *&v105[6] = v60;
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(&v98, v88, type metadata accessor for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v105, type metadata accessor for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>);
    ResolvedSystemTextField.borderedBackground.getter(v88);
    LOWORD(v58) = v89;
    v86 = v88[1];
    v87 = v88[0];
    v67 = static Alignment.center.getter();
    v69 = v68;
    v70 = v62;
    v71 = v83;
    outlined init with take of WeakBox<VerticalTextView>(v70, v83, type metadata accessor for ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>);
    v72 = v71 + *(v84 + 36);
    v73 = v86;
    *v72 = v87;
    *(v72 + 16) = v73;
    *(v72 + 32) = v58;
    *(v72 + 40) = v67;
    *(v72 + 48) = v69;
    v74 = v82;
    outlined init with take of WeakBox<VerticalTextView>(v71, v82, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>);
    outlined init with take of WeakBox<VerticalTextView>(v74, v25, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>);
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, type metadata accessor for PlatformTextFieldAdaptor, MEMORY[0x1E697F948]);
  }

  else
  {
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v23, v4, type metadata accessor for SystemTextFieldConfiguration);
    v33 = v77;
    outlined init with copy of PlatformItem(v86, &v4[*(v77 + 20)]);
    v34 = (v22 + *(v21 + 28));
    v35 = &v4[*(v33 + 24)];
    v36 = v34[1];
    *v35 = *v34;
    *(v35 + 1) = v36;
    v35[32] = 0;
    v37 = &v4[*(v33 + 28)];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    outlined init with take of WeakBox<VerticalTextView>(v4, v87, type metadata accessor for PlatformTextFieldAdaptor);
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>.Storage, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, type metadata accessor for PlatformTextFieldAdaptor, MEMORY[0x1E697F948]);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t closure #2 in ResolvedSystemTextField.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v19 - v8);
  v10 = *(type metadata accessor for ResolvedSystemTextField(0) + 24);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a1 + v10, v9, type metadata accessor for SystemTextFieldConfiguration);
  v11 = v9[5];
  v12 = v9[6];
  v14 = v9[7];
  v13 = v9[8];
  outlined copy of Text?(v11, v12, v14, v13);
  outlined destroy of SelectionRanges<String.Index>(v9, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v13)
  {
    v15 = v14 & 1;
    outlined copy of Text.Storage(v11, v12, v14 & 1);

    outlined consume of Text.Storage(v11, v12, v14 & 1);
  }

  else
  {
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a1 + v10, v6, type metadata accessor for SystemTextFieldConfiguration);
    outlined destroy of SelectionRanges<String.Index>(v6, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v11 = 0;
    v12 = 0;
    v15 = 0;
  }

  KeyPath = swift_getKeyPath();
  v17 = [objc_opt_self() placeholderTextColor];
  type metadata accessor for UIKitPlatformColorDefinition();
  result = Color.init(_platformColor:definition:)();
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = v13 == 0;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = 1;
  *(a2 + 56) = result;
  return result;
}

uint64_t ResolvedSystemTextField.borderedBorder.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v1 + *(type metadata accessor for ResolvedSystemTextField(0) + 24);
  if (*(v3 + *(type metadata accessor for SystemTextFieldConfiguration(0) + 20)) == 3)
  {
    v4 = v12;
    v5 = v13;
    v6 = v14;
    result = static Alignment.center.getter();
    v9 = v11;
    v10 = xmmword_18CDA0CB0;
  }

  else
  {
    outlined destroy of StrokeStyle(&v11);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    result = 0;
    v8 = 0;
    v10 = 0uLL;
    v9 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 8) = v10;
  *(a1 + 24) = v9;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = *(&v10 + 1) << 8;
  *(a1 + 72) = result;
  *(a1 + 80) = v8;
  return result;
}

id ResolvedSystemTextField.borderedBackground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1 + *(type metadata accessor for ResolvedSystemTextField(0) + 24);
  if (*(v4 + *(type metadata accessor for SystemTextFieldConfiguration(0) + 20)) != 3)
  {
    result = 0;
    v6 = 0;
    v7 = 0uLL;
LABEL_9:
    *a1 = v7;
    *(a1 + 8) = v7;
    *(a1 + 24) = result;
    *(a1 + 32) = v6;
    return result;
  }

  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter() & 1) == 0 || (specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24)))
  {
    result = static Color._background.getter();
LABEL_8:
    v7 = xmmword_18CDA0CB0;
    v6 = 256;
    goto LABEL_9;
  }

  result = [objc_opt_self() _textFieldDisabledBackgroundColor];
  if (result)
  {
    type metadata accessor for UIKitPlatformColorDefinition();
    result = Color.init(_platformColor:definition:)();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

double protocol witness for View.body.getter in conformance ResolvedSystemTextField@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v2, &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ResolvedSystemTextField);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  outlined init with take of WeakBox<VerticalTextView>(&v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for ResolvedSystemTextField);
  v13 = v2;
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, type metadata accessor for PlatformTextFieldAdaptor, MEMORY[0x1E697F960]);
  type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>, lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>);
  PlatformItemsReader.init(for:content:source:)();
  v8 = v17;
  a2[2] = v16;
  a2[3] = v8;
  v9 = v19;
  a2[4] = v18;
  a2[5] = v9;
  result = *&v14;
  v11 = v15;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

id PlatformTextFieldAdaptor.makeCoordinator()()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v0, v6, type metadata accessor for SystemTextFieldConfiguration);
  outlined init with take of TextField<_TextFieldStyleLabel>(v6, v3);
  v7 = v0 + *(type metadata accessor for PlatformTextFieldAdaptor(0) + 24);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for PlatformTextFieldCoordinator(0);
  v10 = *v7;
  v17 = *(v7 + 16);
  v18 = v10;
  v11 = objc_allocWithZone(v9);
  *&v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment] = xmmword_18CD6A6D0;
  static PlatformItem.empty.getter();
  v12 = &v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_selectionStorage];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[32] = 1;
  v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating] = 0;
  v13 = &v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field];
  *v13 = 0;
  v13[8] = -1;
  v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate] = 0;
  v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing] = 0;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v3, &v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration], &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v14 = v17;
  *v12 = v18;
  *(v12 + 1) = v14;
  v12[32] = v8;
  v19.receiver = v11;
  v19.super_class = v9;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  outlined destroy of SelectionRanges<String.Index>(v3, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  return v15;
}

id PlatformTextFieldAdaptor.makeUIView(context:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6[8] = 0;
  PlatformTextFieldCoordinator.configure(field:)(v6);
  outlined destroy of weak FallbackResponderProvider?(v6);
  [v1 setBorderStyle_];
  v2 = type metadata accessor for PlatformTextFieldAdaptor(0);
  v3 = specialized Environment.wrappedValue.getter(*(v0 + *(v2 + 28)), *(v0 + *(v2 + 28) + 8));
  UIView.setHoverEffectEnabled(_:)(v3 & 1);
  v4 = MEMORY[0x18D00C850](32, 0xE100000000000000);
  [v1 setText_];

  return v1;
}

uint64_t PlatformTextFieldAdaptor.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v3 = v2;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23[-v7];
  v9 = type metadata accessor for SystemTextFieldConfiguration(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 16);
  v24[0] = *a2;
  v24[1] = v14;
  v25 = v11;
  RepresentableContextValues.environment.getter();
  [a1 setBorderStyle_];
  v15 = type metadata accessor for PlatformTextFieldAdaptor(0);
  v16 = specialized Environment.wrappedValue.getter(*(v3 + *(v15 + 28)), *(v3 + *(v15 + 28) + 8));
  UIView.setHoverEffectEnabled(_:)(v16 & 1);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v3, v12, type metadata accessor for SystemTextFieldConfiguration);
  outlined init with take of TextField<_TextFieldStyleLabel>(v12, v8);
  v17 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of TextField<_TextFieldStyleLabel>(v8, v13 + v17);
  swift_endAccess();
  v18 = v27;
  v19 = (v13 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  v20 = *(v13 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  *v19 = v26;
  v19[1] = v18;

  outlined consume of EnvironmentValues?(v20);
  outlined init with copy of PlatformItem(v3 + *(v15 + 20), v24);
  v21 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label;
  swift_beginAccess();
  outlined assign with take of PlatformItem(v24, v13 + v21);
  swift_endAccess();
  PlatformTextFieldCoordinator.update()();
}

void protocol witness for static UIViewRepresentable.dismantleUIView(_:coordinator:) in conformance PlatformTextFieldAdaptor(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver_];
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance PlatformTextFieldAdaptor@<X0>(void *a1@<X8>)
{
  result = PlatformTextFieldAdaptor.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for UIViewRepresentable._overrideSizeThatFits(_:in:uiView:) in conformance PlatformTextFieldAdaptor(uint64_t *a1)
{
  result = _ProposedSize.width.getter();
  if ((v3 & 1) == 0)
  {
    *a1 = result;
  }

  return result;
}

id TextViewAdaptor.makeCoordinator()()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v0, v6, type metadata accessor for SystemTextFieldConfiguration);
  outlined init with take of TextField<_TextFieldStyleLabel>(v6, v3);
  v7 = (v0 + *(type metadata accessor for TextViewAdaptor(0) + 24));
  v8 = type metadata accessor for PlatformTextFieldCoordinator(0);
  v9 = *v7;
  v16 = v7[1];
  v17 = v9;
  v10 = objc_allocWithZone(v8);
  *&v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment] = xmmword_18CD6A6D0;
  static PlatformItem.empty.getter();
  v11 = &v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_selectionStorage];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating] = 0;
  v12 = &v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field];
  *v12 = 0;
  v12[8] = -1;
  v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate] = 0;
  v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing] = 0;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v3, &v10[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration], &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v13 = v16;
  *v11 = v17;
  *(v11 + 1) = v13;
  v11[32] = 0;
  v18.receiver = v10;
  v18.super_class = v8;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  outlined destroy of SelectionRanges<String.Index>(v3, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  return v14;
}

id TextViewAdaptor.makeUIView(context:)(__int128 *a1)
{
  v2 = v1;
  v11 = a1[1];
  v13 = *a1;
  v3 = *(a1 + 32);
  type metadata accessor for VerticalTextView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  BYTE8(v15[0]) = 1;
  PlatformTextFieldCoordinator.configure(field:)(v15);
  outlined destroy of weak FallbackResponderProvider?(v15);
  [v4 setBackgroundColor_];
  [v4 setShowsVerticalScrollIndicator_];
  static Semantics.v6.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0 || (v5 = [v4 traitCollection], v6 = objc_msgSend(v5, sel_userInterfaceIdiom), v5, v6 != 6))
  {
    [v4 setTextContainerInset_];
  }

  v7 = [v4 textContainer];
  [v7 setLineFragmentPadding_];

  v8 = type metadata accessor for TextViewAdaptor(0);
  v9 = specialized Environment.wrappedValue.getter(*(v2 + *(v8 + 36)), *(v2 + *(v8 + 36) + 8));
  UIView.setHoverEffectEnabled(_:)(v9 & 1);
  v15[1] = v12;
  v15[0] = v14;
  v16 = v3;
  RepresentableContextValues.environment.getter();
  specialized UIKitTextInput<>.setText(_:environment:)(32, 0xE100000000000000, v17, v18);

  return v4;
}

BOOL specialized UIKitTextInput<>.setText(_:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Text.Resolved();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v31 = a3;
  *(&v31 + 1) = a4;

  EnvironmentValues.textAlignment.getter();
  if (v29[0] == 2)
  {
    *v29 = v31;
    v13 = EnvironmentValues.multilineTextAlignment.getter() == 0;
    v14 = EnvironmentValues.textAlignment.modify();
    *v15 = v13;
    v14(v29, 0);
  }

  Text.Resolved.init()();
  *v29 = v31;
  v30 = 0;

  Text.resolve<A>(into:in:with:)();

  v16 = v31;
  v17 = specialized UIKitTextInput<>.setDefaultAttributes(resolved:in:)(v12, v31, *(&v31 + 1));
  *v29 = v16;

  v18 = Text.Resolved.finalized(in:)();

  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = v18;
  v20.super.isa = NSAttributedString.replacingLineBreakModes(_:)(NSLineBreakByWordWrapping).super.isa;

  v21 = [v5 attributedText];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v21 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 != a1 || v26 != a2)
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {

      goto LABEL_11;
    }

LABEL_12:
    [v5 setAttributedText_];

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v12, MEMORY[0x1E69810D8]);

    v17 = 1;
    goto LABEL_13;
  }

LABEL_11:
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v12, MEMORY[0x1E69810D8]);

LABEL_13:

  return v17;
}

uint64_t UIKitTextInput<>.setText(_:environment:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a1;
  v13 = type metadata accessor for Text.Resolved();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[1];
  v43 = *a3;
  v44 = v16;

  EnvironmentValues.textAlignment.getter();
  if (v39 == 2)
  {
    v42 = v7;
    v39 = v43;
    v40 = v44;
    v17 = *(a5 + 8);

    v17(&v41, &v39, a4, a5);

    v18 = v41;
    v19 = EnvironmentValues.textAlignment.modify();
    *v20 = v18;
    v19(&v39, 0);
  }

  Text.Resolved.init()();
  v39 = v43;
  v40 = v44;
  v42 = 0;

  Text.resolve<A>(into:in:with:)();

  v21 = v43;
  v22 = v44;
  v39 = v43;
  v40 = v44;

  LODWORD(a5) = UIKitTextInput<>.setDefaultAttributes(resolved:in:)(v15, &v39, a4, a5, a6);

  v39 = v21;
  v40 = v22;

  v23 = Text.Resolved.finalized(in:)();

  if (v23)
  {
    v37 = a5;
    v24 = *(a6 + 8);
    v25 = v23;
    isa = v25;
    if (v24(a4, a6))
    {
      isa = NSAttributedString.replacingLineBreakModes(_:)(NSLineBreakByWordWrapping).super.isa;
    }

    v27 = (*(a6 + 24))(a4, a6);
    if (v27)
    {
      v28 = v27;
      v29 = [v27 string];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      if (v30 == v38 && v32 == a2)
      {

        LOBYTE(a5) = v37;
        goto LABEL_13;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {

        LOBYTE(a5) = v37;
        goto LABEL_13;
      }
    }

    a5 = *(a6 + 32);
    v34 = isa;
    (a5)(isa, a4, a6);

    LOBYTE(a5) = 1;
  }

LABEL_13:
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v15, MEMORY[0x1E69810D8]);

  return a5 & 1;
}

uint64_t TextViewAdaptor.updateUIView(_:context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v27 = type metadata accessor for TextField;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v26 - v7;
  v8 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 16);
  v31[0] = *a2;
  v31[1] = v12;
  v32 = v9;
  RepresentableContextValues.environment.getter();
  v13 = v29;
  v14 = v30;
  v15 = type metadata accessor for TextViewAdaptor(0);
  v16 = (v3 + v15[7]);
  v17 = (a1 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_activationPointPadding);
  v18 = v16[1];
  *v17 = *v16;
  v17[1] = v18;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v3, v10, type metadata accessor for SystemTextFieldConfiguration);
  LOBYTE(a2) = v10[33];
  outlined destroy of SelectionRanges<String.Index>(v10, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, v27);
  specialized VerticalTextField.updateLimits(environment:axis:)(v13, v14, a2);
  v19 = specialized Environment.wrappedValue.getter(*(v3 + v15[9]), *(v3 + v15[9] + 8));
  UIView.setHoverEffectEnabled(_:)(v19 & 1);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v3, v10, type metadata accessor for SystemTextFieldConfiguration);
  v20 = v28;
  outlined init with take of TextField<_TextFieldStyleLabel>(v10, v28);
  v21 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of TextField<_TextFieldStyleLabel>(v20, v11 + v21);
  swift_endAccess();
  v22 = (v11 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  v23 = *(v11 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  *v22 = v13;
  v22[1] = v14;

  outlined consume of EnvironmentValues?(v23);
  outlined init with copy of PlatformItem(v3 + v15[5], v31);
  v24 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label;
  swift_beginAccess();
  outlined assign with take of PlatformItem(v31, v11 + v24);
  swift_endAccess();
  PlatformTextFieldCoordinator.update()();
}

void specialized VerticalTextField.updateLimits(environment:axis:)(uint64_t a1, uint64_t a2, char a3)
{
  EnvironmentValues.lowerLineLimit.getter();
  v8 = v7;
  static Semantics.v4.getter();
  v9 = isLinkedOnOrAfter(_:)();
  EnvironmentValues.lineLimit.getter();
  v11 = v10;
  if (v9)
  {
    v8 &= a3;
  }

  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    v12 = a3 & v11;
  }

  else
  {
    v12 = v11;
  }

  if ((v8 & 1) == 0 || (v12 & 1) == 0)
  {
    v22 = a2;
    EnvironmentValues.effectiveFont.getter();
    v21 = a2;
    v13 = Font.platformFont(in:)();

    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      type metadata accessor for CTFontRef(0);
      [v13 lineHeight];
      [v13 leading];
      static CTFontRef.limitedHeight(by:lineHeight:leading:)();
      v14 = v15 + 0.0;
    }

    v16 = v3 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_upperLimit;
    *v16 = v14;
    *(v16 + 8) = v12 & 1;
    if (v8)
    {

      v17 = 0.0;
    }

    else
    {
      type metadata accessor for CTFontRef(0);
      [v13 lineHeight];
      [v13 leading];
      static CTFontRef.limitedHeight(by:lineHeight:leading:)();
      v19 = v18;

      v17 = v19 + 0.0;
    }

    v20 = v3 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_lowerLimit;
    *v20 = v17;
    *(v20 + 8) = v8 & 1;
  }
}

uint64_t TextViewAdaptor._overrideSizeThatFits(_:in:uiView:)(double *a1, uint64_t *a2, char *a3)
{
  v6 = type metadata accessor for SystemTextFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = a2[2];
  v15 = *(a2 + 24);
  *&v51 = *a2;
  BYTE8(v51) = v13;
  *&v52 = v14;
  BYTE8(v52) = v15;
  *&result = COERCE_DOUBLE(_ProposedSize.width.getter());
  if ((v17 & 1) == 0)
  {
    v18 = result;
    static Semantics.v4.getter();
    *&result = COERCE_DOUBLE(isLinkedOnOrAfter(_:)());
    if (result)
    {
      v42 = a3;
      v43 = a1;
      *a1 = v18;
      outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v44, v11, type metadata accessor for SystemTextFieldConfiguration);
      v19 = v11[180];
      v20 = *(v11 + 120);
      v21 = *(v11 + 152);
      v49 = *(v11 + 136);
      v50[0] = v21;
      if (v19)
      {
        *(v50 + 12) = *(v11 + 164);
        v22 = *(v11 + 88);
        v45 = *(v11 + 72);
        v46 = v22;
        v47 = *(v11 + 104);
        v48 = v20;
        v51 = v45;
        v52 = v22;
        v53 = v47;
        v54 = v20;
        *v55 = v49;
        *&v55[16] = v21;
        *&v55[28] = *(v50 + 12);
        v56 = v19;
        v23 = MEMORY[0x1E6981948];
        outlined init with copy of PlatformItem.AccessibilityContent?(&v51, &v57, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
        _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v23);
        MEMORY[0x18D00ACC0](v63);
        v61 = v49;
        v62[0] = v50[0];
        *(v62 + 12) = *(v50 + 12);
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v24 = &lazy cache variable for type metadata for Binding<TextFieldState>;
      }

      else
      {
        *&v50[1] = *(v11 + 21);
        v25 = *(v11 + 88);
        v45 = *(v11 + 72);
        v46 = v25;
        v47 = *(v11 + 104);
        v48 = v20;
        *v55 = v49;
        *&v55[16] = v21;
        *&v55[28] = *(v11 + 164);
        v51 = v45;
        v52 = v25;
        v53 = v47;
        v54 = v20;
        v56 = v19;
        v23 = MEMORY[0x1E6981790];
        outlined init with copy of PlatformItem.AccessibilityContent?(&v51, &v57, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
        _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v23);
        State.wrappedValue.getter();
        v61 = v49;
        v62[0] = v50[0];
        *&v62[1] = *&v50[1];
        v57 = v45;
        v58 = v46;
        v59 = v47;
        v60 = v48;
        v24 = &lazy cache variable for type metadata for State<TextFieldState>;
      }

      outlined destroy of PlatformItem.AccessibilityContent?(&v57, v24, &type metadata for TextFieldState, v23);
      outlined destroy of SelectionRanges<String.Index>(v11, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
      v53 = v63[2];
      v54 = v63[3];
      *v55 = v64[0];
      *&v55[12] = *(v64 + 12);
      v51 = v63[0];
      v52 = v63[1];
      outlined destroy of TextFieldState(&v51);
      outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v44, v8, type metadata accessor for SystemTextFieldConfiguration);
      v26 = v8[33];
      outlined destroy of SelectionRanges<String.Index>(v8, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
      *&v57 = v12;
      BYTE8(v57) = v13;
      *&v58 = v14;
      BYTE8(v58) = v15;
      *&result = COERCE_DOUBLE(_ProposedSize.width.getter());
      v27 = v43;
      if ((v28 & 1) == 0)
      {
        v29 = v42;
        if (v26)
        {
          [v42 sizeThatFits_];
          v31 = v30;
          [v29 contentSize];
          if (v32 <= 1.79769313e308)
          {
            v33 = v32;
          }

          else
          {
            v33 = 1.79769313e308;
          }

          *&v57 = v12;
          BYTE8(v57) = v13;
          if (v31 > v33)
          {
            v34 = v31;
          }

          else
          {
            v34 = v33;
          }

          *&v58 = v14;
          BYTE8(v58) = v15;
          *&result = COERCE_DOUBLE(_ProposedSize.height.getter());
          v36 = *&result;
          if (v34 <= *&result)
          {
            v36 = v34;
          }

          if (v35)
          {
            v36 = v34;
          }

          v27[1] = v36;
        }

        v37 = &v29[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_upperLimit];
        if ((v29[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_upperLimit + 8] & 1) == 0)
        {
          v38 = *v37;
          if (*v37 >= v27[1])
          {
            v38 = v27[1];
          }

          v27[1] = v38;
        }

        v39 = &v29[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_lowerLimit];
        if ((v29[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_lowerLimit + 8] & 1) == 0)
        {
          v40 = *v39;
          if (v27[1] > *v39)
          {
            v40 = v27[1];
          }

          v27[1] = v40;
        }
      }
    }
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance TextViewAdaptor@<X0>(void *a1@<X8>)
{
  result = TextViewAdaptor.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t PlatformTextFieldCoordinator.textInput.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
  swift_beginAccess();
  outlined init with copy of PlatformItem.AccessibilityContent?(v0 + v1, v5, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  if (v6 == 255)
  {
    return 0;
  }

  if (v6)
  {
    outlined init with take of WeakBox<VerticalTextView>(v5, &v4, type metadata accessor for WeakBox<VerticalTextView>);
    Strong = swift_unknownObjectWeakLoadStrong();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(&v4, type metadata accessor for WeakBox<VerticalTextView>);
  }

  else
  {
    outlined init with take of WeakBox<VerticalTextView>(v5, &v4, type metadata accessor for WeakBox<UITextField>);
    Strong = swift_unknownObjectWeakLoadStrong();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(&v4, type metadata accessor for WeakBox<UITextField>);
  }

  if (Strong)
  {
    return Strong;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall PlatformTextFieldCoordinator.updateText(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating) & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
    swift_beginAccess();
    outlined init with copy of TextField<_TextFieldStyleLabel>(v1 + v7, v6, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    *&v33[13] = *(v6 + 165);
    v8 = *(v6 + 120);
    v9 = *(v6 + 152);
    *&v32[15] = *(v6 + 136);
    *v33 = v9;
    v10 = *(v6 + 88);
    *&v32[7] = *(v6 + 72);
    *&v32[9] = v10;
    *&v32[11] = *(v6 + 104);
    *&v32[13] = v8;
    v11 = *(v6 + 120);
    v12 = *(v6 + 152);
    v21 = *(v6 + 136);
    v22[0] = v12;
    if (v33[28])
    {
      *(v22 + 12) = *(v6 + 164);
      v13 = *(v6 + 88);
      v17 = *(v6 + 72);
      v18 = v13;
      v19 = *(v6 + 104);
      v20 = v11;
      v27[0] = v21;
      v27[1] = v12;
      *(&v27[1] + 13) = *(v6 + 165);
      v23 = v17;
      v24 = v13;
      v25 = v19;
      v26 = v11;
      v14 = &lazy cache variable for type metadata for Binding<TextFieldState>;
      v15 = MEMORY[0x1E6981948];
      outlined init with copy of PlatformItem.AccessibilityContent?(&v23, v28, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v15);
      MEMORY[0x18D00ACC0](v31);
      v29 = v21;
      v30[0] = v22[0];
      *(v30 + 12) = *(v22 + 12);
    }

    else
    {
      *&v22[1] = *(v6 + 21);
      v16 = *(v6 + 88);
      v17 = *(v6 + 72);
      v18 = v16;
      v19 = *(v6 + 104);
      v20 = v11;
      v27[0] = v21;
      v27[1] = v12;
      *(&v27[1] + 13) = *(v6 + 165);
      v23 = v17;
      v24 = v16;
      v25 = v19;
      v26 = v11;
      v14 = &lazy cache variable for type metadata for State<TextFieldState>;
      v15 = MEMORY[0x1E6981790];
      outlined init with copy of PlatformItem.AccessibilityContent?(&v23, v28, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v15);
      State.wrappedValue.getter();
      v29 = v21;
      v30[0] = v22[0];
      *&v30[1] = *&v22[1];
    }

    v28[0] = v17;
    v28[1] = v18;
    v28[2] = v19;
    v28[3] = v20;
    outlined destroy of PlatformItem.AccessibilityContent?(v28, v14, &type metadata for TextFieldState, v15);

    *&v31[0] = countAndFlagsBits;
    *(&v31[0] + 1) = object;
    v25 = v31[2];
    v26 = v31[3];
    v27[0] = *v32;
    *(v27 + 12) = *(&v32[1] + 4);
    v23 = v31[0];
    v24 = v31[1];
    specialized StateOrBinding.wrappedValue.setter(&v23);
    outlined destroy of SelectionRanges<String.Index>(v6, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  }
}

uint64_t closure #1 in PlatformTextFieldCoordinator.didBeginEditing()(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined init with copy of TextField<_TextFieldStyleLabel>(a1 + v5, v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  *&v33[13] = *(v4 + 165);
  v6 = *(v4 + 120);
  v7 = *(v4 + 152);
  *&v32[15] = *(v4 + 136);
  *v33 = v7;
  v8 = *(v4 + 88);
  *&v32[7] = *(v4 + 72);
  *&v32[9] = v8;
  *&v32[11] = *(v4 + 104);
  *&v32[13] = v6;
  v9 = *(v4 + 120);
  v10 = *(v4 + 152);
  v20 = *(v4 + 136);
  v21[0] = v10;
  if (v33[28])
  {
    *(v21 + 12) = *(v4 + 164);
    v11 = *(v4 + 88);
    v16 = *(v4 + 72);
    v17 = v11;
    v18 = *(v4 + 104);
    v19 = v9;
    v26[0] = v20;
    v26[1] = v10;
    *(&v26[1] + 13) = *(v4 + 165);
    v22 = v16;
    v23 = v11;
    v24 = v18;
    v25 = v9;
    v12 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    v13 = MEMORY[0x1E6981948];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v22, v27, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v13);
    MEMORY[0x18D00ACC0](v30);
    v28 = v20;
    v29[0] = v21[0];
    *(v29 + 12) = *(v21 + 12);
  }

  else
  {
    *&v21[1] = *(v4 + 21);
    v14 = *(v4 + 88);
    v16 = *(v4 + 72);
    v17 = v14;
    v18 = *(v4 + 104);
    v19 = v9;
    v26[0] = v20;
    v26[1] = v10;
    *(&v26[1] + 13) = *(v4 + 165);
    v22 = v16;
    v23 = v14;
    v24 = v18;
    v25 = v9;
    v12 = &lazy cache variable for type metadata for State<TextFieldState>;
    v13 = MEMORY[0x1E6981790];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v22, v27, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v13);
    State.wrappedValue.getter();
    v28 = v20;
    v29[0] = v21[0];
    *&v29[1] = *&v21[1];
  }

  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  outlined destroy of PlatformItem.AccessibilityContent?(v27, v12, &type metadata for TextFieldState, v13);
  if (v31)
  {
    (v31)(1);
  }

  BYTE3(v32[3]) = 1;
  BYTE2(v32[3]) = BYTE1(v32[3]) & 1;
  v24 = v30[2];
  v25 = v31;
  v26[0] = *v32;
  v22 = v30[0];
  v23 = v30[1];
  *(v26 + 12) = *(&v32[1] + 4);
  specialized StateOrBinding.wrappedValue.setter(&v22);
  return outlined destroy of SelectionRanges<String.Index>(v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
}

uint64_t closure #1 in PlatformTextFieldCoordinator.didEndEditing()(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined init with copy of TextField<_TextFieldStyleLabel>(a1 + v5, v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  *&v39[13] = *(v4 + 165);
  v6 = *(v4 + 120);
  v7 = *(v4 + 152);
  *&v38[15] = *(v4 + 136);
  *v39 = v7;
  v8 = *(v4 + 88);
  *&v38[7] = *(v4 + 72);
  *&v38[9] = v8;
  *&v38[11] = *(v4 + 104);
  *&v38[13] = v6;
  v9 = *(v4 + 120);
  v10 = *(v4 + 152);
  v24 = *(v4 + 136);
  v25[0] = v10;
  if (v39[28])
  {
    *(v25 + 12) = *(v4 + 164);
    v11 = *(v4 + 88);
    v20 = *(v4 + 72);
    v21 = v11;
    v22 = *(v4 + 104);
    v23 = v9;
    v30[0] = v24;
    v30[1] = v10;
    *(&v30[1] + 13) = *(v4 + 165);
    v26 = v20;
    v27 = v11;
    v28 = v22;
    v29 = v9;
    v12 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    v13 = MEMORY[0x1E6981948];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v26, v31, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v13);
    MEMORY[0x18D00ACC0](&v34);
    v32 = v24;
    v33[0] = v25[0];
    *(v33 + 12) = *(v25 + 12);
  }

  else
  {
    *&v25[1] = *(v4 + 21);
    v14 = *(v4 + 88);
    v20 = *(v4 + 72);
    v21 = v14;
    v22 = *(v4 + 104);
    v23 = v9;
    v30[0] = v24;
    v30[1] = v10;
    *(&v30[1] + 13) = *(v4 + 165);
    v26 = v20;
    v27 = v14;
    v28 = v22;
    v29 = v9;
    v12 = &lazy cache variable for type metadata for State<TextFieldState>;
    v13 = MEMORY[0x1E6981790];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v26, v31, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v13);
    State.wrappedValue.getter();
    v32 = v24;
    v33[0] = v25[0];
    *&v33[1] = *&v25[1];
  }

  v31[0] = v20;
  v31[1] = v21;
  v31[2] = v22;
  v31[3] = v23;
  outlined destroy of PlatformItem.AccessibilityContent?(v31, v12, &type metadata for TextFieldState, v13);
  static Semantics.v3.getter();
  LOBYTE(v38[2]) = (isLinkedOnOrAfter(_:)() & 1) == 0;
  if (v35)
  {
    v15 = (v36)(v34, *(&v34 + 1));
    if (v16)
    {
      v17 = v15;
      v18 = v16;

      *&v34 = v17;
      *(&v34 + 1) = v18;
    }
  }

  if (v37)
  {
    (v37)(0);
  }

  WORD1(v38[3]) = 0;
  v28 = v36;
  v29 = v37;
  v30[0] = *v38;
  v26 = v34;
  v27 = v35;
  *(v30 + 12) = *(&v38[1] + 4);
  specialized StateOrBinding.wrappedValue.setter(&v26);
  return outlined destroy of SelectionRanges<String.Index>(v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
}

BOOL PlatformTextFieldCoordinator.shouldSubmitOnSoftwareReturn.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v1 == 1)
  {
    return 0;
  }

  if (!*(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior>, &type metadata for EnvironmentValues.__Key_textInputReturnBehavior, &protocol witness table for EnvironmentValues.__Key_textInputReturnBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
    if (v3)
    {
      PropertyList.subscript.getter();
      outlined consume of EnvironmentValues?(v1);
      return v4 == 1;
    }

LABEL_8:

    outlined consume of EnvironmentValues?(v1);
    v4 = 2;
    return v4 == 1;
  }

  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior>, &type metadata for EnvironmentValues.__Key_textInputReturnBehavior, &protocol witness table for EnvironmentValues.__Key_textInputReturnBehavior, MEMORY[0x1E697FE38]);
  swift_retain_n();
  outlined copy of EnvironmentValues?(v1);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>();
  PropertyList.Tracker.value<A>(_:for:)();

  if (!v3)
  {
    goto LABEL_8;
  }

  PropertyList.Tracker.value<A>(_:for:)();
  outlined consume of EnvironmentValues?(v1);

  return v4 == 1;
}

Swift::Void __swiftcall PlatformTextFieldCoordinator.didChangeSelection()()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - v2;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection.Indices?(0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  type metadata accessor for Binding<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<TextSelection?>(0);
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v18);
  if ((*(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating) & 1) == 0)
  {
    v45 = v21;
    v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = &v43 - v19;
    v48 = v20;
    v22 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
    swift_beginAccess();
    outlined init with copy of PlatformItem.AccessibilityContent?(v0 + v22, v50, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
    if (v51 != 255)
    {
      if (v51)
      {
        outlined init with take of WeakBox<VerticalTextView>(v50, v52, type metadata accessor for WeakBox<VerticalTextView>);
        Strong = swift_unknownObjectWeakLoadStrong();
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v52, type metadata accessor for WeakBox<VerticalTextView>);
        if (!Strong)
        {
          return;
        }

        v24 = v11;
        v25 = &protocol witness table for VerticalTextView;
      }

      else
      {
        outlined init with take of WeakBox<VerticalTextView>(v50, v52, type metadata accessor for WeakBox<UITextField>);
        Strong = swift_unknownObjectWeakLoadStrong();
        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v52, type metadata accessor for WeakBox<UITextField>);
        if (!Strong)
        {
          return;
        }

        v24 = v11;
        v25 = &protocol witness table for UITextField;
      }

      v26 = v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
      swift_beginAccess();
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
      outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v26 + *(v27 + 56), v14, type metadata accessor for Binding<TextSelection?>?);
      if ((*(v48 + 48))(v14, 1, v16) == 1)
      {

        v28 = type metadata accessor for Binding<TextSelection?>?;
      }

      else
      {
        outlined init with take of WeakBox<VerticalTextView>(v14, v47, type metadata accessor for Binding<TextSelection?>);
        ObjectType = swift_getObjectType();
        (v25[24])(ObjectType, v25);
        TextSelection.init(_:)(v3, v6);
        v30 = type metadata accessor for TextSelection(0);
        v31 = 1;
        v32 = (*(*(v30 - 8) + 48))(v6, 1, v30);
        v33 = type metadata accessor for TextSelection?;
        if (v32 != 1)
        {
          outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v6, v24, type metadata accessor for TextSelection.Indices);
          v31 = 0;
          v33 = type metadata accessor for TextSelection;
        }

        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v6, v33);
        v34 = type metadata accessor for TextSelection.Indices(0);
        (*(*(v34 - 8) + 56))(v24, v31, 1, v34);
        v35 = (v25[27])(ObjectType, v25);
        if (v35)
        {
          v36 = 2 * (v35 == 1);
        }

        else
        {
          v36 = 1;
        }

        v52[0] = 17;
        v44 = Strong;
        v37 = v46;
        outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v24, v46, type metadata accessor for TextSelection.Indices?);
        v14 = v47;
        v38 = v45;
        outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v47, v45, type metadata accessor for Binding<TextSelection?>);
        v39 = v24;
        v40 = (*(v49 + 80) + 16) & ~*(v49 + 80);
        v41 = (v8 + *(v48 + 80) + v40) & ~*(v48 + 80);
        v42 = swift_allocObject();
        outlined init with take of WeakBox<VerticalTextView>(v37, v42 + v40, type metadata accessor for TextSelection.Indices?);
        outlined init with take of WeakBox<VerticalTextView>(v38, v42 + v41, type metadata accessor for Binding<TextSelection?>);
        *(v42 + v41 + v17) = v36;
        static Update.enqueueAction(reason:_:)();

        _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v39, type metadata accessor for TextSelection.Indices?);
        v28 = type metadata accessor for Binding<TextSelection?>;
      }

      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v14, v28);
    }
  }
}

uint64_t closure #1 in PlatformTextFieldCoordinator.didChangeSelection()(uint64_t a1, uint64_t a2, int a3)
{
  v78 = a3;
  v80 = a2;
  type metadata accessor for (TextSelection.Indices?, TextSelection.Indices?)();
  v75 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v76 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v65 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v65 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v73 = &v65 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  type metadata accessor for TextSelection.Indices?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v71 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v65 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v65 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = type metadata accessor for TextSelection.Indices(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v70 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a1, v29, type metadata accessor for TextSelection.Indices?);
  v36 = *(v31 + 48);
  if (v36(v29, 1, v30) == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v29, type metadata accessor for TextSelection.Indices?);
LABEL_18:
    v50 = v79;
    v52 = v77;
    goto LABEL_19;
  }

  outlined init with take of WeakBox<VerticalTextView>(v29, v35, type metadata accessor for TextSelection.Indices);
  type metadata accessor for Binding<TextSelection?>(0);
  v66 = v37;
  MEMORY[0x18D00ACC0]();
  v38 = type metadata accessor for TextSelection(0);
  v65 = *(v38 - 8);
  v39 = *(v65 + 48);
  v40 = 1;
  v67 = v38;
  v68 = v39;
  if (!(v39)(v18, 1))
  {
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v18, v26, type metadata accessor for TextSelection.Indices);
    v40 = 0;
  }

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v18, type metadata accessor for TextSelection?);
  v41 = *(v31 + 56);
  v41(v26, v40, 1, v30);
  v69 = v35;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v35, v23, type metadata accessor for TextSelection.Indices);
  v41(v23, 0, 1, v30);
  v42 = v76;
  v43 = *(v75 + 48);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v26, v76, type metadata accessor for TextSelection.Indices?);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v23, v42 + v43, type metadata accessor for TextSelection.Indices?);
  if (v36(v42, 1, v30) == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v23, type metadata accessor for TextSelection.Indices?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v26, type metadata accessor for TextSelection.Indices?);
    if (v36((v42 + v43), 1, v30) == 1)
    {
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v42, type metadata accessor for TextSelection.Indices?);
LABEL_17:
      _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v69, type metadata accessor for TextSelection.Indices);
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  v44 = v71;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v42, v71, type metadata accessor for TextSelection.Indices?);
  if (v36((v42 + v43), 1, v30) == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v23, type metadata accessor for TextSelection.Indices?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v26, type metadata accessor for TextSelection.Indices?);
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v44, type metadata accessor for TextSelection.Indices);
LABEL_10:
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v42, type metadata accessor for (TextSelection.Indices?, TextSelection.Indices?));
    v45 = v68;
    goto LABEL_11;
  }

  v54 = v70;
  outlined init with take of WeakBox<VerticalTextView>(v42 + v43, v70, type metadata accessor for TextSelection.Indices);
  v55 = v44;
  v56 = specialized static TextSelection.Indices.== infix(_:_:)(v44, v54);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v54, type metadata accessor for TextSelection.Indices);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v23, type metadata accessor for TextSelection.Indices?);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v26, type metadata accessor for TextSelection.Indices?);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v55, type metadata accessor for TextSelection.Indices);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v42, type metadata accessor for TextSelection.Indices?);
  v45 = v68;
  if (v56)
  {
    goto LABEL_17;
  }

LABEL_11:
  v46 = v73;
  MEMORY[0x18D00ACC0](v66);
  v47 = v72;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v46, v72, type metadata accessor for TextSelection?);
  v48 = v67;
  v49 = v45(v47, 1, v67);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v47, type metadata accessor for TextSelection?);
  v50 = v79;
  if (v49 == 1)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v46, type metadata accessor for TextSelection?);
    v51 = v69;
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v69, v46, type metadata accessor for TextSelection.Indices);
    *(v46 + *(v48 + 20)) = 0;
    (*(v65 + 56))(v46, 0, 1, v48);
    v52 = v77;
  }

  else
  {
    v53 = v45(v46, 1, v48);
    v52 = v77;
    v51 = v69;
    if (!v53)
    {
      outlined assign with copy of TextSelection.Indices(v69, v46);
    }
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v51, type metadata accessor for TextSelection.Indices);
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v46, type metadata accessor for TextSelection?);
LABEL_19:
  v57 = v78;
  type metadata accessor for Binding<TextSelection?>(0);
  v59 = v58;
  MEMORY[0x18D00ACC0]();
  v60 = type metadata accessor for TextSelection(0);
  v61 = *(*(v60 - 8) + 48);
  if (v61(v52, 1, v60))
  {
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v52, type metadata accessor for TextSelection?);
  }

  else
  {
    v63 = *(v52 + *(v60 + 20));
    result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v52, type metadata accessor for TextSelection?);
    if (v63 != 3)
    {
      if (v57 != 3 && v63 == v57)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  if (v57 == 3)
  {
    return result;
  }

LABEL_23:
  MEMORY[0x18D00ACC0](v59);
  if (v61(v50, 1, v60))
  {
    v64 = v74;
    outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v50, v74, type metadata accessor for TextSelection?);
    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v64, type metadata accessor for TextSelection?);
  }

  else
  {
    *(v50 + *(v60 + 20)) = v57;
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v50, type metadata accessor for TextSelection?);
}

void __swiftcall PlatformTextFieldCoordinator.presentEditMenu(with:)(UIMenu_optional *__return_ptr retstr, Swift::OpaquePointer with)
{
  v47 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v47 - v6;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextSelection(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = PlatformTextFieldCoordinator.textInput.getter();
  if (!v15)
  {
    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  rawValue = with._rawValue;
  ObjectType = swift_getObjectType();
  (*(v18 + 192))(ObjectType, v18);
  TextSelection.init(_:)(v7, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    v20 = type metadata accessor for TextSelection?;
LABEL_11:
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v10, v20);
    with._rawValue = rawValue;
LABEL_12:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);

    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v52.value.super.isa = 0;
    v52.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v44, v43, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, with._rawValue, v46);
    return;
  }

  v21 = v10;
  v10 = v14;
  v22 = outlined init with take of WeakBox<VerticalTextView>(v21, v14, type metadata accessor for TextSelection);
  MEMORY[0x1EEE9AC00](v22);
  v45 = v2;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_2(0, &lazy cache variable for type metadata for ((_:))?, 255, type metadata accessor for (_:), MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  v23 = v50[0];
  if (!v50[0])
  {

    v20 = type metadata accessor for TextSelection;
    goto LABEL_11;
  }

  v24 = v50[1];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  v26 = ObjectType;
  v27 = v25;
  v28 = (*(v18 + 216))(v26, v18);
  v29 = 2 * (v28 == 1);
  if (!v28)
  {
    v29 = 1;
  }

  v14[*(v11 + 20)] = v29;
  MEMORY[0x1EEE9AC00](v28);
  *(&v47 - 4) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed TextSelection) -> (@out PlatformItemList);
  *(&v47 - 3) = v27;
  v45 = v14;
  static Update.ensure<A>(_:)();
  v30 = v50[0];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v31 = MEMORY[0x1E69E7CC0];
  v50[0] = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v33 = MEMORY[0x1E69E7CC8];
  v34 = v48;
  v48[8] = 0;
  *(v34 + 16) = v33;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  *(v34 + 48) = 0;
  _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, 255, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v35 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v36 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v35, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(v38, v37 + v36, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v34 + 56) = v37;
  v39 = *(v47 + 32);
  v40 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v40 - 8) + 56))(v34 + v39, 1, 1, v40);
  *v34 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v30, v50);

  v41 = *(v34 + 32);

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v34, type metadata accessor for MenuVisitor);
  v50[0] = rawValue;

  specialized Array.append<A>(contentsOf:)(v41);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v51.value.super.isa = 0;
  v51.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v50[0], v42, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, v50[0], v46);

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v10, type metadata accessor for TextSelection);
}

uint64_t *closure #1 in PlatformTextFieldCoordinator.presentEditMenu(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_selectionStorage + 32))
  {
    v3 = 0;
    result = 0;
  }

  else
  {
    type metadata accessor for (_:)();
    result = AGGraphGetWeakValue();
    if (result)
    {
      v3 = *result;
    }

    else
    {
      v3 = 0;
    }
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t closure #2 in PlatformTextFieldCoordinator.presentEditMenu(with:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TextSelection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a2, v8, type metadata accessor for TextSelection);
  v9 = a1(v8);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v8, type metadata accessor for TextSelection);
  *a3 = v9;
  return result;
}

Swift::Void __swiftcall PlatformTextFieldCoordinator.triggerPrimaryAction()()
{
  v1 = v0;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  *(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 0;
  if ((*(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating) & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
    swift_beginAccess();
    outlined init with copy of TextField<_TextFieldStyleLabel>(v1 + v5, v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    *&v40[13] = *(v4 + 165);
    v6 = *(v4 + 120);
    v7 = *(v4 + 152);
    *&v39[15] = *(v4 + 136);
    *v40 = v7;
    v8 = *(v4 + 88);
    *&v39[7] = *(v4 + 72);
    *&v39[9] = v8;
    *&v39[11] = *(v4 + 104);
    *&v39[13] = v6;
    v9 = *(v4 + 120);
    v10 = *(v4 + 152);
    v25 = *(v4 + 136);
    v26[0] = v10;
    if (v40[28])
    {
      *(v26 + 12) = *(v4 + 164);
      v11 = *(v4 + 88);
      v21 = *(v4 + 72);
      v22 = v11;
      v23 = *(v4 + 104);
      v24 = v9;
      v31[0] = v25;
      v31[1] = v10;
      *(&v31[1] + 13) = *(v4 + 165);
      v27 = v21;
      v28 = v11;
      v29 = v23;
      v30 = v9;
      v12 = &lazy cache variable for type metadata for Binding<TextFieldState>;
      v13 = MEMORY[0x1E6981948];
      outlined init with copy of PlatformItem.AccessibilityContent?(&v27, v32, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v13);
      MEMORY[0x18D00ACC0](&v35);
      v33 = v25;
      v34[0] = v26[0];
      *(v34 + 12) = *(v26 + 12);
    }

    else
    {
      *&v26[1] = *(v4 + 21);
      v14 = *(v4 + 88);
      v21 = *(v4 + 72);
      v22 = v14;
      v23 = *(v4 + 104);
      v24 = v9;
      v31[0] = v25;
      v31[1] = v10;
      *(&v31[1] + 13) = *(v4 + 165);
      v27 = v21;
      v28 = v14;
      v29 = v23;
      v30 = v9;
      v12 = &lazy cache variable for type metadata for State<TextFieldState>;
      v13 = MEMORY[0x1E6981790];
      outlined init with copy of PlatformItem.AccessibilityContent?(&v27, v32, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
      _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v13);
      State.wrappedValue.getter();
      v33 = v25;
      v34[0] = v26[0];
      *&v34[1] = *&v26[1];
    }

    v32[0] = v21;
    v32[1] = v22;
    v32[2] = v23;
    v32[3] = v24;
    outlined destroy of PlatformItem.AccessibilityContent?(v32, v12, &type metadata for TextFieldState, v13);
    static Semantics.v3.getter();
    LOBYTE(v39[2]) = (isLinkedOnOrAfter(_:)() & 1) == 0;
    if (v36)
    {
      v15 = (v37)(v35, *(&v35 + 1));
      if (v16)
      {
        v17 = v15;
        v18 = v16;

        *&v35 = v17;
        *(&v35 + 1) = v18;
      }
    }

    if (v38)
    {
      (v39[0])();
    }

    v29 = v37;
    v30 = v38;
    v31[0] = *v39;
    *(v31 + 12) = *(&v39[1] + 4);
    v27 = v35;
    v28 = v36;
    specialized StateOrBinding.wrappedValue.setter(&v27);
    outlined destroy of SelectionRanges<String.Index>(v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v19 = PlatformTextFieldCoordinator.textInput.getter();
    if (v19)
    {
      v20 = v19;
      [v19 endEditing_];
    }

    PlatformTextFieldCoordinator.updateToDisplayTextIfNeeded()();
    specialized SubmitTriggerSource.updateTriggersIfNeeded()();
  }
}

Swift::Void __swiftcall PlatformTextFieldCoordinator.updateToDisplayTextIfNeeded()()
{
  v1 = v0;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  v49 = v8;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v0 + v8, v7, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v9 = v7[180];
  v10 = *(v7 + 120);
  v11 = *(v7 + 152);
  v58 = *(v7 + 136);
  v59[0] = v11;
  if (v9)
  {
    *(v59 + 12) = *(v7 + 164);
    v12 = *(v7 + 88);
    v54 = *(v7 + 72);
    v55 = v12;
    v56 = *(v7 + 104);
    v57 = v10;
    v60 = v54;
    v61 = v12;
    v62 = v56;
    v63 = v10;
    *v64 = v58;
    *&v64[16] = v11;
    *&v64[28] = *(v59 + 12);
    v65 = v9;
    v13 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    v14 = MEMORY[0x1E6981948];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v60, &v66, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v14);
    MEMORY[0x18D00ACC0](v72);
    v70 = v58;
    v71[0] = v59[0];
    *(v71 + 12) = *(v59 + 12);
  }

  else
  {
    *&v59[1] = *(v7 + 21);
    v15 = *(v7 + 88);
    v54 = *(v7 + 72);
    v55 = v15;
    v56 = *(v7 + 104);
    v57 = v10;
    *v64 = v58;
    *&v64[16] = v11;
    *&v64[28] = *(v7 + 164);
    v60 = v54;
    v61 = v15;
    v62 = v56;
    v63 = v10;
    v65 = v9;
    v13 = &lazy cache variable for type metadata for State<TextFieldState>;
    v14 = MEMORY[0x1E6981790];
    outlined init with copy of PlatformItem.AccessibilityContent?(&v60, &v66, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v14);
    State.wrappedValue.getter();
    v70 = v58;
    v71[0] = v59[0];
    *&v71[1] = *&v59[1];
  }

  v66 = v54;
  v67 = v55;
  v68 = v56;
  v69 = v57;
  outlined destroy of PlatformItem.AccessibilityContent?(&v66, v13, &type metadata for TextFieldState, v14);
  outlined destroy of SelectionRanges<String.Index>(v7, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v52[2] = v72[2];
  v52[3] = v72[3];
  v53[0] = v73[0];
  *(v53 + 12) = *(v73 + 12);
  v52[0] = v72[0];
  v52[1] = v72[1];
  v16 = v72[0];

  outlined destroy of TextFieldState(v52);
  v17 = PlatformTextFieldCoordinator.textInput.getter();
  if (!v17 || (v19 = v18, v20 = v17, v21 = swift_getObjectType(), v22 = (*(v19 + 24))(v21, v19), v20, !v22))
  {

LABEL_9:
    v27 = *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
    if (v27 != 1)
    {
      v28 = *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8);

      v29 = PlatformTextFieldCoordinator.textInput.getter();
      if (v29)
      {
        v32 = v29;
        v47 = v30;
        v48 = v31;
        outlined init with copy of TextField<_TextFieldStyleLabel>(v1 + v49, v4, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
        v33 = v4[180];
        v34 = *(v4 + 120);
        v35 = *(v4 + 152);
        v58 = *(v4 + 136);
        v59[0] = v35;
        if (v33)
        {
          *(v59 + 12) = *(v4 + 164);
          v36 = *(v4 + 88);
          v54 = *(v4 + 72);
          v55 = v36;
          v56 = *(v4 + 104);
          v57 = v34;
          v60 = v54;
          v61 = v36;
          v62 = v56;
          v63 = v34;
          *v64 = v58;
          *&v64[16] = v35;
          *&v64[28] = *(v59 + 12);
          v65 = v33;
          v37 = v4;
          v38 = MEMORY[0x1E6981948];
          outlined init with copy of PlatformItem.AccessibilityContent?(&v60, &v66, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981948]);
          _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v38);
          MEMORY[0x18D00ACC0](v50);
          v70 = v58;
          v71[0] = v59[0];
          *(v71 + 12) = *(v59 + 12);
          v66 = v54;
          v67 = v55;
          v68 = v56;
          v69 = v57;
          v39 = &lazy cache variable for type metadata for Binding<TextFieldState>;
          v40 = v38;
        }

        else
        {
          *&v59[1] = *(v4 + 21);
          v42 = *(v4 + 88);
          v54 = *(v4 + 72);
          v55 = v42;
          v56 = *(v4 + 104);
          v57 = v34;
          *v64 = v58;
          *&v64[16] = v35;
          *&v64[28] = *(v4 + 164);
          v60 = v54;
          v61 = v42;
          v62 = v56;
          v63 = v34;
          v65 = v33;
          v37 = v4;
          v43 = MEMORY[0x1E6981790];
          outlined init with copy of PlatformItem.AccessibilityContent?(&v60, &v66, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, MEMORY[0x1E6981790]);
          _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v43);
          State.wrappedValue.getter();
          v70 = v58;
          v71[0] = v59[0];
          *&v71[1] = *&v59[1];
          v66 = v54;
          v67 = v55;
          v68 = v56;
          v69 = v57;
          v39 = &lazy cache variable for type metadata for State<TextFieldState>;
          v40 = v43;
        }

        outlined destroy of PlatformItem.AccessibilityContent?(&v66, v39, &type metadata for TextFieldState, v40);
        ObjectType = swift_getObjectType();
        outlined destroy of SelectionRanges<String.Index>(v37, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
        v62 = v50[2];
        v63 = v50[3];
        *v64 = v51[0];
        *&v64[12] = *(v51 + 12);
        v60 = v50[0];
        v61 = v50[1];
        v45 = v50[0];

        outlined destroy of TextFieldState(&v60);
        *&v66 = v27;
        *(&v66 + 1) = v28;
        UIKitTextInput<>.setText(_:environment:)(v45, *(&v45 + 1), &v66, ObjectType, v47, v48);
      }

      outlined consume of EnvironmentValues?(v27);
    }

    return;
  }

  v23 = [v22 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v16 == __PAIR128__(v26, v24))
  {

    return;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v41 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void PlatformTextFieldCoordinator.pressedReturnKey(_:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
  swift_beginAccess();
  outlined init with copy of PlatformItem.AccessibilityContent?(v0 + v1, v6, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  if (v7 != 255)
  {
    if (v7)
    {
      outlined init with take of WeakBox<VerticalTextView>(v6, &v5, type metadata accessor for WeakBox<VerticalTextView>);
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = type metadata accessor for WeakBox<VerticalTextView>;
    }

    else
    {
      outlined init with take of WeakBox<VerticalTextView>(v6, &v5, type metadata accessor for WeakBox<UITextField>);
      Strong = swift_unknownObjectWeakLoadStrong();
      v3 = type metadata accessor for WeakBox<UITextField>;
    }

    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(&v5, v3);
    if (Strong)
    {
      type metadata accessor for VerticalTextView();
      v4 = swift_dynamicCastClass();
      if (v4 && (*(v4 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_isHandlingHWKeypress) & 1) == 0 && PlatformTextFieldCoordinator.shouldSubmitOnSoftwareReturn.getter())
      {
        PlatformTextFieldCoordinator.triggerPrimaryAction()();
      }
    }
  }
}

uint64_t PlatformTextFieldCoordinator.__ivar_destroyer()
{
  outlined destroy of SelectionRanges<String.Index>(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  outlined consume of EnvironmentValues?(*(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment));
  outlined destroy of PlatformItem(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label);
  return outlined destroy of PlatformItem.AccessibilityContent?(v0 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
}

id PlatformTextFieldCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformTextFieldCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void type metadata completion function for PlatformTextFieldCoordinator()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

Swift::Bool __swiftcall PlatformTextFieldCoordinator.textField(_:shouldChangeCharactersInRanges:replacementString:)(UITextField *_, Swift::OpaquePointer shouldChangeCharactersInRanges, Swift::String replacementString)
{
  object = replacementString._object;
  countAndFlagsBits = replacementString._countAndFlagsBits;
  v8 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
  swift_beginAccess();
  outlined init with copy of PlatformItem.AccessibilityContent?(v3 + v8, v18, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  if (BYTE8(v18[0]) == 255)
  {
    goto LABEL_10;
  }

  if ((BYTE8(v18[0]) & 1) == 0)
  {
    outlined init with take of WeakBox<VerticalTextView>(v18, v20, type metadata accessor for WeakBox<UITextField>);
    Strong = swift_unknownObjectWeakLoadStrong();
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v20, type metadata accessor for WeakBox<UITextField>);
    if (Strong)
    {
      goto LABEL_6;
    }

LABEL_10:
    v16 = 1;
    return v16 & 1;
  }

  outlined init with take of WeakBox<VerticalTextView>(v18, v20, type metadata accessor for WeakBox<VerticalTextView>);
  Strong = swift_unknownObjectWeakLoadStrong();
  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v20, type metadata accessor for WeakBox<VerticalTextView>);
  if (!Strong)
  {
    goto LABEL_10;
  }

LABEL_6:
  v10 = [(UITextField *)_ text];
  if (!v10)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = *(v3 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v15 == 1)
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  else if (*(v3 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
    outlined copy of EnvironmentValues?(v15);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
    outlined consume of EnvironmentValues?(v15);
  }

  else
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
    outlined consume of EnvironmentValues?(v15);
  }

  swift_getObjectType();
  v16 = specialized UIKitTextInput<>.shouldChangeText(in:text:replacement:validator:)(shouldChangeCharactersInRanges._rawValue, v12, v14, countAndFlagsBits, object, v18);

  _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v18, type metadata accessor for TextInputValidation?);
  return v16 & 1;
}

Swift::Bool __swiftcall PlatformTextFieldCoordinator.textView(_:shouldChangeTextInRanges:replacementText:)(UITextView *_, Swift::OpaquePointer shouldChangeTextInRanges, Swift::String replacementText)
{
  if (*(v3 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate))
  {
    v4 = 0;
    goto LABEL_11;
  }

  v5 = *(v3 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v5 == 1)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
LABEL_10:
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(&v17, type metadata accessor for TextInputValidation?);
    v4 = 1;
    goto LABEL_11;
  }

  countAndFlagsBits = replacementText._countAndFlagsBits;
  object = replacementText._object;
  if (*(v3 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
    outlined copy of EnvironmentValues?(v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
    outlined consume of EnvironmentValues?(v5);

    if (!*(&v18 + 1))
    {
      goto LABEL_10;
    }
  }

  else
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
    outlined consume of EnvironmentValues?(v5);
    if (!*(&v18 + 1))
    {
      goto LABEL_10;
    }
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, v20);
  v10 = __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v11 = [(UITextView *)_ text];
  if (!v11)
  {
    __break(1u);
    return v11;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v4 = specialized TextInputValidation.shouldChangeText(in:text:replacement:)(shouldChangeTextInRanges._rawValue, v13, v15, countAndFlagsBits, object, *v10, v10[1]);

  __swift_destroy_boxed_opaque_existential_1(v20);
LABEL_11:
  LOBYTE(v11) = v4 & 1;
  return v11;
}

uint64_t @objc PlatformTextFieldCoordinator.textField(_:shouldChangeCharactersInRanges:replacementString:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(id, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSValue);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  LOBYTE(a6) = a6(v13, v9, v10, v12);

  return a6 & 1;
}

uint64_t VerticalTextView.uiDefaultTextAttributes.didset()
{
  v1 = v0;
  v2 = [v0 textStorage];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in VerticalTextView.uiDefaultTextAttributes.didset;
  *(v4 + 24) = v3;
  v9[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSTextStorage?) -> ();
  v9[3] = &block_descriptor_31;
  v5 = _Block_copy(v9);
  v6 = v1;

  [v2 coordinateEditing_];
  _Block_release(v5);

  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setTypingAttributes_];

  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in VerticalTextView.uiDefaultTextAttributes.didset(void *a1)
{
  if (a1)
  {
    type metadata accessor for NSAttributedStringKey(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    v2 = a1;

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v3 = v2;
    v4 = NSAttributedString.range.getter();
    v6 = v5;

    [v3 setAttributes:isa range:{v4, v6}];
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSTextStorage?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v3(a2);
}

void VerticalTextView.pressesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_isHandlingHWKeypress] = 1;
  VerticalTextView.isSubmission(_:)(a1);
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate) = 1;
      swift_unknownObjectRelease();
    }
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_pressesBegan_withEvent_, isa, a2);
}

void VerticalTextView.isSubmission(_:)(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
    lazy protocol witness table accessor for type UIPress and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v33;
    v2 = v34;
    v3 = v35;
    v4 = v36;
    v5 = v37;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v27 = v3;
  v9 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
  v28 = v1;
  while (1)
  {
    if (v1 < 0)
    {
      v13 = __CocoaSet.Iterator.next()();
      if (!v13)
      {
LABEL_39:
        v12 = 0;
LABEL_40:
        outlined consume of Set<UIPress>.Iterator._Variant();

        return;
      }

      v30 = v13;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
      swift_dynamicCast();
      v12 = v31;
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_18;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_40;
    }

LABEL_18:
    v14 = [v12 v9[49]];
    if (v14)
    {
      v15 = v14;
      v29 = v5;
      v16 = [v14 characters];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = v17 == 10 && v19 == 0xE100000000000000;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v17 == 13 ? (v21 = v19 == 0xE100000000000000) : (v21 = 0), v21))
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {

          goto LABEL_38;
        }
      }

      v23 = [v15 modifierFlags];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {

        goto LABEL_40;
      }

      if (*(Strong + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment) == 1 || (v25 = *(Strong + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8), v31 = *(Strong + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment), v32 = v25, EnvironmentValues.effectiveHardwareTextInputReturnBehavior.getter(&v30), v26 = v30, v30 == 3))
      {
        swift_unknownObjectRelease();

        v5 = v29;
        if ((v23 & 0x80000) != 0)
        {
          goto LABEL_40;
        }

        v1 = v28;
        v9 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      }

      else
      {
        swift_unknownObjectRelease();

        if ((v26 == 1) != ((v23 >> 19) & 1))
        {
          goto LABEL_40;
        }

        v15 = v12;
LABEL_38:
        v1 = v28;
        v5 = v29;
        v9 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_39;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void VerticalTextView.pressesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_pressesEnded_withEvent_, isa, a2);

  VerticalTextView.isSubmission(_:)(a1);
  if (v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate) = 0;
      PlatformTextFieldCoordinator.triggerPrimaryAction()();
      swift_unknownObjectRelease();
    }
  }

  *(v3 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_isHandlingHWKeypress) = 0;
}

uint64_t @objc VerticalTextView.pressesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPress);
  lazy protocol witness table accessor for type UIPress and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

id VerticalTextView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_upperLimit];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_lowerLimit];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_activationPointPadding];
  static EdgeInsets.zero.getter();
  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  *&v1[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_isHandlingHWKeypress] = 0;
  v11 = OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDefaultTextAttributes;
  *&v1[v11] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t VerticalTextView.__ivar_destroyer()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDelegate);
}

uint64_t initializeBufferWithCopyOfBuffer for PlainTextFieldStyle.BodyContent(uint64_t a1, uint64_t *a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = v4;
  v6 = *(*(v4 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    a1 = v7 + ((v6 + 16) & ~v6);
  }

  else
  {
    v48 = v5;
    v8 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v8;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v9 = a2[8];

    if (v9)
    {
      v10 = a2[5];
      v11 = a2[6];
      v12 = *(a2 + 56);
      outlined copy of Text.Storage(v10, v11, v12);
      *(a1 + 40) = v10;
      *(a1 + 48) = v11;
      *(a1 + 56) = v12;
      *(a1 + 64) = v9;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v40 = a2[17];
    v41 = a2[18];
    v42 = a2[19];
    v43 = a2[20];
    v44 = a2[21];
    v45 = *(a2 + 44);
    __dsta = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v40, v41, v42, v43, v44, v45, __dsta);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v40;
    *(a1 + 144) = v41;
    *(a1 + 152) = v42;
    *(a1 + 160) = v43;
    *(a1 + 168) = v44;
    *(a1 + 176) = v45;
    *(a1 + 180) = __dsta;
    v21 = *(v48 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      v49 = v22;
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      v34 = v30;

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v35 - 8) + 64));
        v36 = v49;
      }

      else
      {
        v37 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v38 - 8) + 16))(__dst, v30, v38);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v30, *(*(v37 - 8) + 64));
        }

        v36 = v49;
        __dst[*(v31 + 20)] = v34[*(v31 + 20)];
        (*(v32 + 56))(__dst, 0, 1, v31);
      }

      (*(v26 + 56))(v36, 0, 1, v25);
    }
  }

  return a1;
}

uint64_t initializeWithCopy for PlainTextFieldStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v38 = *(a2 + 136);
  v39 = *(a2 + 144);
  v40 = *(a2 + 152);
  v41 = *(a2 + 160);
  v42 = *(a2 + 168);
  __dsta = *(a2 + 176);
  v45 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v45);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v45;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v46 = v20;
    __dst = v20 + v27;
    v28 = v21 + v27;
    v29 = type metadata accessor for TextSelection(0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);

    v32 = v28;

    if (v31(v28, 1, v29))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v28, *(*(v33 - 8) + 64));
      v34 = v46;
    }

    else
    {
      v35 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v36 - 8) + 16))(__dst, v28, v36);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v28, *(*(v35 - 8) + 64));
      }

      v34 = v46;
      __dst[*(v29 + 20)] = v32[*(v29 + 20)];
      (*(v30 + 56))(__dst, 0, 1, v29);
    }

    (*(v24 + 56))(v34, 0, 1, v23);
  }

  return a1;
}

uint64_t assignWithCopy for PlainTextFieldStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  v21 = *(a2 + 112);
  v22 = *(a2 + 120);
  v23 = *(a2 + 128);
  v71 = *(a2 + 136);
  v72 = *(a2 + 144);
  v73 = *(a2 + 152);
  v74 = *(a2 + 160);
  v75 = *(a2 + 168);
  v76 = *(a2 + 176);
  v78 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v71, v72, v73, v74, v75, v76, v78);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128);
  v32 = *(a1 + 136);
  v33 = *(a1 + 152);
  v34 = *(a1 + 168);
  v35 = *(a1 + 176);
  v36 = *(a1 + 180);
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = v23;
  *(a1 + 136) = v71;
  *(a1 + 144) = v72;
  *(a1 + 152) = v73;
  *(a1 + 160) = v74;
  *(a1 + 168) = v75;
  *(a1 + 176) = v76;
  *(a1 + 180) = v78;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  LODWORD(v19) = v44(v39, 1, v41);
  v45 = v44(v40, 1, v42);
  if (v19)
  {
    if (!v45)
    {
      *v39 = *v40;
      *(v39 + 1) = *(v40 + 1);
      v46 = *(v42 + 32);
      v79 = &v39[v46];
      v77 = &v40[v46];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v77, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v79, v77, *(*(v50 - 8) + 64));
      }

      else
      {
        v65 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v66 - 8) + 16))(v79, v77, v66);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v77, *(*(v65 - 8) + 64));
        }

        v79[*(v47 + 20)] = v77[*(v47 + 20)];
        (*(v48 + 56))(v79, 0, 1, v47);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      return a1;
    }

    goto LABEL_14;
  }

  if (v45)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    v52 = *(*(v51 - 8) + 64);
    v53 = v39;
    v54 = v40;
LABEL_15:
    memcpy(v53, v54, v52);
    return a1;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v55 = *(v42 + 32);
  v56 = &v39[v55];
  v57 = &v40[v55];
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  if (v61)
  {
    if (!v62)
    {
      v63 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v64 - 8) + 16))(v56, v57, v64);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v63 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      return a1;
    }

    goto LABEL_24;
  }

  if (v62)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v52 = *(*(v67 - 8) + 64);
    v53 = v56;
    v54 = v57;
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v56, type metadata accessor for TextSelection.Indices);
    v69 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v70 - 8) + 16))(v56, v57, v70);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v69 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
  return a1;
}

uint64_t initializeWithTake for PlainTextFieldStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  return a1;
}

uint64_t assignWithTake for PlainTextFieldStyle.BodyContent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 64) = v5;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 180);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  v24 = *(a1 + 176);
  v25 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      return a1;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    return a1;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      return a1;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v48, type metadata accessor for TextSelection.Indices);
    v61 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v62 - 8) + 32))(v48, v49, v62);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v61 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
  return a1;
}

void type metadata completion function for PlainTextFieldStyle.BodyContent()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t protocol witness for FallbackAlignmentProvider.fallbackAlignment(in:) in conformance VerticalTextView@<X0>(BOOL *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result == 0;
  return result;
}

BOOL specialized UIKitTextInput<>.setDefaultAttributes(resolved:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  Text.ResolvedProperties.init()();
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v20[0] = 0;
  v7 = Text.Resolved.nsAttributes(content:in:with:properties:)();
  if (*(v7 + 16))
  {
    v8 = *MEMORY[0x1E69DB688];
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB688]);
    if (v10)
    {
      outlined init with copy of Any(*(v7 + 56) + 32 * v9, &v21);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
      if (swift_dynamicCast())
      {
        v11 = v20[0];
        [v20[0] mutableCopy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        v12 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
        swift_dynamicCast();
        v13 = v20[0];
        [v20[0] setLineBreakMode_];
        [v20[0] setLineBreakStrategy_];
        *(&v22 + 1) = v12;
        *&v21 = v20[0];
        outlined init with take of Any(&v21, v20);
        v14 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, v8, isUniquelyReferenced_nonNull_native);
      }
    }
  }

  v16 = OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDefaultTextAttributes;
  v17 = *(v4 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDefaultTextAttributes);

  v18 = Dictionary<>.isEqual(_:)(v7, v17);

  if ((v18 & 1) == 0)
  {
    *(v4 + v16) = v7;

    VerticalTextView.uiDefaultTextAttributes.didset();
  }

  v27 = v29[8];
  v28 = v29[9];
  v29[0] = v30[0];
  *(v29 + 9) = *(v30 + 9);
  v23 = v29[4];
  v24 = v29[5];
  v25 = v29[6];
  v26 = v29[7];
  v21 = v29[2];
  v22 = v29[3];
  outlined destroy of Text.ResolvedProperties(&v21);

  return (v18 & 1) == 0;
}

BOOL UIKitTextInput<>.setDefaultAttributes(resolved:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v8 = a2[1];
  Text.ResolvedProperties.init()();
  *&v24 = v7;
  *(&v24 + 1) = v8;
  v23[0] = 0;
  v9 = Text.Resolved.nsAttributes(content:in:with:properties:)();
  if ((*(a5 + 8))(a3, a5))
  {
    if (*(v9 + 16))
    {
      v10 = *MEMORY[0x1E69DB688];
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DB688]);
      if (v12)
      {
        outlined init with copy of Any(*(v9 + 56) + 32 * v11, &v24);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSParagraphStyle);
        if (swift_dynamicCast())
        {
          v13 = v23[0];
          [v23[0] mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
          swift_dynamicCast();
          v15 = v23[0];
          [v23[0] setLineBreakMode_];
          [v23[0] setLineBreakStrategy_];
          *(&v25 + 1) = v14;
          *&v24 = v23[0];
          outlined init with take of Any(&v24, v23);
          v16 = v15;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v10, isUniquelyReferenced_nonNull_native);
        }
      }
    }
  }

  v18 = (*(a5 + 72))(a3, a5);
  v19 = Dictionary<>.isEqual(_:)(v9, v18);

  if ((v19 & 1) == 0)
  {
    v20 = *(a5 + 80);

    v20(v21, a3, a5);
  }

  v30 = v32[8];
  v31 = v32[9];
  v32[0] = v33[0];
  *(v32 + 9) = *(v33 + 9);
  v26 = v32[4];
  v27 = v32[5];
  v28 = v32[6];
  v29 = v32[7];
  v24 = v32[2];
  v25 = v32[3];
  outlined destroy of Text.ResolvedProperties(&v24);

  return (v19 & 1) == 0;
}

void UIKitTextInput<>.setPlaceholderText(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*(a4 + 8))(a2, a4) & 1) == 0 || [a1 length] < 1)
  {
    goto LABEL_7;
  }

  if ([a1 attribute:*MEMORY[0x1E69DB650] atIndex:0 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of PlatformItem.AccessibilityContent?(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
LABEL_7:
    v7 = a1;
    goto LABEL_8;
  }

  v12 = 0u;
  v13 = 0u;
  outlined destroy of PlatformItem.AccessibilityContent?(&v12, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  [a1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSMutableAttributedString);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v11;
  v8 = [objc_opt_self() placeholderTextColor];
  *(&v13 + 1) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  *&v12 = v8;
  NSMutableAttributedString.addUniformAttribute(_:value:)();
  __swift_destroy_boxed_opaque_existential_1(&v12);
LABEL_8:
  v9 = *(a4 + 56);
  v10 = v7;
  v9(v7, a2, a4);
}

uint64_t Dictionary<>.isEqual(_:)(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(a2, a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v23 = a1;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v23;
LABEL_12:
    v12 = *(*(a2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    if (*(a2 + 16))
    {
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      if (v14)
      {
        outlined init with copy of Any(*(a2 + 56) + 32 * v13, &v25);
        if (!*(v10 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = 0u;
        v26 = 0u;
        if (!*(v10 + 16))
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      v15 = v12;
      if (!*(v10 + 16))
      {
        goto LABEL_21;
      }
    }

    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if ((v17 & 1) == 0)
    {
LABEL_21:
      memset(v24, 0, sizeof(v24));
      goto LABEL_22;
    }

    outlined init with copy of Any(*(v10 + 56) + 32 * v16, v24);
LABEL_22:
    v7 &= v7 - 1;
    v18 = MEMORY[0x1E69E6720];
    v19 = MEMORY[0x1E69E7CA0];
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v20 = AGCompareValues();

    outlined destroy of PlatformItem.AccessibilityContent?(v24, &lazy cache variable for type metadata for Any?, v19 + 8, v18);
    outlined destroy of PlatformItem.AccessibilityContent?(&v25, &lazy cache variable for type metadata for Any?, v19 + 8, v18);
    if ((v20 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_26;
    }
  }

  v10 = v23;
  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(a2 + 64 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  v21 = 1;
LABEL_26:

  return v21;
}

uint64_t UIKitTextInput<>.setSelection(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a4;
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E60D0];
  v9 = MEMORY[0x1E69E60E0];
  v10 = MEMORY[0x1E697E8A8];
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a1, v7, type metadata accessor for TextSelection?);
  SelectionRanges<>.init(_:)(v7, v16);
  RangeSet.init()();
  swift_storeEnumTagMultiPayload();
  v17 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v16, v13);
  outlined destroy of SelectionRanges<String.Index>(v13, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v8, v9, v10);
  if ((v17 & 1) == 0)
  {
    (*(v21 + 192))(v20);
    v18 = _s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v13, v16);
    outlined destroy of SelectionRanges<String.Index>(v13, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
    if ((v18 & 1) == 0)
    {
      outlined init with copy of TextField<_TextFieldStyleLabel>(v16, v13, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
      (*(v21 + 200))(v13, v20);
    }
  }

  return outlined destroy of SelectionRanges<String.Index>(v16, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
}

void _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_10:
      if (*(a2 + 16))
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * v10)));
        specialized __RawDictionaryStorage.find<A>(_:)(v11);
        v13 = v12;

        if (v13)
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(a1 + 64 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t PlatformTextFieldCoordinator.configure(field:)(uint64_t a1)
{
  outlined init with copy of PlatformTextFieldCoordinator.FieldStorage(a1, v12);
  v3 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field;
  swift_beginAccess();
  outlined assign with take of PlatformTextFieldCoordinator.FieldStorage?(v12, v1 + v3);
  swift_endAccess();
  outlined init with copy of PlatformTextFieldCoordinator.FieldStorage(a1, v11);
  if (v11[8])
  {
    outlined init with take of WeakBox<VerticalTextView>(v11, v12, type metadata accessor for WeakBox<VerticalTextView>);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong setDelegate_];
      *&v5[OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDelegate + 8] = &protocol witness table for PlatformTextFieldCoordinator;
      swift_unknownObjectWeakAssign();
      v6 = [objc_opt_self() defaultCenter];
      [v6 addObserver:v1 selector:sel_pressedReturnKey_ name:*MEMORY[0x1E69DE038] object:0];
    }

    v7 = type metadata accessor for WeakBox<VerticalTextView>;
  }

  else
  {
    outlined init with take of WeakBox<VerticalTextView>(v11, v12, type metadata accessor for WeakBox<UITextField>);
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 setDelegate_];
      [v9 addTarget:v1 action:sel_textChanged_ forControlEvents:0x20000];
      [v9 addTarget:v1 action:sel_primaryActionTriggered_ forControlEvents:0x2000];
    }

    v7 = type metadata accessor for WeakBox<UITextField>;
  }

  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v12, v7);
}

uint64_t specialized StateOrBinding.wrappedValue.setter(__int128 *a1)
{
  if (*(v1 + 108))
  {
    v2 = a1[3];
    v14 = a1[2];
    v15 = v2;
    v16[0] = a1[4];
    *(v16 + 12) = *(a1 + 76);
    v3 = a1[1];
    v12 = *a1;
    v13 = v3;
    dispatch thunk of AnyLocation.set(_:transaction:)();
    v19 = v14;
    v20 = v15;
    v21[0] = v16[0];
    *(v21 + 12) = *(v16 + 12);
    v17 = v12;
    v18 = v13;
    v4 = &v17;
  }

  else
  {
    v5 = *(v1 + 96);
    v6 = a1[3];
    v19 = a1[2];
    v20 = v6;
    v21[0] = a1[4];
    *(v21 + 12) = *(a1 + 76);
    v7 = a1[1];
    v17 = *a1;
    v18 = v7;
    if (v5)
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
      v14 = v19;
      v15 = v20;
      v16[0] = v21[0];
      *(v16 + 12) = *(v21 + 12);
      v8 = v17;
      v9 = v18;
    }

    else
    {
      v10 = a1[3];
      v14 = a1[2];
      v15 = v10;
      v16[0] = a1[4];
      *(v16 + 12) = *(a1 + 76);
      v8 = *a1;
      v9 = a1[1];
    }

    v12 = v8;
    v13 = v9;
    v4 = &v12;
  }

  return outlined destroy of TextFieldState(v4);
}

uint64_t protocol witness for UIKitTextInput.uiDefaultTextAttributes.setter in conformance VerticalTextView(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7SwiftUI16VerticalTextView_uiDefaultTextAttributes) = a1;

  return VerticalTextView.uiDefaultTextAttributes.didset();
}

unint64_t lazy protocol witness table accessor for type UIPress and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIPress and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIPress and conformance NSObject)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIPress);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIPress and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputValidationKey>, &type metadata for TextInputValidationKey, &protocol witness table for TextInputValidationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputValidationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t type metadata accessor for TextInputValidation()
{
  result = lazy cache variable for type metadata for TextInputValidation;
  if (!lazy cache variable for type metadata for TextInputValidation)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TextInputValidation);
  }

  return result;
}

uint64_t specialized UIKitTextInput<>.shouldChangeText(in:text:replacement:validator:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(a6, &v14, type metadata accessor for TextInputValidation?);
  if (v15)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v14, v16);
    v11 = __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v12 = specialized TextInputValidation.shouldChangeText(in:text:replacement:)(a1, a2, a3, a4, a5, *v11, v11[1]);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(&v14, type metadata accessor for TextInputValidation?);
    v12 = 1;
  }

  return v12 & 1;
}

uint64_t specialized PlatformTextFieldCoordinator.textFieldDidBeginEditing(_:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v2 == 1)
  {
    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    outlined copy of EnvironmentValues?(v2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  outlined consume of EnvironmentValues?(v2);
  result = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v6, type metadata accessor for WeakBox<FocusBridge>);
  if (!Strong || (v4 = *(Strong + 177), result = , (v4 & 1) == 0))
  {
LABEL_7:
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v5);
    return static Update.dispatchImmediately<A>(reason:_:)();
  }

  return result;
}

void specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment);
  if (v2 == 1)
  {
    goto LABEL_7;
  }

  if (*(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment + 8))
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    outlined copy of EnvironmentValues?(v2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_weakLoadStrong();
  outlined consume of EnvironmentValues?(v2);
  a1 = _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v6, type metadata accessor for WeakBox<FocusBridge>);
  if (!Strong || (v4 = *(Strong + 177), a1 = , (v4 & 1) == 0))
  {
LABEL_7:
    *(v1 + OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing) = 0;
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v5);
    static Update.dispatchImmediately<A>(reason:_:)();
    PlatformTextFieldCoordinator.updateToDisplayTextIfNeeded()();
  }
}

uint64_t outlined init with copy of PlatformItem.AccessibilityContent?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of PlatformItem.AccessibilityContent?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of SelectionRanges<String.Index>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with take of WeakBox<VerticalTextView>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for WeakBox<UITextField>()
{
  if (!lazy cache variable for type metadata for WeakBox<UITextField>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UITextField);
    v0 = type metadata accessor for WeakBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WeakBox<UITextField>);
    }
  }
}

uint64_t outlined init with copy of _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PlatformTextFieldCoordinator.didChangeSelection()()
{
  type metadata accessor for TextSelection.Indices?(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = *(v4 - 8);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return closure #1 in PlatformTextFieldCoordinator.didChangeSelection()(v0 + v2, v6, v7);
}

void type metadata accessor for (TextSelection.Indices?, TextSelection.Indices?)()
{
  if (!lazy cache variable for type metadata for (TextSelection.Indices?, TextSelection.Indices?))
  {
    type metadata accessor for TextSelection.Indices?(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (TextSelection.Indices?, TextSelection.Indices?));
    }
  }
}

uint64_t outlined assign with copy of TextSelection.Indices(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextSelection.Indices(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior>, &type metadata for EnvironmentValues.__Key_textInputReturnBehavior, &protocol witness table for EnvironmentValues.__Key_textInputReturnBehavior, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textInputReturnBehavior> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>, &type metadata for EnvironmentValues.TextSelectionAffinityKey, &protocol witness table for EnvironmentValues.TextSelectionAffinityKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined init with copy of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t))
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t outlined init with copy of PlatformTextFieldCoordinator.FieldStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  v4 = v3 == 1;
  result = swift_unknownObjectWeakCopyInit();
  *(a2 + 8) = v4;
  return result;
}

uint64_t outlined assign with take of PlatformTextFieldCoordinator.FieldStorage?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(0, &lazy cache variable for type metadata for PlatformTextFieldCoordinator.FieldStorage?, &type metadata for PlatformTextFieldCoordinator.FieldStorage, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for SystemTextFieldConfiguration(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = v5 + ((v4 + 16) & ~v4);
  }

  else
  {
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v8 = a2[8];

    if (v8)
    {
      v9 = a2[5];
      v10 = a2[6];
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v12 = a2[9];
    v13 = a2[10];
    v14 = a2[11];
    v15 = a2[12];
    v16 = a2[13];
    v17 = a2[14];
    v19 = a2[15];
    v18 = a2[16];
    v39 = a2[17];
    v40 = a2[18];
    v41 = a2[19];
    v42 = a2[20];
    __dsta = a2[21];
    v45 = *(a2 + 44);
    v47 = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v12, v13, v14, v15, v16, v17, v19, v18, v39, v40, v41, v42, __dsta, v45, v47);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v14;
    *(a1 + 96) = v15;
    *(a1 + 104) = v16;
    *(a1 + 112) = v17;
    *(a1 + 120) = v19;
    *(a1 + 128) = v18;
    *(a1 + 136) = v39;
    *(a1 + 144) = v40;
    *(a1 + 152) = v41;
    *(a1 + 160) = v42;
    *(a1 + 168) = __dsta;
    *(a1 + 176) = v45;
    *(a1 + 180) = v47;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v21 = *(v20 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v46 = v26;
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v34 - 8) + 64));
      }

      else
      {
        v35 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v37 = __dst;
          (*(*(v36 - 8) + 16))(__dst, v30, v36);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v37 = __dst;
          memcpy(__dst, v30, *(*(v35 - 8) + 64));
        }

        v37[*(v31 + 20)] = v30[*(v31 + 20)];
        (*(v32 + 56))(v37, 0, 1, v31);
      }

      (*(v46 + 56))(v22, 0, 1, v25);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for SystemTextFieldConfiguration(uint64_t a1)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v3 = a1 + *(v2 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v5 = v4;
  result = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (!result)
  {

    v7 = *(v5 + 32);
    v8 = type metadata accessor for TextSelection(0);
    result = (*(*(v8 - 8) + 48))(v3 + v7, 1, v8);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v10 = *(*(v9 - 8) + 8);

        return v10(v3 + v7, v9);
      }
    }
  }

  return result;
}

uint64_t initializeWithCopy for SystemTextFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v7 = *(a2 + 64);

  if (v7)
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v7;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v18 = *(a2 + 120);
  v17 = *(a2 + 128);
  v38 = *(a2 + 136);
  v39 = *(a2 + 144);
  v40 = *(a2 + 152);
  v41 = *(a2 + 160);
  __dsta = *(a2 + 168);
  v44 = *(a2 + 176);
  v46 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v11, v12, v13, v14, v15, v16, v18, v17, v38, v39, v40, v41, __dsta, v44, v46);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = __dsta;
  *(a1 + 176) = v44;
  *(a1 + 180) = v46;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(v23 - 8);
  if ((*(v25 + 48))(v22, 1, v23))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v21, v22, *(*(v26 - 8) + 64));
  }

  else
  {
    v45 = v25;
    v27 = v22[1];
    *v21 = *v22;
    v21[1] = v27;
    v28 = *(v24 + 32);
    __dst = v21 + v28;
    v29 = v22 + v28;
    v30 = type metadata accessor for TextSelection(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);

    if (v32(v29, 1, v30))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v29, *(*(v33 - 8) + 64));
    }

    else
    {
      v34 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v36 = __dst;
        (*(*(v35 - 8) + 16))(__dst, v29, v35);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v36 = __dst;
        memcpy(__dst, v29, *(*(v34 - 8) + 64));
      }

      v36[*(v30 + 20)] = v29[*(v30 + 20)];
      (*(v31 + 56))(v36, 0, 1, v30);
    }

    (*(v45 + 56))(v21, 0, 1, v24);
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for SystemTextFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v5 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v5)
    {
      v6 = *(a2 + 40);
      v7 = *(a2 + 48);
      v8 = *(a2 + 56);
      outlined copy of Text.Storage(v6, v7, v8);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *(a1 + 40) = v6;
      *(a1 + 48) = v7;
      *(a1 + 56) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v15 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v15;
    }
  }

  else if (v5)
  {
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    outlined copy of Text.Storage(v12, v13, v14);
    *(a1 + 40) = v12;
    *(a1 + 48) = v13;
    *(a1 + 56) = v14;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v16 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v16;
  }

  v17 = *(a2 + 72);
  v18 = *(a2 + 80);
  v19 = *(a2 + 88);
  v20 = *(a2 + 96);
  v21 = *(a2 + 104);
  v85 = a2;
  v22 = *(a2 + 112);
  v23 = *(a2 + 120);
  v24 = *(a2 + 128);
  v25 = *(a2 + 136);
  v77 = *(v85 + 144);
  v78 = *(v85 + 152);
  v79 = *(v85 + 160);
  v80 = *(v85 + 168);
  v81 = *(v85 + 176);
  __dsta = *(v85 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v17, v18, v19, v20, v21, v22, v23, v24, v25, v77, v78, v79, v80, v81, __dsta);
  v26 = *(a1 + 72);
  v27 = *(a1 + 80);
  v28 = *(a1 + 88);
  v29 = *(a1 + 96);
  v30 = *(a1 + 104);
  v31 = *(a1 + 112);
  v32 = *(a1 + 120);
  v33 = *(a1 + 128);
  v34 = *(a1 + 136);
  v35 = *(a1 + 152);
  v36 = *(a1 + 168);
  v37 = *(a1 + 176);
  v38 = *(a1 + 180);
  *(a1 + 72) = v17;
  *(a1 + 80) = v18;
  *(a1 + 88) = v19;
  *(a1 + 96) = v20;
  *(a1 + 104) = v21;
  *(a1 + 112) = v22;
  v39 = v85;
  *(a1 + 120) = v23;
  *(a1 + 128) = v24;
  *(a1 + 136) = v25;
  *(a1 + 144) = v77;
  *(a1 + 152) = v78;
  *(a1 + 160) = v79;
  *(a1 + 168) = v80;
  *(a1 + 176) = v81;
  *(a1 + 180) = __dsta;
  outlined consume of StateOrBinding<TextFieldState>(v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v41 = *(v40 + 56);
  v42 = (a1 + v41);
  v43 = (v85 + v41);
  type metadata accessor for Binding<TextSelection?>(0);
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = *(v46 + 48);
  LODWORD(v24) = v47(v42, 1, v44);
  v48 = v47(v43, 1, v45);
  if (v24)
  {
    if (!v48)
    {
      *v42 = *v43;
      *(v42 + 1) = *(v43 + 1);
      v49 = *(v45 + 32);
      __dst = &v42[v49];
      v50 = &v43[v49];
      v51 = type metadata accessor for TextSelection(0);
      v52 = *(v51 - 8);
      v53 = *(v52 + 48);
      v54 = v50;
      v55 = v51;

      if (v53(v54, 1, v55))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v54, *(*(v56 - 8) + 64));
      }

      else
      {
        v71 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v72 - 8) + 16))(__dst, v54, v72);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v54, *(*(v71 - 8) + 64));
        }

        __dst[*(v55 + 20)] = *(v54 + *(v55 + 20));
        (*(v52 + 56))(__dst, 0, 1, v55);
      }

      v39 = v85;
      (*(v46 + 56))(v42, 0, 1, v45);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (v48)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v42, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    v58 = *(*(v57 - 8) + 64);
    v59 = v42;
    v60 = v43;
LABEL_15:
    memcpy(v59, v60, v58);
    goto LABEL_28;
  }

  *v42 = *v43;

  *(v42 + 1) = *(v43 + 1);

  v61 = *(v45 + 32);
  v62 = &v42[v61];
  v63 = &v43[v61];
  v64 = type metadata accessor for TextSelection(0);
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  v67 = v66(v62, 1, v64);
  v68 = v66(v63, 1, v64);
  if (v67)
  {
    if (!v68)
    {
      v69 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v70 - 8) + 16))(v62, v63, v70);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v62, v63, *(*(v69 - 8) + 64));
      }

      v62[*(v64 + 20)] = v63[*(v64 + 20)];
      (*(v65 + 56))(v62, 0, 1, v64);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v68)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v62, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v58 = *(*(v73 - 8) + 64);
    v59 = v62;
    v60 = v63;
    goto LABEL_15;
  }

  if (a1 != v85)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v62, type metadata accessor for TextSelection.Indices);
    v75 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v76 - 8) + 16))(v62, v63, v76);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v62, v63, *(*(v75 - 8) + 64));
    }
  }

  v62[*(v64 + 20)] = v63[*(v64 + 20)];
LABEL_28:
  *(a1 + *(a3 + 20)) = *(v39 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for SystemTextFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v8 = *(v7 + 56);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TextSelection?>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
  }

  else
  {
    v15 = v10[1];
    *v9 = *v10;
    v9[1] = v15;
    v16 = *(v12 + 32);
    v17 = v9 + v16;
    v18 = v10 + v16;
    v19 = type metadata accessor for TextSelection(0);
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v18, 1, v19))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v17, v18, *(*(v21 - 8) + 64));
    }

    else
    {
      v25 = a3;
      v22 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v23 - 8) + 32))(v17, v18, v23);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v17, v18, *(*(v22 - 8) + 64));
      }

      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
      a3 = v25;
    }

    (*(v13 + 56))(v9, 0, 1, v12);
  }

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for SystemTextFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v7 = *(a2 + 64);
    if (v7)
    {
      v8 = *(a2 + 56);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 64) = v7;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v12 = *(a2 + 168);
  v13 = *(a2 + 176);
  v14 = *(a2 + 180);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v24 = *(a1 + 152);
  v25 = *(a1 + 168);
  v26 = *(a1 + 176);
  v27 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v12;
  *(a1 + 176) = v13;
  *(a1 + 180) = v14;
  outlined consume of StateOrBinding<TextFieldState>(v15, v16, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25, v26, v27);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v29 = *(v28 + 56);
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  type metadata accessor for Binding<TextSelection?>(0);
  v33 = v32;
  v34 = *(v32 - 8);
  v35 = *(v34 + 48);
  v36 = v35(v30, 1, v32);
  v37 = v35(v31, 1, v33);
  if (v36)
  {
    if (!v37)
    {
      v38 = *(v31 + 1);
      *v30 = *v31;
      *(v30 + 1) = v38;
      v39 = *(v33 + 32);
      v40 = &v30[v39];
      v41 = &v31[v39];
      v42 = type metadata accessor for TextSelection(0);
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v41, 1, v42))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v40, v41, *(*(v44 - 8) + 64));
      }

      else
      {
        v66 = a3;
        v60 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v61 - 8) + 32))(v40, v41, v61);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v40, v41, *(*(v60 - 8) + 64));
        }

        v40[*(v42 + 20)] = v41[*(v42 + 20)];
        (*(v43 + 56))(v40, 0, 1, v42);
        a3 = v66;
      }

      (*(v34 + 56))(v30, 0, 1, v33);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v37)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v30, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v46 = *(*(v45 - 8) + 64);
    v47 = v30;
    v48 = v31;
LABEL_13:
    memcpy(v47, v48, v46);
    goto LABEL_26;
  }

  v49 = a3;
  *v30 = *v31;

  *(v30 + 1) = *(v31 + 1);

  v50 = *(v33 + 32);
  v51 = &v30[v50];
  v52 = &v31[v50];
  v53 = type metadata accessor for TextSelection(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  v56 = v55(v51, 1, v53);
  v57 = v55(v52, 1, v53);
  a3 = v49;
  if (v56)
  {
    if (!v57)
    {
      v58 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v59 - 8) + 32))(v51, v52, v59);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v51, v52, *(*(v58 - 8) + 64));
      }

      v51[*(v53 + 20)] = v52[*(v53 + 20)];
      (*(v54 + 56))(v51, 0, 1, v53);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v57)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v51, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v46 = *(*(v62 - 8) + 64);
    v47 = v51;
    v48 = v52;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v51, type metadata accessor for TextSelection.Indices);
    v64 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v65 - 8) + 32))(v51, v52, v65);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v51, v52, *(*(v64 - 8) + 64));
    }
  }

  v51[*(v53 + 20)] = v52[*(v53 + 20)];
LABEL_26:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void type metadata completion function for SystemTextFieldConfiguration()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SystemTextField(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SystemTextFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  v6 = *a2;
  *a1 = *a2;
  if ((v5 & 0x20000) != 0)
  {
    a1 = v6 + ((v5 + 16) & ~v5);
  }

  else
  {
    v48 = v4;
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v8 = a2[8];

    if (v8)
    {
      v9 = a2[5];
      v10 = a2[6];
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = v8;
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v12 = a2[9];
    v13 = a2[10];
    v14 = a2[11];
    v15 = a2[12];
    v16 = a2[13];
    v17 = a2[14];
    v19 = a2[15];
    v18 = a2[16];
    v39 = a2[17];
    v40 = a2[18];
    v41 = a2[19];
    v42 = a2[20];
    __dsta = a2[21];
    v45 = *(a2 + 44);
    v47 = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v12, v13, v14, v15, v16, v17, v19, v18, v39, v40, v41, v42, __dsta, v45, v47);
    *(a1 + 72) = v12;
    *(a1 + 80) = v13;
    *(a1 + 88) = v14;
    *(a1 + 96) = v15;
    *(a1 + 104) = v16;
    *(a1 + 112) = v17;
    *(a1 + 120) = v19;
    *(a1 + 128) = v18;
    *(a1 + 136) = v39;
    *(a1 + 144) = v40;
    *(a1 + 152) = v41;
    *(a1 + 160) = v42;
    *(a1 + 168) = __dsta;
    *(a1 + 176) = v45;
    *(a1 + 180) = v47;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v21 = *(v20 + 56);
    v22 = (a1 + v21);
    v23 = (a2 + v21);
    type metadata accessor for Binding<TextSelection?>(0);
    v25 = v24;
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v22, v23, *(*(v27 - 8) + 64));
    }

    else
    {
      v46 = v26;
      v28 = v23[1];
      *v22 = *v23;
      v22[1] = v28;
      v29 = *(v25 + 32);
      __dst = v22 + v29;
      v30 = v23 + v29;
      v31 = type metadata accessor for TextSelection(0);
      v32 = *(v31 - 8);
      v33 = *(v32 + 48);

      if (v33(v30, 1, v31))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v30, *(*(v34 - 8) + 64));
      }

      else
      {
        v35 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v37 = __dst;
          (*(*(v36 - 8) + 16))(__dst, v30, v36);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v37 = __dst;
          memcpy(__dst, v30, *(*(v35 - 8) + 64));
        }

        v37[*(v31 + 20)] = v30[*(v31 + 20)];
        (*(v32 + 56))(v37, 0, 1, v31);
      }

      (*(v46 + 56))(v22, 0, 1, v25);
    }

    *(a1 + *(v48 + 20)) = *(a2 + *(v48 + 20));
  }

  return a1;
}

uint64_t initializeWithCopy for SystemTextField(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 64);

  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
    *(a1 + 56) = v9;
    *(a1 + 64) = v6;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v10 = *(a2 + 72);
  v11 = *(a2 + 80);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);
  v17 = *(a2 + 128);
  v38 = *(a2 + 136);
  v39 = *(a2 + 144);
  v40 = *(a2 + 152);
  v41 = *(a2 + 160);
  v42 = *(a2 + 168);
  __dsta = *(a2 + 176);
  v46 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v10, v11, v12, v13, v14, v15, v16, v17, v38, v39, v40, v41, v42, __dsta, v46);
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = v17;
  *(a1 + 136) = v38;
  *(a1 + 144) = v39;
  *(a1 + 152) = v40;
  *(a1 + 160) = v41;
  *(a1 + 168) = v42;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v46;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v19 = *(v18 + 56);
  v20 = (a1 + v19);
  v21 = (a2 + v19);
  type metadata accessor for Binding<TextSelection?>(0);
  v23 = v22;
  v24 = *(v22 - 8);
  if ((*(v24 + 48))(v21, 1, v22))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v26 = v21[1];
    *v20 = *v21;
    v20[1] = v26;
    v27 = *(v23 + 32);
    v47 = v20;
    v43 = v21 + v27;
    __dst = v20 + v27;
    v28 = type metadata accessor for TextSelection(0);
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);

    if (v30(v43, 1, v28))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v43, *(*(v31 - 8) + 64));
      v32 = v47;
    }

    else
    {
      v33 = v29;
      v34 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v35 - 8) + 16))(__dst, v43, v35);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v43, *(*(v34 - 8) + 64));
      }

      v32 = v47;
      __dst[*(v28 + 20)] = v43[*(v28 + 20)];
      (*(v33 + 56))(__dst, 0, 1, v28);
    }

    (*(v24 + 56))(v32, 0, 1, v23);
  }

  v36 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v36 + 20)) = *(a2 + *(v36 + 20));
  return a1;
}

uint64_t assignWithCopy for SystemTextField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v4)
    {
      v5 = *(a2 + 40);
      v6 = *(a2 + 48);
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = v5;
      *(a1 + 48) = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Text(a1 + 40);
      v14 = *(a2 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v14;
    }
  }

  else if (v4)
  {
    v11 = *(a2 + 40);
    v12 = *(a2 + 48);
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v15 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v15;
  }

  v16 = *(a2 + 72);
  v17 = *(a2 + 80);
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  v21 = *(a2 + 112);
  v83 = a2;
  v22 = *(a2 + 120);
  v23 = *(a2 + 128);
  v24 = *(a2 + 136);
  v75 = *(v83 + 144);
  v76 = *(v83 + 152);
  v77 = *(v83 + 160);
  v78 = *(v83 + 168);
  v79 = *(v83 + 176);
  __dsta = *(v83 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v24, v75, v76, v77, v78, v79, __dsta);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v28 = *(a1 + 96);
  v29 = *(a1 + 104);
  v30 = *(a1 + 112);
  v31 = *(a1 + 120);
  v32 = *(a1 + 128);
  v33 = *(a1 + 136);
  v34 = *(a1 + 152);
  v35 = *(a1 + 168);
  v36 = *(a1 + 176);
  v37 = *(a1 + 180);
  *(a1 + 72) = v16;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = v23;
  v38 = v83;
  *(a1 + 136) = v24;
  *(a1 + 144) = v75;
  *(a1 + 152) = v76;
  *(a1 + 160) = v77;
  *(a1 + 168) = v78;
  *(a1 + 176) = v79;
  *(a1 + 180) = __dsta;
  outlined consume of StateOrBinding<TextFieldState>(v25, v26, v27, v28, v29, v30, v31, v32, v33, *(&v33 + 1), v34, *(&v34 + 1), v35, v36, v37);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v40 = *(v39 + 56);
  v41 = (a1 + v40);
  v42 = (v83 + v40);
  type metadata accessor for Binding<TextSelection?>(0);
  v44 = v43;
  v45 = *(v43 - 8);
  v46 = *(v45 + 48);
  LODWORD(v18) = v46(v41, 1, v43);
  v47 = v46(v42, 1, v44);
  if (v18)
  {
    if (!v47)
    {
      *v41 = *v42;
      *(v41 + 1) = *(v42 + 1);
      v48 = *(v44 + 32);
      v80 = &v42[v48];
      __dst = &v41[v48];
      v49 = type metadata accessor for TextSelection(0);
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);

      if (v51(v80, 1, v49))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v80, *(*(v52 - 8) + 64));
        v38 = v83;
      }

      else
      {
        v67 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v69 = v80;
          (*(*(v68 - 8) + 16))(__dst, v80, v68);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v69 = v80;
          memcpy(__dst, v80, *(*(v67 - 8) + 64));
        }

        v38 = v83;
        __dst[*(v49 + 20)] = v69[*(v49 + 20)];
        (*(v50 + 56))(__dst, 0, 1, v49);
      }

      (*(v45 + 56))(v41, 0, 1, v44);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (v47)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v41, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    v54 = *(*(v53 - 8) + 64);
    v55 = v41;
    v56 = v42;
LABEL_15:
    memcpy(v55, v56, v54);
    goto LABEL_28;
  }

  *v41 = *v42;

  *(v41 + 1) = *(v42 + 1);

  v57 = *(v44 + 32);
  v58 = &v41[v57];
  v59 = &v42[v57];
  v60 = type metadata accessor for TextSelection(0);
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v63 = v62(v58, 1, v60);
  v64 = v62(v59, 1, v60);
  if (v63)
  {
    if (!v64)
    {
      v65 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v66 - 8) + 16))(v58, v59, v66);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v58, v59, *(*(v65 - 8) + 64));
      }

      v58[*(v60 + 20)] = v59[*(v60 + 20)];
      (*(v61 + 56))(v58, 0, 1, v60);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v64)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v58, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v54 = *(*(v70 - 8) + 64);
    v55 = v58;
    v56 = v59;
    goto LABEL_15;
  }

  if (a1 != v83)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v58, type metadata accessor for TextSelection.Indices);
    v73 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v74 - 8) + 16))(v58, v59, v74);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v58, v59, *(*(v73 - 8) + 64));
    }
  }

  v58[*(v60 + 20)] = v59[*(v60 + 20)];
LABEL_28:
  v71 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v71 + 20)) = *(v38 + *(v71 + 20));
  return a1;
}

uint64_t initializeWithTake for SystemTextField(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = *(v5 + 56);
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for Binding<TextSelection?>(0);
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = v8[1];
    *v7 = *v8;
    v7[1] = v13;
    v14 = *(v10 + 32);
    v15 = v7 + v14;
    v16 = v8 + v14;
    v17 = type metadata accessor for TextSelection(0);
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v16, 1, v17))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(v15, v16, *(*(v19 - 8) + 64));
    }

    else
    {
      v20 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v21 - 8) + 32))(v15, v16, v21);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v22 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v22 + 20)) = *(a2 + *(v22 + 20));
  return a1;
}

uint64_t assignWithTake for SystemTextField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  if (*(a1 + 64))
  {
    v5 = *(a2 + 64);
    if (v5)
    {
      v6 = *(a2 + 56);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v6;
      outlined consume of Text.Storage(v7, v8, v9);
      *(a1 + 64) = v5;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 180);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v17 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v22 = *(a1 + 152);
  v23 = *(a1 + 168);
  v24 = *(a1 + 176);
  v25 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v10;
  *(a1 + 176) = v11;
  *(a1 + 180) = v12;
  outlined consume of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v27 = *(v26 + 56);
  v28 = (a1 + v27);
  v29 = (a2 + v27);
  type metadata accessor for Binding<TextSelection?>(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v28, 1, v30);
  v35 = v33(v29, 1, v31);
  if (v34)
  {
    if (!v35)
    {
      v36 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v36;
      v37 = *(v31 + 32);
      v38 = &v28[v37];
      v39 = &v29[v37];
      v40 = type metadata accessor for TextSelection(0);
      v41 = *(v40 - 8);
      if ((*(v41 + 48))(v39, 1, v40))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v38, v39, *(*(v42 - 8) + 64));
      }

      else
      {
        v57 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v58 - 8) + 32))(v38, v39, v58);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v38, v39, *(*(v57 - 8) + 64));
        }

        v38[*(v40 + 20)] = v39[*(v40 + 20)];
        (*(v41 + 56))(v38, 0, 1, v40);
      }

      (*(v32 + 56))(v28, 0, 1, v31);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v35)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v28, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v44 = *(*(v43 - 8) + 64);
    v45 = v28;
    v46 = v29;
LABEL_13:
    memcpy(v45, v46, v44);
    goto LABEL_26;
  }

  *v28 = *v29;

  *(v28 + 1) = *(v29 + 1);

  v47 = *(v31 + 32);
  v48 = &v28[v47];
  v49 = &v29[v47];
  v50 = type metadata accessor for TextSelection(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v52(v49, 1, v50);
  if (v53)
  {
    if (!v54)
    {
      v55 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v56 - 8) + 32))(v48, v49, v56);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v48, v49, *(*(v55 - 8) + 64));
      }

      v48[*(v50 + 20)] = v49[*(v50 + 20)];
      (*(v51 + 56))(v48, 0, 1, v50);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v54)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v48, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v44 = *(*(v59 - 8) + 64);
    v45 = v48;
    v46 = v49;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v48, type metadata accessor for TextSelection.Indices);
    v62 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v63 - 8) + 32))(v48, v49, v63);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v48, v49, *(*(v62 - 8) + 64));
    }
  }

  v48[*(v50 + 20)] = v49[*(v50 + 20)];
LABEL_26:
  v60 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(a1 + *(v60 + 20)) = *(a2 + *(v60 + 20));
  return a1;
}

uint64_t type metadata completion function for SystemTextField()
{
  result = type metadata accessor for SystemTextFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout>, type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>);
    lazy protocol witness table accessor for type ModifiedContent<SystemTextField, _AlignmentLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<SystemTextField, _AlignmentLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SystemTextField, _AlignmentLayout>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _GraphInputs.SelectionBasedStorageKey<TextSelection>()
{
  if (!lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<TextSelection>)
  {
    type metadata accessor for TextSelection(255);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type TextSelection and conformance TextSelection, type metadata accessor for TextSelection);
    v0 = type metadata accessor for _GraphInputs.SelectionBasedStorageKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<TextSelection>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SystemTextField.MakeRepresentable and conformance SystemTextField.MakeRepresentable()
{
  result = lazy protocol witness table cache variable for type SystemTextField.MakeRepresentable and conformance SystemTextField.MakeRepresentable;
  if (!lazy protocol witness table cache variable for type SystemTextField.MakeRepresentable and conformance SystemTextField.MakeRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemTextField.MakeRepresentable and conformance SystemTextField.MakeRepresentable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemTextField.MakeRepresentable(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 36))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SystemTextField.MakeRepresentable(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 36) = v3;
  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for ResolvedSystemTextField(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    outlined copy of Environment<Selector?>.Content(*a2, v8);
    *a1 = v7;
    *(a1 + 8) = v8;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of Environment<Selector?>.Content(v9, v10);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    v66 = a3;
    v11 = *(a3 + 24);
    v68 = a1;
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(a2 + v11 + 8);
    *v12 = *(a2 + v11);
    *(v12 + 8) = v14;
    v15 = *(a2 + v11 + 24);
    *(v12 + 16) = *(a2 + v11 + 16);
    *(v12 + 24) = v15;
    *(v12 + 32) = *(a2 + v11 + 32);
    *(v12 + 33) = *(a2 + v11 + 33);
    v16 = *(a2 + v11 + 64);

    v67 = a2;
    if (v16)
    {
      v17 = *(v13 + 40);
      v18 = *(v13 + 48);
      v19 = *(v13 + 56);
      outlined copy of Text.Storage(v17, v18, v19);
      *(v12 + 40) = v17;
      *(v12 + 48) = v18;
      *(v12 + 56) = v19;
      *(v12 + 64) = v16;
    }

    else
    {
      *(v12 + 40) = *(v13 + 40);
      *(v12 + 56) = *(v13 + 56);
    }

    v22 = *(v13 + 72);
    v23 = *(v13 + 80);
    v24 = *(v13 + 88);
    v25 = *(v13 + 96);
    v26 = *(v13 + 104);
    v27 = *(v13 + 112);
    v29 = *(v13 + 120);
    v28 = *(v13 + 128);
    v57 = *(v13 + 136);
    v58 = *(v13 + 144);
    v59 = *(v13 + 152);
    v60 = *(v13 + 160);
    v61 = *(v13 + 168);
    __dsta = *(v13 + 176);
    v64 = *(v13 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v22, v23, v24, v25, v26, v27, v29, v28, v57, v58, v59, v60, v61, __dsta, v64);
    *(v12 + 72) = v22;
    *(v12 + 80) = v23;
    *(v12 + 88) = v24;
    *(v12 + 96) = v25;
    *(v12 + 104) = v26;
    *(v12 + 112) = v27;
    *(v12 + 120) = v29;
    *(v12 + 128) = v28;
    *(v12 + 136) = v57;
    *(v12 + 144) = v58;
    *(v12 + 152) = v59;
    *(v12 + 160) = v60;
    *(v12 + 168) = v61;
    *(v12 + 176) = __dsta;
    *(v12 + 180) = v64;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v31 = *(v30 + 56);
    v32 = (v12 + v31);
    v33 = (v13 + v31);
    type metadata accessor for Binding<TextSelection?>(0);
    v35 = v34;
    v36 = *(v34 - 8);
    if ((*(v36 + 48))(v33, 1, v34))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v32, v33, *(*(v37 - 8) + 64));
      v38 = v67;
    }

    else
    {
      v39 = v33[1];
      *v32 = *v33;
      v32[1] = v39;
      v40 = *(v35 + 32);
      __dst = v32 + v40;
      v65 = v32;
      v41 = v33 + v40;
      v42 = type metadata accessor for TextSelection(0);
      v43 = *(v42 - 8);
      v44 = *(v43 + 48);
      v45 = v41;
      v46 = v42;

      if (v44(v45, 1, v46))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v45, *(*(v47 - 8) + 64));
        v38 = v67;
      }

      else
      {
        v48 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v50 = v45;
          (*(*(v49 - 8) + 16))(__dst, v45, v49);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v50 = v45;
          memcpy(__dst, v45, *(*(v48 - 8) + 64));
        }

        v38 = v67;
        __dst[*(v46 + 20)] = v50[*(v46 + 20)];
        (*(v43 + 56))(__dst, 0, 1, v46);
      }

      (*(v36 + 56))(v65, 0, 1, v35);
    }

    v51 = type metadata accessor for SystemTextFieldConfiguration(0);
    *(v12 + *(v51 + 20)) = *(v13 + *(v51 + 20));
    v52 = *(v66 + 28);
    v21 = v68;
    v53 = (v68 + v52);
    v54 = (v38 + v52);
    v55 = v54[1];
    *v53 = *v54;
    v53[1] = v55;
  }

  return v21;
}

uint64_t destroy for ResolvedSystemTextField(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  v4 = a1 + *(a2 + 24);

  if (*(v4 + 64))
  {
    outlined consume of Text.Storage(*(v4 + 40), *(v4 + 48), *(v4 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = v4 + *(v5 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v8 = v7;
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!result)
  {

    v10 = *(v8 + 32);
    v11 = type metadata accessor for TextSelection(0);
    result = (*(*(v11 - 8) + 48))(v6 + v10, 1, v11);
    if (!result)
    {
      type metadata accessor for TextSelection.Indices(0);
      result = swift_getEnumCaseMultiPayload();
      if (result == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v13 = *(*(v12 - 8) + 8);

        return v13(v6 + v10, v12);
      }
    }
  }

  return result;
}

__n128 initializeWithCopy for ResolvedSystemTextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v59 = a3;
  v10 = *(a3 + 24);
  v60 = a2;
  v61 = a1;
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10 + 8);
  *v11 = *(a2 + v10);
  *(v11 + 8) = v13;
  v14 = *(a2 + v10 + 24);
  *(v11 + 16) = *(a2 + v10 + 16);
  *(v11 + 24) = v14;
  *(v11 + 32) = *(a2 + v10 + 32);
  *(v11 + 33) = *(a2 + v10 + 33);
  v15 = *(a2 + v10 + 64);

  if (v15)
  {
    v16 = *(v12 + 40);
    v17 = *(v12 + 48);
    v18 = *(v12 + 56);
    outlined copy of Text.Storage(v16, v17, v18);
    *(v11 + 40) = v16;
    *(v11 + 48) = v17;
    *(v11 + 56) = v18;
    *(v11 + 64) = v15;
  }

  else
  {
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 56) = *(v12 + 56);
  }

  v19 = *(v12 + 72);
  v20 = *(v12 + 80);
  v21 = *(v12 + 88);
  v22 = *(v12 + 96);
  v23 = *(v12 + 104);
  v24 = *(v12 + 112);
  v26 = *(v12 + 120);
  v25 = *(v12 + 128);
  v50 = *(v12 + 136);
  v51 = *(v12 + 144);
  v52 = *(v12 + 152);
  v53 = *(v12 + 160);
  __dsta = *(v12 + 168);
  v56 = *(v12 + 176);
  v58 = *(v12 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v19, v20, v21, v22, v23, v24, v26, v25, v50, v51, v52, v53, __dsta, v56, v58);
  *(v11 + 72) = v19;
  *(v11 + 80) = v20;
  *(v11 + 88) = v21;
  *(v11 + 96) = v22;
  *(v11 + 104) = v23;
  *(v11 + 112) = v24;
  *(v11 + 120) = v26;
  *(v11 + 128) = v25;
  *(v11 + 136) = v50;
  *(v11 + 144) = v51;
  *(v11 + 152) = v52;
  *(v11 + 160) = v53;
  *(v11 + 168) = __dsta;
  *(v11 + 176) = v56;
  *(v11 + 180) = v58;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v29 = (v11 + v28);
  v30 = (v12 + v28);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  if ((*(v33 + 48))(v30, 1, v31))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v29, v30, *(*(v34 - 8) + 64));
  }

  else
  {
    v57 = v33;
    v35 = v30[1];
    *v29 = *v30;
    v29[1] = v35;
    v36 = *(v32 + 32);
    __dst = v29 + v36;
    v37 = v30 + v36;
    v38 = type metadata accessor for TextSelection(0);
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);

    if (v40(v37, 1, v38))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v37, *(*(v41 - 8) + 64));
    }

    else
    {
      v42 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        v44 = __dst;
        (*(*(v43 - 8) + 16))(__dst, v37, v43);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v44 = __dst;
        memcpy(__dst, v37, *(*(v42 - 8) + 64));
      }

      v44[*(v38 + 20)] = v37[*(v38 + 20)];
      (*(v39 + 56))(v44, 0, 1, v38);
    }

    (*(v57 + 56))(v29, 0, 1, v32);
  }

  v45 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v11 + *(v45 + 20)) = *(v12 + *(v45 + 20));
  v46 = *(v59 + 28);
  v47 = v61 + v46;
  v48 = v60 + v46;
  result = *(v48 + 16);
  *v47 = *v48;
  *(v47 + 16) = result;
  return result;
}

uint64_t assignWithCopy for ResolvedSystemTextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v10, v11);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  v104 = a3;
  v14 = *(a3 + 24);
  v15 = a1 + v14;
  v16 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);

  *(v15 + 8) = *(v16 + 8);

  *(v15 + 16) = *(v16 + 16);
  *(v15 + 24) = *(v16 + 24);

  *(v15 + 32) = *(v16 + 32);
  *(v15 + 33) = *(v16 + 33);
  v17 = *(v16 + 64);
  v106 = a1;
  v105 = a2;
  if (*(v15 + 64))
  {
    if (v17)
    {
      v18 = *(v16 + 40);
      v19 = *(v16 + 48);
      v20 = *(v16 + 56);
      outlined copy of Text.Storage(v18, v19, v20);
      v21 = *(v15 + 40);
      v22 = *(v15 + 48);
      v23 = *(v15 + 56);
      *(v15 + 40) = v18;
      *(v15 + 48) = v19;
      *(v15 + 56) = v20;
      outlined consume of Text.Storage(v21, v22, v23);
      *(v15 + 64) = *(v16 + 64);
    }

    else
    {
      outlined destroy of Text(v15 + 40);
      v27 = *(v16 + 56);
      *(v15 + 40) = *(v16 + 40);
      *(v15 + 56) = v27;
    }
  }

  else if (v17)
  {
    v24 = *(v16 + 40);
    v25 = *(v16 + 48);
    v26 = *(v16 + 56);
    outlined copy of Text.Storage(v24, v25, v26);
    *(v15 + 40) = v24;
    *(v15 + 48) = v25;
    *(v15 + 56) = v26;
    *(v15 + 64) = *(v16 + 64);
  }

  else
  {
    v28 = *(v16 + 40);
    *(v15 + 56) = *(v16 + 56);
    *(v15 + 40) = v28;
  }

  v29 = *(v16 + 72);
  v30 = *(v16 + 80);
  v31 = *(v16 + 88);
  v32 = *(v16 + 96);
  v33 = *(v16 + 104);
  v107 = v16;
  v34 = *(v16 + 112);
  v35 = *(v107 + 120);
  v36 = *(v107 + 128);
  v37 = *(v107 + 136);
  v96 = *(v107 + 144);
  v97 = *(v107 + 152);
  v98 = *(v107 + 160);
  v99 = *(v107 + 168);
  v100 = *(v107 + 176);
  __dsta = *(v107 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v29, v30, v31, v32, v33, v34, v35, v36, v37, v96, v97, v98, v99, v100, __dsta);
  v38 = *(v15 + 72);
  v39 = *(v15 + 80);
  v40 = *(v15 + 88);
  v41 = *(v15 + 96);
  v42 = *(v15 + 104);
  v43 = *(v15 + 112);
  v44 = *(v15 + 120);
  v45 = *(v15 + 128);
  v46 = *(v15 + 136);
  v47 = *(v15 + 152);
  v48 = *(v15 + 168);
  v49 = *(v15 + 176);
  v50 = *(v15 + 180);
  *(v15 + 72) = v29;
  *(v15 + 80) = v30;
  *(v15 + 88) = v31;
  *(v15 + 96) = v32;
  *(v15 + 104) = v33;
  *(v15 + 112) = v34;
  v51 = v107;
  *(v15 + 120) = v35;
  *(v15 + 128) = v36;
  *(v15 + 136) = v37;
  *(v15 + 144) = v96;
  *(v15 + 152) = v97;
  *(v15 + 160) = v98;
  *(v15 + 168) = v99;
  *(v15 + 176) = v100;
  *(v15 + 180) = __dsta;
  outlined consume of StateOrBinding<TextFieldState>(v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v53 = *(v52 + 56);
  v54 = (v15 + v53);
  v55 = (v107 + v53);
  type metadata accessor for Binding<TextSelection?>(0);
  v57 = v56;
  v58 = *(v56 - 8);
  v59 = *(v58 + 48);
  LODWORD(v36) = v59(v54, 1, v56);
  v60 = v59(v55, 1, v57);
  if (v36)
  {
    if (!v60)
    {
      *v54 = *v55;
      *(v54 + 1) = *(v55 + 1);
      v61 = *(v57 + 32);
      __dst = &v54[v61];
      v62 = &v55[v61];
      v63 = type metadata accessor for TextSelection(0);
      v64 = *(v63 - 8);
      v65 = *(v64 + 48);
      v66 = v62;
      v67 = v63;

      if (v65(v66, 1, v67))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v66, *(*(v68 - 8) + 64));
        v69 = v106;
        v70 = v105;
      }

      else
      {
        v101 = v64;
        v85 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          v87 = v66;
          (*(*(v86 - 8) + 16))(__dst, v66, v86);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v87 = v66;
          memcpy(__dst, v66, *(*(v85 - 8) + 64));
        }

        v69 = v106;
        v70 = v105;
        __dst[*(v67 + 20)] = v87[*(v67 + 20)];
        (*(v101 + 56))(__dst, 0, 1, v67);
      }

      v51 = v107;
      (*(v58 + 56))(v54, 0, 1, v57);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

  if (v60)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v54, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    type metadata accessor for Binding<TextSelection?>?(0);
    v72 = *(*(v71 - 8) + 64);
    v73 = v54;
    v74 = v55;
LABEL_15:
    memcpy(v73, v74, v72);
    v69 = v106;
    v70 = v105;
    goto LABEL_28;
  }

  *v54 = *v55;

  *(v54 + 1) = *(v55 + 1);

  v75 = *(v57 + 32);
  v76 = &v54[v75];
  v77 = &v55[v75];
  v78 = type metadata accessor for TextSelection(0);
  v79 = *(v78 - 8);
  v80 = *(v79 + 48);
  v81 = v80(v76, 1, v78);
  v82 = v80(v77, 1, v78);
  if (v81)
  {
    if (!v82)
    {
      v83 = type metadata accessor for TextSelection.Indices(0);
      v69 = v106;
      v70 = v105;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v84 - 8) + 16))(v76, v77, v84);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v76, v77, *(*(v83 - 8) + 64));
      }

      v76[*(v78 + 20)] = v77[*(v78 + 20)];
      (*(v79 + 56))(v76, 0, 1, v78);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v82)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v76, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v72 = *(*(v88 - 8) + 64);
    v73 = v76;
    v74 = v77;
    goto LABEL_15;
  }

  v69 = v106;
  v70 = v105;
  if (v106 != v105)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v76, type metadata accessor for TextSelection.Indices);
    v94 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v95 - 8) + 16))(v76, v77, v95);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v76, v77, *(*(v94 - 8) + 64));
    }
  }

  v76[*(v78 + 20)] = v77[*(v78 + 20)];
LABEL_28:
  v89 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v15 + *(v89 + 20)) = *(v51 + *(v89 + 20));
  v90 = *(v104 + 28);
  v91 = (v69 + v90);
  v92 = (v70 + v90);
  *v91 = *v92;
  v91[1] = v92[1];
  v91[2] = v92[2];
  v91[3] = v92[3];
  v91[4] = v92[4];
  v91[5] = v92[5];
  v91[6] = v92[6];
  v91[7] = v92[7];
  return v69;
}

uint64_t initializeWithTake for ResolvedSystemTextField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a3 + 24);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 16);
  *v7 = *(a2 + v6);
  *(v7 + 16) = v9;
  *(v7 + 32) = *(a2 + v6 + 32);
  *(v7 + 33) = *(a2 + v6 + 33);
  *(v7 + 40) = *(a2 + v6 + 40);
  *(v7 + 56) = *(a2 + v6 + 56);
  v10 = *(a2 + v6 + 72);
  v11 = *(a2 + v6 + 88);
  *(v7 + 104) = *(a2 + v6 + 104);
  *(v7 + 88) = v11;
  *(v7 + 72) = v10;
  v12 = *(a2 + v6 + 120);
  v13 = *(a2 + v6 + 136);
  v14 = *(a2 + v6 + 152);
  *(v7 + 165) = *(a2 + v6 + 165);
  *(v7 + 152) = v14;
  *(v7 + 136) = v13;
  *(v7 + 120) = v12;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v16 = *(v15 + 56);
  v17 = (v7 + v16);
  v18 = (v8 + v16);
  type metadata accessor for Binding<TextSelection?>(0);
  v20 = v19;
  v21 = *(v19 - 8);
  if ((*(v21 + 48))(v18, 1, v19))
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    memcpy(v17, v18, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = v18[1];
    *v17 = *v18;
    v17[1] = v23;
    v24 = *(v20 + 32);
    __dst = v17 + v24;
    v39 = v3;
    v25 = v18 + v24;
    v26 = type metadata accessor for TextSelection(0);
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v25, 1, v26))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v25, *(*(v28 - 8) + 64));
    }

    else
    {
      v37 = v27;
      v29 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v30 - 8) + 32))(__dst, v25, v30);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v25, *(*(v29 - 8) + 64));
      }

      __dst[*(v26 + 20)] = v25[*(v26 + 20)];
      (*(v37 + 56))(__dst, 0, 1, v26);
    }

    (*(v21 + 56))(v17, 0, 1, v20);
    v3 = v39;
  }

  v31 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v7 + *(v31 + 20)) = *(v8 + *(v31 + 20));
  v32 = *(v3 + 28);
  v33 = (a1 + v32);
  v34 = (a2 + v32);
  v35 = v34[1];
  *v33 = *v34;
  v33[1] = v35;
  return a1;
}

uint64_t assignWithTake for ResolvedSystemTextField(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = *(a2 + 24);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  v79 = a3;
  v80 = a2;
  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  *(a1 + v13) = *(a2 + v13);

  *(v14 + 8) = *(v15 + 8);

  v16 = *(v15 + 24);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = v16;

  *(v14 + 32) = *(v15 + 32);
  *(v14 + 33) = *(v15 + 33);
  if (*(v14 + 64))
  {
    if (*(v15 + 64))
    {
      v17 = *(v15 + 56);
      v18 = *(v14 + 40);
      v19 = *(v14 + 48);
      v20 = *(v14 + 56);
      *(v14 + 40) = *(v15 + 40);
      *(v14 + 56) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(v14 + 64) = *(v15 + 64);

      goto LABEL_6;
    }

    outlined destroy of Text(v14 + 40);
  }

  *(v14 + 40) = *(v15 + 40);
  *(v14 + 56) = *(v15 + 56);
LABEL_6:
  v21 = *(v15 + 168);
  v22 = *(v15 + 176);
  v23 = *(v15 + 180);
  v24 = *(v14 + 72);
  v25 = *(v14 + 80);
  v26 = *(v14 + 88);
  v27 = *(v14 + 96);
  v28 = *(v14 + 104);
  v29 = *(v14 + 112);
  v30 = *(v14 + 120);
  v31 = *(v14 + 128);
  v32 = *(v14 + 136);
  v33 = *(v14 + 152);
  v34 = *(v14 + 168);
  v35 = *(v14 + 176);
  v36 = *(v14 + 180);
  *(v14 + 72) = *(v15 + 72);
  *(v14 + 88) = *(v15 + 88);
  *(v14 + 104) = *(v15 + 104);
  *(v14 + 120) = *(v15 + 120);
  *(v14 + 136) = *(v15 + 136);
  *(v14 + 152) = *(v15 + 152);
  *(v14 + 168) = v21;
  *(v14 + 176) = v22;
  *(v14 + 180) = v23;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = (v14 + v38);
  v40 = (v15 + v38);
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  v45 = v44(v39, 1, v41);
  v46 = v44(v40, 1, v42);
  if (v45)
  {
    if (!v46)
    {
      v47 = *(v40 + 1);
      *v39 = *v40;
      *(v39 + 1) = v47;
      v48 = *(v42 + 32);
      v49 = &v39[v48];
      v50 = &v40[v48];
      v51 = type metadata accessor for TextSelection(0);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v50, 1, v51))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v49, v50, *(*(v53 - 8) + 64));
      }

      else
      {
        v78 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v68 - 8) + 32))(v49, v50, v68);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v49, v50, *(*(v78 - 8) + 64));
        }

        v49[*(v51 + 20)] = v50[*(v51 + 20)];
        (*(v52 + 56))(v49, 0, 1, v51);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v46)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    type metadata accessor for Binding<TextSelection?>?(0);
    v55 = *(*(v54 - 8) + 64);
    v56 = v39;
    v57 = v40;
LABEL_13:
    memcpy(v56, v57, v55);
    goto LABEL_26;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v58 = *(v42 + 32);
  v59 = &v39[v58];
  v60 = &v40[v58];
  v61 = type metadata accessor for TextSelection(0);
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);
  v64 = v63(v59, 1, v61);
  v65 = v63(v60, 1, v61);
  if (v64)
  {
    if (!v65)
    {
      v66 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v67 - 8) + 32))(v59, v60, v67);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v59, v60, *(*(v66 - 8) + 64));
      }

      v59[*(v61 + 20)] = v60[*(v61 + 20)];
      (*(v62 + 56))(v59, 0, 1, v61);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v65)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v59, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v55 = *(*(v69 - 8) + 64);
    v56 = v59;
    v57 = v60;
    goto LABEL_13;
  }

  if (a1 != v80)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(v59, type metadata accessor for TextSelection.Indices);
    v76 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v77 - 8) + 32))(v59, v60, v77);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v59, v60, *(*(v76 - 8) + 64));
    }
  }

  v59[*(v61 + 20)] = v60[*(v61 + 20)];
LABEL_26:
  v70 = type metadata accessor for SystemTextFieldConfiguration(0);
  *(v14 + *(v70 + 20)) = *(v15 + *(v70 + 20));
  v71 = *(v79 + 28);
  v72 = (a1 + v71);
  v73 = (v80 + v71);
  v74 = v73[1];
  *v72 = *v73;
  v72[1] = v74;
  return a1;
}

uint64_t type metadata completion function for ResolvedSystemTextField()
{
  result = type metadata accessor for SystemTextFieldConfiguration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for ModifiedContent<SystemTextField, _AlignmentLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>)
  {
    type metadata accessor for StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?(255);
    lazy protocol witness table accessor for type StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>? and conformance <A> A?(&lazy protocol witness table cache variable for type StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>? and conformance <A> A?, type metadata accessor for StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?, lazy protocol witness table accessor for type StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView> and conformance StrokeShapeView<A, B, C>);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>);
    }
  }
}

void type metadata accessor for StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>()
{
  if (!lazy cache variable for type metadata for StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v0 = type metadata accessor for StrokeShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>);
    }
  }
}

void type metadata accessor for _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>)
  {
    type metadata accessor for _ShapeView<RoundedRectangle, Color>?(255);
    lazy protocol witness table accessor for type StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>? and conformance <A> A?(&lazy protocol witness table cache variable for type _ShapeView<RoundedRectangle, Color>? and conformance <A> A?, type metadata accessor for _ShapeView<RoundedRectangle, Color>?, lazy protocol witness table accessor for type _ShapeView<RoundedRectangle, Color> and conformance _ShapeView<A, B>);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>);
    }
  }
}

void type metadata accessor for _ShapeView<RoundedRectangle, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<RoundedRectangle, Color>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<RoundedRectangle, Color>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>? and conformance <A> A?(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>();
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>, _ForegroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, type metadata accessor for PlatformTextFieldAdaptor, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>> and conformance <> ModifiedContent<A, B>();
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>(255);
    lazy protocol witness table accessor for type ModifiedContent<SystemTextField, _AlignmentLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TextViewAdaptor, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TextViewAdaptor, _PaddingLayout>);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<SystemTextField, _AlignmentLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<Text, _TextFieldStyleLabel>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<TextViewAdaptor, _PaddingLayout>, _BackgroundModifier<StrokeShapeView<RoundedRectangle, PlainDividerShapeStyle, EmptyView>?>>, _BackgroundModifier<_ShapeView<RoundedRectangle, Color>?>>, PlatformTextFieldAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t keypath_get_95Tm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformTextFieldAdaptor(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) == 0)
  {
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 33) = *(a2 + 33);
    v8 = a2[8];

    if (v8)
    {
      v9 = a2[5];
      v10 = a2[6];
      v11 = *(a2 + 56);
      outlined copy of Text.Storage(v9, v10, v11);
      *(a1 + 40) = v9;
      *(a1 + 48) = v10;
      *(a1 + 56) = v11;
      *(a1 + 64) = a2[8];
    }

    else
    {
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 56) = *(a2 + 7);
    }

    v13 = a2[9];
    v14 = a2[10];
    v15 = a2[11];
    v16 = a2[12];
    v17 = a2[13];
    v18 = a2[14];
    v20 = a2[15];
    v19 = a2[16];
    v93 = a2[17];
    v94 = a2[18];
    v95 = a2[19];
    v96 = a2[20];
    __dsta = a2[21];
    v99 = *(a2 + 44);
    v100 = *(a2 + 180);
    outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v93, v94, v95, v96, __dsta, v99, v100);
    *(a1 + 72) = v13;
    *(a1 + 80) = v14;
    *(a1 + 88) = v15;
    *(a1 + 96) = v16;
    *(a1 + 104) = v17;
    *(a1 + 112) = v18;
    *(a1 + 120) = v20;
    *(a1 + 128) = v19;
    *(a1 + 136) = v93;
    *(a1 + 144) = v94;
    *(a1 + 152) = v95;
    *(a1 + 160) = v96;
    *(a1 + 168) = __dsta;
    *(a1 + 176) = v99;
    *(a1 + 180) = v100;
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
    v22 = *(v21 + 56);
    v23 = (a1 + v22);
    v101 = a2;
    v24 = (a2 + v22);
    type metadata accessor for Binding<TextSelection?>(0);
    v26 = v25;
    v27 = *(v25 - 8);
    v12 = a1;
    if ((*(v27 + 48))(v24, 1, v25))
    {
      type metadata accessor for Binding<TextSelection?>?(0);
      memcpy(v23, v24, *(*(v28 - 8) + 64));
    }

    else
    {
      v29 = v24[1];
      *v23 = *v24;
      v23[1] = v29;
      v30 = *(v26 + 32);
      __dst = v23 + v30;
      v31 = v24 + v30;
      v32 = type metadata accessor for TextSelection(0);
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);

      if (v34(v31, 1, v32))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v31, *(*(v35 - 8) + 64));
      }

      else
      {
        v36 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v37 - 8) + 16))(__dst, v31, v37);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v31, *(*(v36 - 8) + 64));
        }

        __dst[*(v32 + 20)] = v31[*(v32 + 20)];
        (*(v33 + 56))(__dst, 0, 1, v32);
      }

      v12 = a1;
      (*(v27 + 56))(v23, 0, 1, v26);
    }

    v38 = type metadata accessor for SystemTextFieldConfiguration(0);
    *(v12 + *(v38 + 20)) = *(v101 + *(v38 + 20));
    v39 = a3[5];
    v40 = v12 + v39;
    v41 = v101 + v39;
    v42 = *(v101 + v39 + 8);
    *v40 = *(v101 + v39);
    *(v40 + 8) = v42;
    *(v40 + 16) = *(v101 + v39 + 16);
    *(v40 + 24) = *(v101 + v39 + 24);
    *(v40 + 28) = *(v101 + v39 + 28);
    v43 = (v101 + v39 + 32);
    v44 = *v43;

    if (v44 == 1)
    {
      v45 = *(v41 + 240);
      *(v40 + 224) = *(v41 + 224);
      *(v40 + 240) = v45;
      *(v40 + 256) = *(v41 + 256);
      v46 = *(v41 + 176);
      *(v40 + 160) = *(v41 + 160);
      *(v40 + 176) = v46;
      v47 = *(v41 + 208);
      *(v40 + 192) = *(v41 + 192);
      *(v40 + 208) = v47;
      v48 = *(v41 + 112);
      *(v40 + 96) = *(v41 + 96);
      *(v40 + 112) = v48;
      v49 = *(v41 + 144);
      *(v40 + 128) = *(v41 + 128);
      *(v40 + 144) = v49;
      v50 = *(v41 + 48);
      *(v40 + 32) = *v43;
      *(v40 + 48) = v50;
      v51 = *(v41 + 80);
      *(v40 + 64) = *(v41 + 64);
      *(v40 + 80) = v51;
    }

    else
    {
      v52 = *(v41 + 40);
      v53 = *(v41 + 48);
      *(v40 + 32) = v44;
      *(v40 + 40) = v52;
      *(v40 + 48) = v53;
      v54 = *(v41 + 184);
      v55 = v44;
      v56 = v52;
      v57 = v53;
      if (v54 >> 1 == 4294967294)
      {
        *(v40 + 184) = *(v41 + 184);
        *(v40 + 200) = *(v41 + 200);
        *(v40 + 216) = *(v41 + 216);
        *(v40 + 227) = *(v41 + 227);
        *(v40 + 120) = *(v41 + 120);
        *(v40 + 136) = *(v41 + 136);
        *(v40 + 152) = *(v41 + 152);
        *(v40 + 168) = *(v41 + 168);
        *(v40 + 56) = *(v41 + 56);
        *(v40 + 72) = *(v41 + 72);
        *(v40 + 88) = *(v41 + 88);
        *(v40 + 104) = *(v41 + 104);
      }

      else
      {
        v58 = *(v41 + 64);
        if (v58 == 255)
        {
          *(v40 + 56) = *(v41 + 56);
          *(v40 + 64) = *(v41 + 64);
        }

        else
        {
          v59 = *(v41 + 56);
          outlined copy of GraphicsImage.Contents(v59, *(v41 + 64));
          *(v40 + 56) = v59;
          *(v40 + 64) = v58;
          v54 = *(v41 + 184);
        }

        *(v40 + 72) = *(v41 + 72);
        *(v40 + 80) = *(v41 + 80);
        *(v40 + 96) = *(v41 + 96);
        *(v40 + 100) = *(v41 + 100);
        *(v40 + 113) = *(v41 + 113);
        v60 = *(v41 + 144);
        *(v40 + 128) = *(v41 + 128);
        *(v40 + 144) = v60;
        *(v40 + 160) = *(v41 + 160);
        *(v40 + 162) = *(v41 + 162);
        *(v40 + 163) = *(v41 + 163);
        if (v54 >> 1 == 0xFFFFFFFF)
        {
          *(v40 + 168) = *(v41 + 168);
          *(v40 + 184) = *(v41 + 184);
        }

        else
        {
          v61 = *(v41 + 168);
          v62 = *(v41 + 176);
          v63 = *(v41 + 192);
          outlined copy of AccessibilityImageLabel(v61, v62, v54);
          *(v40 + 168) = v61;
          *(v40 + 176) = v62;
          *(v40 + 184) = v54;
          *(v40 + 192) = v63;
        }

        v64 = *(v41 + 208);
        *(v40 + 200) = *(v41 + 200);
        *(v40 + 208) = v64;
        *(v40 + 216) = *(v41 + 216);
        *(v40 + 220) = *(v41 + 220);
        *(v40 + 224) = *(v41 + 224);
        v65 = *(v41 + 232);
        *(v40 + 232) = v65;
        *(v40 + 240) = *(v41 + 240);
        *(v40 + 242) = *(v41 + 242);
        swift_unknownObjectRetain();

        v66 = v65;
      }

      *(v40 + 248) = *(v41 + 248);
      *(v40 + 256) = *(v41 + 256);
      *(v40 + 264) = *(v41 + 264);
    }

    *(v40 + 272) = *(v41 + 272);
    v67 = *(v41 + 304);

    if (v67 == 1)
    {
      v68 = *(v41 + 296);
      *(v40 + 280) = *(v41 + 280);
      *(v40 + 296) = v68;
    }

    else
    {
      *(v40 + 280) = *(v41 + 280);
      *(v40 + 288) = *(v41 + 288);
      *(v40 + 304) = v67;
      swift_unknownObjectRetain();
    }

    *(v40 + 312) = *(v41 + 312);
    *(v40 + 320) = *(v41 + 320);
    if (!*(v41 + 608))
    {
      memcpy((v40 + 328), (v41 + 328), 0x129uLL);
LABEL_42:
      v84 = a3[6];
      v85 = a3[7];
      v86 = v12 + v84;
      v87 = v101 + v84;
      v88 = *(v87 + 16);
      *v86 = *v87;
      *(v86 + 16) = v88;
      *(v86 + 32) = *(v87 + 32);
      v89 = v12 + v85;
      v90 = *(v101 + v85);
      v91 = *(v101 + v85 + 8);
      outlined copy of Environment<Selector?>.Content(v90, v91);
      *v89 = v90;
      *(v89 + 8) = v91;
      return v12;
    }

    v69 = *(v41 + 336);
    *(v40 + 328) = *(v41 + 328);
    *(v40 + 336) = v69;
    *(v40 + 344) = *(v41 + 344);
    *(v40 + 352) = *(v41 + 352);
    *(v40 + 360) = *(v41 + 360);
    *(v40 + 368) = *(v41 + 368);
    *(v40 + 384) = *(v41 + 384);
    v70 = (v40 + 392);
    v71 = (v41 + 392);
    v72 = *(v41 + 416);

    if (v72)
    {
      if (v72 == 1)
      {
        v73 = *(v41 + 408);
        *v70 = *v71;
        *(v40 + 408) = v73;
        *(v40 + 424) = *(v41 + 424);
LABEL_38:
        *(v40 + 440) = *(v41 + 440);
        *(v40 + 448) = *(v41 + 448);
        v76 = (v40 + 456);
        v77 = (v41 + 456);
        v78 = *(v41 + 568);
        if (v78 == 1)
        {
          v79 = *(v41 + 568);
          *(v40 + 552) = *(v41 + 552);
          *(v40 + 568) = v79;
          *(v40 + 584) = *(v41 + 584);
          *(v40 + 600) = *(v41 + 600);
          v80 = *(v41 + 504);
          *(v40 + 488) = *(v41 + 488);
          *(v40 + 504) = v80;
          v81 = *(v41 + 536);
          *(v40 + 520) = *(v41 + 520);
          *(v40 + 536) = v81;
          v82 = *(v41 + 472);
          *v76 = *v77;
          *(v40 + 472) = v82;
        }

        else
        {
          *v76 = *v77;
          *(v40 + 464) = *(v41 + 464);
          *(v40 + 472) = *(v41 + 472);
          *(v40 + 480) = *(v41 + 480);
          *(v40 + 481) = *(v41 + 481);
          *(v40 + 483) = *(v41 + 483);
          *(v40 + 484) = *(v41 + 484);
          *(v40 + 488) = *(v41 + 488);
          v83 = *(v41 + 512);
          *(v40 + 496) = *(v41 + 496);
          *(v40 + 512) = v83;
          *(v40 + 528) = *(v41 + 528);
          *(v40 + 536) = *(v41 + 536);
          *(v40 + 544) = *(v41 + 544);
          *(v40 + 560) = *(v41 + 560);
          *(v40 + 568) = v78;
          *(v40 + 576) = *(v41 + 576);
          *(v40 + 592) = *(v41 + 592);
          *(v40 + 600) = *(v41 + 600);
        }

        *(v40 + 608) = *(v41 + 608);
        *(v40 + 616) = *(v41 + 616);
        *(v40 + 624) = *(v41 + 624);

        goto LABEL_42;
      }

      v75 = *(v41 + 424);
      *(v40 + 416) = v72;
      *(v40 + 424) = v75;
      (**(v72 - 8))(v40 + 392, v41 + 392, v72);
    }

    else
    {
      v74 = *(v41 + 408);
      *v70 = *v71;
      *(v40 + 408) = v74;
      *(v40 + 424) = *(v41 + 424);
    }

    *(v40 + 432) = *(v41 + 432);

    goto LABEL_38;
  }

  v12 = v5 + ((v4 + 16) & ~v4);

  return v12;
}