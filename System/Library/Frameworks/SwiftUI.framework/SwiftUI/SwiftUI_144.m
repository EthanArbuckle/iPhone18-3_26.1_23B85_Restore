uint64_t assignWithTake for SwipeActions.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 40))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      *(a1 + 32) = *(a2 + 32);

      *(a1 + 40) = v4;

      *(a1 + 48) = *(a2 + 48);
      if (!*(a1 + 64))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    _s7SwiftUI7BindingVySbGWOhTm_1(a1 + 32, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  if (!*(a1 + 64))
  {
LABEL_13:
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    return a1;
  }

LABEL_7:
  v5 = *(a2 + 64);
  if (!v5)
  {
    outlined destroy of Binding<SwipeActionResultToken?>(a1 + 56, type metadata accessor for Binding<SwipeActionResultToken?>);
    goto LABEL_13;
  }

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = v5;

  v6 = *(a1 + 80);
  v7 = (a1 + 72);
  v8 = *(a2 + 80);
  v9 = (a2 + 72);
  if (v6 != 1)
  {
    if (v8 == 1)
    {
      outlined destroy of SwipeActionResultToken(a1 + 72);
      goto LABEL_11;
    }

    *v7 = *v9;
    if (v6)
    {
      if (v8)
      {
        v12 = *(a2 + 88);
        *(a1 + 80) = v8;
        *(a1 + 88) = v12;

        goto LABEL_22;
      }
    }

    else if (v8)
    {
      v13 = *(a2 + 88);
      *(a1 + 80) = v8;
      *(a1 + 88) = v13;
      goto LABEL_22;
    }

    *(a1 + 80) = *(a2 + 80);
LABEL_22:
    v14 = *(a2 + 96);
    if (*(a1 + 96))
    {
      if (v14)
      {
        v15 = *(a2 + 104);
        *(a1 + 96) = v14;
        *(a1 + 104) = v15;

        return a1;
      }
    }

    else if (v14)
    {
      v16 = *(a2 + 104);
      *(a1 + 96) = v14;
      *(a1 + 104) = v16;
      return a1;
    }

    *(a1 + 96) = *(a2 + 96);
    return a1;
  }

LABEL_11:
  v10 = *(a2 + 88);
  *v7 = *v9;
  *(a1 + 88) = v10;
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void _ConditionalContent<>.init(storage:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  static PageBuilder.buildEither<A, B>(first:)();
}

unint64_t lazy protocol witness table accessor for type _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent> and conformance _CompositorContentBodyAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent> and conformance _CompositorContentBodyAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent> and conformance _CompositorContentBodyAdaptor<A>)
  {
    type metadata accessor for _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent> and conformance _CompositorContentBodyAdaptor<A>);
  }

  return result;
}

void type metadata accessor for _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent>()
{
  if (!lazy cache variable for type metadata for _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent>)
  {
    lazy protocol witness table accessor for type _LimitedAvailabilityCompositorContent and conformance _LimitedAvailabilityCompositorContent();
    v0 = type metadata accessor for _CompositorContentBodyAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _CompositorContentBodyAdaptor<_LimitedAvailabilityCompositorContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LimitedAvailabilityCompositorContent and conformance _LimitedAvailabilityCompositorContent()
{
  result = lazy protocol witness table cache variable for type _LimitedAvailabilityCompositorContent and conformance _LimitedAvailabilityCompositorContent;
  if (!lazy protocol witness table cache variable for type _LimitedAvailabilityCompositorContent and conformance _LimitedAvailabilityCompositorContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LimitedAvailabilityCompositorContent and conformance _LimitedAvailabilityCompositorContent);
  }

  return result;
}

uint64_t associated type witness table accessor for CompositorContent._ViewRepresentation : View in <> _ConditionalContent<A, B>()
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _CompositorContentBodyAdaptor<Never> and conformance _CompositorContentBodyAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<Never> and conformance _CompositorContentBodyAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<Never> and conformance _CompositorContentBodyAdaptor<A>)
  {
    type metadata accessor for _CompositorContentBodyAdaptor<Never>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CompositorContentBodyAdaptor<Never> and conformance _CompositorContentBodyAdaptor<A>);
  }

  return result;
}

void type metadata accessor for _CompositorContentBodyAdaptor<Never>()
{
  if (!lazy cache variable for type metadata for _CompositorContentBodyAdaptor<Never>)
  {
    lazy protocol witness table accessor for type Never and conformance Never();
    v0 = type metadata accessor for _CompositorContentBodyAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _CompositorContentBodyAdaptor<Never>);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _CompositorContentBodyAdaptor<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

double specialized static ScrollViewSupport.addRubberBandingToResidue(_:range:)(double result, double a2, double a3)
{
  v3 = fabs(a3);
  if (fabs(result) >= 2.22044605e-16 && v3 >= 2.22044605e-16)
  {
    if (result >= 0.0)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = -1.0;
    }

    return v5 * ((-1.0 / (v5 * (result / a3) * 0.55 + 1.0) + 1.0) * a3);
  }

  return result;
}

double specialized static ScrollViewSupport.removeRubberBandingFromResidue(_:range:)(double result, double a2, double a3)
{
  v3 = fabs(a3);
  if (fabs(result) >= 2.22044605e-16 && v3 >= 2.22044605e-16 && result != a3)
  {
    v6 = 1.0;
    if (result < 0.0)
    {
      v6 = -1.0;
    }

    return v6 * ((-1.0 / (v6 * (result / a3) + -1.0) + -1.0) / 0.55 * a3);
  }

  return result;
}

uint64_t sub_18C94102C()
{
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t PickerOption.init<A>(value:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  (*(v8 + 16))(a4, a1, a3);
  (*(v8 + 56))(a4, 0, 1, a3);
  type metadata accessor for Optional();
  swift_getWitnessTable();
  type metadata accessor for PickerOption();
  a2();
  return (*(v8 + 8))(a1, a3);
}

uint64_t PickerOption.init<A>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v26 = a5;
  v10 = *(a4 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](a6);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v11);
  (*(v10 + 16))(v13, a1, a4);
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v15 + 8))(a2, a3);
  (*(v10 + 8))(a1, a4);
  v27 = a3;
  v28 = MEMORY[0x1E6981148];
  v29 = v26;
  v30 = MEMORY[0x1E6981138];
  result = type metadata accessor for PickerOption();
  v24 = v25 + *(result + 52);
  *v24 = v16;
  *(v24 + 8) = v18;
  *(v24 + 16) = v20 & 1;
  *(v24 + 24) = v22;
  return result;
}

uint64_t PickerOption.init<A, B>(_:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v11 = *(a4 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  (*(v16 + 16))(a6, v12);
  (*(v16 + 56))(a6, 0, 1, a3);
  (*(v11 + 16))(v14, a1, a4);
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  v28 = v22;
  (*(v16 + 8))(a2, a3);
  (*(v11 + 8))(a1, a4);
  v23 = type metadata accessor for Optional();
  v34 = v29;
  WitnessTable = swift_getWitnessTable();
  v30 = v23;
  v31 = MEMORY[0x1E6981148];
  v32 = WitnessTable;
  v33 = MEMORY[0x1E6981138];
  result = type metadata accessor for PickerOption();
  v26 = a6 + *(result + 52);
  *v26 = v17;
  *(v26 + 8) = v19;
  *(v26 + 16) = v21 & 1;
  *(v26 + 24) = v28;
  return result;
}

uint64_t PickerOption.init<>(_:value:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, a1, a2);
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v6 + 8))(a1, a2);
  result = type metadata accessor for PickerOption();
  v15 = a3 + *(result + 52);
  *v15 = v7;
  *(v15 + 8) = v9;
  *(v15 + 16) = v11 & 1;
  *(v15 + 24) = v13;
  return result;
}

uint64_t PickerOption.init<A>(_:value:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, a1, a2);
  (*(v6 + 56))(a3, 0, 1, a2);
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v6 + 8))(a1, a2);
  type metadata accessor for Optional();
  swift_getWitnessTable();
  result = type metadata accessor for PickerOption();
  v15 = a3 + *(result + 52);
  *v15 = v7;
  *(v15 + 8) = v9;
  *(v15 + 16) = v11 & 1;
  *(v15 + 24) = v13;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PickerOption<A, B>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void View.dismissalConfirmationDialog<A>(_:shouldPresent:actions:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void View.dismissalConfirmationDialog<A, B>(_:shouldPresent:actions:message:)()
{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

{
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityRotorEntryRange(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AccessibilityRotorEntryRange(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorEntryRange(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of AccessibilityRotorEntryRange(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of AccessibilityRotorEntryRange(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for AccessibilityRotorEntryRange(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of AccessibilityRotorEntryRange(v4, v5, v6);
  return a1;
}

char *PlatformAccessibilityElementProtocol<>.stringsForResolvingRange.getter()
{
  v1 = [v0 accessibilityLabel];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = [v0 accessibilityValue];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = *(v6 + 2);
    v16 = v6 + 40;
    v17 = v15 + 1;
    while (--v17)
    {
      if (*(v16 - 1) != v12 || *v16 != v14)
      {
        v16 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      return v6;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15 + 1, 1, v6);
    }

    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
    }

    *(v6 + 2) = v20 + 1;
    v21 = &v6[16 * v20];
    *(v21 + 4) = v12;
    *(v21 + 5) = v14;
  }

  return v6;
}

uint64_t specialized String.resolveNSRange(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Range<String.Index>();
  lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
  lazy protocol witness table accessor for type String and conformance String();

  v6 = _NSRange.init<A, B>(_:in:)();
  v8 = v7;
  result = NSNotFound.getter();
  if (v6 == result)
  {
    return 0;
  }

  if (!__OFADD__(v6, v8))
  {
    v10 = MEMORY[0x18D00C850](a3, a4);
    v11 = [v10 length];

    if (v11 >= v6 + v8)
    {
      return v6;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void type metadata accessor for Range<String.Index>()
{
  if (!lazy cache variable for type metadata for Range<String.Index>)
  {
    v0 = type metadata accessor for Range();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<String.Index>);
    }
  }
}

uint64_t DynamicViewContent.onDelete(perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a1;
    v8 = swift_allocObject();
    v9 = a2;
    v10 = v8;
    a1 = v6;
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    v11 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  v14[0] = v11;
  v14[1] = v10;
  outlined copy of AppIntentExecutor?(a1);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(0, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteTraitKey>);
  MEMORY[0x18D00A570](v14, a3, v12, *(a4 + 8));
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
}

Swift::Void __swiftcall DeleteInteraction.delete()()
{
  v1 = v0;
  v2 = type metadata accessor for DeleteInteraction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (v0 + *(v5 + 24));
  v7 = *v6;
  if (*v6)
  {
    v8 = v6[1];
    LOBYTE(v12) = 17;
    outlined init with copy of DeleteInteraction(v1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    outlined init with take of DeleteInteraction(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
    outlined copy of AppIntentExecutor?(v7);

    static Update.enqueueAction(reason:_:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
  }

  else
  {
    _StringGuts.grow(_:)(71);
    MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD53CB0);
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](0xD000000000000022, 0x800000018CD53CE0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

char *initializeBufferWithCopyOfBuffer for DeleteInteraction(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v8 = type metadata accessor for IndexSet();
    (*(*(v8 - 8) + 16))(&v3[v5], &a2[v5], v8);
    v9 = *(a3 + 24);
    v10 = &v3[v9];
    v11 = &a2[v9];
    if (*v11)
    {
      v12 = *(v11 + 1);
      *v10 = *v11;
      *(v10 + 1) = v12;
    }

    else
    {
      *v10 = *v11;
    }
  }

  return v3;
}

uint64_t destroy for DeleteInteraction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for IndexSet();
  result = (*(*(v5 - 8) + 8))(a1 + v4, v5);
  if (*(a1 + *(a2 + 24)))
  {
  }

  return result;
}

char *initializeWithCopy for DeleteInteraction(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  if (*v10)
  {
    v11 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v11;
  }

  else
  {
    *v9 = *v10;
  }

  return a1;
}

char *assignWithCopy for DeleteInteraction(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *&a1[v8];
  v12 = *&a2[v8];
  if (!v11)
  {
    if (v12)
    {
      v14 = *(v10 + 1);
      *v9 = v12;
      *(v9 + 1) = v14;

      return a1;
    }

LABEL_7:
    *v9 = *v10;
    return a1;
  }

  if (!v12)
  {

    goto LABEL_7;
  }

  v13 = *(v10 + 1);
  *v9 = v12;
  *(v9 + 1) = v13;

  return a1;
}

char *initializeWithTake for DeleteInteraction(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for DeleteInteraction(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for IndexSet();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = &a2[v8];
  v11 = *&a1[v8];
  v12 = *v10;
  if (!v11)
  {
    if (v12)
    {
      v14 = *(v10 + 1);
      *v9 = v12;
      *(v9 + 1) = v14;
      return a1;
    }

LABEL_7:
    *v9 = *v10;
    return a1;
  }

  if (!v12)
  {

    goto LABEL_7;
  }

  v13 = *(v10 + 1);
  *v9 = v12;
  *(v9 + 1) = v13;

  return a1;
}

uint64_t outlined init with copy of DeleteInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteInteraction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DeleteInteraction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeleteInteraction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for componentCornerRadius()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 12.0;
  if (static ClarityUIMetrics.isPad)
  {
    v0 = 16.0;
  }

  static ClarityUIMetrics.componentCornerRadius = *&v0;
  return result;
}

uint64_t one-time initialization function for minimumComponentHeight()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 100.0;
  if (static ClarityUIMetrics.isPad)
  {
    v0 = 108.0;
  }

  static ClarityUIMetrics.minimumComponentHeight = *&v0;
  return result;
}

uint64_t one-time initialization function for fallbackDisplayCornerRadius()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 40.0;
  if (static ClarityUIMetrics.isPad)
  {
    v0 = 52.0;
  }

  static ClarityUIMetrics.fallbackDisplayCornerRadius = *&v0;
  return result;
}

uint64_t one-time initialization function for standardSpacing()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (static ClarityUIMetrics.isPad)
  {
    v0 = 20.0;
  }

  static ClarityUIMetrics.standardSpacing = *&v0;
  return result;
}

uint64_t one-time initialization function for listTitleBottomPadding()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 30.0;
  if ((static ClarityUIMetrics.isPad & 1) == 0)
  {
    if (one-time initialization token for standardSpacing != -1)
    {
      result = swift_once();
    }

    v0 = static ClarityUIMetrics.standardSpacing;
  }

  static ClarityUIMetrics.listTitleBottomPadding = v0;
  return result;
}

uint64_t one-time initialization function for defaultGridCellMinWidth()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  v0 = 140.0;
  if (static ClarityUIMetrics.isPad)
  {
    v0 = 210.0;
  }

  static ClarityUIMetrics.defaultGridCellMinWidth = *&v0;
  return result;
}

uint64_t one-time initialization function for titleHorizontalPadding(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  if (one-time initialization token for isPad != -1)
  {
    v5 = a2;
    v6 = a4;
    v7 = a3;
    result = swift_once();
    a2 = v5;
    a3 = v7;
    a4 = v6;
  }

  if (static ClarityUIMetrics.isPad)
  {
    v4 = 0x4044000000000000;
  }

  else
  {
    if (*a2 != -1)
    {
      v9 = a4;
      v10 = a3;
      result = swift_once();
      a3 = v10;
      a4 = v9;
    }

    v4 = *a3;
  }

  *a4 = v4;
  return result;
}

uint64_t one-time initialization function for gridHorizontalPaddingLandscape()
{
  if (one-time initialization token for isPad != -1)
  {
    result = swift_once();
  }

  if (static ClarityUIMetrics.isPad)
  {
    v0 = 0x4054000000000000;
  }

  else
  {
    if (one-time initialization token for componentHorizontalPadding != -1)
    {
      result = swift_once();
    }

    v0 = static ClarityUIMetrics.componentHorizontalPadding;
  }

  static ClarityUIMetrics.gridHorizontalPaddingLandscape = v0;
  return result;
}

double static ClarityUIMetrics.componentHorizontalPadding.getter(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

double one-time initialization function for stackCircularIconHeight()
{
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  v0 = *&static ClarityUIMetrics.minimumComponentHeight;
  if (one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }

  result = v0 - (*&static ClarityUIMetrics.buttonVerticalPadding + *&static ClarityUIMetrics.buttonVerticalPadding);
  *&static ClarityUIMetrics.stackCircularIconHeight = result;
  return result;
}

double one-time initialization function for componentHorizontalPadding(uint64_t a1, void *a2, double *a3, void *a4)
{
  if (*a2 != -1)
  {
    v5 = a4;
    v6 = a3;
    swift_once();
    a3 = v6;
    a4 = v5;
  }

  result = *a3;
  *a4 = *a3;
  return result;
}

void one-time initialization function for isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static ClarityUIMetrics.isPad = v1 == 1;
}

uint64_t CommandMenu.MakeList.commandMenu.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CommandMenu();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t CommandMenu.MakeList.value.getter(uint64_t a1)
{
  v3 = type metadata accessor for CommandsList.Item(0);
  v4 = *(v3 - 8);
  v45 = v3 - 8;
  v46 = v4;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 + 16);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 24);
  v36 = a1;
  v43 = v8;
  v48 = type metadata accessor for CommandMenu();
  v9 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v35 - v10;
  v12 = type metadata accessor for CommandGroupPlacement(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CommandOperation();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  CommandMenu.MakeList.commandMenu.getter(v11);
  v18 = *v11;
  v19 = *(v11 + 1);
  v20 = v11[16];
  v21 = *(v11 + 3);
  outlined copy of Text.Storage(*v11, v19, v20);
  v22 = *(v9 + 8);
  v37 = v9 + 8;
  v38 = v22;

  v22(v11, v48);
  v23 = *(v36 + 36);
  v24 = *(v13 + 28);
  v25 = type metadata accessor for UUID();
  v26 = (*(*(v25 - 8) + 16))(&v15[v24], v1 + v23, v25);
  MEMORY[0x18D009CE0](&v49, v26);
  Text.assertUnstyled(_:options:)();
  *v15 = v18;
  *(v15 + 1) = v19;
  v15[16] = v20;
  *(v15 + 3) = v21;
  CommandMenu.MakeList.commandMenu.getter(v11);
  v27 = v48;
  v28 = v41;
  v29 = v40;
  (*(v42 + 16))(v41, &v11[*(v48 + 36)], v40);
  v38(v11, v27);
  v30 = v39;
  CommandOperation.init<A>(mutation:placement:content:)(3, v15, v28, v29, v43, v39);
  v31 = v44;
  outlined init with copy of CommandOperation(v30, v44);
  type metadata accessor for CommandsList.Item.Value(0);
  swift_storeEnumTagMultiPayload();
  DisplayList.Version.init(forUpdate:)();
  *(v31 + *(v45 + 28)) = v49;
  type metadata accessor for _ContiguousArrayStorage<CommandsList.Item>();
  v32 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_18CD63400;
  outlined init with take of CommandsList.Item(v31, v33 + v32);
  outlined destroy of CommandOperation(v30);
  return v33;
}

uint64_t CommandMenu.MakeList.init(commandMenu:id:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for CommandMenu.MakeList() + 36);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t protocol witness for Rule.value.getter in conformance CommandMenu<A>.MakeList@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = CommandMenu.MakeList.value.getter(a1);
  *a2 = result;
  return result;
}

uint64_t static CommandMenu._makeCommands(content:inputs:)()
{

  PreferencesOutputs.init()();
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static CommandMenu._makeCommands(content:inputs:)(unsigned int a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  List = type metadata accessor for CommandMenu.MakeList();
  v6 = *(List - 8);
  MEMORY[0x1EEE9AC00](List);
  v8 = &v13[-v7];
  v14 = a1;
  type metadata accessor for CommandMenu();
  type metadata accessor for _GraphValue();
  v9 = _GraphValue.value.getter();
  UUID.init()();
  CommandMenu.MakeList.init(commandMenu:id:)(v9, v4, v8);
  v16 = List;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<CommandsList>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v8, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_7, v15, List, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  (*(v6 + 8))(v8, List);
  return v14;
}

uint64_t CommandMenu.init(_:content:)@<X0>(void (*a1)(uint64_t)@<X4>, uint64_t a2@<X8>)
{
  v4 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7 & 1;

  return CommandMenu.init(_:content:)(v4, v5, v8, v6, a1, a2);
}

uint64_t CommandMenu.init(_:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x18D009CE0](&v14);
  a3 &= 1u;
  Text.assertUnstyled(_:options:)();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  type metadata accessor for CommandMenu();
  outlined copy of Text.Storage(a1, a2, a3);

  a5(v12);
  outlined consume of Text.Storage(a1, a2, a3);
}

uint64_t CommandMenu.init<A>(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v9);
  v12 = Text.init<A>(_:)();
  CommandMenu.init(_:content:)(v12, v14, v13 & 1, v15, a2, a4);
  return (*(v8 + 8))(a1, a3);
}

uint64_t CommandMenu._resolve(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v25 = a2;
  v26 = v3;
  v4 = *(v3 - 8);
  v23 = a1;
  v24 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CommandGroupPlacement(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CommandOperation();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v14 = *(v2 + 8);
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);

  outlined copy of Text.Storage(v15, v14, v16);
  v18 = UUID.init()();
  MEMORY[0x18D009CE0](&v27, v18);
  Text.assertUnstyled(_:options:)();
  *v9 = v15;
  *(v9 + 1) = v14;
  v9[16] = v16;
  *(v9 + 3) = v17;
  v19 = v25;
  v20 = v26;
  (*(v24 + 16))(v6, v2 + *(v25 + 36), v26);
  CommandOperation.init<A>(mutation:placement:content:)(3, v9, v6, v20, *(v19 + 24), v13);
  v21 = *&v13[*(v11 + 32)];
  if (v21)
  {
    v21(v13, v23);
  }

  return outlined destroy of CommandOperation(v13);
}

uint64_t outlined destroy of CommandOperation(uint64_t a1)
{
  v2 = type metadata accessor for CommandOperation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for CommandMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-33 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v11, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
    *(a1 + 24) = *(a2 + 24);
    v14 = *(v5 + 16);

    v14((a1 + v6 + 32) & ~v6, (a2 + v6 + 32) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for CommandMenu(uint64_t a1, uint64_t a2)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 32) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for CommandMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v7, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = *(a2 + 24);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v12 = *(v10 + 80);

  v11((v12 + 32 + a1) & ~v12, (v12 + 32 + a2) & ~v12, v9);
  return a1;
}

uint64_t assignWithCopy for CommandMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 24) = *(a2 + 24);

  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 24))((*(v12 + 80) + 32 + a1) & ~*(v12 + 80), (*(v12 + 80) + 32 + a2) & ~*(v12 + 80));
  return a1;
}

_OWORD *initializeWithTake for CommandMenu(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((a1 + *(v5 + 80) + 32) & ~*(v5 + 80), (a2 + *(v5 + 80) + 32) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for CommandMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 32 + a1) & ~*(v10 + 80), (*(v10 + 80) + 32 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t type metadata completion function for CommandMenu.MakeList()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CommandMenu.MakeList(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 36);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t destroy for CommandMenu.MakeList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 36);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

char *initializeWithCopy for CommandMenu.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithCopy for CommandMenu.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *initializeWithTake for CommandMenu.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *assignWithTake for CommandMenu.MakeList(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t outlined init with take of CommandsList.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AutomaticSearchFieldStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of SearchFieldConfiguration(a1, v6);
  SearchField<>.init(_:)(v6, a2);
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.automatic, v9);
  v9[41] = 0;
  type metadata accessor for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>();
  outlined init with copy of ToolbarSearchFieldStyle(v9, a2 + *(v7 + 36));
  return outlined destroy of ToolbarSearchFieldStyle(v9);
}

void type metadata accessor for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>)
  {
    type metadata accessor for SearchField<SearchFieldConfiguration.Control>();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for SearchField<SearchFieldConfiguration.Control>()
{
  if (!lazy cache variable for type metadata for SearchField<SearchFieldConfiguration.Control>)
  {
    v0 = type metadata accessor for SearchField();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchField<SearchFieldConfiguration.Control>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>();
    type metadata accessor for SearchFieldStyleModifier<ToolbarSearchFieldStyle>(255, &lazy cache variable for type metadata for SearchFieldStyleModifier<ToolbarSearchFieldStyle>, lazy protocol witness table accessor for type ToolbarSearchFieldStyle and conformance ToolbarSearchFieldStyle);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>>)
  {
    type metadata accessor for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>();
    type metadata accessor for SearchFieldStyleModifier<ToolbarSearchFieldStyle>(255, &lazy cache variable for type metadata for SearchFieldStyleModifier<PlatformSearchFieldStyle>, lazy protocol witness table accessor for type PlatformSearchFieldStyle and conformance PlatformSearchFieldStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>, SearchFieldStyleModifier<PlatformSearchFieldStyle>>);
    }
  }
}

void type metadata accessor for SearchFieldStyleModifier<ToolbarSearchFieldStyle>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SearchFieldStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformSearchFieldStyle and conformance PlatformSearchFieldStyle()
{
  result = lazy protocol witness table cache variable for type PlatformSearchFieldStyle and conformance PlatformSearchFieldStyle;
  if (!lazy protocol witness table cache variable for type PlatformSearchFieldStyle and conformance PlatformSearchFieldStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformSearchFieldStyle and conformance PlatformSearchFieldStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>>();
    lazy protocol witness table accessor for type SearchField<SearchFieldConfiguration.Control> and conformance SearchField<A>(&lazy protocol witness table cache variable for type SearchField<SearchFieldConfiguration.Control> and conformance SearchField<A>, type metadata accessor for SearchField<SearchFieldConfiguration.Control>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SearchField<SearchFieldConfiguration.Control>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type SearchField<SearchFieldConfiguration.Control> and conformance SearchField<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, SearchFieldStyleModifier<ToolbarSearchFieldStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchField<SearchFieldConfiguration.Control> and conformance SearchField<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v3 = v19;
  v4 = v20;
  v5 = DWORD1(v20);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18[0] = a1[2];
  *(v18 + 12) = *(a1 + 44);
  outlined init with copy of _WidgetInputs(a1, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v3;
    LOBYTE(v20) = v4;
    DWORD1(v20) = v5;
    type metadata accessor for WidgetConfigurationBodyAccessor<Never>();
    lazy protocol witness table accessor for type WidgetConfigurationBodyAccessor<Never> and conformance WidgetConfigurationBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    outlined init with copy of _WidgetInputs(&v19, &v13);
    specialized static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:)(&v13, v12, &v19);
    outlined destroy of _WidgetInputs(&v19);
    v8 = v13;
    v9 = DWORD2(v13);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _WidgetInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *&v19 = 0xD00000000000001DLL;
    *(&v19 + 1) = 0x800000018CD53DD0;
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:) in conformance Never@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static WidgetConfiguration._makeWidgetConfiguration(widget:inputs:)(v4, a2);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance WidgetDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance WidgetDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static WidgetDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance WidgetDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

void specialized WidgetConfiguration.widgetConfigurationBodyError()()
{
  _StringGuts.grow(_:)(34);

  v0 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata accessor for WidgetConfigurationBodyAccessor<Never>()
{
  if (!lazy cache variable for type metadata for WidgetConfigurationBodyAccessor<Never>)
  {
    v0 = type metadata accessor for WidgetConfigurationBodyAccessor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WidgetConfigurationBodyAccessor<Never>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetConfigurationBodyAccessor<Never> and conformance WidgetConfigurationBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type WidgetConfigurationBodyAccessor<Never> and conformance WidgetConfigurationBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type WidgetConfigurationBodyAccessor<Never> and conformance WidgetConfigurationBodyAccessor<A>)
  {
    type metadata accessor for WidgetConfigurationBodyAccessor<Never>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetConfigurationBodyAccessor<Never> and conformance WidgetConfigurationBodyAccessor<A>);
  }

  return result;
}

uint64_t (*protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>(uint64_t *a1))()
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
  *(v2 + 32) = ObservableDocumentBox.wasOpened.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

uint64_t (*ObservableDocumentBox.wasOpened.modify(uint64_t *a1))()
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
  *(v2 + 32) = ObservableDocumentBox.wasOpened.modify(v2);
  return protocol witness for ObservableDocumentBox.wasOpened.modify in conformance ReferenceFileDocumentBox<A1>;
}

uint64_t destroy for IdentifiedDocumentGroupConfiguration(uint64_t a1)
{
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);

  return outlined consume of SceneID(v2, v3, v4);
}

uint64_t initializeWithCopy for IdentifiedDocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  v8 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);

  outlined copy of SceneID(v8, v9, v10);
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  return a1;
}

uint64_t assignWithCopy for IdentifiedDocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    if (v4)
    {
      *(a1 + 48) = v4;
      *(a1 + 56) = *(a2 + 56);
      (**(v4 - 8))(a1 + 24, a2 + 24);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = v6;
    goto LABEL_8;
  }

  v5 = (a1 + 24);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v8 = *(a2 + 104);
  v9 = *(a2 + 112);
  v10 = *(a2 + 120);
  outlined copy of SceneID(v8, v9, v10);
  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 120);
  *(a1 + 104) = v8;
  *(a1 + 112) = v9;
  *(a1 + 120) = v10;
  outlined consume of SceneID(v11, v12, v13);
  return a1;
}

uint64_t assignWithTake for IdentifiedDocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v6 = *(a2 + 120);
  v7 = *(a1 + 104);
  v8 = *(a1 + 112);
  v9 = *(a1 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v6;
  outlined consume of SceneID(v7, v8, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for IdentifiedDocumentGroupConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t storeEnumTagSinglePayload for IdentifiedDocumentGroupConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for DocumentGroupConfiguration(uint64_t a1)
{
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }
}

uint64_t initializeWithCopy for DocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
  }

  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for DocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 48);
  if (!*(a1 + 48))
  {
    if (v4)
    {
      *(a1 + 48) = v4;
      *(a1 + 56) = *(a2 + 56);
      (**(v4 - 8))(a1 + 24, a2 + 24);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = v6;
    goto LABEL_8;
  }

  v5 = (a1 + 24);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for DocumentGroupConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t static ObservableDocumentBoxInputView._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t (*a4)(uint64_t a1)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  lazy protocol witness table accessor for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey();
  PropertyList.subscript.getter();
  if (v32 == *MEMORY[0x1E698D3F8])
  {
    return static _ViewListOutputs.emptyViewList(inputs:)();
  }

  v25 = v32;
  v27 = type metadata accessor for ObservableDocumentBoxInputView.Child.ChildView();
  v29 = v15;
  v35 = a6;
  v36 = a7;
  type metadata accessor for ObservableDocumentBoxInputView();
  v28 = a2;
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  v26 = a8;
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v21[0] = a3;
  v21[1] = a4;
  v24 = &v24;
  v32 = __PAIR64__(HIDWORD(a3), v18);
  v33 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v21[2] = swift_getFunctionTypeMetadata1();
  v22 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v21, v22, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

  v29 = v25;
  v30 = v31;
  v32 = a3;
  v33 = a4;
  KeyPath = a5;
  v35 = a6;
  v36 = a7;
  type metadata accessor for ObservableDocumentBoxInputView.Child();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t key path getter for ObservableDocumentBoxInputView.content : <A, B>ObservableDocumentBoxInputView<A, B>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v10 = *(v5 - 24);
  *(v9 + 16) = *(v5 - 40);
  *(v9 + 32) = v10;
  *(v9 + 48) = v6;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> (@out B);
  a4[1] = v9;
}

uint64_t key path setter for ObservableDocumentBoxInputView.content : <A, B>ObservableDocumentBoxInputView<A, B>(uint64_t *a1, uint64_t (**a2)(uint64_t a1), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v6 = *(a3 + a4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  v10 = *(v5 - 24);
  *(v9 + 16) = *(v5 - 40);
  *(v9 + 32) = v10;
  *(v9 + 48) = v6;
  *(v9 + 56) = v8;
  *(v9 + 64) = v7;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out B);
  a2[1] = v9;
  return result;
}

uint64_t (*ObservableDocumentBoxInputView.Child.content.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v13 = *Value;
  v12 = Value[1];
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = v13;
  v14[8] = v12;

  return thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out B)partial apply;
}

uint64_t ObservableDocumentBoxInputView.Child.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  AGGraphGetValue();
  swift_unknownObjectRetain();
  v14 = ObservableDocumentBoxInputView.Child.content.getter(a1, a2, a3, a4, a5, a6);
  v16 = v15;
  result = ObservedObject.init(wrappedValue:)();
  *a7 = result;
  a7[1] = v18;
  a7[2] = v14;
  a7[3] = v16;
  return result;
}

uint64_t ObservableDocumentBoxInputView.Child.ChildView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v27 = a4;
  v28 = a3;
  v33 = a8;
  v29 = *(a6 - 8);
  v30 = a5;
  v32 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for _ConditionalContent();
  v31 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v20 = *(a7 + 24);
  swift_unknownObjectRetain();
  v21 = v20(v30, a7);
  v22 = MEMORY[0x1E6981580];
  if (v21)
  {
    v28(a2);
    swift_unknownObjectRelease();
    v23 = v32;
    static ViewBuilder.buildExpression<A>(_:)(v13, a6, v32);
    v24 = *(v29 + 8);
    v24(v13, a6);
    static ViewBuilder.buildExpression<A>(_:)(v16, a6, v23);
    static ViewBuilder.buildEither<A, B>(first:)(v13, a6);
    v24(v13, a6);
    v24(v16, a6);
  }

  else
  {
    swift_unknownObjectRelease();
    v36 = static Color.clear.getter();
    v23 = v32;
    static ViewBuilder.buildEither<A, B>(second:)(&v36, a6, MEMORY[0x1E69815C0]);
  }

  v34 = v23;
  v35 = v22;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v17, WitnessTable);
  return (*(v31 + 8))(v19, v17);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ObservableDocumentBoxInputView<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE59E8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ObservableDocumentBoxModifier()
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey();
  return PropertyList.subscript.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ObservableDocumentBoxModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ObservableDocumentBoxModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ObservableDocumentBoxModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t IdentifiedDocumentGroupConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  outlined init with copy of DocumentGroupConfiguration(a1, a2);
  strcpy(v38, "DocumentGroup");
  HIWORD(v38[1]) = -4864;
  if (*a1)
  {
    v10 = 0x287265776569762DLL;
  }

  else
  {
    v10 = 0x28726F746964652DLL;
  }

  MEMORY[0x18D00C9B0](v10, 0xE800000000000000);
  MEMORY[0x18D00C9B0](*(a1 + 72), *(a1 + 80));
  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  MEMORY[0x18D00C9B0](0x6C6261646165722DLL, 0xEA00000000002865);
  v11 = *(a1 + 88);
  v12 = 0xE000000000000000;
  v36 = 0;
  v37 = 0xE000000000000000;
  v13 = *(v11 + 16);
  v34 = a2;
  if (v13)
  {
    v32 = v5;
    v33 = a1;
    v14 = *(v5 + 16);
    v15 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      v14(v9, v15, v4);
      v17 = UTType.identifier.getter();
      MEMORY[0x18D00C9B0](v17);

      (*(v5 + 8))(v9, v4);
      v15 += v16;
      --v13;
    }

    while (v13);
    v18 = v36;
    v19 = v37;
    a1 = v33;
    a2 = v34;
    v5 = v32;
    v12 = 0xE000000000000000;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  MEMORY[0x18D00C9B0](v18, v19);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  MEMORY[0x18D00C9B0](0x6C6261746972772DLL, 0xEA00000000002865);
  v20 = *(a1 + 96);
  v36 = 0;
  v37 = 0xE000000000000000;
  v21 = *(v20 + 16);
  if (v21)
  {
    v24 = *(v5 + 16);
    v23 = v5 + 16;
    v22 = v24;
    v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v26 = *(v23 + 56);
    v27 = v35;
    do
    {
      v22(v27, v25, v4);
      v28 = UTType.identifier.getter();
      MEMORY[0x18D00C9B0](v28);
      v27 = v35;

      (*(v23 - 8))(v27, v4);
      v25 += v26;
      --v21;
    }

    while (v21);
    v29 = v36;
    v12 = v37;
    a2 = v34;
  }

  else
  {
    v29 = 0;
  }

  MEMORY[0x18D00C9B0](v29, v12);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  result = outlined destroy of DocumentGroupConfiguration(a1);
  v31 = v38[1];
  *(a2 + 104) = v38[0];
  *(a2 + 112) = v31;
  *(a2 + 120) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IdentifiedDocumentGroupConfiguration()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 112);
  if (*(v0 + 120))
  {
    MEMORY[0x18D00F6F0](*(v0 + 104));
    Hasher._combine(_:)(v1);
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance IdentifiedDocumentGroupConfiguration()
{
  v1 = *(v0 + 112);
  if (*(v0 + 120))
  {
    MEMORY[0x18D00F6F0](*(v0 + 104));
    Hasher._combine(_:)(v1);
  }

  else
  {

    String.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IdentifiedDocumentGroupConfiguration()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 112);
  if (*(v0 + 120))
  {
    MEMORY[0x18D00F6F0](*(v0 + 104));
    Hasher._combine(_:)(v1);
  }

  else
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t (*protocol witness for ObservableDocumentBox.wasOpened.modify in conformance FileDocumentBox<A1>(uint64_t *a1))()
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
  *(v2 + 32) = ObservableDocumentBox.wasOpened.modify(v2);
  return protocol witness for ViewGraphOwner.renderingPhase.modify in conformance _UIHostingView<A>;
}

uint64_t specialized static IdentifiedDocumentGroupConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v2 = *(a1 + 112);
  v5 = *(a2 + 104);
  v4 = *(a2 + 112);
  if (*(a1 + 120))
  {
    if (*(a2 + 120))
    {
      v6 = v3 == v5 && *(a1 + 112) == v4;
      return v6 & 1;
    }

    v14 = _typeName(_:qualified:)();
    v16 = v9;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v10);

    v2 = v16;

    if (v14 != v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v2 == v4)
    {

LABEL_20:
      v6 = 1;
      return v6 & 1;
    }

LABEL_12:
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }

  if (*(a2 + 120))
  {

    v13 = _typeName(_:qualified:)();
    v15 = v7;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v8);

    v4 = v15;
    if (v3 != v13)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v3 == v5 && v2 == v4)
  {
    goto LABEL_20;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *assignWithCopy for ObservableDocumentBoxModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

_OWORD *assignWithTake for ObservableDocumentBoxModifier(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

unint64_t lazy protocol witness table accessor for type DocumentGroupConfiguration.Role and conformance DocumentGroupConfiguration.Role()
{
  result = lazy protocol witness table cache variable for type DocumentGroupConfiguration.Role and conformance DocumentGroupConfiguration.Role;
  if (!lazy protocol witness table cache variable for type DocumentGroupConfiguration.Role and conformance DocumentGroupConfiguration.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentGroupConfiguration.Role and conformance DocumentGroupConfiguration.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey()
{
  result = lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey;
  if (!lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey;
  if (!lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentGroupConfiguration.DocumentKey and conformance DocumentGroupConfiguration.DocumentKey);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out B)(uint64_t a1)
{
  v2 = *(v1 + 56);
  v4 = a1;
  return v2(&v4);
}

uint64_t type metadata completion function for NavigationSplitInspectorCoordinator()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI29PresentationOptionsPreferenceV_s5NeverOSSTg5(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  outlined init with copy of MatchedTransitionIdentifier?(v1, v7, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  if (!*&v7[0])
  {
    return 0;
  }

  v5[6] = v7[6];
  v6[0] = v8[0];
  *(v6 + 10) = *(v8 + 10);
  v5[2] = v7[2];
  v5[3] = v7[3];
  v5[4] = v7[4];
  v5[5] = v7[5];
  v5[0] = v7[0];
  v5[1] = v7[1];
  a1(&v9, v5);
  if (v2)
  {
    result = outlined destroy of PresentationOptionsPreference(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of PresentationOptionsPreference(v5);
    return v9;
  }

  return result;
}

uint64_t specialized PresentationHostingController.setupSheet(for:presenter:placement:)(char a1, void *a2, unsigned __int8 a3)
{
  v4 = v3;
  *(v3 + direct field offset for PresentationHostingController.presentingBridgeKind) = a1;
  *(v3 + direct field offset for PresentationHostingController.placement) = a3;
  type metadata accessor for (PresentationOptionsPreference, ContainerBackgroundKeys.Transparency)();
  static Update.ensure<A>(_:)();
  v7 = v41;
  v46 = v39;
  v47[0] = *v40;
  *(v47 + 10) = *&v40[10];
  *&v42[32] = v35;
  v43 = v36;
  v44 = v37;
  v45 = v38;
  *v42 = v33;
  *&v42[16] = v34;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v8 = 5;
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      outlined init with copy of PresentationSizing?(&v46, &v30);
      if (v31)
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, &v33);
      }

      else
      {
        *(&v34 + 1) = &type metadata for AutomaticPresentationSizing;
        *&v35 = &protocol witness table for AutomaticPresentationSizing;
      }

      outlined destroy of PresentationSizing?(&v33, type metadata accessor for PresentationSizing?);
      static Semantics.v7.getter();
      if (isLinkedOnOrAfter(_:)())
      {
LABEL_21:
        v8 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      *&v35 = 0;
      v33 = 0u;
      v34 = 0u;
      outlined destroy of PresentationSizing?(&v33, type metadata accessor for PresentationSizing?);
    }

    v8 = -2;
  }

  else
  {
    if (a3 <= 4u)
    {
      if (a3 == 3)
      {
        v8 = 8;
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (a3 == 5)
    {
      v9 = [v3 popoverPresentationController];
      if (v9)
      {
        if (BYTE9(v47[1]) == 2)
        {
        }

        else
        {
          v10 = v9;
          [v9 _setPrefersZoomTransitions_];
        }
      }

      v8 = 7;
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_23:
  specialized UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(a2, 1);
  v11 = [v4 _preferredTransition];
  if (v11)
  {
  }

  else
  {
    specialized PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(v8, v42);
  }

  v12 = [v4 presentationController];
  if (!v12)
  {
LABEL_30:
    v16 = [v4 popoverPresentationController];
    if (!v16)
    {
      return outlined destroy of PresentationOptionsPreference(v42);
    }

    v17 = v16;
    v15 = [v16 adaptiveSheetPresentationController];

    if (!v15)
    {
      return outlined destroy of PresentationOptionsPreference(v42);
    }

    goto LABEL_32;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_30;
  }

  v15 = v14;
LABEL_32:
  v18 = [v15 _setWantsFullScreen_];
  if (a3 == 4)
  {
    MEMORY[0x1EEE9AC00](v18);
    type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    static Update.ensure<A>(_:)();
    v19 = v33;
  }

  else
  {
    v19 = 2;
  }

  specialized PresentationHostingController.updateFullScreenInteractiveDismissIfNeeded(disabled:)(v19);
  v20 = v15;
  specialized PresentationHostingController.configureSizingOptions(for:sheetController:)(v42, v15);

  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(&v46, &v30);
    if (v31)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, &v33);
    }

    else
    {
      *(&v34 + 1) = &type metadata for AutomaticPresentationSizing;
      *&v35 = &protocol witness table for AutomaticPresentationSizing;
    }
  }

  else
  {
    *&v35 = 0;
    v33 = 0u;
    v34 = 0u;
  }

  specialized PresentationHostingController.updatePreferredContentSizeIfNeeded(presenter:sizing:)(a2, &v33);
  outlined destroy of PresentationSizing?(&v33, type metadata accessor for PresentationSizing?);
  v21 = [v4 traitCollection];
  v22 = [v21 horizontalSizeClass];

  if (v22 != 2 || (v23 = [v4 traitCollection], v24 = objc_msgSend(v23, sel_verticalSizeClass), v23, v24 != 2))
  {
    if (*(*v42 + 16) || (v43 | 2) != 2)
    {
      specialized PresentationHostingController.configureDetents(of:using:)(v20, v42);
    }
  }

  if (*&v42[16])
  {
    v33 = *&v42[8];
    v34 = *&v42[24];
    type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for Binding<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v30);
    v25 = v30;
    if (specialized Set.contains(_:)(v30, *(&v30 + 1), *v42))
    {
      v33 = v25;
      v26 = PresentationDetent.uiSheetDetentId.getter();
      [v20 setSelectedDetentIdentifier_];
    }

    else
    {
      MEMORY[0x18D009810](0xD000000000000052, 0x800000018CD53EC0);
    }
  }

  outlined init with copy of PresentationOptionsPreference(v42, &v33);
  v27 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  outlined assign with take of PresentationOptionsPreference?(&v33, v4 + v27);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = &unk_1F00C6720;
    v28 = swift_dynamicCastObjCProtocolConditional();
    if (!v28)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v28 = 0;
  }

  [v20 setDelegate_];
  swift_unknownObjectRelease();
  specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(v7);

  return outlined destroy of PresentationOptionsPreference(v42);
}

uint64_t specialized PresentationHostingController.updateSheet(with:)(uint64_t *a1)
{
  specialized PresentationHostingController.setPassthrough(using:)(a1);
  v3 = [v1 presentationController];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
LABEL_7:
      specialized PresentationHostingController.configureDetents(of:using:)(v6, a1);
      specialized PresentationHostingController.updateDetentsSelection(of:using:)(v6, a1);

      goto LABEL_8;
    }
  }

  v7 = [v1 popoverPresentationController];
  if (v7)
  {
    v8 = v7;
    v6 = [v7 adaptiveSheetPresentationController];

    if (v6)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  outlined init with copy of PresentationOptionsPreference(a1, v11);
  v9 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  outlined assign with take of PresentationOptionsPreference?(v11, v1 + v9);
  swift_endAccess();
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  specialized PresentationHostingController.updatePreferredContentSizeIfNeeded(presenter:sizing:)(0, v11);
  return outlined destroy of PresentationSizing?(v11, type metadata accessor for PresentationSizing?);
}

id specialized UIHostingController.idealSizeDidChange(from:to:)(double a1, double a2)
{
  v3 = v2;
  v6 = [v2 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  [v6 effectiveUserInterfaceLayoutDirection];

  v8 = direct field offset for UIHostingController.host;
  v9 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.environment.getter();

  EnvironmentValues.pixelLength.getter();
  v11 = v10;

  v12 = [v3 view];
  if (!v12)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v13 = v12;
  [v12 safeAreaInsets];

  CGSize.inset(by:)();
  v15 = v11 * ceil(v14 / v11);
  v17 = v11 * ceil(v16 / v11);
  v18 = ceil(v14);
  v19 = ceil(v16);
  if (v11 == 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (v11 == 1.0)
  {
    v21 = v18;
  }

  else
  {
    v21 = v15;
  }

  v22 = direct field offset for UIHostingController.sizingOptions;
  result = swift_beginAccess();
  v24 = *&v3[v22];
  if (!v24)
  {
    goto LABEL_24;
  }

  if (v21 != a1 || v20 != a2)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_17;
    }

    v26 = *&v3[v8];
    v27 = UIHostingViewBase.viewGraph.getter();

    swift_beginAccess();
    LODWORD(v26) = *(v27 + 114);

    if (v26 == 1)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v3;
      *(v28 + 24) = v21;
      *(v28 + 32) = v20;
      v29 = v3;
      onNextMainRunLoop(do:)();

LABEL_17:
      if ((v3[v22] & 2) == 0)
      {
        return result;
      }

      return [*&v3[v8] invalidateIntrinsicContentSize];
    }

    result = [v3 setPreferredContentSize_];
    if ((v3[v22] & 2) != 0)
    {
      return [*&v3[v8] invalidateIntrinsicContentSize];
    }
  }

  return result;
}

uint64_t specialized UIHostingController.sizingOptionsDidChange(from:)(char a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = v5 & ~a1;
  if ((v6 & 3) != 0)
  {
    v7 = direct field offset for UIHostingController.host;
    v8 = *(v2 + direct field offset for UIHostingController.host);
    UIHostingViewBase.viewGraph.getter();

    static _ProposedSize.unspecified.getter();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();
    _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();

    v9 = *(v2 + v7);
    v10 = UIHostingViewBase.viewGraph.getter();

    v11 = *(v10 + 88);

    swift_beginAccess();
    LOBYTE(v10) = *(v11 + 128);

    if (v10)
    {
      static CGSize.invalidValue.getter();
      v13 = v12;
      v15 = v14;
      v16 = *(v2 + v7);
      static _ProposedSize.unspecified.getter();
      _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      ViewRendererHost.sizeThatFits(_:)();

      specialized UIHostingController.idealSizeDidChange(from:to:)(v13, v15);
    }
  }

  else if ((v5 & 3) == 0)
  {
    v17 = *(v2 + direct field offset for UIHostingController.host);
    UIHostingViewBase.viewGraph.getter();

    static _ProposedSize.unspecified.getter();
    swift_beginAccess();
    _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
    ViewGraphGeometryObservers.stopObserving(proposal:)();
    swift_endAccess();
  }

  return specialized UIHostingController.updateWindowSizeObservers(_:)(v6);
}

uint64_t specialized UIHostingController.updateWindowSizeObservers(_:)(char a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.host;
  v5 = *(v1 + direct field offset for UIHostingController.host);
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 4) != 0)
    {
      v11 = v5;
      UIHostingViewBase.viewGraph.getter();

      static _ProposedSize.zero.getter();
      swift_allocObject();
      swift_weakInit();
      swift_beginAccess();
      _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
      ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
      swift_endAccess();

      if ((a1 & 8) == 0)
      {
LABEL_6:
        v9 = direct field offset for UIHostingController.sizingOptions;
        swift_beginAccess();
        if ((*(v2 + v9) & 8) == 0)
        {
          v10 = *(v2 + v4);
          UIHostingViewBase.viewGraph.getter();

          static _ProposedSize.infinity.getter();
          swift_beginAccess();
          _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
          ViewGraphGeometryObservers.stopObserving(proposal:)();
          swift_endAccess();
        }
      }
    }

    else
    {
      v7 = direct field offset for UIHostingController.sizingOptions;
      swift_beginAccess();
      if ((*(v2 + v7) & 4) == 0)
      {
        v8 = v5;
        UIHostingViewBase.viewGraph.getter();

        static _ProposedSize.zero.getter();
        swift_beginAccess();
        _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
        ViewGraphGeometryObservers.stopObserving(proposal:)();
        swift_endAccess();
      }

      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }
    }

    v12 = *(v2 + v4);
    UIHostingViewBase.viewGraph.getter();

    static _ProposedSize.infinity.getter();
    swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
    ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
    swift_endAccess();
  }

  return result;
}

id specialized closure #1 in UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = v3;
    goto LABEL_8;
  }

  v5 = Strong;
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    v17 = v3;

LABEL_8:
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return v3;
    }

    goto LABEL_12;
  }

  v7 = v6;
  v8 = v3;
  v9 = specialized UIHostingController.findSourceMarkingView(previousViewController:fallbackSource:)(v7, a2);
  if (v9)
  {
    v10 = v9;
    v3 = *&v9[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_contentView];
    v11 = [v5 transitionCoordinator];
    if (v11)
    {
      v12 = v11;
      v10[OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_isPartOfActiveZoom] = 1;
      MatchedTransitionSourceMarkingView.updateLayerStyle(isZooming:)(0);
      [v10 setNeedsLayout];
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      v19[4] = partial apply for closure #1 in closure #1 in UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:);
      v19[5] = v13;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
      v19[3] = &block_descriptor_81_0;
      v14 = _Block_copy(v19);
      v15 = v10;

      [v12 animateAlongsideTransitionInView:0 animation:0 completion:v14];

      swift_unknownObjectRelease();
      _Block_release(v14);
    }

    else
    {
    }
  }

  else
  {

    v3 = v8;
  }

LABEL_12:
  swift_unknownObjectWeakAssign();

  return v3;
}

id specialized UIHostingController.findSourceMarkingView(previousViewController:fallbackSource:)(void *a1, void *a2)
{
  v5 = *(v2 + direct field offset for UIHostingController.host);
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v6 = v5;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (v17 == 1)
  {
    outlined destroy of MatchedTransitionIdentifier?(v16, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
    goto LABEL_8;
  }

  outlined init with copy of _NavigationTransitionOutputs.Content(v16, v18);
  outlined destroy of _NavigationTransitionOutputs(v16);
  if (!*&v19[8])
  {
    goto LABEL_8;
  }

  v7 = *v18;
  *v18 = *&v18[8];
  *&v18[16] = *v19;
  *v19 = *&v19[8];
  result = [a1 view];
  if (result)
  {
    v9 = result;
    MEMORY[0x1EEE9AC00](result);
    v15[2] = v7;
    v15[3] = v18;
    v11 = _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_n(v10, closure #1 in UIView._findMatchedTransitionSource<A>(id:in:)specialized partial apply, v15);

    type metadata accessor for MatchedTransitionSourceMarkingView();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      outlined destroy of AnyHashable(v18);
      return v13;
    }

    outlined destroy of AnyHashable(v18);
LABEL_8:
    v14 = a2;
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #2 in UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {

LABEL_6:
    swift_beginAccess();
    return swift_unknownObjectWeakLoadStrong();
  }

  v3 = v2;
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = specialized UIHostingController.findSourceItem(previousViewController:fallbackItem:)(v3, v4);

  if (v5)
  {

    return v5;
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();

    return v7;
  }
}

void *specialized UIHostingController.findSourceItem(previousViewController:fallbackItem:)(uint64_t a1, void *a2)
{
  v4 = *(v2 + direct field offset for UIHostingController.host);
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v5 = v4;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (v15 == 1)
  {
    outlined destroy of MatchedTransitionIdentifier?(v14, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
    goto LABEL_8;
  }

  outlined init with copy of _NavigationTransitionOutputs.Content(v14, v16);
  v6 = outlined destroy of _NavigationTransitionOutputs(v14);
  if (!*&v17[8])
  {
    goto LABEL_8;
  }

  v7 = *v16;
  *v16 = *&v16[8];
  *&v16[16] = *v17;
  *v17 = *&v17[8];
  MEMORY[0x1EEE9AC00](v6);
  v13[2] = v16;
  v13[3] = v7;
  v8 = UIViewController.firstDescendantWhere(_:)(closure #1 in UIViewController.findMatchedTransitionBarButtonItem<A>(id:in:)specialized partial apply, v13);
  if (!v8)
  {
    outlined destroy of AnyHashable(v16);
    goto LABEL_8;
  }

  v9 = v8;
  v10 = specialized UIViewController.matchingBarButton<A>(id:in:)(v16, v7);

  outlined destroy of AnyHashable(v16);
  if (!v10)
  {
LABEL_8:
    v11 = a2;
    return a2;
  }

  return v10;
}

uint64_t specialized UIHostingController.configureBackgroundForZoom()()
{
  v1 = v0;
  static Semantics.v6_2.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    v3 = direct field offset for UIHostingController.host;
    v4 = *(v0 + direct field offset for UIHostingController.host);
    v5 = MEMORY[0x1E69E7D40];
    *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x1E8)) = 1;
    v6 = v4;
    specialized _UIHostingView.updateBackgroundColor()();

    MEMORY[0x1EEE9AC00](v7);
    static Update.ensure<A>(_:)();
    if (v17 >> 62 == 1)
    {

      v8 = ShapeStyle.fallbackColor(in:level:)();

      if (v8)
      {
        v9 = *(v1 + v3);
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
        v10 = v9;

        v12 = UIColor.init(_:)(v11);
        v13 = *((*v5 & *v10) + 0x1F0);
        v14 = *(v10 + v13);
        *(v10 + v13) = v12;
        v15 = v12;

        specialized _UIHostingView.updateBackgroundColor()();
        outlined consume of ContainerBackgroundValue.Content(v16, v17);
      }

      else
      {
        outlined consume of ContainerBackgroundValue.Content(v16, v17);
      }
    }

    else
    {
      outlined consume of ContainerBackgroundValue.Content(v16, v17);
    }
  }

  return result;
}

double specialized closure #1 in UIHostingController.configureBackgroundForZoom()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + direct field offset for UIHostingController.host);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.preferenceValues()();

  PreferenceValues.subscript.getter();

  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 24) = v7;
  return result;
}

uint64_t specialized closure #1 in UIView._findMatchedTransitionSource<A>(id:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC7SwiftUI34MatchedTransitionSourceMarkingView_effect);
  swift_beginAccess();
  if (*v5 == a2)
  {
    outlined init with copy of AnyHashable((v5 + 1), v10);
    outlined init with copy of AnyHashable(a3, &v8);
    AnyHashable.init<A>(_:)();
    v6 = MEMORY[0x18D00E7E0](v10, v9);
    outlined destroy of AnyHashable(v9);
    outlined destroy of AnyHashable(v10);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t specialized OscillationDetector.insert(_:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  outlined init with copy of PresentationOptionsPreference(a1, v8);
  swift_beginAccess();
  v3 = *(v1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v3;
  if (result)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  v3 = result;
  *(v1 + 16) = result;
  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 >= v3[2])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  outlined assign with take of PresentationOptionsPreference?(v8, &v3[18 * v2 + 4]);
  *(v1 + 16) = v3;
  swift_endAccess();
  result = specialized OscillationDetector.enqueueDecay(at:)(*(v1 + 24));
  v5 = *(v1 + 24);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v7;
  if (v7 >= *(*(v1 + 16) + 16))
  {
    v7 = 0;
  }

  *(v1 + 24) = v7;
  return result;
}

uint64_t specialized OscillationDetector.enqueueDecay(at:)(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 16);
  result = swift_beginAccess();
  v5 = *(*(v1 + 16) + 16);
  v6 = v3 >= v5;
  v7 = v3 - v5;
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = v7 + 1;
  if (v7 == -1)
  {
    goto LABEL_7;
  }

  if (v7 < -1)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < v8)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  specialized Array.replaceSubrange<A>(_:with:)(0, v8);
LABEL_7:
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + 48);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v9;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *(v1 + 56) = result;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = v11 + v10;
  *(v14 + 40) = a1;
  *(v1 + 56) = v9;
  if ((*(v1 + 72) & 1) == 0)
  {
    *(v1 + 72) = 1;
    swift_allocObject();
    swift_weakInit();

    onNextMainRunLoop(do:)();
  }

  return result;
}

void specialized OscillationDetector.decay()()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = (v0 + 56);
  v5 = v3 + 1;
  v4[1] = v3 + 1;
  v6 = *(v2 + 16);
  v7 = 16 * v6 + 16;
  v8 = v6;
  do
  {
    if (!v8)
    {
LABEL_15:
      if (v6)
      {
        swift_allocObject();
        swift_weakInit();

        onNextMainRunLoop(do:)();
      }

      else
      {
        *(v1 + 72) = 0;
      }

      return;
    }

    --v8;
    v9 = *(v2 + v7);
    v7 -= 16;
  }

  while (v9 != v5);
  v10 = 0;
  v11 = 40;
  while (1)
  {
    v12 = *(v2 + v11);
    memset(v15, 0, 138);
    swift_beginAccess();
    v13 = *(v1 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (v12 >= v13[2])
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    outlined assign with take of PresentationOptionsPreference?(v15, &v13[18 * v12 + 4]);
    *(v1 + 16) = v13;
    swift_endAccess();
    if (v8 == v10)
    {
      goto LABEL_13;
    }

    ++v10;
    v2 = *v4;
    v11 += 16;
    if (v10 >= *(*v4 + 16))
    {
      goto LABEL_20;
    }
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  *(v1 + 16) = v13;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  if (*(*v4 + 16) >= (v8 + 1))
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, v8 + 1);
    v6 = *(*v4 + 16);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

uint64_t specialized closure #1 in OscillationDetector.enqueueDecay(at:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized OscillationDetector.decay()();
  }

  return result;
}

void SystemInspector.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v38 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v8 + 32);
  v9 = type metadata accessor for SystemInspectorRoot();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v28 - v10;
  v31 = *(v3 + 24);
  v29 = *(v3 + 40);
  v33 = type metadata accessor for InspectorColumnView();
  v34 = type metadata accessor for _VariadicView.Tree();
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v28[1] = v28 - v12;
  v13 = type metadata accessor for ModifiedContent();
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v32 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v35 = v28 - v17;
  v18 = *(v5 + 16);
  v28[0] = v2;
  v18(v7, v2, v4, v16);
  v19 = (v2 + *(v3 + 56));
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v3) = *(v19 + 16);

  v22 = v30;
  default argument 0 of SystemInspectorRoot.init(mainContentVisibility:mainContent:isPresented:)(v44);
  *v11 = v44[0];
  *(v11 + 1) = 0;
  (*(v5 + 32))(&v11[*(v9 + 36)], v7, v4);
  v23 = &v11[*(v9 + 40)];
  *v23 = v20;
  *(v23 + 1) = v21;
  v23[16] = v3;
  *&v24 = v22;
  *(&v24 + 1) = v29;
  *&v25 = v4;
  *(&v25 + 1) = v31;
  v39 = v25;
  v40 = v24;
  v41 = v28[0];
  _VariadicView.Tree.init(_:content:)();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v42 = WitnessTable;
  v43 = v27;
  swift_getWitnessTable();
  View.attachInspectorPresentationEnvironment()();
}

uint64_t sub_18C94A17C()
{
  (*(*(v5 - 216) + 8))(v1, v3);
  *(v5 - 128) = v0;
  *(v5 - 120) = &protocol witness table for AttachInspectorPresentationEnvironment;
  WitnessTable = swift_getWitnessTable();
  v7 = *(v5 - 224);
  static ViewBuilder.buildExpression<A>(_:)(v4, v2, WitnessTable);
  v8 = *(*(v5 - 208) + 8);
  v8(v4, v2);
  static ViewBuilder.buildExpression<A>(_:)(v7, v2, WitnessTable);
  return (v8)(v7, v2);
}

void default argument 0 of SystemInspectorRoot.init(mainContentVisibility:mainContent:isPresented:)(__int16 *a1@<X8>)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  Width = CGRectGetWidth(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  if (CGRectGetHeight(v15) >= Width)
  {
    v12 = 1194.0;
  }

  else
  {
    v12 = 1024.0;
  }

  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  if (CGRectGetWidth(v16) < v12)
  {
    v13 = 16640;
  }

  else
  {
    v13 = 16641;
  }

  *a1 = v13;
}

uint64_t closure #1 in SystemInspector.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28[0] = a4;
  v28[1] = a6;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InspectorColumnView();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v28 - v18;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = v28[0];
  v28[5] = a5;
  v20 = type metadata accessor for SystemInspector();
  (*(v10 + 16))(v12, a1 + *(v20 + 52), a3);
  v21 = (a1 + *(v20 + 56));
  v22 = *v21;
  v23 = v21[1];
  LOBYTE(a2) = *(v21 + 16);
  (*(v10 + 32))(v16, v12, a3);
  v24 = &v16[*(v13 + 36)];
  *v24 = v22;
  *(v24 + 1) = v23;
  v24[16] = a2;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, WitnessTable);
  v26 = *(v14 + 8);

  v26(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, WitnessTable);
  return (v26)(v19, v13);
}

uint64_t SystemInspectorRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v6 = *(a2 + 24);
  v39[0] = *(a2 + 16);
  v5 = v39[0];
  v39[1] = MEMORY[0x1E697FFD0];
  v39[2] = v6;
  v39[3] = MEMORY[0x1E697FFC8];
  type metadata accessor for BridgedInspectorRepresentable();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for UnbridgedInspectorModifier<ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>>();
  v21[0] = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for StaticIf();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v21 - v12;
  specialized SystemInspectorRoot.inspectorColumnWidth(from:)(a1, v39);
  v25 = v5;
  v26 = v6;
  v27 = v3;
  v28 = a1;
  v29 = v39;
  v21[4] = v5;
  v21[5] = v6;
  v22 = v3;
  v23 = v39;
  v24 = a1;
  v14 = lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
  v37 = &protocol witness table for BridgedInspectorRepresentable<A, B>;
  v38 = v14;
  WitnessTable = swift_getWitnessTable();
  v35 = v6;
  v36 = MEMORY[0x1E697EBF8];
  v33 = swift_getWitnessTable();
  v34 = &protocol witness table for UnbridgedInspectorModifier<A>;
  v20 = swift_getWitnessTable();
  v16 = MEMORY[0x1E6981CD0];
  StaticIf<>.init(_:then:else:)();
  v30 = v16;
  v31 = WitnessTable;
  v32 = v20;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, v17);
  v18 = *(v8 + 8);
  v18(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, v17);
  return (v18)(v13, v7);
}

uint64_t closure #1 in SystemInspectorRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a5;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = v9;
  v30 = MEMORY[0x1E697FFD0];
  v31 = v10;
  v32 = MEMORY[0x1E697FFC8];
  v24 = v10;
  v11 = type metadata accessor for BridgedInspectorRepresentable();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22[-v13];
  v15 = type metadata accessor for SystemInspectorRoot();
  v16 = a1 + *(v15 + 40);
  v17 = *v16;
  v18 = *(v16 + 8);
  v23 = *(v16 + 16);

  v19 = *(a1 + 8);
  LOWORD(v29) = *a1;
  v30 = v19;
  type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for State<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v33[0] = v35;
  v33[1] = v36;
  v34 = v37;
  v20 = v25;
  (*(v7 + 16))(v25, a1 + *(v15 + 36), a4);
  outlined init with copy of _VariadicView_Children(v26, &v29);
  BridgedInspectorRepresentable.init(isPresented:columnVisibility:mainContent:inspectorContent:inspectorColumnWidth:)(v17, v18, v23, v33, v20, &v29, v27, a4, v14, MEMORY[0x1E697FFD0]);
  View.ignoresNonTabBarSafeArea()(v11, &protocol witness table for BridgedInspectorRepresentable<A, B>);
  return (*(v12 + 8))(v14, v11);
}

__n128 BridgedInspectorRepresentable.init(isPresented:columnVisibility:mainContent:inspectorContent:inspectorColumnWidth:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 8);
  v17 = type metadata accessor for BridgedInspectorRepresentable();
  v18 = a9 + v17[14];
  v19 = a9 + v17[16];
  *v19 = v14;
  *(v19 + 8) = v15;
  *(v19 + 16) = v16;
  *(v19 + 18) = 512;
  v20 = a9 + v17[15];
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = a3;
  (*(*(a8 - 8) + 32))(a9, a5, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[13], a6, a10);
  result = *a7;
  v22 = *(a7 + 16);
  *v18 = *a7;
  *(v18 + 16) = v22;
  *(v18 + 32) = *(a7 + 32);
  return result;
}

uint64_t closure #2 in SystemInspectorRoot.body(children:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a3;
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SystemInspectorRoot();
  static Alignment.center.getter();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 = a1 + *(v13 + 40);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v22 = a4;
  v23 = MEMORY[0x1E697EBF8];

  WitnessTable = swift_getWitnessTable();
  View.unbridgedInspectorModifier<A>(isPresented:isActive:width:content:)(v15, v16, v17, 1, a2, v21, v9, MEMORY[0x1E697FFD0], a5, WitnessTable, MEMORY[0x1E697FFC8]);

  return (*(v10 + 8))(v12, v9);
}

double closure #1 in SystemInspectorRoot.inspectorColumnWidth(from:)@<D0>(uint64_t a1@<X8>)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance SystemInspectorRoot<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t BridgedInspectorRepresentable.makeCoordinator()(uint64_t a1)
{
  v23 = *(a1 + 24);
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = v6;
  *(&v30 + 1) = v10;
  v31 = *(v11 + 32);
  type metadata accessor for NavigationSplitInspectorCoordinator();
  v12 = *(a1 + 60);
  v13 = v1 + *(a1 + 64);
  v14 = *(v13 + 8);
  v25 = *v13;
  v26 = v14;
  LODWORD(v13) = *(v13 + 16);
  v28[0] = v25;
  v28[1] = v14;
  v29 = v13;
  v16 = *(v1 + v12);
  v15 = *(v1 + v12 + 8);
  v24 = *(v1 + v12 + 16);
  v17 = *(v7 + 16);

  v17(v9, v1, v6);
  v18 = v27;
  (*(v3 + 16))(v27, v1 + *(a1 + 52), v23);
  v19 = (v1 + *(a1 + 56));
  v20 = v19[1];
  v30 = *v19;
  v31 = v20;
  v32 = *(v19 + 32);
  v21 = swift_allocObject();
  NavigationSplitInspectorCoordinator.init(compositeVisibility:isPresented:mainContent:inspectorContent:inspectorColumnWidth:)(v28, v16, v15, v24, v9, v18, &v30);

  return v21;
}

uint64_t NavigationSplitInspectorCoordinator.__allocating_init(compositeVisibility:isPresented:mainContent:inspectorContent:inspectorColumnWidth:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  NavigationSplitInspectorCoordinator.init(compositeVisibility:isPresented:mainContent:inspectorContent:inspectorColumnWidth:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t BridgedInspectorRepresentable.updateUIViewController(_:context:)(void *a1, uint64_t a2, int *a3)
{
  v4 = v3;
  v18 = *(a2 + 8);
  v5 = a3[16];
  v6 = v3 + a3[15];
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = a3[13];
  v11 = v4 + a3[14];
  v12 = *(v11 + 16);
  v22[0] = *v11;
  v22[1] = v12;
  v23 = *(v11 + 32);
  v13 = *(v4 + v5);
  v14 = *(v4 + v5 + 8);
  v15 = *(v4 + v5 + 16);

  v20[0] = v13;
  v20[1] = v14;
  v21 = v15;

  NavigationSplitInspectorCoordinator.updateSplitViewController(_:environment:transaction:isPresented:mainContent:inspectorContent:inspectorColumnWidth:compositeVisibility:)(a1, v16, v18, v7, v8, v9, v4, v4 + v10, v22, v20);
}

uint64_t NavigationSplitInspectorCoordinator.isPresented.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = v1;
  v7 = v2;
  type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

uint64_t NavigationSplitInspectorCoordinator.$isPresented.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance BridgedInspectorRepresentable<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = BridgedInspectorRepresentable.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t *NavigationSplitInspectorCoordinator.init(compositeVisibility:isPresented:mainContent:inspectorContent:inspectorColumnWidth:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 4);
  v14 = v7 + *(*v7 + 144);
  *v14 = xmmword_18CD647F0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = *(*v7 + 152);
  type metadata accessor for NavigationSplitSidebarStateMachine();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 512;
  swift_unknownObjectWeakInit();
  *(v7 + v15) = v16;
  *(v16 + 40) = 2;
  *(v7 + *(*v7 + 160)) = 2;
  v7[2] = v11;
  v7[3] = v12;
  *(v7 + 8) = v13;
  v7[5] = a2;
  v7[6] = a3;
  *(v7 + 56) = a4;
  (*(*(*(v10 + 80) - 8) + 32))(v7 + *(*v7 + 128), a5);
  (*(*(*(v10 + 88) - 8) + 32))(v7 + *(*v7 + 136), a6);
  v17 = *(a7 + 16);
  *v14 = *a7;
  *(v14 + 16) = v17;
  *(v14 + 32) = *(a7 + 32);
  return v7;
}

uint64_t NavigationSplitInspectorCoordinator.visibilityEngine.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
}

void NavigationSplitInspectorCoordinator.columnWidth.getter(int64x2_t *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 144));
  v3 = v2[2].u8[0];
  v4 = v2->i64[1] >> 1 != 0xFFFFFFFF || v3 >= 2;
  v5 = !v4;
  if (v4)
  {
    v6 = v2->i64[0];
    if ((v3 & 0x80) != 0)
    {
      v9 = v2[1];
      v7 = v2->i64[1] & 1;
      v8 = v3 & 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = vdupq_n_s64(v6);
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
  }

  a1->i64[0] = v6;
  a1->i64[1] = v7;
  a1[1] = v9;
  a1[2].i8[0] = v8;
  a1[2].i8[1] = v5;
}

id NavigationSplitInspectorCoordinator.makeSplitViewController(environment:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [objc_allocWithZone(type metadata accessor for UIKitInspectorSplitViewController()) initWithStyle_];
  [v3 setDelegate_];
  [v3 _setSkipsConfiguringColumnNavigationController_];
  NavigationSplitInspectorCoordinator.visibilityEngine.getter(v15);
  v12 = v15[3];
  v13 = v15[4];
  v14 = v16;
  v9 = v15[0];
  v10 = v15[1];
  v11 = v15[2];
  v4 = UISplitViewControllerVisibilityEngine.initialDisplayMode.getter();
  outlined destroy of UISplitViewControllerVisibilityEngine(v15);
  [v3 setPreferredDisplayMode_];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  *(v3 + OBJC_IVAR____TtC7SwiftUI33UIKitInspectorSplitViewController_allowsSecureDrawing) = v9;
  result = [v3 view];
  if (result)
  {
    v6 = result;
    [result setBackgroundColor_];

    NavigationSplitInspectorCoordinator.makeViewControllers(splitController:)(v3);
    NavigationSplitInspectorCoordinator.visibilityEngine.getter(v7);

    NavigationSplitSidebarStateMachine.setInitialInspectorVisibility(visibilityEngine:splitController:isAnimated:)(v7, v3, 0);

    v12 = v7[3];
    v13 = v7[4];
    v14 = v8;
    v9 = v7[0];
    v10 = v7[1];
    v11 = v7[2];
    outlined destroy of UISplitViewControllerVisibilityEngine(&v9);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NavigationSplitInspectorCoordinator.updateSplitViewController(_:environment:transaction:isPresented:mainContent:inspectorContent:inspectorColumnWidth:compositeVisibility:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11 = v10;
  v15 = *v10;
  v38 = *v10;
  v17 = *a10;
  v16 = a10[1];
  v40 = *(a10 + 4);
  v11[5] = a4;
  v11[6] = a5;
  v42 = a6 & 1;
  *(v11 + 56) = a6;

  v18 = *(*v11 + 128);
  swift_beginAccess();
  v19 = *(v15 + 80);
  (*(*(v19 - 8) + 24))(v11 + v18, a7, v19);
  swift_endAccess();
  v20 = *(*v11 + 136);
  swift_beginAccess();
  v21 = *(v15 + 88);
  (*(*(v21 - 8) + 24))(v11 + v20, a8, v21);
  swift_endAccess();
  v22 = v11 + *(*v11 + 144);
  v23 = *(a9 + 16);
  *v22 = *a9;
  *(v22 + 1) = v23;
  v22[32] = *(a9 + 32);
  v11[2] = v17;
  v11[3] = v16;
  *(v11 + 8) = v40;

  NavigationSplitInspectorCoordinator.columnWidth.getter(&v47);
  if (v49[9])
  {
    UISplitViewController.resetInspectorColumnWidth()();
  }

  else
  {
    v24 = *v47.i64;
    v25 = v47.i8[8];
    v26 = v49;
    v27 = MEMORY[0x1E69DE3C8];
    if (v49[8])
    {
      v26 = MEMORY[0x1E69DE3C8];
    }

    v28 = *v26;
    [a1 setPreferredInspectorColumnWidth_];
    [a1 setMaximumInspectorColumnWidth_];
    if (v25)
    {
      [a1 setMinimumInspectorColumnWidth_];
    }

    else
    {
      [a1 setMinimumInspectorColumnWidth_];
    }
  }

  NavigationSplitInspectorCoordinator.updateViewControllers(splitController:transaction:)(a1);
  v44 = a4;
  v45 = a5;
  v46 = v42;
  type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v30 = v29;
  MEMORY[0x18D00ACC0](&v43);
  v31 = *(*v11 + 160);
  v32 = *(v11 + v31);
  if (v32 == 2 || v43 != (v32 & 1))
  {
    NavigationSplitInspectorCoordinator.updateInspectorSheetConfiguration(splitController:)(a1);
    v44 = a4;
    v45 = a5;
    v46 = v42;
    MEMORY[0x18D00ACC0](&v43, v30);
    *(v11 + v31) = v43;
  }

  v33 = Transaction.disablesAnimations.getter();
  result = Transaction.subscript.getter();
  if ((v44 & 1) == 0)
  {
    LOBYTE(v44) = 17;
    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v19;
    *(v37 + 24) = v21;
    *(v37 + 32) = *(v38 + 96);
    *(v37 + 40) = *(v38 + 104);
    *(v37 + 48) = v35;
    *(v37 + 56) = v36;
    *(v37 + 64) = (v33 & 1) == 0;

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

uint64_t closure #1 in NavigationSplitInspectorCoordinator.updateSplitViewController(_:environment:transaction:isPresented:mainContent:inspectorContent:inspectorColumnWidth:compositeVisibility:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      NavigationSplitInspectorCoordinator.visibilityEngine.getter(v7);

      NavigationSplitSidebarStateMachine.dependenciesDidChange(visibilityEngine:splitController:isAnimated:)(v7, v6, a3 & 1);

      v9[3] = v7[3];
      v9[4] = v7[4];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      v9[2] = v7[2];
      return outlined destroy of UISplitViewControllerVisibilityEngine(v9);
    }

    else
    {
    }
  }

  return result;
}

void NavigationSplitInspectorCoordinator.makeViewControllers(splitController:)(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = *v1;
  v29 = *(*v1 + 80);
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - v5;
  v7 = *(v3 + 88);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for InspectorContentView();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = *(v3 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v11, v2 + v15, v7);
  (*(v8 + 32))(v14, v11, v7);
  swift_getWitnessTable();
  v16 = AnyView.init<A>(_:)();
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v18 = objc_allocWithZone(v17);
  v19 = specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(v16, 0, 0, 7, 1);
  v20 = *(*v2 + 128);
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v29;
  (*(v4 + 16))(v6, v21, v29);
  v23 = specialized MainContentView.init<A>(_:)(v6);
  (*(v4 + 8))(v6, v22);
  _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for UIHostingController);
  v25 = objc_allocWithZone(v24);
  v26 = specialized UIHostingController.init(rootView:)(v23);
  v27 = v30;
  [v30 setViewController:v19 forColumn:4];
  v28 = v26;
  [v27 setViewController:v28 forColumn:2];
  [v27 setViewController:v28 forColumn:3];
}

void NavigationSplitInspectorCoordinator.updateViewControllers(splitController:transaction:)(void *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v20 - v6;
  v9 = [v8 viewControllerForColumn_];
  if (v9)
  {
    v10 = v9;
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v22 = v11;
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  v12 = [a1 viewControllerForColumn_];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<MainContentView>, lazy protocol witness table accessor for type MainContentView and conformance MainContentView, &type metadata for MainContentView, type metadata accessor for UIHostingController);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    v15 = 0;
    v16 = v22;
    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v15 = v14;
  v16 = v22;
  if (!v22)
  {
LABEL_9:

    MEMORY[0x1EEE66BB8]();
    return;
  }

LABEL_14:
  if (v15)
  {
    v21 = v15;
    v22 = v16;
    NavigationSplitInspectorCoordinator.updateInspectorController(inspectorHost:transaction:)(v16);
    v17 = *(*v1 + 128);
    swift_beginAccess();
    (*(v4 + 16))(v7, v1 + v17, v3);
    v18 = specialized MainContentView.init<A>(_:)(v7);
    (*(v4 + 8))(v7, v3);
    v19 = *&v21[direct field offset for UIHostingController.host];
    specialized _UIHostingView.setRootView(_:transaction:)(v18);
  }

  else
  {
  }
}

void NavigationSplitInspectorCoordinator.updateInspectorController(inspectorHost:transaction:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - v6;
  v8 = type metadata accessor for InspectorContentView();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = *(v3 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v11, v4);
  (*(v5 + 32))(v10, v7, v4);
  swift_getWitnessTable();
  v12 = AnyView.init<A>(_:)();
  v13 = direct field offset for UIHostingController.host;
  v14 = *(a1 + direct field offset for UIHostingController.host);
  specialized _UIHostingView.setRootView(_:transaction:)(v12);

  v15 = *(a1 + v13);
  static _GraphInputs.defaultInterfaceIdiom.getter();
  v16 = static Solarium.isEnabled(for:)();
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(1, v16 & 1, specialized _UIHostingView.updateBackgroundColor());
}

void NavigationSplitInspectorCoordinator.updateInspectorSheetConfiguration(splitController:)(void *a1)
{
  v2 = [a1 viewControllerForColumn_];
  if (v2)
  {
    v3 = v2;
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
    if (swift_dynamicCastClass())
    {
      if (NavigationSplitInspectorCoordinator.isPresented.getter())
      {
        specialized PresentationHostingController.setupSheet(for:presenter:placement:)(2, a1, 0);
      }

      else
      {
        specialized PresentationHostingController.resetSheetControllerOscillationDetection()();
      }
    }
  }
}

uint64_t @objc NavigationSplitInspectorCoordinator.splitViewController(_:willChangeTo:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v7 = a3;

  a5(v7, a4);
}

uint64_t NavigationSplitInspectorCoordinator.splitViewController(_:willChangeTo:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, _OWORD *))
{
  NavigationSplitInspectorCoordinator.visibilityEngine.getter(v7);

  a3(a1, a2, v7);

  v9[3] = v7[3];
  v9[4] = v7[4];
  v10 = v8;
  v9[0] = v7[0];
  v9[1] = v7[1];
  v9[2] = v7[2];
  return outlined destroy of UISplitViewControllerVisibilityEngine(v9);
}

uint64_t *NavigationSplitInspectorCoordinator.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

uint64_t NavigationSplitInspectorCoordinator.__deallocating_deinit()
{
  NavigationSplitInspectorCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t InspectorColumnView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(255, &lazy cache variable for type metadata for StyleContextWriter<InspectorStyleContext>, MEMORY[0x1E697FC48], MEMORY[0x1E697FC40], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>();
  v6 = type metadata accessor for ModifiedContent();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v28 - v7;
  v32 = type metadata accessor for ModifiedContent();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v28 - v8;
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>();
  v9 = type metadata accessor for ModifiedContent();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v33 = &v28 - v12;
  v13 = *(a1 + 24);
  View.styleContext<A>(_:)();
  v14 = lazy protocol witness table accessor for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>();
  v44 = v13;
  v45 = v14;

  WitnessTable = swift_getWitnessTable();
  v16 = v28;
  View.presentationMode(isPresented:)();

  (*(v31 + 8))(v5, v3);
  static Alignment.center.getter();
  v17 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>);
  v42 = WitnessTable;
  v43 = v17;
  v27 = swift_getWitnessTable();
  v18 = v29;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v34 + 8))(v16, v6);
  v40 = v27;
  v41 = MEMORY[0x1E697EBF8];
  v19 = v32;
  v20 = swift_getWitnessTable();
  v21 = v30;
  View.renderContainerBackgroundInHostingView<A>(_:)();
  (*(v35 + 8))(v18, v19);
  v22 = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
  v38 = v20;
  v39 = v22;
  v23 = swift_getWitnessTable();
  v24 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v21, v9, v23);
  v25 = *(v36 + 8);
  v25(v21, v9);
  static ViewBuilder.buildExpression<A>(_:)(v24, v9, v23);
  return (v25)(v24, v9);
}

void InspectorContentView.body.getter()
{
  v0 = type metadata accessor for VStack();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  View.writeInspectorPresentationEnvironment()();
}

uint64_t sub_18C94D3D4()
{
  (*(v0 + 8))(v6, v2);
  *(v8 - 96) = v5;
  *(v8 - 88) = &protocol witness table for PresentationEnvironmentWritingModifier;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v4, v1, WitnessTable);
  v10 = *(v7 + 8);
  v10(v4, v1);
  static ViewBuilder.buildExpression<A>(_:)(v3, v1, WitnessTable);
  return (v10)(v3, v1);
}

uint64_t closure #1 in InspectorContentView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  return (*(v5 + 8))(v7, a2);
}

void specialized PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 8 || a1 == 5)
  {
    [v2 setModalPresentationCapturesStatusBarAppearance_];
  }

  [v2 setModalPresentationStyle_];
  v5 = [v2 modalPresentationStyle];
  if (v5 == 7 || v5 == 2)
  {
    MEMORY[0x1EEE9AC00](v5);
    static Update.ensure<A>(_:)();
    specialized PresentationHostingController.configureSizingOptions(for:sheetController:)(a2, 0);
  }
}

void specialized PresentationHostingController.sizingOptionsDidChange(from:)(char a1)
{
  v3 = &v1[direct field offset for PresentationHostingController.observedSize];
  if ((v1[direct field offset for PresentationHostingController.observedSize + 16] & 1) == 0)
  {
    specialized closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(v1);
  }

  v4 = [v1 presentingViewController];
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = v4;
  v6 = &v56;
  v7 = &v1[direct field offset for PresentationHostingController.lastPresentationOptions];
  swift_beginAccess();
  if (!*v7)
  {

    v58 = 0;
    v56 = 0u;
    v57 = 0u;
LABEL_15:
    outlined destroy of PresentationSizing?(&v56, type metadata accessor for PresentationSizing?);
    goto LABEL_16;
  }

  v8 = v1;
  outlined init with copy of PresentationOptionsPreference(v7, v70);
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(&v71, &aBlock);
    if (v53)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&aBlock, &v56);
    }

    else
    {
      *(&v57 + 1) = &type metadata for AutomaticPresentationSizing;
      v58 = &protocol witness table for AutomaticPresentationSizing;
    }
  }

  else
  {
    v58 = 0;
    v56 = 0u;
    v57 = 0u;
  }

  outlined destroy of PresentationOptionsPreference(v70);
  if (!*(&v57 + 1))
  {

    goto LABEL_15;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v56, v72);
  v9 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  if (*&v1[v9] || (v10 = [v1 sheetPresentationController]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, sel_presentationStyle), v11, v12 != 2) || *v7 && (*(v7 + 136) & 1) != 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v72);
LABEL_16:
    specialized UIHostingController.sizingOptionsDidChange(from:)(a1);
    return;
  }

  v13 = [v1 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  UIUserInterfaceIdiom.idiom.getter(v14, &v56);
  v15 = v56;
  if (v56)
  {
    v16 = *(&v56 + 1);
    v70[0] = v56;
  }

  else
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v16 = *(&v70[0] + 1);
    v15 = *&v70[0];
  }

  v17 = UIViewController.nonPresentedAncestor.getter();
  v18 = [v17 view];

  v46 = v18;
  if (v18)
  {
    v19 = v70;
    v45 = *&v8[direct field offset for PresentationHostingController.lastColumnCount];
    isEscapingClosureAtFileLocation = [v8 traitCollection];
    v21 = [isEscapingClosureAtFileLocation _environmentWrapper];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for EnvironmentWrapper();
      if (swift_dynamicCastClass())
      {
        v23 = v16;
        v24 = v15;
        v25 = v22;
        dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

        v15 = v24;
        v16 = v23;
        v19 = v70;

        v26 = *(&v70[0] + 1);
        v27 = *&v70[0];
        for (i = v70[0]; ; v27 = i)
        {
          v43 = v15;
          v44 = v16;
          *&v70[0] = v27;
          *(&v70[0] + 1) = v26;
          EnvironmentValues.readableWidth.getter();
          v30 = v29;

          v69 = 1;
          v68 = 1;
          v67 = 1;
          *&v56 = v46;
          *(&v56 + 1) = v45;
          v57 = 0uLL;
          LOBYTE(v58) = 1;
          v59 = 0;
          v60 = 1;
          v61 = 0;
          v62 = 1;
          v63 = v15;
          v64 = v16;
          v65 = v30;
          outlined init with copy of _Benchmark(v72, v70);
          v31 = v6[3];
          *(v6 + 232) = v6[2];
          *(v6 + 248) = v31;
          v32 = v6[5];
          *(v19 + 104) = v6[4];
          *(v19 + 120) = v32;
          v33 = v6[1];
          *(v19 + 40) = *v6;
          *(v19 + 56) = v33;
          v16 = direct field offset for UIHostingController.host;
          v48 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
          swift_unknownObjectWeakInit();
          outlined init with copy of PresentationSizingContext(&v56, &aBlock);
          specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&v47);
          v35 = v34;
          v37 = v36;
          outlined destroy of weak FallbackResponderProvider?(&v47);
          v38 = objc_opt_self();
          v28 = swift_allocObject();
          v28[2] = v8;
          v28[3] = v35;
          v28[4] = v37;
          v39 = swift_allocObject();
          *(v39 + 16) = closure #1 in PresentationHostingController.preferredContentSize.setterspecialized partial apply;
          *(v39 + 24) = v28;
          v54 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
          v55 = v39;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v52 = thunk for @escaping @callee_guaranteed () -> ();
          v53 = &block_descriptor_30_0;
          v15 = _Block_copy(&aBlock);
          v6 = v55;
          v19 = v8;

          [v38 performWithoutAnimation_];
          _Block_release(v15);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            *v3 = v35;
            *(v3 + 1) = v37;
            v3[16] = 0;
            outlined destroy of OpenURLOptions(&v56);
            v40 = *&v8[v16];
            UIHostingViewBase.viewGraph.getter();

            _ProposedSize.init(width:height:)();
            v47 = aBlock;
            LOBYTE(v48) = BYTE8(aBlock);
            v49 = v52;
            v50 = v53;
            v41 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v42 = swift_allocObject();
            v42[2] = v41;
            v42[3] = v43;
            v42[4] = v44;
            swift_beginAccess();
            _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
            ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
            swift_endAccess();

            outlined destroy of SheetSizing(v70);
            __swift_destroy_boxed_opaque_existential_1(v72);
            return;
          }

          __break(1u);
LABEL_40:
          swift_once();
LABEL_30:
          if (v28)
          {
            if (static EnvironmentValues.configuredForPlatform && v28 == static EnvironmentValues.configuredForPlatform)
            {
LABEL_33:
              EnvironmentValues.plist.setter();
            }
          }

          else if (!static EnvironmentValues.configuredForPlatform)
          {
            goto LABEL_33;
          }

          EnvironmentValues._configureForPlatform(traitCollection:)(isEscapingClosureAtFileLocation);

          v26 = *(&i + 1);
        }
      }
    }

    EnvironmentValues.init()();
    i = v70[0];
    EnvironmentValues.configureForRoot()();
    v28 = i;
    if (one-time initialization token for configuredForPlatform != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t specialized closure #1 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t a1)
{
  v2 = *(a1 + direct field offset for UIHostingController.host);
  UIHostingViewBase.viewGraph.getter();

  _ProposedSize.init(width:height:)();
  swift_beginAccess();
  _s7SwiftUI26ViewGraphGeometryObserversVyAA20SizeThatFitsMeasurerVGMaTm_0(0, &lazy cache variable for type metadata for ViewGraphGeometryObservers<SizeThatFitsMeasurer>, lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer, MEMORY[0x1E697FA70], MEMORY[0x1E6980718]);
  ViewGraphGeometryObservers.stopObserving(proposal:)();
  swift_endAccess();

  v4 = a1 + direct field offset for PresentationHostingController.observedSize;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  return result;
}

char *specialized PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  swift_getObjectType();
  v10 = off_1ED57D000;
  *(v5 + direct field offset for PresentationHostingController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + direct field offset for PresentationHostingController.secondaryDismissDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + direct field offset for PresentationHostingController.bridgedPresentationWantsTransparentBackground) = 0;
  *(v5 + direct field offset for PresentationHostingController.presentingBridgeKind) = 3;
  v11 = direct field offset for PresentationHostingController.placement;
  *(v5 + direct field offset for PresentationHostingController.placement) = 7;
  *(v5 + direct field offset for PresentationHostingController.lastColumnCount) = 0;
  *(v5 + direct field offset for PresentationHostingController.lastInteractiveDismissDisabled) = 2;
  *(v5 + direct field offset for PresentationHostingController.didPresenterLoseModifierRecursively) = 0;
  *(v5 + direct field offset for PresentationHostingController.wasPreempted) = 0;
  v12 = (v5 + direct field offset for PresentationHostingController.lastPresentationOptions);
  *(v12 + 122) = 0u;
  v12[6] = 0u;
  v12[7] = 0u;
  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (v5 + direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration);
  *(v13 + 122) = 0u;
  v13[6] = 0u;
  v13[7] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  *v13 = 0u;
  v13[1] = 0u;
  v14 = v5 + direct field offset for PresentationHostingController.observedSize;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(v5 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 0;
  *(v5 + direct field offset for PresentationHostingController.legacyPresentationWantsTransparentBackground) = a5 ^ 1;
  *(v5 + v11) = a4;
  if (one-time initialization token for clientNeedsOscillationSuppression != -1)
  {
    swift_once();
  }

  if (clientNeedsOscillationSuppression)
  {
    type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for OscillationDetector<PresentationOptionsPreference>, &type metadata for PresentationOptionsPreference, type metadata accessor for OscillationDetector);
    v15 = swift_allocObject();
    *(v15 + 24) = 0;
    *(v15 + 56) = MEMORY[0x1E69E7CC0];
    *(v15 + 64) = 0x8000000000000000;
    *(v15 + 72) = 0;
    type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    memset(v43, 0, 26);
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v16 + 16) = 3;
    outlined init with copy of MatchedTransitionIdentifier?(&v36, v16 + 32, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
    outlined init with copy of MatchedTransitionIdentifier?(&v36, v16 + 176, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
    v17 = v43[0];
    *(v16 + 416) = v42;
    *(v16 + 432) = v17;
    *(v16 + 442) = *(v43 + 10);
    v18 = v39;
    *(v16 + 352) = v38;
    *(v16 + 368) = v18;
    v19 = v41;
    *(v16 + 384) = v40;
    *(v16 + 400) = v19;
    v20 = v37;
    *(v16 + 320) = v36;
    *(v16 + 336) = v20;
    *(v15 + 16) = v16;
    v10 = off_1ED57D000;
    *(v15 + 32) = closure #1 in PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:);
    *(v15 + 40) = 0;
    *(v15 + 48) = 10;
  }

  else
  {
    v15 = 0;
  }

  *(v5 + direct field offset for PresentationHostingController.oscillationDetector) = v15;
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>.HostingView, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController.HostingView);
  v22 = objc_allocWithZone(v21);
  v23 = MEMORY[0x1E69E7D40];
  *&v22[*((*MEMORY[0x1E69E7D40] & *v22) + 0x710) + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = specialized _UIHostingView.init(rootView:)(a1);
  v25 = specialized UIHostingController.init(_hostingView:)(v24);
  *(v10[412] + v25 + 8) = a3;
  swift_unknownObjectWeakAssign();
  *(v24 + *((*v23 & *v24) + 0x710) + 8) = &protocol witness table for PresentationHostingControllerBase<A>;
  swift_unknownObjectWeakAssign();
  v26 = v25;
  specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(2u);
  type metadata accessor for _ContiguousArrayStorage<UITraitDefinition.Type>();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18CDD3F30;
  v28 = type metadata accessor for UITraitHorizontalSizeClass();
  v29 = MEMORY[0x1E69DC130];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v30 = type metadata accessor for UITraitVerticalSizeClass();
  v31 = MEMORY[0x1E69DC0C8];
  *(v27 + 48) = v30;
  *(v27 + 56) = v31;
  v32 = type metadata accessor for UITraitPresentationSemanticContext();
  v33 = MEMORY[0x1E69DC230];
  *(v27 + 64) = v32;
  *(v27 + 72) = v33;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v34 = *&v26[direct field offset for UIHostingController.host];

  UIHostingViewBase.viewGraph.getter();

  *&v36 = 0;
  lazy protocol witness table accessor for type RemoteSheetContainerViewGraphFeature and conformance RemoteSheetContainerViewGraphFeature();
  ViewGraph.append<A>(feature:)();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t specialized closure #1 in PresentationHostingController.prepareModalPresentationStyle(_:presentationOptions:)(uint64_t a1)
{
  v1 = *(a1 + direct field offset for UIHostingController.host);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.instantiateIfNeeded()();
}

void specialized PresentationHostingController.configureSizingOptions(for:sheetController:)(uint64_t a1, void *a2)
{
  if ([v2 modalPresentationStyle] == 7)
  {
    v5 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    v6 = *&v2[v5];
    *&v2[v5] = 1;
    specialized PresentationHostingController.sizingOptionsDidChange(from:)(v6);
    return;
  }

  if (*(a1 + 136))
  {
    v7 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    v8 = *&v2[v7];
    *&v2[v7] = 1;
    goto LABEL_23;
  }

  if ([v2 modalPresentationStyle] == 2)
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
    if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
      outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
      v9 = direct field offset for UIHostingController.sizingOptions;
      swift_beginAccess();
      v8 = *&v2[v9];
      *&v2[v9] = 1;
LABEL_23:
      specialized PresentationHostingController.sizingOptionsDidChange(from:)(v8);
      if (a2)
      {
        [a2 setPrefersPageSizing_];
      }

      return;
    }

    outlined init with copy of PresentationSizing?(a1 + 96, &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, &v15);
    }

    else
    {
      *(&v16 + 1) = &type metadata for AutomaticPresentationSizing;
      v17 = &protocol witness table for AutomaticPresentationSizing;
    }

    outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
  }

  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(a1 + 96, &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, &v15);
    }

    else
    {
      *(&v16 + 1) = &type metadata for AutomaticPresentationSizing;
      v17 = &protocol witness table for AutomaticPresentationSizing;
    }

    outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
    v12 = direct field offset for UIHostingController.sizingOptions;
    swift_beginAccess();
    v8 = *&v2[v12];
    *&v2[v12] = 0;
    goto LABEL_23;
  }

  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(a1 + 96, &v13);
    if (v14)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v13, &v15);
    }

    else
    {
      *(&v16 + 1) = &type metadata for AutomaticPresentationSizing;
      v17 = &protocol witness table for AutomaticPresentationSizing;
    }

    outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    outlined destroy of PresentationSizing?(&v15, type metadata accessor for PresentationSizing?);
    if ([v2 modalPresentationStyle] == 1)
    {
      v10 = direct field offset for UIHostingController.sizingOptions;
      swift_beginAccess();
      v11 = *&v2[v10];
      *&v2[v10] = 0;
      specialized PresentationHostingController.sizingOptionsDidChange(from:)(v11);
      if (a2)
      {
        [a2 setPrefersPageSizing_];
      }
    }
  }
}

uint64_t specialized closure #1 in PresentationHostingController.setupSheet(for:presenter:placement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + direct field offset for UIHostingController.host);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.preferenceValues()();

  PreferenceValues.subscript.getter();
  *(a2 + 96) = v12;
  *(a2 + 112) = *v13;
  *(a2 + 122) = *&v13[10];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *a2 = v6;
  *(a2 + 16) = v7;
  PreferenceValues.subscript.getter();

  *(a2 + 138) = v5;
  return result;
}

void specialized PresentationHostingController.updatePreferredContentSizeIfNeeded(presenter:sizing:)(void *a1, uint64_t a2)
{
  v3 = v2;
  if ([v3 modalPresentationStyle] != 2)
  {
    return;
  }

  v6 = [v3 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 != 2)
  {
    return;
  }

  outlined init with copy of PresentationSizing?(a2, &aBlock);
  if (*(&v60 + 1))
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&aBlock, &v67);
  }

  else
  {
    v8 = direct field offset for PresentationHostingController.lastPresentationOptions;
    swift_beginAccess();
    if (*&v3[v8])
    {
      outlined init with copy of PresentationOptionsPreference(&v3[v8], v57);
      _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
      lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
      if (static SemanticFeature.isEnabled.getter())
      {
        outlined init with copy of PresentationSizing?(v58 + 8, &v55);
        if (v56)
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v55, &v67);
        }

        else
        {
          *(&v68 + 1) = &type metadata for AutomaticPresentationSizing;
          *&v69 = &protocol witness table for AutomaticPresentationSizing;
        }
      }

      else
      {
        *&v69 = 0;
        v67 = 0u;
        v68 = 0u;
      }

      outlined destroy of PresentationOptionsPreference(v57);
    }

    else
    {
      *&v69 = 0;
      v67 = 0u;
      v68 = 0u;
    }

    if (*(&v60 + 1))
    {
      outlined destroy of PresentationSizing?(&aBlock, type metadata accessor for PresentationSizing?);
    }
  }

  if (!*(&v68 + 1))
  {
    outlined destroy of PresentationSizing?(&v67, type metadata accessor for PresentationSizing?);
    return;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v67, v77);
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = [v3 presentingViewController];
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  v10 = direct field offset for UIHostingController.sizingOptions;
  swift_beginAccess();
  v11 = *&v3[v10];
  v12 = a1;
  if (v11 || (v13 = [v3 sheetPresentationController]) == 0 || (v14 = v13, v15 = objc_msgSend(v13, sel_presentationStyle), v14, v15 != 2) || (v16 = &v3[direct field offset for PresentationHostingController.lastPresentationOptions], swift_beginAccess(), *v16) && (v16[136] & 1) != 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v17 = [v3 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  UIUserInterfaceIdiom.idiom.getter(v18, &v67);
  isEscapingClosureAtFileLocation = v67;
  if (v67)
  {
    v20 = *(&v67 + 1);
    *v57 = v67;
  }

  else
  {
    static _GraphInputs.defaultInterfaceIdiom.getter();
    v20 = v57[1];
    isEscapingClosureAtFileLocation = v57[0];
  }

  v21 = UIViewController.nonPresentedAncestor.getter();
  v22 = [v21 view];

  if (!v22)
  {
    goto LABEL_55;
  }

  v23 = *&v3[direct field offset for PresentationHostingController.lastColumnCount];
  v24 = [v3 traitCollection];
  v25 = [v24 _environmentWrapper];
  if (!v25)
  {
LABEL_36:
    EnvironmentValues.init()();
    v73 = *v57;
    EnvironmentValues.configureForRoot()();
    v32 = v73;
    if (one-time initialization token for configuredForPlatform != -1)
    {
      goto LABEL_53;
    }

    goto LABEL_37;
  }

  v26 = v25;
  type metadata accessor for EnvironmentWrapper();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_36;
  }

  v54 = isEscapingClosureAtFileLocation;
  v27 = v22;
  v28 = v20;
  v29 = v23;
  v30 = v26;
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

  v23 = v29;
  v20 = v28;
  v22 = v27;
  isEscapingClosureAtFileLocation = v54;

  for (i = *v57; ; i = v73)
  {
    *v57 = i;
    EnvironmentValues.readableWidth.getter();
    v34 = v33;

    v76 = 1;
    v75 = 1;
    v74 = 1;
    *&v67 = v22;
    *(&v67 + 1) = v23;
    v68 = 0uLL;
    LOBYTE(v69) = 1;
    *(&v69 + 1) = 0;
    LOBYTE(v70) = 1;
    *(&v70 + 1) = 0;
    LOBYTE(v71) = 1;
    *(&v71 + 1) = isEscapingClosureAtFileLocation;
    *&v72 = v20;
    *(&v72 + 1) = v34;
    outlined init with copy of _Benchmark(v77, v57);
    *&v57[9] = v69;
    v58[0] = v70;
    v58[1] = v71;
    v58[2] = v72;
    *&v57[5] = v67;
    *&v57[7] = v68;
    v35 = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    v66 = v35;
    swift_unknownObjectWeakInit();
    outlined init with copy of PresentationSizingContext(&v67, &aBlock);
    specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(v65);
    v37 = v36;
    v39 = v38;
    outlined destroy of weak FallbackResponderProvider?(v65);
    v22 = objc_opt_self();
    v32 = swift_allocObject();
    v32[2] = v3;
    v32[3] = v37;
    v32[4] = v39;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for specialized closure #1 in PresentationHostingController.preferredContentSize.setter;
    *(v23 + 24) = v32;
    *&v61 = partial apply for thunk for @callee_guaranteed () -> ();
    *(&v61 + 1) = v23;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v60 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v60 + 1) = &block_descriptor_62;
    v40 = _Block_copy(&aBlock);
    v24 = v3;

    v20 = v22;
    [v22 performWithoutAnimation_];
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_37:
    if (v32)
    {
      if (static EnvironmentValues.configuredForPlatform && v32 == static EnvironmentValues.configuredForPlatform)
      {
LABEL_40:
        EnvironmentValues.plist.setter();
      }
    }

    else if (!static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_40;
    }

    EnvironmentValues._configureForPlatform(traitCollection:)(v24);
  }

  if (v24[direct field offset for PresentationHostingController.isDelayingRemotePresentation] != 1)
  {
    outlined destroy of SheetSizing(v57);
    outlined destroy of OpenURLOptions(&v67);
    goto LABEL_21;
  }

  v41 = v78;
  v42 = v79;
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v66 = v35;
  swift_unknownObjectWeakInit();
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v64 = v72;
  aBlock = v67;
  v60 = v68;
  v43 = (*(v42 + 16))(v65, &aBlock, v41, v42);
  LOBYTE(v41) = v44;
  v46 = v45;
  v48 = v47;
  outlined destroy of weak FallbackResponderProvider?(v65);
  if (v41 & 1) != 0 || (v48)
  {
    outlined destroy of SheetSizing(v57);

    outlined destroy of OpenURLOptions(&v67);
    goto LABEL_22;
  }

  v49 = swift_allocObject();
  v49[2] = v24;
  v49[3] = v43;
  v49[4] = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = closure #1 in PresentationHostingController.preferredContentSize.setterspecialized partial apply;
  *(v50 + 24) = v49;
  *&v61 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  *(&v61 + 1) = v50;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v60 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v60 + 1) = &block_descriptor_19_1;
  v51 = _Block_copy(&aBlock);
  v52 = v24;

  [v22 performWithoutAnimation_];
  _Block_release(v51);
  v53 = swift_isEscapingClosureAtFileLocation();

  outlined destroy of OpenURLOptions(&v67);
  if (v53)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  outlined destroy of SheetSizing(v57);
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v77);
}

void specialized PresentationHostingController.configureDetents(of:using:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 2)
  {
    v7 = [v3 traitCollection];
    v8 = [v7 verticalSizeClass];

    if (v8 == 2)
    {
      v9 = v3 + direct field offset for PresentationHostingController.delegate;
      if (!swift_unknownObjectWeakLoadStrong() || (v10 = *(v9 + 8), ObjectType = swift_getObjectType(), LOBYTE(v10) = (*(v10 + 24))(ObjectType, v10), swift_unknownObjectRelease(), (v10 & 1) == 0))
      {
        type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_18CD69590;
        *(v42 + 32) = [objc_opt_self() largeDetent];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [a1 setDetents_];

        [a1 setLargestUndimmedDetentIdentifier_];
        [a1 setPrefersScrollingExpandsWhenScrolledToEdge_];
        UISheetPresentationController.preferredCornerRadius.setter();
        [a1 setPrefersEdgeAttachedInCompactHeight_];
        [a1 setPrefersGrabberVisible_];
        v44 = *(a2 + 80);
        if (*(a2 + 88))
        {
          v44 = *MEMORY[0x1E69DEA68];
        }

        [a1 _setGrabberTopSpacing_];
        outlined init with copy of PresentationSizing?(a2 + 96, &v64);
        v45 = *(&v65 + 1);
        outlined destroy of PresentationSizing?(&v64, type metadata accessor for PresentationSizing?);
        if (v45)
        {
          if ((*(a2 + 136) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
          if (static SemanticFeature.isEnabled.getter())
          {
            outlined init with copy of PresentationSizing?(a2 + 96, &v61);
            if (v62)
            {
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v61, &v64);
            }

            else
            {
              *(&v65 + 1) = &type metadata for AutomaticPresentationSizing;
              v66 = &protocol witness table for AutomaticPresentationSizing;
            }

            outlined destroy of PresentationSizing?(&v64, type metadata accessor for PresentationSizing?);
            if ((*(a2 + 136) & 1) == 0)
            {
LABEL_45:
              _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
              lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
              if (static SemanticFeature.isEnabled.getter())
              {
                outlined init with copy of PresentationSizing?(a2 + 96, &v61);
                if (v62)
                {
                  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v61, &v64);
                }

                else
                {
                  *(&v65 + 1) = &type metadata for AutomaticPresentationSizing;
                  v66 = &protocol witness table for AutomaticPresentationSizing;
                }

                outlined destroy of PresentationSizing?(&v64, type metadata accessor for PresentationSizing?);
                if ([v3 modalPresentationStyle] != 7)
                {
                  [a1 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
                  v46 = a2;
                  v47 = a1;
LABEL_86:
                  specialized PresentationHostingController.configureSizingOptions(for:sheetController:)(v46, v47);
                }
              }

              else
              {
                v66 = 0;
                v64 = 0u;
                v65 = 0u;
                outlined destroy of PresentationSizing?(&v64, type metadata accessor for PresentationSizing?);
              }

              return;
            }
          }

          else
          {
            v66 = 0;
            v64 = 0u;
            v65 = 0u;
            outlined destroy of PresentationSizing?(&v64, type metadata accessor for PresentationSizing?);
          }
        }

        [a1 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
        [a1 _setMode_];
        return;
      }
    }
  }

  if (one-time initialization token for clientNeedsOscillationSuppression != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    if (clientNeedsOscillationSuppression)
    {
      v12 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
      swift_beginAccess();
      outlined init with copy of MatchedTransitionIdentifier?(v3 + v12, &v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
      LOBYTE(v12) = PresentationOptionsPreference.sheetConfigurationChanged(from:)(&v64);
      outlined destroy of MatchedTransitionIdentifier?(&v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    v13 = *(v3 + direct field offset for PresentationHostingController.oscillationDetector);
    v56 = v3;
    v58 = a2;
    if (v13)
    {
      break;
    }

    outlined init with copy of PresentationOptionsPreference(a2, &v64);
    v25 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
    swift_beginAccess();
    outlined assign with take of PresentationOptionsPreference?(&v64, v3 + v25);
    swift_endAccess();
LABEL_21:
    v27 = *a2;
    v28 = *(*a2 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (!v28)
    {
LABEL_38:
      if (v29 >> 62)
      {
        v41 = __CocoaSet.count.getter();
        if (!v41)
        {
          goto LABEL_67;
        }

LABEL_40:
      }

      else
      {
        v41 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          goto LABEL_40;
        }

LABEL_67:
        type metadata accessor for PresentationOptionsPreference?(v41, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18CD69590;
        *(v48 + 32) = [objc_opt_self() largeDetent];
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent);
      v49 = Array._bridgeToObjectiveC()().super.isa;

      [a1 setDetents_];

      v50 = *(a2 + 48);
      if (v50 == 2)
      {
        [a1 setLargestUndimmedDetentIdentifier_];
      }

      else
      {
        outlined copy of PresentationDimmingBehavior?(*(a2 + 48));
        specialized PresentationDimmingBehavior.setLargestUndimmedDetentIdentifier(of:detents:)(a1, v50);
        outlined consume of PresentationDimmingBehavior?(v50);
      }

      [a1 setPrefersScrollingExpandsWhenScrolledToEdge_];
      UISheetPresentationController.preferredCornerRadius.setter();
      [a1 setPrefersEdgeAttachedInCompactHeight_];
      if (*(a2 + 58))
      {
        if (*(a2 + 58) == 1)
        {

          v51 = 1;
        }

        else
        {

          v51 = 0;
        }
      }

      else
      {
        if (v29 >> 62)
        {
          v52 = __CocoaSet.count.getter();
        }

        else
        {
          v52 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v51 = v52 > 1;
      }

      [a1 setPrefersGrabberVisible_];
      v53 = *(a2 + 80);
      if (*(a2 + 88))
      {
        v53 = *MEMORY[0x1E69DEA68];
      }

      [a1 _setGrabberTopSpacing_];
      v54 = [a1 prefersEdgeAttachedInCompactHeight];
      [a1 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
      if ((v54 & 1) != 0 || [v3 modalPresentationStyle] == 2)
      {
        v55 = 1;
      }

      else
      {
        v55 = [a1 prefersPageSizing] ^ 1;
      }

      [a1 _setMode_];
      v46 = a2;
      v47 = a1;
      goto LABEL_86;
    }

    *&v61 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v30 = v27 + 56;
    a2 = _HashTable.startBucket.getter();
    v31 = 0;
    v59 = v28;
    while ((a2 & 0x8000000000000000) == 0 && a2 < 1 << *(v27 + 32))
    {
      v33 = a2 >> 6;
      if ((*(v30 + 8 * (a2 >> 6)) & (1 << a2)) == 0)
      {
        goto LABEL_60;
      }

      v60 = v31;
      v3 = *(v27 + 36);
      v64 = *(*(v27 + 48) + 16 * a2);
      PresentationDetent.uiSheetDetent.getter();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 = 1 << *(v27 + 32);
      if (a2 >= v32)
      {
        goto LABEL_61;
      }

      v34 = *(v30 + 8 * v33);
      if ((v34 & (1 << a2)) == 0)
      {
        goto LABEL_62;
      }

      if (v3 != *(v27 + 36))
      {
        goto LABEL_63;
      }

      v35 = v34 & (-2 << (a2 & 0x3F));
      if (v35)
      {
        v32 = __clz(__rbit64(v35)) | a2 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v36 = v33 << 6;
        v37 = v33 + 1;
        v38 = (v27 + 64 + 8 * v33);
        while (v37 < (v32 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            outlined consume of Set<UIOpenURLContext>.Index._Variant(a2, v3, 0);
            v32 = __clz(__rbit64(v39)) + v36;
            goto LABEL_24;
          }
        }

        outlined consume of Set<UIOpenURLContext>.Index._Variant(a2, v3, 0);
      }

LABEL_24:
      v31 = v60 + 1;
      a2 = v32;
      if (v60 + 1 == v59)
      {
        v29 = v61;
        v3 = v56;
        a2 = v58;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  swift_beginAccess();
  v14 = *(v13 + 16);
  v15 = *(v14 + 16);

  v16 = v14 + 32;
  v3 = -1;
  a2 = &type metadata for PresentationOptionsPreference;
  do
  {
    if (v3 - v15 == -1)
    {

      a2 = v58;
      outlined init with copy of PresentationOptionsPreference(v58, &v64);
      v26 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
      v3 = v56;
      swift_beginAccess();
      outlined assign with take of PresentationOptionsPreference?(&v64, v56 + v26);
      swift_endAccess();
      specialized OscillationDetector.insert(_:)(v58);
      goto LABEL_21;
    }

    if (++v3 >= *(v14 + 16))
    {
      goto LABEL_64;
    }

    v17 = v16 + 144;
    outlined init with copy of MatchedTransitionIdentifier?(v16, &v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
    v18 = *(v13 + 32);

    LOBYTE(v18) = v18(v58, &v64);

    outlined destroy of MatchedTransitionIdentifier?(&v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
    v16 = v17;
  }

  while ((v18 & 1) == 0);

  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(281);
  v63 = v64;
  MEMORY[0x18D00C9B0](0xD000000000000083, 0x800000018CD53F20);
  v19 = direct field offset for PresentationHostingController.lastPreferenceForSheetControllerConfiguration;
  swift_beginAccess();
  v20 = outlined init with copy of MatchedTransitionIdentifier?(v56 + v19, &v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  MEMORY[0x1EEE9AC00](v20);
  v21 = _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI29PresentationOptionsPreferenceV_s5NeverOSSTg5(partial apply for closure #1 in PresentationHostingController.configureDetents(of:using:));
  v23 = v22;
  outlined destroy of MatchedTransitionIdentifier?(&v64, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    v23 = 0xE000000000000000;
  }

  MEMORY[0x18D00C9B0](v24, v23);

  MEMORY[0x18D00C9B0](0xD000000000000094, 0x800000018CD53FB0);
  MEMORY[0x18D009810](v63, *(&v63 + 1));
}

void specialized PresentationHostingController.setPassthrough(using:)(uint64_t a1)
{
  v3 = [v1 popoverPresentationController];
  if (v3)
  {
    v10 = v3;
    if (*(a1 + 56) == 2 && (v4 = [v1 presentingViewController]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_view), v5, v6))
    {
      [v10 _setOverrideAllowsHitTestingOnBackgroundViews_];
      type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_18CD69590;
      *(v7 + 32) = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v8 = v6;
      v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 setPassthroughViews_];
    }

    else
    {
      [v10 _setOverrideAllowsHitTestingOnBackgroundViews_];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
      v9.super.isa = Array._bridgeToObjectiveC()().super.isa;
      [v10 setPassthroughViews_];
    }
  }
}

void specialized closure #1 in UIHostingController.sizingOptionsDidChange(from:)(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    specialized UIHostingController.idealSizeDidChange(from:to:)(v1, v2);
  }
}

uint64_t specialized closure #1 in PresentationHostingController.setWantsFullScreen(placement:sheetController:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + direct field offset for UIHostingController.host);
  UIHostingViewBase.viewGraph.getter();

  GraphHost.preferenceValue<A>(_:)();

  *a2 = v5;
  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  v3 = *(result + 32);
  if (v2 >> 1 != 0xFFFFFFFF || v3 >= 2)
  {
    *a2 = *result;
    *(a2 + 8) = v2;
    *(a2 + 16) = *(result + 16);
    *(a2 + 32) = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #2 in PresentationHostingController.init(rootView:delegate:placement:legacyDrawsBackground:)(uint64_t a1)
{
  v2 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  outlined init with copy of MatchedTransitionIdentifier?(a1 + v2, v4, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  if (!*&v4[0])
  {
    return outlined destroy of MatchedTransitionIdentifier?(v4, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference);
  }

  v6[6] = v4[6];
  v7[0] = v5[0];
  *(v7 + 10) = *(v5 + 10);
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[0] = v4[0];
  v6[1] = v4[1];
  specialized PresentationHostingController.updateSheet(with:)(v6);
  return outlined destroy of PresentationOptionsPreference(v6);
}

id outlined copy of PresentationDimmingBehavior?(id result)
{
  if (result != 2)
  {
    return outlined copy of Image.Location(result);
  }

  return result;
}

uint64_t outlined init with copy of MatchedTransitionIdentifier?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for PresentationOptionsPreference?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id partial apply for specialized closure #1 in PresentationHostingController.preferredContentSize.setter()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, v2, v3);
}

uint64_t specialized PresentationHostingController.updateDetentsSelection(of:using:)(uint64_t result, uint64_t *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = result;
    v5 = a2[3];
    v4 = a2[4];
    v7 = *a2;
    v6 = a2[1];
    v23 = v6;
    v24 = v2;
    v25 = v5;
    v26 = v4;
    type metadata accessor for PresentationOptionsPreference?(0, &lazy cache variable for type metadata for Binding<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E6981948]);
    v9 = v8;

    MEMORY[0x18D00ACC0](&v22, v9);
    if ((specialized Set.contains(_:)(v22, *(&v22 + 1), v7) & 1) == 0)
    {
      MEMORY[0x18D009810](0xD000000000000052, 0x800000018CD53EC0);
      return outlined consume of Binding<NavigationSplitViewColumn>?(v6, v2);
    }

    v23 = v6;
    v24 = v2;
    v25 = v5;
    v26 = v4;
    MEMORY[0x18D00ACC0](&v22, v9);
    v21 = v22;
    v10 = PresentationDetent.uiSheetDetentId.getter();
    v11 = [v3 selectedDetentIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

LABEL_9:

        return outlined consume of Binding<NavigationSplitViewColumn>?(v6, v2);
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_9;
      }
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v3;
    *(v18 + 24) = v10;
    v19 = v10;
    v20 = v3;
    onNextMainRunLoop(do:)();

    outlined consume of Binding<NavigationSplitViewColumn>?(v6, v2);
  }

  return result;
}

uint64_t specialized MainContentView.init<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return AnyView.init<A>(_:)();
}

id specialized BridgedInspectorRepresentable.makeUIViewController(context:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4[0] = *(a1 + 16);
  v4[1] = v1;

  v2 = NavigationSplitInspectorCoordinator.makeSplitViewController(environment:)(v4);

  return v2;
}

uint64_t specialized SystemInspectorRoot.inspectorColumnWidth(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _VariadicView_Children(a1, v13);
  v14 = closure #1 in SystemInspectorRoot.inspectorColumnWidth(from:);
  v15 = 0;
  v16 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v17 = 0;
  v18 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v19 = 0;
  v3 = 0;
  if (_VariadicView_Children.endIndex.getter())
  {
    do
    {
      _VariadicView_Children.subscript.getter();
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of _VariadicView_Children.Element(v12);
      if (*(&v9 + 1) >> 1 != 0xFFFFFFFFLL || v11 >= 2u)
      {
        break;
      }

      result = _VariadicView_Children.endIndex.getter();
      if (v3 >= result)
      {
        __break(1u);
        goto LABEL_15;
      }

      ++v3;
    }

    while (v3 != _VariadicView_Children.endIndex.getter());
  }

  if (v3 == _VariadicView_Children.endIndex.getter())
  {
    v5 = 0;
    v7 = 0u;
    v8 = xmmword_18CD647F0;
LABEL_13:
    result = outlined destroy of PresentationSizing?(v13, type metadata accessor for LazyMapSequence<LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>, InspectorColumnWidth>);
    *a2 = v8;
    *(a2 + 16) = v7;
    *(a2 + 32) = v5;
    return result;
  }

  _VariadicView_Children.subscript.getter();
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v7 = v10;
  v8 = v9;
  v5 = v11;
  result = outlined destroy of _VariadicView_Children.Element(v12);
  if (*(&v9 + 1) >> 1 != 0xFFFFFFFFLL || v11 >= 2u)
  {
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void specialized closure #2 in PresentationHostingController.sizingOptionsDidChange(from:)(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = direct field offset for PresentationHostingController.lastPresentationOptions;
  swift_beginAccess();
  if (!*&v6[v7])
  {

    v34 = 0;
    aBlock = 0u;
    v33 = 0u;
LABEL_16:
    outlined destroy of PresentationSizing?(&aBlock, type metadata accessor for PresentationSizing?);
    return;
  }

  outlined init with copy of PresentationOptionsPreference(&v6[v7], v40);
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    outlined init with copy of PresentationSizing?(&v48, &v30);
    if (v31)
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, &aBlock);
    }

    else
    {
      *(&v33 + 1) = &type metadata for AutomaticPresentationSizing;
      v34 = &protocol witness table for AutomaticPresentationSizing;
    }
  }

  else
  {
    v34 = 0;
    aBlock = 0u;
    v33 = 0u;
  }

  outlined destroy of PresentationOptionsPreference(v40);
  if (!*(&v33 + 1))
  {

    goto LABEL_16;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&aBlock, v53);
  v8 = v6;
  v9 = [v8 presentingViewController];
  if (!v9)
  {

    goto LABEL_27;
  }

  v10 = v9;
  v11 = UIViewController.nonPresentedAncestor.getter();
  v12 = [v11 view];

  if (!v12)
  {
    __break(1u);
    return;
  }

  v13 = *&v8[direct field offset for PresentationHostingController.lastColumnCount];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  v36.receiver = v8;
  v36.super_class = v14;
  objc_msgSendSuper2(&v36, sel_preferredContentSize);
  v16 = v15;
  v18 = v17;
  v19 = [v8 traitCollection];

  v20 = [v19 _environmentWrapper];
  if (!v20)
  {
LABEL_19:
    EnvironmentValues.init()();
    v30 = v40[0];
    EnvironmentValues.configureForRoot()();
    v24 = v30;
    if (one-time initialization token for configuredForPlatform != -1)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  v21 = v20;
  type metadata accessor for EnvironmentWrapper();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_19;
  }

  v22 = v21;
  dispatch thunk of ViewGraphHostEnvironmentWrapper.environment.getter();

  for (i = v40[0]; ; i = v30)
  {
    v40[0] = i;
    EnvironmentValues.readableWidth.getter();
    v26 = v25;

    v39 = 0;
    v38 = 1;
    v37 = 1;
    outlined init with copy of _Benchmark(v53, v40);
    v41 = v12;
    v42 = v13;
    v43 = v16;
    v44 = v18;
    v45 = 0;
    v46 = 0;
    v47 = 1;
    v48 = 0;
    v49 = 1;
    v50 = isEscapingClosureAtFileLocation;
    v51 = a3;
    v52 = v26;
    *(&aBlock + 1) = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    swift_unknownObjectWeakInit();
    specialized SheetSizing.sheetSizeThatFits<A>(host:subview:)(&aBlock);
    v16 = v27;
    v18 = v28;
    outlined destroy of weak FallbackResponderProvider?(&aBlock);
    v29 = objc_opt_self();
    a3 = swift_allocObject();
    a3[2] = v8;
    a3[3] = v16;
    a3[4] = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = closure #1 in PresentationHostingController.preferredContentSize.setterspecialized partial apply;
    *(v24 + 24) = a3;
    v34 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v35 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v33 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v33 + 1) = &block_descriptor_47_0;
    v12 = _Block_copy(&aBlock);
    v19 = v35;
    v8 = v8;

    [v29 performWithoutAnimation_];
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_32:
    swift_once();
LABEL_20:
    if (v24)
    {
      if (static EnvironmentValues.configuredForPlatform && v24 == static EnvironmentValues.configuredForPlatform)
      {
LABEL_23:
        EnvironmentValues.plist.setter();
      }
    }

    else if (!static EnvironmentValues.configuredForPlatform)
    {
      goto LABEL_23;
    }

    EnvironmentValues._configureForPlatform(traitCollection:)(v19);
  }

  outlined destroy of SheetSizing(v40);
LABEL_27:
  __swift_destroy_boxed_opaque_existential_1(v53);
}

BOOL partial apply for specialized closure #1 in UIViewController.findMatchedTransitionBarButtonItem<A>(id:in:)()
{
  v1 = specialized UIViewController.matchingBarButton<A>(id:in:)(*(v0 + 16), *(v0 + 24));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void type metadata accessor for _ContiguousArrayStorage<UITraitDefinition.Type>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitDefinition.Type>)
  {
    type metadata accessor for UITraitDefinition.Type();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UITraitDefinition.Type>);
    }
  }
}

uint64_t type metadata completion function for SystemInspector()
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

uint64_t *initializeBufferWithCopyOfBuffer for SystemInspector(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64) + 7;
  v11 = ((v10 + ((v5 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
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
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 16) = *(v20 + 16);
  }

  return v3;
}

uint64_t destroy for SystemInspector(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 24) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 24) - 8) + 80)) & ~*(*(*(a2 + 24) - 8) + 80));
}

uint64_t initializeWithCopy for SystemInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  return a1;
}

uint64_t assignWithCopy for SystemInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);

  *(v15 + 16) = *(v16 + 16);
  return a1;
}

uint64_t initializeWithTake for SystemInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 16);
  *v15 = *v16;
  *(v15 + 16) = v17;
  return a1;
}

uint64_t assignWithTake for SystemInspector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24) + 7;
  v15 = (v14 + v12) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v14 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);

  *(v15 + 16) = *(v16 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemInspector(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
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

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 17;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = a1[v13]) == 0)
  {
LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))();
    }

    v22 = &a1[v11] & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void storeEnumTagSinglePayload for SystemInspector(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 7;
  v17 = ((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
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
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v16 + v25) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v27 + 16) = 0;
            *v27 = a2 & 0x7FFFFFFF;
            *(v27 + 8) = 0;
          }

          else
          {
            *(v27 + 8) = a2 - 1;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t type metadata completion function for InspectorColumnView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for SystemInspectorRoot()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SystemInspectorRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || ((v7 + ((v6 + 16) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    v3 = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v11 = (a1 + v6 + 16) & ~v6;
    v12 = (a2 + v6 + 16) & ~v6;
    v13 = *(v5 + 16);

    v13(v11, v12, v4);
    v14 = (v7 + v11) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v7 + v12) & 0xFFFFFFFFFFFFFFF8;
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *(v14 + 16) = *(v15 + 16);
  }

  return v3;
}

uint64_t destroy for SystemInspectorRoot(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t initializeWithCopy for SystemInspectorRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 16);
  v6 = *(v4 - 8) + 16;
  v7 = *(*(v4 - 8) + 80);
  v8 = (v7 + 16 + a1) & ~v7;
  v9 = (v7 + 16 + a2) & ~v7;

  v5(v8, v9, v4);
  v10 = *(v6 + 48) + 7;
  v11 = (v10 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + v9) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 16) = *(v12 + 16);

  return a1;
}

uint64_t assignWithCopy for SystemInspectorRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 16 + a1) & ~v8;
  v10 = (v8 + 16 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);

  *(v12 + 16) = *(v13 + 16);
  return a1;
}

uint64_t assignWithTake for SystemInspectorRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 16 + a1) & ~v8;
  v10 = (v8 + 16 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);

  *(v12 + 16) = *(v13 + 16);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for SystemInspectorRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for UnbridgedInspectorModifier<ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for UnbridgedInspectorModifier<ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>();
    lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for UnbridgedInspectorModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UnbridgedInspectorModifier<ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>)
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E697FFC8], MEMORY[0x1E697F378]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>();
    lazy protocol witness table accessor for type _UnaryViewAdaptor<_VariadicView_Children> and conformance _UnaryViewAdaptor<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _UnaryViewAdaptor<_VariadicView_Children> and conformance _UnaryViewAdaptor<A>()
{
  result = lazy protocol witness table cache variable for type _UnaryViewAdaptor<_VariadicView_Children> and conformance _UnaryViewAdaptor<A>;
  if (!lazy protocol witness table cache variable for type _UnaryViewAdaptor<_VariadicView_Children> and conformance _UnaryViewAdaptor<A>)
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(255, &lazy cache variable for type metadata for _UnaryViewAdaptor<_VariadicView_Children>, MEMORY[0x1E697FFD0], MEMORY[0x1E697FFC8], MEMORY[0x1E697F378]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _UnaryViewAdaptor<_VariadicView_Children> and conformance _UnaryViewAdaptor<A>);
  }

  return result;
}

uint64_t outlined destroy of PresentationSizing?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for LazyMapSequence<LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>, InspectorColumnWidth>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>, InspectorColumnWidth>)
  {
    type metadata accessor for LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>();
    lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>> and conformance LazyFilterSequence<A>, type metadata accessor for LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>);
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>, InspectorColumnWidth>);
    }
  }
}

void type metadata accessor for LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>()
{
  if (!lazy cache variable for type metadata for LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>)
  {
    type metadata accessor for LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>();
    lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?> and conformance LazyMapSequence<A, B>, type metadata accessor for LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>);
    v0 = type metadata accessor for LazyFilterSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyFilterSequence<LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>>);
    }
  }
}

void type metadata accessor for LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>()
{
  if (!lazy cache variable for type metadata for LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>)
  {
    type metadata accessor for PresentationOptionsPreference?(255, &lazy cache variable for type metadata for InspectorColumnWidth?, &type metadata for InspectorColumnWidth, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for LazyMapSequence();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LazyMapSequence<_VariadicView_Children, InspectorColumnWidth?>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, ClearInspectorPresentationEnvironment> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for BridgedInspectorRepresentable()
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

uint64_t *initializeBufferWithCopyOfBuffer for BridgedInspectorRepresentable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = ((v10 + ((v5 + v8) & ~v8) + 71) & 0xFFFFFFFFFFFFFFF8) + 20;
  v12 = v8 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = ~v8;
    (*(v4 + 16))(a1);
    v18 = (v3 + v9) & v16;
    v19 = (a2 + v9) & v16;
    (*(v7 + 16))(v18, v19, v6);
    v20 = (v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v19 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v21;
    v22 = *(v21 + 16);
    *(v20 + 32) = *(v21 + 32);
    *v20 = v23;
    *(v20 + 16) = v22;
    v24 = (v18 + v10 + 47) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v19 + v10 + 47) & 0xFFFFFFFFFFFFFFF8;
    *v24 = *v25;
    *(v24 + 8) = *(v25 + 8);
    *(v24 + 16) = *(v25 + 16);
    v26 = (v18 + v10 + 71) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v19 + v10 + 71) & 0xFFFFFFFFFFFFFFF8;
    *v26 = *v27;
    *(v26 + 8) = *(v27 + 8);
    *(v26 + 16) = *(v27 + 16);
    *(v26 + 18) = *(v27 + 18);
  }

  return v3;
}

uint64_t destroy for BridgedInspectorRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 24) - 8) + 8))((*(v4 + 56) + a1 + *(*(*(a2 + 24) - 8) + 80)) & ~*(*(*(a2 + 24) - 8) + 80));
}

uint64_t initializeWithCopy for BridgedInspectorRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 16;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 16))(v12, v13);
  v14 = *(v9 + 48);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  *(v21 + 16) = *(v22 + 16);
  v23 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;
  *(v23 + 8) = *(v24 + 8);
  *(v23 + 16) = *(v24 + 16);
  *(v23 + 18) = *(v24 + 18);

  return a1;
}

uint64_t assignWithCopy for BridgedInspectorRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v14 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;

  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);
  v23 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;

  *(v23 + 8) = *(v24 + 8);

  *(v23 + 16) = *(v24 + 16);
  *(v23 + 18) = *(v24 + 18);
  return a1;
}

uint64_t initializeWithTake for BridgedInspectorRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 32))(v12, v13);
  v14 = *(v9 + 32);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  *(v21 + 16) = *(v22 + 16);
  *v21 = v23;
  v24 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  LODWORD(v21) = *(v25 + 16);
  *v24 = *v25;
  *(v24 + 16) = v21;
  return a1;
}

uint64_t assignWithTake for BridgedInspectorRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 40))(v12, v13);
  v14 = *(v9 + 24);
  v15 = v14 + v12;
  v16 = v14 + v13;
  v17 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  v21 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;

  *(v21 + 8) = *(v22 + 8);

  *(v21 + 16) = *(v22 + 16);
  v23 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  *v23 = *v24;

  *(v23 + 8) = *(v24 + 8);

  *(v23 + 16) = *(v24 + 16);
  *(v23 + 18) = *(v24 + 18);
  return a1;
}

uint64_t getEnumTagSinglePayload for BridgedInspectorRepresentable(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= v5)
  {
    v11 = *(v4 + 84);
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v11 < a2 && *(a1 + ((v10 + (v12 & ~v9) + 71) & 0xFFFFFFFFFFFFFFF8) + 20))
  {
    return v11 + *a1 + 1;
  }

  if (v5 == v11)
  {
    return (*(v4 + 48))();
  }

  v14 = (a1 + v12) & ~v9;
  if (v8 == v11)
  {
    return (*(v7 + 48))(v14, v8, v6);
  }

  v15 = *(((v10 + v14 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void storeEnumTagSinglePayload for BridgedInspectorRepresentable(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v12 + ((v10 + v11) & ~v11) + 71) & 0xFFFFFFFFFFFFFFF8) + 20;
  if (v14 >= a2)
  {
    if (v14 < a3)
    {
      a1[v15] = 0;
    }

    if (a2)
    {
      if (v7 == v14)
      {
        v17 = *(v6 + 56);

        v17();
      }

      else
      {
        v18 = &a1[v10 + v11] & ~v11;
        if (v9 == v14)
        {
          v19 = *(v8 + 56);

          v19(v18);
        }

        else
        {
          v20 = (v12 + v18 + 47) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v20 + 16) = 0;
            *v20 = a2 & 0x7FFFFFFF;
            *(v20 + 8) = 0;
          }

          else
          {
            *(v20 + 8) = a2 - 1;
          }
        }
      }
    }
  }

  else
  {
    v16 = ~v14 + a2;
    bzero(a1, ((v12 + ((v10 + v11) & ~v11) + 71) & 0xFFFFFFFFFFFFFFF8) + 20);
    *a1 = v16;
    if (v14 < a3)
    {
      a1[v15] = 1;
    }
  }
}

uint64_t List.init<A, B>(_:editActions:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v38 = a8;
  v45 = a6;
  v46 = a7;
  v43 = a4;
  v44 = a5;
  v41 = a9;
  v42 = a3;
  v40 = a1;
  v34 = a17;
  v33 = a15;
  v35 = a14;
  v32 = a13;
  v36 = a12;
  v37 = a11;
  v39 = type metadata accessor for Binding();
  v20 = *(v39 - 8);
  v21 = MEMORY[0x1EEE9AC00](v39);
  v23 = &v31 - v22;
  v24 = *a2;
  (*(v20 + 16))(&v31 - v22, a1, v21);
  v47 = a8;
  v48 = a10;
  v49 = a11;
  v50 = a12;
  v25 = v32;
  v51 = v32;
  v52 = a14;
  v26 = v33;
  v53 = v33;
  v54 = a16;
  v27 = v34;
  v55 = v34;
  KeyPath = swift_getKeyPath();
  v56 = v24;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:editActions:selection:rowContent:)(v23, KeyPath, &v56, v42, v43, v44, v45, v46, v41, v38, a10, v37, v36, v25, v35, AssociatedConformanceWitness, v26, v27);
  return (*(v20 + 8))(v40, v39);
}

uint64_t List.init<A, B, C>(_:id:editActions:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *a2;
  v20 = *a3;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a16;
  v38 = a17;
  v39 = a18;
  v40 = a1;
  v41 = a2;
  v42 = v20;
  v43 = a7;
  v44 = a8;
  v21 = *(v19 + *MEMORY[0x1E69E77B0] + 8);
  v46 = type metadata accessor for IndexedIdentifierCollection();
  v47 = v21;
  v48 = type metadata accessor for EditableCollectionContent();
  WitnessTable = swift_getWitnessTable();
  v50 = a16;
  v22 = type metadata accessor for ForEach();
  v45 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  List.init(selection:content:)(a4, a5, a6, partial apply for closure #1 in List.init<A, B, C>(_:id:editActions:selection:rowContent:), v30, a10, v22, a13, a9, v23);

  v24 = type metadata accessor for Binding();
  return (*(*(v24 - 8) + 8))(a1, v24);
}

void List.init<A, B>(_:editActions:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void List.init<A, B, C>(_:id:editActions:selection:rowContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t List.init<A, B>(_:editActions:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v48 = a4;
  v49 = a5;
  v45 = a3;
  v46 = a1;
  v47 = a9;
  v51 = a15;
  v52 = a8;
  v42 = a13;
  v41 = a12;
  v50 = a11;
  v40 = a10;
  v43 = a6;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v39 = type metadata accessor for Optional();
  v38 = *(v39 - 8);
  v19 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v21 = &v35 - v20;
  v36 = &v35 - v20;
  v44 = type metadata accessor for Binding();
  v22 = *(v44 - 8);
  v23 = MEMORY[0x1EEE9AC00](v44);
  v25 = &v35 - v24;
  v26 = *a2;
  (*(v22 + 16))(&v35 - v24, a1, v23);
  v53 = a6;
  v54 = a7;
  v35 = a7;
  v55 = v52;
  v56 = a10;
  v27 = v41;
  v57 = v50;
  v58 = v41;
  v28 = v42;
  v59 = v42;
  v60 = a14;
  v61 = v51;
  KeyPath = swift_getKeyPath();
  v62 = v26;
  v29 = *(v19 + 16);
  v30 = v21;
  v31 = v45;
  v32 = v39;
  v29(v30, v45, v39);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  List.init<A, B, C>(_:id:editActions:selection:rowContent:)(v25, KeyPath, &v62, v36, v48, v49, v43, v35, v47, v52, v40, v50, v27, AssociatedConformanceWitness, v28, v51);
  (*(v38 + 8))(v31, v32);
  return (*(v22 + 8))(v46, v44);
}

uint64_t List.init<A, B, C>(_:id:editActions:selection:rowContent:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v39 = a8;
  v41 = a6;
  v40 = a5;
  v45 = a4;
  v46 = a1;
  v35 = a2;
  v47 = a9;
  v38 = a16;
  v37 = a15;
  v34 = a13;
  v42 = a11;
  v36 = *a2;
  v43 = a7;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v44 = type metadata accessor for Optional();
  v20 = *(v44 - 8);
  v21 = MEMORY[0x1EEE9AC00](v44);
  v23 = &v34 - v22;
  v24 = *a3;
  (*(v20 + 16))(&v34 - v22, a4, v21);
  v49 = a7;
  v50 = v39;
  v51 = a10;
  v52 = a11;
  v53 = a12;
  v54 = v34;
  v55 = a14;
  v56 = v37;
  v57 = v38;
  v58 = a1;
  v59 = v35;
  v60 = v24;
  v61 = v40;
  v62 = v41;
  v25 = *(v36 + *MEMORY[0x1E69E77B0] + 8);
  v26 = *(a12 + 8);
  v64 = v39;
  v65 = v25;
  v66 = v26;
  v67 = a14;
  v27 = type metadata accessor for IndexedIdentifierCollection();
  v28 = type metadata accessor for EditableCollectionContent();
  WitnessTable = swift_getWitnessTable();
  v64 = v27;
  v65 = v25;
  v66 = v28;
  v67 = WitnessTable;
  v68 = a14;
  v30 = type metadata accessor for ForEach();
  v63 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  List.init(selection:content:)(v23, partial apply for closure #1 in List.init<A, B, C>(_:id:editActions:selection:rowContent:), v48, v43, v30, v42, v31, v47);

  (*(v20 + 8))(v45, v44);
  v32 = type metadata accessor for Binding();
  return (*(*(v32 - 8) + 8))(v46, v32);
}

uint64_t closure #1 in List.init<A, B, C>(_:id:editActions:selection:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v47 = a4;
  v48 = a8;
  v41 = a1;
  v42 = a3;
  v43 = a14;
  v44 = a13;
  v45 = a5;
  v46 = a11;
  v39 = a7;
  v40 = a10;
  v16 = *a2;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v21 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v22 = *(a10 + 8);
  v50 = a6;
  v51 = v21;
  v52 = v22;
  v53 = a12;
  v38 = a12;
  v23 = type metadata accessor for IndexedIdentifierCollection();
  v24 = type metadata accessor for EditableCollectionContent();
  WitnessTable = swift_getWitnessTable();
  v50 = v23;
  v51 = v21;
  v52 = v24;
  v53 = WitnessTable;
  v54 = a12;
  v26 = type metadata accessor for ForEach();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v38 - v32;
  (*(v18 + 16))(v20, v41, v17, v31);
  v50 = v42;

  v34 = v45;

  ForEach.init<A, B>(_:id:editActions:content:)(v20, a2, &v50, v47, v34, a6, v39, v38, v29, v40, v46, v44, v43);
  v49 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v29, v26, v35);
  v36 = *(v27 + 8);
  v36(v29, v26);
  static ViewBuilder.buildExpression<A>(_:)(v33, v26, v35);
  return (v36)(v33, v26);
}

uint64_t List<>.init<A, B>(_:editActions:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22[0] = a8;
  v22[1] = a6;
  v27 = a4;
  v28 = a7;
  v25 = a9;
  v26 = a3;
  v24 = a1;
  v23 = type metadata accessor for Binding();
  v16 = *(v23 - 8);
  v17 = MEMORY[0x1EEE9AC00](v23);
  v19 = v22 - v18;
  v20 = *a2;
  (*(v16 + 16))(v22 - v18, a1, v17);
  v29 = a5;
  v30 = a6;
  v31 = v28;
  v32 = v22[0];
  v33 = a10;
  v34 = a11;
  v35 = a12;
  swift_getKeyPath();
  v36 = v20;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  List<>.init<A, B, C>(_:id:editActions:rowContent:)(v19, v25);
  return (*(v16 + 8))(v24, v23);
}

uint64_t List<>.init<A, B, C>(_:id:editActions:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for IndexedIdentifierCollection();
  type metadata accessor for EditableCollectionContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  swift_getWitnessTable();
  swift_getWitnessTable();
  List<>.init(content:)(partial apply for closure #1 in List<>.init<A, B, C>(_:id:editActions:rowContent:), a2);

  v4 = type metadata accessor for Binding();
  return (*(*(v4 - 8) + 8))(a1, v4);
}

uint64_t closure #1 in List<>.init<A, B, C>(_:id:editActions:rowContent:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a8;
  v47 = a4;
  v48 = a9;
  v41 = a1;
  v42 = a3;
  v44 = a12;
  v45 = a5;
  v43 = a13;
  v46 = a10;
  v16 = *a2;
  v17 = type metadata accessor for Binding();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v21 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
  v22 = *(a8 + 8);
  v50 = a6;
  v51 = v21;
  v52 = v22;
  v53 = a11;
  v38 = a11;
  v23 = type metadata accessor for IndexedIdentifierCollection();
  v24 = type metadata accessor for EditableCollectionContent();
  WitnessTable = swift_getWitnessTable();
  v50 = v23;
  v51 = v21;
  v52 = v24;
  v53 = WitnessTable;
  v54 = a11;
  v26 = type metadata accessor for ForEach();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v38 - v32;
  (*(v18 + 16))(v20, v41, v17, v31);
  v50 = v42;

  v34 = v45;

  ForEach.init<A, B>(_:id:editActions:content:)(v20, a2, &v50, v47, v34, a6, v39, v38, v29, v40, v46, v44, v43);
  v49 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v29, v26, v35);
  v36 = *(v27 + 8);
  v36(v29, v26);
  static ViewBuilder.buildExpression<A>(_:)(v33, v26, v35);
  return (v36)(v33, v26);
}

uint64_t _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier.value.getter()
{
  if (*(AGGraphGetValue() + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Value = AGGraphGetValue();
  v2 = MEMORY[0x18D006480](Value, v1);
  v3 = 0;
  if (v2)
  {
    v3 = v5 ^ *AGGraphGetValue();
  }

  return v3 & 1;
}

uint64_t protocol witness for Rule.value.getter in conformance _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier@<X0>(_BYTE *a1@<X8>)
{
  result = _AccessibilityIgnoresInvertColorsViewModifier.ChildModifier.value.getter();
  *a1 = result & 1;
  return result;
}

double _AccessibilityIgnoresInvertColorsViewModifier.ChildEnvironment.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *&v6 = *Value;
  *(&v6 + 1) = v3;

  v4 = swift_retain_n();
  if (MEMORY[0x18D006480](v4))
  {
    AGGraphGetValue();
  }

  type metadata accessor for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  result = *&v6;
  *a1 = v6;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IgnoreInvertColorsFilterActiveKey>);
    }
  }
}

void outlined consume of GraphicsFilter(void *a1, id a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16)
{
  v21 = (a16 >> 25) & 0x1E | (a16 >> 23) & 1;
  if (v21 <= 17)
  {
    if (v21 == 1)
    {
      v33 = a14;
      v34 = a15;
      v31 = a12;
      v32 = a13;
      v30 = a11;
      v35 = a16 & 0xC37FFFFF;
      a2 = a3;
      v23 = a4;
      v24 = a5;
      v25 = a6;
      v26 = a7;
      v27 = a8;
      v28 = a9;
      v29 = a10;
      goto LABEL_11;
    }

    if (v21 != 2 && v21 != 3)
    {
      return;
    }

LABEL_10:
    v33 = a13;
    v34 = a14;
    v31 = a11;
    v32 = a12;
    v30 = a10;
    v35 = a15;
    v23 = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v29 = a9;
LABEL_11:
    outlined consume of VariableBlurStyle.Mask(a2, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    return;
  }

  switch(v21)
  {
    case 18:

      return;
    case 21:
      goto LABEL_10;
    case 22:

      break;
  }
}

void outlined consume of VariableBlurStyle.Mask(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14)
{
  if (!(a14 >> 30))
  {
    outlined consume of GraphicsImage.Contents?(a1, a2);
  }
}

double _s7SwiftUI14GraphicsFilterOWOi24_(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 746586112;
  return result;
}

uint64_t property wrapper backing initializer of MapAnimator.state(uint64_t a1)
{
  v2 = type metadata accessor for AdapterState();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

uint64_t MapAnimator.state.getter(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  type metadata accessor for AdapterState();
  v3 = type metadata accessor for State();
  return a2(v3);
}

uint64_t MapAnimator.init(value:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for AdapterState();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v24 - v17;
  v24[0] = a4;
  v24[1] = a5;
  v24[2] = a6;
  v24[3] = a7;
  v19 = type metadata accessor for MapAnimator();
  v20 = type metadata accessor for AdapterState.PlaybackState();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  property wrapper backing initializer of MapAnimator.state(v18);
  type metadata accessor for Optional();
  v21 = type metadata accessor for Binding();
  result = (*(*(v21 - 8) + 32))(a8, a1, v21);
  v23 = (a8 + *(v19 + 56));
  *v23 = a2;
  v23[1] = a3;
  return result;
}

uint64_t MapAnimator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = v6;
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = type metadata accessor for AdapterState();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  MapAnimator.state.getter(a1, MEMORY[0x1E6981778]);
  v14 = AdapterState.isPlaying.getter(v10);
  (*(v11 + 8))(v13, v10);
  v64 = 0x3F81111111111111;
  v65 = !v14;
  v15 = *(v5 + 16);
  v43 = v5 + 16;
  v45 = v15;
  v38 = v7;
  v15(v7, v3, a1);
  v41 = *(v5 + 80);
  v16 = (v41 + 48) & ~v41;
  v39 = v16;
  v17 = swift_allocObject();
  v36 = *(a1 + 40);
  v18 = v36;
  v37 = v9;
  v19.i64[0] = v9;
  v47 = *(a1 + 24);
  v20 = *(a1 + 32);
  *(v17 + 16) = vzip1q_s64(v19, v47);
  *(v17 + 32) = v20;
  v40 = *(v5 + 32);
  v40(v17 + v16, v7, a1);
  type metadata accessor for _ValueActionModifier2<Date>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v63 = v47.i64[1];
  swift_getWitnessTable();
  type metadata accessor for _ValueActionModifier2();
  type metadata accessor for ModifiedContent();
  v21 = type metadata accessor for ModifiedContent();
  v35 = lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule();
  v22 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type _ValueActionModifier2<Date> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<Date>);
  v61 = v18;
  v62 = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = MEMORY[0x1E69805D0];
  v59 = WitnessTable;
  v60 = MEMORY[0x1E69805D0];
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v57 = v25;
  v58 = v26;
  v55 = swift_getWitnessTable();
  v56 = v24;
  v27 = swift_getWitnessTable();
  TimelineView<>.init(_:content:)(&v64, partial apply for closure #1 in MapAnimator.body.getter, v17, &type metadata for AnimationTimelineSchedule, v21, v35, v27, &v68);
  v50 = v68;
  v51 = v69;
  v52 = v70;
  v28 = v38;
  v45(v38, v44, a1);
  v29 = v39;
  v30 = swift_allocObject();
  *(v30 + 16) = v37;
  *(v30 + 24) = v47;
  *(v30 + 40) = v36;
  v40(v30 + v29, v28, a1);
  type metadata accessor for TimelineView();
  v54 = v27;
  v31 = swift_getWitnessTable();
  View.transaction(_:)();

  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v32 = type metadata accessor for ModifiedContent();
  v48 = v31;
  v49 = MEMORY[0x1E697FB50];
  v33 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v50, v32, v33);

  v64 = v68;
  v65 = v69;
  v66 = v70;
  v67 = v71;
  static ViewBuilder.buildExpression<A>(_:)(&v64, v32, v33);
}

BOOL AdapterState.isPlaying.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = type metadata accessor for AdapterState.PlaybackState();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (v7 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v7 != 1;
}

uint64_t closure #1 in MapAnimator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v78 = a6;
  v87 = a2;
  v82 = a1;
  v84 = a7;
  v11 = type metadata accessor for Optional();
  v83 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v62 - v12;
  v101 = a3;
  v102 = a4;
  v103 = a5;
  v104 = a6;
  v13 = type metadata accessor for MapAnimator();
  v71 = *(v13 - 8);
  v91 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v62 - v14;
  v86 = a3;
  type metadata accessor for AdapterState();
  v15 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - v16;
  v66 = type metadata accessor for MapAnimatorProxy();
  v65 = *(v66 - 1);
  MEMORY[0x1EEE9AC00](v66);
  v19 = &v62 - v18;
  v20 = v11;
  v64 = type metadata accessor for Binding();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v63 = a4;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v88 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ValueActionModifier2<Date>();
  v73 = type metadata accessor for ModifiedContent();
  v69 = type metadata accessor for ModifiedContent();
  v80 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v90 = &v62 - v28;
  v85 = a5;
  v100 = a5;
  v70 = v20;
  WitnessTable = swift_getWitnessTable();
  v75 = type metadata accessor for _ValueActionModifier2();
  v76 = type metadata accessor for ModifiedContent();
  v77 = type metadata accessor for ModifiedContent();
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v67 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v74 = &v62 - v31;
  v32 = v13;
  v33 = v87;
  v34 = *(v87 + *(v13 + 56));
  MapAnimator.contentBinding.getter(v32, v25);
  MapAnimator.state.getter(v32, MEMORY[0x1E6981780]);
  ItemSheetPresentationModifier.item.getter(v32, MEMORY[0x1E6981928]);
  v35 = v17;
  v36 = v86;
  MapAnimatorProxy.init(state:underlyingValue:)(v35, v22, v19);
  v34(v25, v19);
  (*(v65 + 8))(v19, v66);
  (*(v62 + 8))(v25, v64);
  v37 = v71;
  v66 = *(v71 + 16);
  v38 = v89;
  v66(v89, v33, v32);
  v39 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v63;
  v40[2] = v36;
  v40[3] = v41;
  v42 = v78;
  v40[4] = v85;
  v40[5] = v42;
  v71 = *(v37 + 32);
  (v71)(v40 + v39, v38, v32);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
  v43 = v88;
  View.onChange<A>(of:initial:_:)();

  v44 = v41;
  (*(v68 + 8))(v43, v41);
  v45 = v81;
  v46 = v87;
  ItemSheetPresentationModifier.item.getter(v32, MEMORY[0x1E6981920]);
  v47 = v89;
  v66(v89, v46, v32);
  v48 = swift_allocObject();
  v49 = v85;
  v48[2] = v86;
  v48[3] = v44;
  v48[4] = v49;
  v48[5] = v42;
  (v71)(v48 + v39, v47, v32);
  v50 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type _ValueActionModifier2<Date> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<Date>);
  v98 = v42;
  v99 = v50;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E69805D0];
  v51 = v69;
  v52 = swift_getWitnessTable();
  v53 = v67;
  v54 = v70;
  v55 = v90;
  View.onChange<A>(of:initial:_:)();

  (*(v83 + 8))(v45, v54);
  (*(v80 + 8))(v55, v51);
  v56 = swift_getWitnessTable();
  v94 = v52;
  v95 = v56;
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E69805D0];
  v57 = v77;
  v58 = swift_getWitnessTable();
  v59 = v74;
  static ViewBuilder.buildExpression<A>(_:)(v53, v57, v58);
  v60 = *(v79 + 8);
  v60(v53, v57);
  static ViewBuilder.buildExpression<A>(_:)(v59, v57, v58);
  return (v60)(v59, v57);
}

uint64_t partial apply for closure #1 in MapAnimator.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for MapAnimator() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return closure #1 in MapAnimator.body.getter(a1, v10, v5, v6, v7, v8, a2);
}

void type metadata accessor for _ValueActionModifier2<Date>()
{
  if (!lazy cache variable for type metadata for _ValueActionModifier2<Date>)
  {
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
    v0 = type metadata accessor for _ValueActionModifier2();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ValueActionModifier2<Date>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule()
{
  result = lazy protocol witness table cache variable for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule;
  if (!lazy protocol witness table cache variable for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule);
  }

  return result;
}

uint64_t MapAnimator.contentBinding.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v65 = *(a1 + 16);
  v3 = type metadata accessor for AdapterState();
  v61 = type metadata accessor for Binding();
  v66 = *(v61 - 8);
  v60 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v47 - v6;
  v7 = type metadata accessor for Optional();
  v64 = v7;
  v57 = type metadata accessor for Binding();
  v55 = *(v57 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v47 - v10;
  v11 = *(v7 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v48 = v3;
  v17 = *(v3 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v47 = a1;
  MapAnimator.state.getter(a1, MEMORY[0x1E6981778]);
  ItemSheetPresentationModifier.item.getter(a1, MEMORY[0x1E6981920]);
  v23 = *(v17 + 32);
  v23(&v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v3);
  v24 = *(v11 + 32);
  v25 = v50;
  v26 = v64;
  v24(v50, v16, v64);
  v27 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v28 = (v18 + *(v11 + 80) + v27) & ~*(v11 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v31 = v47;
  v30 = v48;
  v52 = *(v47 + 40);
  v32.i64[0] = v65;
  v51 = *(v47 + 24);
  v33 = *(v47 + 32);
  *(v29 + 32) = vzip1q_s64(v32, v51);
  *(v29 + 48) = v33;
  v23((v29 + v27), v49, v30);
  v24((v29 + v28), v25, v26);
  v34 = v53;
  ItemSheetPresentationModifier.item.getter(v31, MEMORY[0x1E6981928]);
  v35 = v58;
  MapAnimator.state.getter(v31, MEMORY[0x1E6981780]);
  v36 = v54;
  v37 = v55 + 32;
  v63 = *(v55 + 32);
  v38 = v57;
  v63(v54, v34, v57);
  v40 = *(v66 + 32);
  v66 += 32;
  v39 = v66;
  v41 = v59;
  v42 = v61;
  v40(v59, v35, v61);
  v43 = (*(v37 + 48) + 64) & ~*(v37 + 48);
  v44 = (v56 + *(v39 + 48) + v43) & ~*(v39 + 48);
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v65;
  *(v45 + 40) = v51;
  *(v45 + 56) = v52;
  v63((v45 + v43), v36, v38);
  v40((v45 + v44), v41, v42);
  return Binding.init(get:set:)();
}

uint64_t MapAnimatorProxy.init(state:underlyingValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for AdapterState();
  v6 = type metadata accessor for Binding();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for MapAnimatorProxy() + 28);
  type metadata accessor for Optional();
  v8 = type metadata accessor for Binding();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t closure #1 in closure #1 in MapAnimator.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for AdapterState();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - v14;
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  type metadata accessor for MapAnimator();
  v16 = type metadata accessor for State();
  State.wrappedValue.getter();
  AdapterState.update(date:)(a2, v12);
  specialized State.wrappedValue.setter(v15, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t AdapterState.update(date:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AdapterState.PlaybackState();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v3, a2, v12);
  result = (*(v7 + 48))(v14, 1, v6);
  if (result != 1)
  {
    (*(v10 + 8))(v3, a2);
    (*(v7 + 32))(v9, v14, v6);
    Date.timeIntervalSince(_:)();
    v17 = v16;
    type metadata accessor for KeyframeTimeline();
    KeyframeTimeline.duration.getter();
    if (v18 >= v17)
    {
      v20 = *(v6 + 28);
      v21 = type metadata accessor for Date();
      (*(*(v21 - 8) + 24))(&v9[v20], a1, v21);
      (*(v7 + 16))(v3, v9, v6);
      v19 = 0;
    }

    else
    {
      v19 = 1;
      (*&v9[*(v6 + 40)])(1);
    }

    (*(v7 + 56))(v3, v19, 1, v6);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t MapAnimator.handleChangeOfUnderlyingValue(to:)(char *a1, uint64_t a2)
{
  v52 = a1;
  v4 = *(a2 + 16);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v46 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = v42 - v7;
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v14 = type metadata accessor for AdapterState.PlaybackState();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v42 - v16;
  v18 = type metadata accessor for AdapterState();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v49 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - v21;
  MapAnimator.state.getter(a2, MEMORY[0x1E6981778]);
  result = (*(v15 + 48))(v22, 1, v14);
  if (result != 1)
  {
    v42[1] = v2;
    v42[2] = a2;
    v45 = v15;
    (*(v15 + 32))(v17, v22, v14);
    v43 = v14;
    v44 = v17;
    v24 = v55;
    (*(v55 + 16))(v13, &v17[*(v14 + 36)], v4);
    (*(v24 + 56))(v13, 0, 1, v4);
    v25 = v54;
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v54 + 16);
    v27(v8, v13, v6);
    v27(&v8[v26], v52, v6);
    v28 = *(v24 + 48);
    if (v28(v8, 1, v4) == 1)
    {
      v29 = *(v25 + 8);
      v29(v13, v6);
      v30 = v28(&v8[v26], 1, v4);
      v32 = v44;
      v31 = v45;
      v33 = v43;
      if (v30 == 1)
      {
        v29(v8, v6);
        return (*(v31 + 8))(v32, v33);
      }
    }

    else
    {
      v34 = v47;
      v27(v47, v8, v6);
      if (v28(&v8[v26], 1, v4) != 1)
      {
        v38 = v55;
        v39 = v46;
        (*(v55 + 32))(v46, &v8[v26], v4);
        LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
        v40 = *(v38 + 8);
        v40(v39, v4);
        v41 = *(v54 + 8);
        v41(v13, v6);
        v40(v34, v4);
        v41(v8, v6);
        v32 = v44;
        v31 = v45;
        v33 = v43;
        if (TupleTypeMetadata2)
        {
          return (*(v31 + 8))(v32, v33);
        }

        goto LABEL_8;
      }

      (*(v54 + 8))(v13, v6);
      (*(v55 + 8))(v34, v4);
      v32 = v44;
      v31 = v45;
      v33 = v43;
    }

    (*(v48 + 8))(v8, TupleTypeMetadata2);
LABEL_8:
    v35 = v51;
    v36 = type metadata accessor for State();
    v37 = v49;
    State.wrappedValue.getter();
    AdapterState.stop()(v35);
    specialized State.wrappedValue.setter(v37, v36);
    (*(v50 + 8))(v37, v35);
    return (*(v31 + 8))(v32, v33);
  }

  return result;
}

uint64_t closure #2 in MapAnimator.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for AdapterState();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - v12;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for MapAnimator();
  MapAnimator.state.getter(v14, MEMORY[0x1E6981778]);
  LOBYTE(a6) = AdapterState.isPlaying.getter(v10);
  result = (*(v11 + 8))(v13, v10);
  if (a6)
  {
    return Transaction.tracksVelocity.setter();
  }

  return result;
}

uint64_t partial apply for closure #2 in MapAnimator.body.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for MapAnimator() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #2 in MapAnimator.body.getter(a1, v8, v3, v4, v5, v6);
}

uint64_t AdapterState.stop()(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AdapterState.PlaybackState();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  v8 = *(a1 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v2, a1, v10);
  result = (*(v5 + 48))(v12, 1, v4);
  if (result != 1)
  {
    (*(v8 + 8))(v2, a1);
    (*(v5 + 32))(v7, v12, v4);
    (*&v7[*(v4 + 40)])(0);
    (*(v5 + 8))(v7, v4);
    return (*(v5 + 56))(v2, 1, 1, v4);
  }

  return result;
}

uint64_t AdapterState.value(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for AdapterState.PlaybackState();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v4, a2, v14);
  if ((*(v10 + 48))(v16, 1, v9) == 1)
  {
    v18 = type metadata accessor for Optional();
    return (*(*(v18 - 8) + 16))(a3, a1, v18);
  }

  else
  {
    (*(v10 + 32))(v12, v16, v9);
    Date.timeIntervalSince(_:)();
    v20 = *(v8 - 8);
    (*(v20 + 16))(a3, &v12[*(v9 + 36)], v8);
    type metadata accessor for KeyframeTimeline();
    KeyframeTimeline.update(value:time:)();
    (*(v10 + 8))(v12, v9);
    return (*(v20 + 56))(a3, 0, 1, v8);
  }
}

uint64_t closure #2 in MapAnimator.contentBinding.getter()
{
  v0 = type metadata accessor for AdapterState();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  v4 = type metadata accessor for AdapterState.PlaybackState();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  return (*(v1 + 8))(v3, v0);
}

BOOL MapAnimatorProxy.isPlaying.getter()
{
  v0 = type metadata accessor for AdapterState();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v4);
  v5 = AdapterState.isPlaying.getter(v0);
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t MapAnimatorProxy.play(defaultValue:keyframes:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v33 = a1;
  v34 = a4;
  v7 = *(a6 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v28 - v10;
  v11 = type metadata accessor for AdapterState();
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for KeyframeTimeline();
  v28 = *(v14 - 8);
  v29 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v30 = *(v21 - 8);
  v31 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = Date.init()();
  a2(v24);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  AdapterState.play(tracks:currentValue:date:completion:)(v16, v33, v23, v34, v36, v11, v20);
  (*(v28 + 8))(v16, v29);
  specialized Binding.wrappedValue.setter();
  (*(v32 + 8))(v13, v11);
  v25 = v35;
  (*(v17 + 16))(v35, v20, v7);
  (*(v17 + 56))(v25, 0, 1, v7);
  v26 = v38;
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  (*(v39 + 8))(v25, v26);
  (*(v17 + 8))(v20, v7);
  return (*(v30 + 8))(v23, v31);
}

uint64_t AdapterState.play(tracks:currentValue:date:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v55 = a4;
  v56 = a5;
  v51 = a3;
  v48 = a2;
  v53 = a1;
  v54 = a7;
  v8 = *(a6 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KeyframeTimeline();
  v49 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v44 - v12;
  v47 = type metadata accessor for Date();
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v44 - v16;
  v18 = type metadata accessor for AdapterState.PlaybackState();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v44 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 32))(v25, v58, a6, v23);
  v27 = *(v19 + 48);
  v57 = v18;
  if (v27(v25, 1, v18) != 1)
  {
    v28 = v25;
    v29 = v57;
    (*(v19 + 32))(v21, v28, v57);
    (*&v21[*(v29 + 40)])(0);
    (*(v19 + 8))(v21, v29);
  }

  v30 = *(v9 + 16);
  v44[1] = v9 + 16;
  v45 = v30;
  v31 = v54;
  v30(v54, v48, v8);
  v48 = v8;
  v32 = v53;
  KeyframeTimeline.duration.getter();
  KeyframeTimeline.update(value:time:)();
  v33 = *(v13 + 16);
  v34 = v17;
  v35 = v51;
  v36 = v19;
  v37 = v47;
  v33(v17, v51, v47);
  v38 = v46;
  v33(v46, v35, v37);
  v39 = v50;
  (*(v49 + 16))(v50, v32, v11);
  v40 = v52;
  v41 = v48;
  v45(v52, v31, v48);
  v42 = v58;
  AdapterState.PlaybackState.init(startDate:currentDate:tracks:targetValue:completion:)(v34, v38, v39, v40, v55, v56, v41, v58);
  (*(v36 + 56))(v42, 0, 1, v57);
}

Swift::Void __swiftcall MapAnimatorProxy.stop()()
{
  v0 = type metadata accessor for AdapterState();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v4 - v2;
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  AdapterState.stop()(v0);
  specialized Binding.wrappedValue.setter();
  (*(v1 + 8))(v3, v0);
}

uint64_t AdapterState.PlaybackState.init(startDate:currentDate:tracks:targetValue:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = type metadata accessor for Date();
  v16 = *(*(v15 - 8) + 32);
  v16(a8, a1, v15);
  v17 = type metadata accessor for AdapterState.PlaybackState();
  v16(a8 + v17[7], a2, v15);
  v18 = v17[8];
  v19 = type metadata accessor for KeyframeTimeline();
  (*(*(v19 - 8) + 32))(a8 + v18, a3, v19);
  result = (*(*(a7 - 8) + 32))(a8 + v17[9], a4, a7);
  v21 = (a8 + v17[10]);
  *v21 = a5;
  v21[1] = a6;
  return result;
}

uint64_t type metadata completion function for MapAnimator()
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AdapterState();
    result = type metadata accessor for State();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MapAnimator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v7 = *(v5 + 80);
  v6 = *(v5 + 84);
  v8 = (v7 + 16) & ~v7;
  v9 = *(v5 + 64);
  if (v6)
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = *(v12 + 80);
  v13 = *(v12 + 84);
  v72 = v12;
  v15 = v14;
  v16 = v14 | v7;
  v17 = v16 | 7;
  if (v6 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v6;
  }

  if (v18 <= v13)
  {
    v19 = *(v12 + 84);
  }

  else
  {
    v19 = v18;
  }

  if (v6 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v6;
  }

  v21 = *(*(v11 - 8) + 64);
  v22 = (v9 + 7 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v7 + ((v21 + ((v21 + v14) & ~v14) + (v7 | 7)) & ~(v7 | 7))) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  __n = v10;
  v23 = v8 + v10;
  v24 = *a2;
  *a1 = *a2;
  if (v16 > 7 || ((v14 | v7) & 0x100000) != 0 || ((v17 + v8 + v10) & ~v17) + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8 + 16 > 0x18)
  {
    v27 = (v24 + ((v16 + 16) & ~v17));
    goto LABEL_38;
  }

  v65 = v13;
  v66 = v20;
  v67 = v18;
  v68 = v19;
  v69 = (v9 + 7 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 + v7 + ((v21 + ((v21 + v14) & ~v14) + (v7 | 7)) & ~(v7 | 7))) & ~v7)) & 0xFFFFFFFFFFFFFFF8;
  v70 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v61 = v21 + v14;
  v62 = v21;
  v63 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v64 = v11;
  v59 = v9 + 7;
  v28 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = *v28;
  v29 = v28 + 1;
  v31 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v31 = v30;
  v32 = v31 + 1;
  v33 = *(v5 + 48);

  v34 = v33(v29, 1, v4);
  v60 = v4;
  v58 = v5;
  if (v34)
  {
    memcpy(v32, v29, __n);
  }

  else
  {
    (*(v5 + 16))(v32, v29, v4);
    (*(v5 + 56))(v32, 0, 1, v4);
  }

  v35 = ~v15;
  v36 = a1 + v23 + 7;
  v37 = a2 + v23 + 7;
  v38 = v37 & 0xFFFFFFFFFFFFFFF8;
  if (v65 != v66)
  {
    v40 = (v62 + ((v61 + v38) & v35) + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v67 == v66)
    {
      if (v6 >= 0x7FFFFFFF)
      {
LABEL_29:
        v39 = v33(v40, v6, v60);
        goto LABEL_34;
      }
    }

    else
    {
      v40 += v63;
      if (v6 >= v68)
      {
        goto LABEL_29;
      }
    }

    v41 = *((v59 + v40) & 0xFFFFFFFFFFFFFFF8);
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    v39 = v41 + 1;
    goto LABEL_34;
  }

  v39 = (*(v72 + 48))(v37 & 0xFFFFFFFFFFFFFFF8);
LABEL_34:
  if (v39)
  {
    memcpy((v36 & 0xFFFFFFFFFFFFFFF8), (v37 & 0xFFFFFFFFFFFFFFF8), v69 + 16);
  }

  else
  {
    v42 = v35;
    v43 = *(v72 + 16);
    v43(v36 & 0xFFFFFFFFFFFFFFF8, v37 & 0xFFFFFFFFFFFFFFF8, v64);
    v44 = (v61 + (v36 & 0xFFFFFFFFFFFFFFF8)) & v42;
    v45 = (v61 + v38) & v42;
    v43(v44, v45, v64);
    v46 = (v62 + 7 + v44) & 0xFFFFFFFFFFFFFFF8;
    v47 = (v62 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
    v48 = *(v58 + 16);
    v48(v46, v47, v60);
    *((v59 + v46) & 0xFFFFFFFFFFFFFFF8) = *((v59 + v47) & 0xFFFFFFFFFFFFFFF8);
    v49 = v46 + v63;
    v50 = v47 + v63;

    v48(v49, v50, v60);
    v51 = ((v59 + v50) & 0xFFFFFFFFFFFFFFF8);
    v52 = v51[1];
    v53 = ((v59 + v49) & 0xFFFFFFFFFFFFFFF8);
    *v53 = *v51;
    v53[1] = v52;
  }

  *((v69 + 16 + v36) & 0xFFFFFFFFFFFFFFF8) = *((v69 + 16 + v37) & 0xFFFFFFFFFFFFFFF8);
  v54 = ((v70 + v37) & 0xFFFFFFFFFFFFFFF8);
  v55 = v54[1];
  v56 = ((v70 + v36) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v54;
  v56[1] = v55;

  v27 = a1;
LABEL_38:

  return v27;
}

uint64_t destroy for MapAnimator(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8;
  v34 = *(v6 + 48);
  if (!v34(v8 & ~v7, 1, v5))
  {
    (*(v6 + 8))(v8 & ~v7, v5);
  }

  v35 = v5;
  v9 = *(v6 + 84);
  v10 = *(v6 + 64);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12;
  v14 = *(v12 + 80);
  v15 = v7 | 7;
  v16 = ((v7 + 16) & ~v7) + a1 + v10;
  if (!v9)
  {
    ++v16;
  }

  v17 = (v16 + (v7 | 7 | v14)) & ~(v7 | 7 | v14);
  if (v9 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v9;
  }

  v19 = *(*(v11 - 8) + 64);
  v20 = v10 + 7;
  v36 = v17;
  if (*(v12 + 84) >= v18)
  {
    v21 = v11;
    v24 = v20 & 0xFFFFFFFFFFFFFFF8;
    v25 = (*(v12 + 48))(v17);
LABEL_12:
    v26 = v24 + 8;
    if (v25)
    {
      goto LABEL_18;
    }

LABEL_17:
    v28 = *(v13 + 8);
    v33 = v26;
    v28(v36, v21);
    v29 = (v19 + v14 + v36) & ~v14;
    v28(v29, v21);
    v30 = (v19 + v15 + v29) & ~v15;
    v31 = *(v6 + 8);
    v31(v30, v35);

    v31((v33 + v7 + v30) & ~v7, v35);

    goto LABEL_18;
  }

  v21 = v11;
  v22 = (v19 + v15 + ((v19 + v14 + v17) & ~v14)) & ~v15;
  if (v9 >= 0x7FFFFFFF)
  {
    v23 = v9;
    v24 = v20 & 0xFFFFFFFFFFFFFFF8;
    v25 = v34(v22, v23, v35);
    goto LABEL_12;
  }

  v27 = *((v20 + v22) & 0xFFFFFFFFFFFFFFF8);
  if (v27 >= 0xFFFFFFFF)
  {
    LODWORD(v27) = -1;
  }

  v26 = (v20 & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v27 == -1)
  {
    goto LABEL_17;
  }

LABEL_18:
}

void *initializeWithCopy for MapAnimator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v60 = ~v9;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  v53 = v12;
  v57 = v8;
  v58 = v7;
  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
  }

  if (v13)
  {
    v16 = v14 + ((v9 + 16) & v60);
  }

  else
  {
    v16 = v14 + ((v9 + 16) & v60) + 1;
  }

  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v9 | 7;
  v21 = v9 | 7 | v19;
  v22 = v21 + v16;
  v59 = a1;
  v23 = ((a1 + v21 + v16) & ~v21);
  v24 = ((a2 + v22) & ~v21);
  if (v13 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v13;
  }

  v26 = *(*(v17 - 8) + 64);
  v27 = v26 + v19;
  v28 = v26 + v20;
  v29 = v14 + 7;
  v55 = ~v20;
  v56 = (v29 & 0xFFFFFFFFFFFFFFF8) + v9 + 8;
  v30 = (v29 + ((v56 + ((v26 + v20 + ((v26 + v19) & ~v19)) & ~v20)) & v60)) & 0xFFFFFFFFFFFFFFF8;
  if (*(v18 + 84) >= v25)
  {
    v31 = ~v19;
    v34 = v30 + 16;
    if (!(*(v18 + 48))(v24))
    {
LABEL_22:
      v54 = v30;
      v36 = *(v18 + 16);
      v36(v23, v24, v17);
      v37 = v31;
      v38 = &v23[v27] & v31;
      v39 = &v24[v27] & v37;
      v36(v38, v39, v17);
      v40 = (v28 + v38) & v55;
      v41 = (v28 + v39) & v55;
      v42 = *(v57 + 16);
      v42(v40, v41, v58);
      *((v29 + v40) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v41) & 0xFFFFFFFFFFFFFFF8);
      v43 = (v56 + v40) & v60;
      v44 = (v56 + v41) & v60;

      v42(v43, v44, v58);
      v30 = v54;
      v45 = ((v29 + v44) & 0xFFFFFFFFFFFFFFF8);
      v46 = v45[1];
      v47 = ((v29 + v43) & 0xFFFFFFFFFFFFFFF8);
      *v47 = *v45;
      v47[1] = v46;

      goto LABEL_23;
    }
  }

  else
  {
    v31 = ~v19;
    v32 = (v28 + (&v24[v27] & ~v19)) & ~v20;
    if (v13 < 0x7FFFFFFF)
    {
      v35 = *((v29 + v32) & 0xFFFFFFFFFFFFFFF8);
      if (v35 >= 0xFFFFFFFF)
      {
        LODWORD(v35) = -1;
      }

      v34 = v30 + 16;
      if (v35 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v33 = v53(v32, v13, v58);
      v34 = v30 + 16;
      if (!v33)
      {
        goto LABEL_22;
      }
    }
  }

  memcpy(v23, v24, v34);
LABEL_23:
  *&v23[v34] = *&v24[v34];
  v48 = ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v49 = &v23[v48];
  v50 = &v24[v48];
  v51 = *(v50 + 1);
  *v49 = *v50;
  *(v49 + 1) = v51;

  return v59;
}

void *assignWithCopy for MapAnimator(void *a1, void *a2, uint64_t a3)
{
  v5 = a2 + 15;
  *a1 = *a2;
  v6 = a1 + 15;

  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  *(v6 & 0xFFFFFFFFFFFFFFF8) = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8 + v7;
  v98 = ~v11;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  v15 = v14(v12 & ~v11, 1, v9);
  v88 = v14;
  v16 = v14(v13 & ~v11, 1, v9);
  v96 = v9;
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
      (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12 & ~v11, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy((v12 & ~v11), (v13 & ~v11), v19);
LABEL_12:
  v20 = *(v10 + 84);
  v92 = v10;
  v21 = *(v10 + 64);
  if (v20)
  {
    v22 = v21 + ((v11 + 16) & v98);
  }

  else
  {
    v22 = v21 + ((v11 + 16) & v98) + 1;
  }

  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = v11 | 7;
  v27 = v11 | 7 | v25;
  v97 = a1;
  v28 = ((a1 + v27 + v22) & ~v27);
  v29 = ((a2 + v27 + v22) & ~v27);
  v30 = *(v24 + 84);
  if (v20 <= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v31 = v20;
  }

  v32 = *(*(v23 - 8) + 64);
  v33 = ~v25;
  v34 = v32 + v25;
  v35 = ~v26;
  v36 = v32 + v26;
  v90 = ~v26;
  v91 = ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8;
  v93 = (v21 + 7 + ((v91 + ((v32 + v26 + ((v32 + v25) & ~v25)) & ~v26)) & v98)) & 0xFFFFFFFFFFFFFFF8;
  v95 = v21 + 7;
  v89 = v32 + v26;
  if (v30 < v31)
  {
    v37 = (v36 + (&v28[v34] & v33)) & v35;
    v38 = ~v25;
    if (v20 < 0x7FFFFFFF)
    {
      v49 = *((v95 + v37) & 0xFFFFFFFFFFFFFFF8);
      if (v49 >= 0xFFFFFFFF)
      {
        LODWORD(v49) = -1;
      }

      v43 = v49 + 1;
    }

    else
    {
      v39 = ~v26;
      v40 = v32 + v26;
      v41 = v32 + v25;
      v42 = v88(v37, v20, v96);
      v34 = v41;
      v36 = v40;
      v38 = v33;
      v35 = v39;
      v43 = v42;
    }

    v48 = v97;
    v50 = (v36 + (&v29[v34] & v38)) & v35;
    if (v43)
    {
      if (v20 < 0x7FFFFFFF)
      {
        v54 = *((v95 + v50) & 0xFFFFFFFFFFFFFFF8);
        if (v54 >= 0xFFFFFFFF)
        {
          LODWORD(v54) = -1;
        }

        v52 = v54 + 1;
      }

      else
      {
        v51 = v34;
        v52 = v88(v50, v20, v96);
        v34 = v51;
      }

      if (!v52)
      {
        goto LABEL_36;
      }

LABEL_42:
      v67 = v93 + 16;
      memcpy(v28, v29, v93 + 16);
      goto LABEL_43;
    }

    if (v20 < 0x7FFFFFFF)
    {
      v68 = *((v95 + v50) & 0xFFFFFFFFFFFFFFF8);
      if (v68 >= 0xFFFFFFFF)
      {
        LODWORD(v68) = -1;
      }

      v47 = v68 + 1;
    }

    else
    {
      v53 = v34;
      v47 = v88(v50, v20, v96);
      v34 = v53;
    }

LABEL_40:
    v69 = &v28[v34] & v38;
    if (!v47)
    {
      v77 = *(v24 + 24);
      v78 = v34;
      v77(v28, v29, v23);
      v79 = &v29[v78] & v38;
      v77(v69, v79, v23);
      v80 = (v89 + v69) & v90;
      v81 = (v89 + v79) & v90;
      v82 = v92[3];
      v82(v80, v81, v96);
      *((v95 + v80) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v81) & 0xFFFFFFFFFFFFFFF8);

      v48 = v97;

      v83 = (v91 + v80) & v98;
      v84 = (v91 + v81) & v98;
      v82(v83, v84, v96);
      v85 = ((v95 + v83) & 0xFFFFFFFFFFFFFFF8);
      v86 = ((v95 + v84) & 0xFFFFFFFFFFFFFFF8);
      v87 = v86[1];
      *v85 = *v86;
      v85[1] = v87;

      v67 = v93 + 16;
      goto LABEL_43;
    }

    v70 = *(v24 + 8);
    v70(v28, v23);
    v70(v69, v23);
    v71 = v92[1];
    v71((v89 + v69) & v90, v96);

    v71((v91 + ((v89 + v69) & v90)) & v98, v96);

    goto LABEL_42;
  }

  v44 = *(v24 + 48);
  v45 = v32 + v25;
  v46 = v44(v28, v30, v23);
  v47 = v44(v29, v30, v23);
  v34 = v45;
  v48 = v97;
  v38 = v33;
  if (!v46)
  {
    goto LABEL_40;
  }

  if (v47)
  {
    goto LABEL_42;
  }

LABEL_36:
  v55 = *(v24 + 16);
  v56 = v34;
  v55(v28, v29, v23);
  v57 = &v28[v56] & v38;
  v58 = &v29[v56] & v38;
  v55(v57, v58, v23);
  v59 = (v89 + v57) & v90;
  v48 = v97;
  v60 = (v89 + v58) & v90;
  v61 = v92[2];
  v61(v59, v60, v96);
  *((v95 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v95 + v60) & 0xFFFFFFFFFFFFFFF8);
  v62 = (v91 + v59) & v98;
  v63 = (v91 + v60) & v98;

  v61(v62, v63, v96);
  v64 = ((v95 + v63) & 0xFFFFFFFFFFFFFFF8);
  v65 = v64[1];
  v66 = ((v95 + v62) & 0xFFFFFFFFFFFFFFF8);
  *v66 = *v64;
  v66[1] = v65;

  v67 = v93 + 16;
LABEL_43:
  *&v28[v67] = *&v29[v67];

  v72 = ((v93 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v73 = &v28[v72];
  v74 = &v29[v72];
  v75 = *(v74 + 1);
  *v73 = *v74;
  *(v73 + 1) = v75;

  return v48;
}

void *initializeWithTake for MapAnimator(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v52 = ~v9;
  v11 = v6 + v9 + 8;
  v45 = *(v8 + 48);
  v49 = v8;
  v50 = v7;
  if (v45(v11 & ~v9, 1, v7))
  {
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
    if (v12)
    {
      v14 = *(v8 + 64);
    }

    else
    {
      v14 = v13 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v14);
  }

  else
  {
    (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
    (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
    v12 = *(v8 + 84);
    v13 = *(v8 + 64);
  }

  if (v12)
  {
    v15 = v13 + ((v9 + 16) & v52);
  }

  else
  {
    v15 = v13 + ((v9 + 16) & v52) + 1;
  }

  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 80);
  v19 = v9 | 7;
  v20 = v9 | 7 | v18;
  v21 = v20 + v15;
  v51 = a1;
  v22 = ((a1 + v20 + v15) & ~v20);
  v23 = ((a2 + v21) & ~v20);
  if (v12 <= 0x7FFFFFFF)
  {
    v24 = 0x7FFFFFFF;
  }

  else
  {
    v24 = v12;
  }

  v25 = *(*(v16 - 8) + 64);
  v26 = v25 + v18;
  v27 = v25 + v19;
  v28 = v13 + 7;
  v47 = ~v19;
  v48 = (v28 & 0xFFFFFFFFFFFFFFF8) + v9 + 8;
  v29 = (v28 + ((v48 + ((v25 + v19 + ((v25 + v18) & ~v18)) & ~v19)) & v52)) & 0xFFFFFFFFFFFFFFF8;
  if (*(v17 + 84) >= v24)
  {
    v30 = ~v18;
    v33 = v29 + 16;
    if (!(*(v17 + 48))(v23))
    {
LABEL_22:
      v46 = v29;
      v35 = *(v17 + 32);
      v35(v22, v23, v16);
      v36 = v30;
      v37 = &v22[v26] & v30;
      v38 = &v23[v26] & v36;
      v35(v37, v38, v16);
      v39 = (v27 + v37) & v47;
      v40 = (v27 + v38) & v47;
      v41 = *(v49 + 32);
      v41(v39, v40, v50);
      *((v28 + v39) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v40) & 0xFFFFFFFFFFFFFFF8);
      v42 = (v48 + v39) & v52;
      v43 = (v48 + v40) & v52;
      v41(v42, v43, v50);
      v29 = v46;
      *((v28 + v42) & 0xFFFFFFFFFFFFFFF8) = *((v28 + v43) & 0xFFFFFFFFFFFFFFF8);
      goto LABEL_23;
    }
  }

  else
  {
    v30 = ~v18;
    v31 = (v27 + (&v23[v26] & ~v18)) & ~v19;
    if (v12 < 0x7FFFFFFF)
    {
      v34 = *((v28 + v31) & 0xFFFFFFFFFFFFFFF8);
      if (v34 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      v33 = v29 + 16;
      if (v34 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v32 = v45(v31, v12, v50);
      v33 = v29 + 16;
      if (!v32)
      {
        goto LABEL_22;
      }
    }
  }

  memcpy(v22, v23, v33);
LABEL_23:
  *&v22[v33] = *&v23[v33];
  *&v22[((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8] = *&v23[((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];
  return v51;
}