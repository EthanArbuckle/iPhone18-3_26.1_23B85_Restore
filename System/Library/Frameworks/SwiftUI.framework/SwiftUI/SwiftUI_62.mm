uint64_t View.onDrop(of:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of _Benchmark(a2, v7);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  outlined destroy of DropDelegate?(v8, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v7, v8);
  MEMORY[0x18D00A570](v8, a3, &type metadata for DropModifier, a4);
  return outlined destroy of DropModifier(v8);
}

uint64_t View.dropDestination<A>(for:action:isTargeted:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v36 = a7;
  v35 = a5;
  v33 = a1;
  v38 = a8;
  v37 = type metadata accessor for ModifiedContent();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v33 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = a4;

  Binding.init(get:set:)();
  v17 = v46[0];
  v18 = v46[1];
  v19 = static Transferable.readableContentTypes.getter();
  v52 = 0;
  v44 = type metadata accessor for TransferableDropAction();
  *&v45 = &protocol witness table for TransferableDropAction<A>;
  v20 = swift_allocObject();
  v42 = v20;
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v52;
  *(v20 + 40) = 0;
  *(v20 + 48) = 0;
  outlined init with copy of _Benchmark(&v42, v46);
  v21 = type metadata accessor for FunctionalDropDelegate();
  v22 = swift_allocObject();
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  *(v22 + 16) = v19;
  *(v22 + 24) = v17;
  *(v22 + 40) = v18;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v46, v22 + 48);
  *(v22 + 88) = 0;
  *(v22 + 96) = 0;
  v50 = v21;
  v51 = &protocol witness table for FunctionalDropDelegate;
  *&v48 = v22;
  swift_retain_n();
  swift_retain_n();

  __swift_destroy_boxed_opaque_existential_1(&v42);
  *&v47 = 0;
  memset(v46, 0, sizeof(v46));
  outlined destroy of DropDelegate?(v46, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v48, v46);
  v23 = v36;
  MEMORY[0x18D00A570](v46, v35, &type metadata for DropModifier, v36);
  outlined destroy of DropModifier(v46);
  v53 = 0;
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = a9;
  *(v24 + 32) = v33;
  *(v24 + 40) = a2;
  *(v24 + 48) = v53;
  *(v24 + 56) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v24 + 64) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for closure #1 in TabDropDestinationTraitWritingModifier.init(supportedContentTypes:isTargeted:action:);
  *(v25 + 24) = v24;
  v48 = v17;
  v49 = v18;
  v54 = v19;
  v42 = v19;
  v43 = v17;
  LOBYTE(v44) = v18;
  *&v45 = partial apply for closure #1 in TabDropConfiguration.init(supportedContentTypes:isTargeted:action:);
  *(&v45 + 1) = v25;
  v26 = type metadata accessor for TabDropDestinationTraitWritingModifier();
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();

  ViewModifier.requiring<A>(_:)(&type metadata for DropDestinationUsesTraitKeyInput, v26);
  outlined destroy of [UTType](&v54, &lazy cache variable for type metadata for [UTType], MEMORY[0x1E69E8450], MEMORY[0x1E69E62F8]);
  outlined destroy of WeakBox<Swift.AnyObject>?(&v48, type metadata accessor for Binding<Bool>?);

  v42 = *&v46[0];
  v43 = *(v46 + 8);
  LOBYTE(v44) = BYTE8(v46[1]);
  v45 = v47;
  v27 = type metadata accessor for StaticIf();
  v40 = v23;
  v41 = &protocol witness table for DropModifier;
  v28 = v37;
  WitnessTable = swift_getWitnessTable();
  v30 = v34;
  MEMORY[0x18D00A570](&v42, v28, v27, WitnessTable);

  v31 = v43;

  outlined consume of Binding<NavigationSplitViewColumn>?(v31, *(&v31 + 1));

  return (*(v39 + 8))(v30, v28);
}

uint64_t TransferableDropAction.init(action:cleanupAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput()
{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput;
  if (!lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput);
  }

  return result;
}

uint64_t outlined destroy of WeakBox<Swift.AnyObject>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for Binding<Bool>?()
{
  if (!lazy cache variable for type metadata for Binding<Bool>?)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>?);
    }
  }
}

uint64_t View.dropDestination<A>(for:isEnabled:action:isTargeted:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a6;

  Binding.init(get:set:)();
  v16 = v31;
  v17 = v32;
  v18 = static Transferable.readableContentTypes.getter();
  v34 = 0;
  v30[3] = type metadata accessor for TransferableDropAction();
  v30[4] = &protocol witness table for TransferableDropAction<A>;
  v19 = swift_allocObject();
  v30[0] = v19;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = v34;
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  outlined init with copy of _Benchmark(v30, &v31);
  v20 = type metadata accessor for FunctionalDropDelegate();
  v21 = swift_allocObject();
  *(v21 + 88) = 0;
  *(v21 + 96) = 0;
  *(v21 + 16) = v18;
  *(v21 + 24) = v16;
  *(v21 + 40) = v17;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v31, v21 + 48);
  *(v21 + 88) = 0;
  *(v21 + 96) = 0;
  v28 = v20;
  v29 = &protocol witness table for FunctionalDropDelegate;
  *&v27 = v21;

  __swift_destroy_boxed_opaque_existential_1(v30);
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v31);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v27);
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  outlined assign with take of DropDelegate?(&v31, &v24);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  MEMORY[0x18D00A570](&v31, a7, &type metadata for DropModifier, a9);

  return outlined destroy of DropModifier(&v31);
}

uint64_t outlined assign with take of DropDelegate?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DropDelegate?(0, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t View.dropDestination<A>(for:isEnabled:action:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = static Transferable.readableContentTypes.getter();
  v27 = 1;
  v23[3] = type metadata accessor for TransferableDropAction();
  v23[4] = &protocol witness table for TransferableDropAction<A>;
  v13 = swift_allocObject();
  v23[0] = v13;
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v27;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  outlined init with copy of _Benchmark(v23, &v24);
  v14 = type metadata accessor for FunctionalDropDelegate();
  v15 = swift_allocObject();
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 16) = v12;
  *(v15 + 40) = 0;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, v15 + 48);
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  v21 = v14;
  v22 = &protocol witness table for FunctionalDropDelegate;
  *&v20 = v15;

  __swift_destroy_boxed_opaque_existential_1(v23);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v20, &v24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v20);
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  outlined assign with take of DropDelegate?(&v24, &v17);
  v24 = v17;
  v25 = v18;
  v26 = v19;
  MEMORY[0x18D00A570](&v24, a5, &type metadata for DropModifier, a7);
  return outlined destroy of DropModifier(&v24);
}

uint64_t View.dropDestination<A>(for:isEnabled:action:isTargeted:dropProposal:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a6;

  Binding.init(get:set:)();
  v19 = v34;
  v20 = v35;
  v21 = static Transferable.readableContentTypes.getter();
  v37 = 0;
  v33[3] = type metadata accessor for TransferableDropAction();
  v33[4] = &protocol witness table for TransferableDropAction<A>;
  v22 = swift_allocObject();
  v33[0] = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = v37;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  outlined init with copy of _Benchmark(v33, &v34);
  v23 = type metadata accessor for FunctionalDropDelegate();
  v24 = swift_allocObject();
  *(v24 + 88) = 0;
  *(v24 + 96) = 0;
  *(v24 + 16) = v21;
  *(v24 + 24) = v19;
  *(v24 + 40) = v20;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v34, v24 + 48);
  *(v24 + 88) = a7;
  *(v24 + 96) = a8;
  v31 = v23;
  v32 = &protocol witness table for FunctionalDropDelegate;
  *&v30 = v24;

  __swift_destroy_boxed_opaque_existential_1(v33);
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  if (a2)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, &v34);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v30);
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  outlined assign with take of DropDelegate?(&v34, &v27);
  v34 = v27;
  v35 = v28;
  v36 = v29;
  MEMORY[0x18D00A570](&v34, a9, &type metadata for DropModifier, a11);

  return outlined destroy of DropModifier(&v34);
}

uint64_t View.onDrop<A>(of:delegate:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  outlined init with copy of _Benchmark(a2, v15);
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  outlined destroy of DropDelegate?(v13, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v13);
  DropPreviewModifier.init(base:preview:)(v13, a3, a4, v15);
  v11 = type metadata accessor for DropPreviewModifier();

  MEMORY[0x18D00A570](v15, a5, v11, a7);
  return (*(*(v11 - 8) + 8))(v15, v11);
}

uint64_t DropPreview.center.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 40));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t DropPreview.init(center:_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = type metadata accessor for DropPreview();
  v11 = (*(*(a2 - 8) + 56))(a3 + *(v10 + 36), 1, 1, a2);
  v12 = (a3 + *(v10 + 40));
  *v12 = a4;
  v12[1] = a5;
  a1(v11);
  type metadata accessor for DropPreview.Storage();

  return swift_storeEnumTagMultiPayload();
}

uint64_t DropPreview.view()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for DropPreview.Storage();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - v8);
  (*(v10 + 16))(&v13 - v8, v3, v6, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*v9)();
  }

  else
  {
    v12 = *(v5 - 8);
    (*(v12 + 32))(a2, v9, v5);
    return (*(v12 + 56))(a2, 0, 1, v5);
  }
}

double DefaultDragDropPreview.center.getter()
{
  v1 = [*v0 target];
  [v1 center];
  v3 = v2;

  return v3;
}

uint64_t closure #1 in TabDropDestinationTraitWritingModifier.init(supportedContentTypes:isTargeted:action:)(unint64_t a1, double a2, double a3)
{
  *&v6 = static DropSession.ID.invalid;
  BYTE8(v6) = 0;
  *v7 = 1;
  memset(&v7[8], 0, 32);
  *&v7[40] = a2;
  v8 = a3;
  v4 = type metadata accessor for TransferableDropAction();
  TransferableDropAction.perform(_:_:)(a1, &v6, v4);
  v9[2] = *&v7[16];
  v9[3] = *&v7[32];
  v10 = v8;
  v9[0] = v6;
  v9[1] = *v7;
  outlined destroy of DropSession(v9);
  return 1;
}

uint64_t TransferableDropAction.perform(_:_:)(unint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[3];
  v59 = a2[2];
  v60 = v12;
  v61 = *(a2 + 8);
  v13 = a2[1];
  v57 = *a2;
  v58 = v13;
  v14 = dispatch_group_create();
  v15 = a3;
  v16 = *(a3 + 16);
  aBlock[0] = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  result = AtomicBox.init(wrappedValue:)();
  v18 = v53[0];
  v52 = v6;
  v50 = v9;
  v49 = v8;
  v48 = v10;
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v15;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v33 = static OS_dispatch_queue.main.getter();
    v34 = v46;
    v55 = *v46;
    v56 = *(v46 + 16);
    v35 = *(v46 + 3);
    v36 = swift_allocObject();
    v37 = *(v20 + 24);
    *(v36 + 16) = v16;
    *(v36 + 24) = v37;
    v38 = v34[1];
    *(v36 + 32) = *v34;
    *(v36 + 48) = v38;
    *(v36 + 64) = *(v34 + 4);
    *(v36 + 72) = v18;
    v39 = v60;
    *(v36 + 112) = v59;
    *(v36 + 128) = v39;
    *(v36 + 144) = v61;
    v40 = v58;
    *(v36 + 80) = v57;
    *(v36 + 96) = v40;
    aBlock[4] = partial apply for closure #2 in TransferableDropAction.perform(_:_:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_6;
    v41 = _Block_copy(aBlock);

    v42 = type metadata accessor for TransferableDropAction.UserActionStorage();
    (*(*(v42 - 8) + 16))(v53, &v55, v42);
    outlined copy of AppIntentExecutor?(v35);
    outlined init with copy of DropSession(&v57, v53);
    v43 = v47;
    static DispatchQoS.unspecified.getter();
    v53[0] = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type CGPoint and conformance CGPoint(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v44 = v49;
    v45 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v41);

    (*(v51 + 8))(v44, v45);
    (*(v48 + 8))(v43, v50);

    return 1;
  }

  result = __CocoaSet.count.getter();
  v19 = result;
  v20 = v15;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v19 >= 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      do
      {
        MEMORY[0x18D00E9C0](v21++, a1);
        dispatch_group_enter(v14);
        v22 = swift_allocObject();
        v23 = *(v15 + 24);
        v22[2] = v16;
        v22[3] = v23;
        v22[4] = v14;
        v22[5] = v18;
        v24 = v14;

        v25 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v20 = v15;
      }

      while (v19 != v21);
    }

    else
    {
      v26 = (a1 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        dispatch_group_enter(v14);
        v29 = swift_allocObject();
        v30 = *(v20 + 24);
        v29[2] = v16;
        v29[3] = v30;
        v29[4] = v14;
        v29[5] = v18;
        v31 = v14;

        v32 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        --v19;
      }

      while (v19);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t static TabDropDestinationTraitWritingModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of _ViewListInputs(a2, v3);
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  PropertyList.subscript.setter();
  type metadata accessor for TabDropDestinationTraitWritingModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for TabDropDestinationTraitWritingModifier.TraitWriter();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier();
  static ViewModifier.makeDebuggableViewList(modifier:inputs:body:)();
  return outlined destroy of _ViewListInputs(v3);
}

uint64_t TabDropDestinationTraitWritingModifier.TraitWriter.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TabDropDestinationTraitWritingModifier();
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v7 = *(Value + 32);
  v6 = *(Value + 40);
  v8 = *(Value + 24);

  outlined copy of Binding<Int>?(v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
}

double TabDropDestinationTraitWritingModifier.TraitWriter.value.getter@<D0>(uint64_t a1@<X8>)
{
  TabDropDestinationTraitWritingModifier.TraitWriter.modifier.getter(&v4);
  v2 = v6;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 24) = v2;
  result = *&v7;
  *(a1 + 32) = v7;
  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DropDestinationUsesTraitKeyInput()
{
  lazy protocol witness table accessor for type DropDestinationUsesTraitKeyInput and conformance DropDestinationUsesTraitKeyInput();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for DropAction.cleanupAction.setter in conformance ItemProviderDropAction(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void closure #1 in TransferableDropAction.perform(_:_:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v32[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32[-1] - v12;
  type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for Error);
  v14 = type metadata accessor for Result();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v32[-1] - v16);
  (*(v18 + 16))(&v32[-1] - v16, a1, v14, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    v20 = static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136315394;
      v24 = _typeName(_:qualified:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v32);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_18BD4A000, v21, v20, "Error loading %s: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v23, -1, -1);
      MEMORY[0x18D0110E0](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v8 + 32))(v13, v17, a4);
    (*(v8 + 16))(v10, v13, a4);
    v32[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v30 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v30(v32, 0);
    (*(v8 + 8))(v13, a4);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in TransferableDropAction.perform(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 16);
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  v7 = *(a3 + 56);
  v8 = *(a3 + 64);
  if (v6)
  {
    v9 = *(a3 + 16);
    v13[0] = *a3;
    v13[1] = v9;
    v13[2] = *(a3 + 32);
    v14 = *(a3 + 48);
    v15 = v7;
    v16 = v8;
    (v5)(v12, v13);
  }

  else
  {
    v5(v12, v7, v8);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    return v11(result);
  }

  return result;
}

uint64_t protocol witness for DropAction.cleanupAction.setter in conformance TransferableDropAction<A>(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v2 + 24));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DropInfo.localDragContexts.getter()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = [Strong localDragSession], swift_unknownObjectRelease(), !v2))
  {
    v7 = 0u;
    v8 = 0u;
LABEL_6:
    outlined destroy of TabEntry?(&v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [v2 localContext];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_6;
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v5;
  }

  return MEMORY[0x1E69E7CC0];
}

Swift::Bool __swiftcall DropInfo.hasItemsConforming(to:)(Swift::OpaquePointer to)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    v4 = UIDropSession.hasItemsConforming(to:)(to);
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v4;
  }

  return Strong;
}

{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(to._rawValue + 2);
  if (v9)
  {
    v10 = (v7 + 48);
    v23 = v7;
    v11 = (v7 + 32);
    v12 = to._rawValue + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v10)(v4, 1, v5) == 1)
      {
        outlined destroy of [UTType](v4, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v14 = *v11;
        (*v11)(v8, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v8 = v22;
        v14(v17, v22, v5);
      }

      v12 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v18 = UIDropSession.hasItemsConforming(to:)(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t DropInfo.itemProviders(for:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_getObjectType();
  v3 = UIDropSession.itemProviders(for:)(a1);
  swift_unknownObjectRelease();
  return v3;
}

{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (v7 + 48);
    v23 = v7;
    v11 = (v7 + 32);
    v12 = a1 + 40;
    v13 = MEMORY[0x1E69E7CC0];
    v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v10)(v4, 1, v5) == 1)
      {
        outlined destroy of [UTType](v4, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v14 = *v11;
        (*v11)(v8, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1, v13, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v13[2] = v16 + 1;
        v17 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v16;
        v8 = v22;
        v14(v17, v22, v5);
      }

      v12 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v18 = UIDropSession.itemProviders(for:)(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  return v18;
}

Swift::Void __swiftcall DropInfo.setDropTargetLocation(_:at:)(CGPoint_optional _, Swift::Int at)
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = *&_.is_nil;
  v10 = __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = [Strong items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) > v6)
    {
      v14 = *(v13 + 8 * v6 + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v14 = MEMORY[0x18D00E9C0](v6, v13);
LABEL_6:
  v15 = v14;

  if (v10[1])
  {
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v9, at, v7 & 1, v15);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DropInfo.setDropTargetTransform(_:at:)(CGAffineTransform_optional *_, Swift::Int at)
{
  v5 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = [Strong items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if (at < 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > at)
    {
      v9 = *(v8 + 8 * at + 32);
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x18D00E9C0](at, v8);
LABEL_6:
  v10 = v9;

  if (v5[1])
  {
    swift_beginAccess();
    specialized Dictionary.subscript.setter(_, v10);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void DropDelegate.dropUpdated(info:)(_WORD *a1@<X8>)
{
  DropDelegate.dropUpdated(info:)(a1);
}

{
  *a1 = 6;
}

uint64_t FunctionalDropDelegate.performDrop(info:)(void *a1)
{
  v2 = v1;
  if (*(v1 + 32))
  {
    LOBYTE(v30) = 0;

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v4 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v5 = UIDropSession.itemProviders(for:)(v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  outlined init with copy of DropInfo(a1, &v30);
  v6 = swift_allocObject();
  v7 = v31;
  *(v6 + 16) = v30;
  *(v6 + 32) = v7;
  *(v6 + 48) = v32;
  swift_beginAccess();
  v8 = *(v2 + 72);
  v9 = *(v2 + 80);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 48, v8);
  (*(v9 + 16))(destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation, v6, v8, v9);
  swift_endAccess();
  outlined init with copy of _Benchmark(v2 + 48, v25);
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = *(v12 + 2);
  v14 = *(v12 + 4);
  v28[2] = *(v12 + 3);
  v28[3] = v14;
  v29 = v12[10];
  v28[1] = v13;
  v28[0] = *(v12 + 1);
  v15 = *(v12 + 4);
  v22 = *(v12 + 3);
  v23 = v15;
  v24 = v12[10];
  v16 = *(v12 + 2);
  v20 = *(v12 + 1);
  v21 = v16;
  v17 = *(v11 + 32);
  outlined init with copy of DropSession(v28, &v30);
  v18 = v17(v5, &v20, v10, v11);

  v32 = v22;
  v33 = v23;
  v34 = v24;
  v30 = v20;
  v31 = v21;
  outlined destroy of DropSession(&v30);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v18 & 1;
}

uint64_t FunctionalDropDelegate.dropUpdated(info:)@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v15 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DropProposal>, &type metadata for DropProposal, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = 1538;
  specialized Array.append<A>(contentsOf:)(inited);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_18CD63400;
  *(v6 + 32) = 1539;
  specialized Array.append<A>(contentsOf:)(v6);
  v7 = v15;
  if (!*(v15 + 16))
  {

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18CD63400;
    *(v7 + 32) = 1537;
    v8 = *(v2 + 88);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:

    v12 = 6;
    goto LABEL_9;
  }

  v8 = *(v2 + 88);
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();

    v10 = UIDropSession.registeredContentTypes()();
    swift_unknownObjectRelease();
  }

  else
  {

    v10 = MEMORY[0x1E69E7CD0];
  }

  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8(&v14, v9, v10, v13[11], v13[12]);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8);

  v12 = v14;
LABEL_9:
  *a2 = v12;
  return result;
}

SwiftUI::DropProposal __swiftcall DropProposal.init(operation:)(SwiftUI::DropOperation operation)
{
  *v1 = *operation;
  v1[1] = 6;
  result.operation = operation;
  return result;
}

uint64_t FunctionalDropDelegate.__deallocating_deinit()
{

  outlined consume of Binding<NavigationSplitViewColumn>?(v0[3], v0[4]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 6));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v0[11]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for DropDelegate.validateDrop(info:) in conformance FunctionalDropDelegate(void *a1)
{
  v2._rawValue = *(*v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v4 = UIDropSession.hasItemsConforming(to:)(v2);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t protocol witness for DropDelegate.dropEntered(info:) in conformance FunctionalDropDelegate()
{
  return protocol witness for DropDelegate.dropEntered(info:) in conformance FunctionalDropDelegate();
}

{
  if (*(*v0 + 32))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t static DropOperation.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 2u)
  {
    if (*a1)
    {
      v2 = 1;
    }

    v4 = *a2 <= 2u;
    if (*a2 >= 2u)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (*a2)
    {
      v3 = 1;
    }

    return v2 == v3;
  }

  if (*a1 > 2u)
  {
    if (v2 != 3)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_20;
    }

    v2 = 3;
    v4 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 2;
    v4 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (v4)
  {
    v3 = 2;
    return v2 == v3;
  }

  if (v3 == 3)
  {
    v3 = 3;
    return v2 == v3;
  }

LABEL_20:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t DropOperation.hash(into:)()
{
  if (*v0 < 2u)
  {
    if (*v0)
    {
      v1 = 1;
    }

    else
    {
      v1 = *v0;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (*v0 <= 2u)
  {
    v1 = 2;
    return MEMORY[0x18D00F6F0](v1);
  }

  if (*v0 == 3)
  {
    v1 = 3;
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int DropOperation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_9;
  }

  if (v1 <= 2)
  {
    v2 = 2;
LABEL_9:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_9;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DropOperation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 2u)
  {
    if (*a1)
    {
      v2 = 1;
    }

    v4 = *a2 <= 2u;
    if (*a2 >= 2u)
    {
      goto LABEL_13;
    }

LABEL_8:
    if (*a2)
    {
      v3 = 1;
    }

    return v2 == v3;
  }

  if (*a1 > 2u)
  {
    if (v2 != 3)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_20;
    }

    v2 = 3;
    v4 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 2;
    v4 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_8;
    }
  }

LABEL_13:
  if (v4)
  {
    v3 = 2;
    return v2 == v3;
  }

  if (v3 == 3)
  {
    v3 = 3;
    return v2 == v3;
  }

LABEL_20:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DropOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_9;
  }

  if (v1 <= 2)
  {
    v2 = 2;
LABEL_9:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_9;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DropOperation()
{
  if (*v0 < 2u)
  {
    if (*v0)
    {
      v1 = 1;
    }

    else
    {
      v1 = *v0;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (*v0 <= 2u)
  {
    v1 = 2;
    return MEMORY[0x18D00F6F0](v1);
  }

  if (*v0 == 3)
  {
    v1 = 3;
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DropOperation()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 < 2)
  {
    if (v1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v1;
    }

    goto LABEL_9;
  }

  if (v1 <= 2)
  {
    v2 = 2;
LABEL_9:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_9;
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t DropOperation.Set.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(&outlined read-only object #0 of DropOperation.Set.description.getter + v1 + 32);
    if ((v7 & ~v2) == 0)
    {
      switch(v7)
      {
        case 4:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v9 = *(v3 + 2);
          v12 = *(v3 + 3);
          v10 = v9 + 1;
          if (v9 >= v12 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1, v3);
          }

          v5 = 0x6564646962726F66;
          v4 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 2:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v9 = *(v3 + 2);
          v11 = *(v3 + 3);
          v10 = v9 + 1;
          if (v9 >= v11 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, v3);
          }

          v4 = 0xE400000000000000;
          v5 = 1702260589;
          goto LABEL_3;
        case 1:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
          }

          v9 = *(v3 + 2);
          v8 = *(v3 + 3);
          v10 = v9 + 1;
          if (v9 >= v8 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
          }

          v4 = 0xE400000000000000;
          v5 = 2037411683;
LABEL_3:
          *(v3 + 2) = v10;
          v6 = &v3[16 * v9];
          *(v6 + 4) = v5;
          *(v6 + 5) = v4;
          break;
      }
    }

    v1 += 8;
  }

  while (v1 != 24);
  if (!*(v3 + 2))
  {
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v13 = BidirectionalCollection<>.joined(separator:)();
  v15 = v14;

  MEMORY[0x18D00C9B0](v13, v15);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0xD000000000000012;
}

SwiftUI::DropProposal __swiftcall DropProposal.init(withinApplication:outsideApplication:)(SwiftUI::DropOperation withinApplication, SwiftUI::DropOperation outsideApplication)
{
  v3 = *outsideApplication;
  *v2 = *withinApplication;
  v2[1] = v3;
  result.operation = withinApplication;
  return result;
}

uint64_t DropProposal.debugDescription.getter()
{
  v1 = *(v0 + 1);
  _StringGuts.grow(_:)(68);
  MEMORY[0x18D00C9B0](0x706F7250706F7244, 0xEC0000006C61736FLL);
  MEMORY[0x18D00C9B0](0xD00000000000001ELL, 0x800000018CD40680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](0xD00000000000001FLL, 0x800000018CD406A0);
  if (v1 == 6)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    _print_unlocked<A, B>(_:_:)();
    v3 = 0;
    v2 = 0xE000000000000000;
  }

  MEMORY[0x18D00C9B0](v3, v2);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0;
}

uint64_t View.onDrop(of:isTargeted:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v41 = a7;
  v36 = a6;
  v35 = a5;
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v40 = a9;
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (v15 + 48);
    v44 = v15;
    v19 = (v15 + 32);
    v20 = a1 + 40;
    v21 = MEMORY[0x1E69E7CC0];
    v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v18)(v12, 1, v13) == 1)
      {
        outlined destroy of [UTType](v12, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v22 = *v19;
        (*v19)(v16, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v21[2] = v24 + 1;
        v25 = v21 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24;
        v16 = v43;
        v22(v25, v43, v13);
      }

      v20 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v26 = swift_allocObject();
  v27 = v36;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  v48[3] = &type metadata for ItemProviderDropAction;
  v48[4] = &protocol witness table for ItemProviderDropAction;
  v28 = swift_allocObject();
  v48[0] = v28;
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = partial apply for closure #2 in View.onDrop(of:isTargeted:perform:);
  v28[5] = v26;
  outlined init with copy of _Benchmark(v48, v49);
  v29 = type metadata accessor for FunctionalDropDelegate();
  v30 = swift_allocObject();
  *(v30 + 88) = 0;
  *(v30 + 96) = 0;
  v31 = v37;
  *(v30 + 16) = v21;
  *(v30 + 24) = v31;
  v32 = v38;
  *(v30 + 32) = v38;
  *(v30 + 40) = v39;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v49, v30 + 48);
  *(v30 + 88) = 0;
  *(v30 + 96) = 0;
  v46 = v29;
  v47 = &protocol witness table for FunctionalDropDelegate;
  *&v45 = v30;

  outlined copy of Binding<Int>?(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  outlined destroy of DropDelegate?(v49, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v45, v49);
  MEMORY[0x18D00A570](v49, v41, &type metadata for DropModifier, v42);
  return outlined destroy of DropModifier(v49);
}

{
  v41 = a8;
  v40 = a7;
  v35 = a6;
  v34 = a5;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v39 = a9;
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (v15 + 48);
    v43 = v15;
    v19 = (v15 + 32);
    v20 = a1 + 40;
    v21 = MEMORY[0x1E69E7CC0];
    v42 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v18)(v12, 1, v13) == 1)
      {
        outlined destroy of [UTType](v12, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v22 = *v19;
        (*v19)(v16, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v21, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v21[2] = v24 + 1;
        v25 = v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v24;
        v16 = v42;
        v22(v25, v42, v13);
      }

      v20 += 16;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v47[3] = &type metadata for ItemProviderDropAction;
  v47[4] = &protocol witness table for ItemProviderDropAction;
  v26 = swift_allocObject();
  v47[0] = v26;
  v26[2] = 0;
  v26[3] = 0;
  v27 = v35;
  v26[4] = v34;
  v26[5] = v27;
  outlined init with copy of _Benchmark(v47, v48);
  v28 = type metadata accessor for FunctionalDropDelegate();
  v29 = swift_allocObject();
  *(v29 + 88) = 0;
  *(v29 + 96) = 0;
  v30 = v36;
  *(v29 + 16) = v21;
  *(v29 + 24) = v30;
  v31 = v37;
  *(v29 + 32) = v37;
  *(v29 + 40) = v38;
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v48, v29 + 48);
  *(v29 + 88) = 0;
  *(v29 + 96) = 0;
  v45 = v28;
  v46 = &protocol witness table for FunctionalDropDelegate;
  *&v44 = v29;

  outlined copy of Binding<Int>?(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v47);
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  outlined destroy of DropDelegate?(v48, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v44, v48);
  MEMORY[0x18D00A570](v48, v40, &type metadata for DropModifier, v41);
  return outlined destroy of DropModifier(v48);
}

uint64_t View.onDrop(of:delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v23[1] = a5;
  v24 = a3;
  v23[0] = a2;
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (v11 + 48);
    v27 = v11;
    v15 = (v11 + 32);
    v16 = a1 + 40;
    v17 = MEMORY[0x1E69E7CC0];
    v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v14)(v8, 1, v9) == 1)
      {
        outlined destroy of [UTType](v8, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
      }

      else
      {
        v18 = *v15;
        (*v15)(v12, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v17, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E8450]);
        }

        v17[2] = v20 + 1;
        v21 = v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20;
        v12 = v26;
        v18(v21, v26, v9);
      }

      v16 += 16;
      --v13;
    }

    while (v13);
  }

  outlined init with copy of _Benchmark(v23[0], v28);
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  outlined destroy of DropDelegate?(v29, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate, &protocol descriptor for DropDelegate);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v28, v29);
  MEMORY[0x18D00A570](v29, v24, &type metadata for DropModifier, v25);
  return outlined destroy of DropModifier(v29);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI14FocusStoreListV4ItemV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<FocusStoreList.Item>, &type metadata for FocusStoreList.Item, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI18PresentationDetentV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI22SpatialEventCollectionV0K0V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<SpatialEventCollection.Event>, &type metadata for SpatialEventCollection.Event, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10TableRowIDO_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<TableRowID>, &type metadata for TableRowID, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSe_SESHp_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Decodable & Encodable & Hashable>, type metadata accessor for Decodable & Encodable & Hashable, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSH_p_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for DropDelegate?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Hashable>, &lazy cache variable for type metadata for Hashable, MEMORY[0x1E69E5EA0], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI025NavigationViewDestinationK0V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI7SubviewV_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size_0(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 5) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Binding<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi3key_7SwiftUI32DragReorderableLayoutCoordinator33_1B0CD5E46D60A3CA175732DDA089171CLLC10ChildFrameV5valuet_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10ListUpdateOyS2iG_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ListUpdate<Int, Int>>, type metadata accessor for ListUpdate<Int, Int>, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI15ListLabelLayout33_46E184F179717CA4D1066F6C1EAE4B61LLV5ChildV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = _swift_stdlib_malloc_size_0(v8);
  result = v8;
  v11 = ((v9 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v8[2] = a1;
  v8[3] = 2 * ((v11 >> 4) + (v11 >> 63));
  return result;
}

uint64_t outlined destroy of [UTType](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)>(0, a5, a6, a7);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, void (*a5)(void))
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    a5(0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ()();
    swift_arrayInitWithCopy();
  }

  return v12;
}

unint64_t lazy protocol witness table accessor for type DropOperation.Set and conformance DropOperation.Set()
{
  result = lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set;
  if (!lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set;
  if (!lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set;
  if (!lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set;
  if (!lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOperation.Set and conformance DropOperation.Set);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DropOperation and conformance DropOperation()
{
  result = lazy protocol witness table cache variable for type DropOperation and conformance DropOperation;
  if (!lazy protocol witness table cache variable for type DropOperation and conformance DropOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DropOperation and conformance DropOperation);
  }

  return result;
}

uint64_t type metadata completion function for DropPreview()
{
  result = type metadata accessor for DropPreview.Storage();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DropPreview(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v6 + 80);
  v10 = v9;
  v11 = v8 + v9 + 1;
  if (*(v6 + 84))
  {
    v12 = *(v6 + 64);
  }

  else
  {
    v12 = v7 + 1;
  }

  v13 = v9 & 0x100000;
  if (v10 > 7 || v13 != 0 || ((v12 + 7 + (v11 & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v16 = *a2;
    *v4 = *a2;
    v4 = (v16 + ((v10 & 0xF8 ^ 0x1F8) & (v10 + 16)));

    return v4;
  }

  v17 = *(a2 + v8);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v8 <= 3)
    {
      v19 = v8;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
        if (v8 < 4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v19 == 3)
        {
          v20 = *a2 | (*(a2 + 2) << 16);
          if (v8 < 4)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        v20 = *a2;
        if (v8 < 4)
        {
LABEL_31:
          v17 = (v20 | (v18 << (8 * v8))) + 2;
          goto LABEL_32;
        }
      }

LABEL_29:
      v17 = v20 + 2;
      goto LABEL_32;
    }

    if (v19)
    {
      v20 = *a2;
      if (v8 < 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

LABEL_32:
  v21 = ~v10;
  if (v17 == 1)
  {
    v22 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v22;

    v23 = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v23 = 0;
  }

  *(v4 + v8) = v23;
  v24 = ((a2 + v11) & v21);
  if ((*(v6 + 48))(v24, 1, v5))
  {
    memcpy(((v4 + v11) & v21), v24, v12);
  }

  else
  {
    (*(v6 + 16))((v4 + v11) & v21, v24, v5);
    (*(v6 + 56))((v4 + v11) & v21, 0, 1, v5);
  }

  *((v12 + 7 + ((v4 + v11) & v21)) & 0xFFFFFFFFFFFFFFF8) = *((v24 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  return v4;
}

uint64_t destroy for DropPreview(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (*(v4 + 64) <= 0x10uLL)
  {
    v5 = 16;
  }

  else
  {
    v5 = *(v4 + 64);
  }

  v6 = a1[v5];
  v7 = v6 - 2;
  if (v6 < 2)
  {
    goto LABEL_18;
  }

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

    v9 = *a1;
  }

  else if (v8 == 2)
  {
    v9 = *a1;
  }

  else if (v8 == 3)
  {
    v9 = *a1 | (a1[2] << 16);
  }

  else
  {
    v9 = *a1;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 2;
  v6 = v9 + 2;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  v15 = *(*(a2 + 16) - 8);
  if (v6 == 1)
  {
  }

  else
  {
    (*(v4 + 8))(a1, v3);
  }

  v11 = *(v15 + 80);
  v12 = &a1[v5 + 1 + v11];
  result = (*(v15 + 48))(v12 & ~v11, 1, v3);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & ~v11, v3);
  }

  return result;
}

void *initializeWithCopy for DropPreview(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  if (v8 <= 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 1)
  {
    v14 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v14;

    v15 = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v15 = 0;
  }

  *(a1 + v8) = v15;
  v16 = *(v6 + 80);
  v17 = v8 + v16 + 1;
  v18 = ((a1 + v17) & ~v16);
  v19 = (&a2[v17] & ~v16);
  if ((*(v6 + 48))(v19, 1, v5))
  {
    v20 = *(v6 + 84);
    if (v20)
    {
      v21 = v7;
    }

    else
    {
      v21 = v7 + 1;
    }

    memcpy(v18, v19, v21);
  }

  else
  {
    (*(v6 + 16))(v18, v19, v5);
    (*(v6 + 56))(v18, 0, 1, v5);
    v20 = *(v6 + 84);
  }

  if (v20)
  {
    v22 = v7;
  }

  else
  {
    v22 = v7 + 1;
  }

  *((v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *assignWithCopy for DropPreview(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
        if (v7 < 4)
        {
LABEL_22:
          if ((v11 | (v9 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }
      }

      else if (v10 == 2)
      {
        v11 = *a1;
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = *a1;
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      v8 = v11 + 2;
    }

LABEL_19:
    if (v8 != 1)
    {
LABEL_23:
      (*(v6 + 8))(a1, v5);
LABEL_24:
      v12 = a2[v7];
      v13 = v12 - 2;
      if (v12 < 2)
      {
        goto LABEL_38;
      }

      if (v7 <= 3)
      {
        v14 = v7;
      }

      else
      {
        v14 = 4;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = *a2;
        if (v7 < 4)
        {
LABEL_41:
          if ((v15 | (v13 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        }
      }

      else if (v14 == 2)
      {
        v15 = *a2;
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v15 = *a2;
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      v12 = v15 + 2;
LABEL_38:
      if (v12 != 1)
      {
LABEL_42:
        (*(v6 + 16))(a1, a2, v5);
        a1[v7] = 0;
        goto LABEL_43;
      }

LABEL_39:
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      a1[v7] = 1;

      goto LABEL_43;
    }

LABEL_20:

    goto LABEL_24;
  }

LABEL_43:
  v17 = v6;
  v18 = *(v6 + 64);
  v19 = 16;
  if (v18 > 0x10)
  {
    v19 = *(v6 + 64);
  }

  v20 = *(v6 + 80);
  v21 = v19 + v20 + 1;
  v22 = (&a1[v21] & ~v20);
  v23 = (&a2[v21] & ~v20);
  v24 = *(v6 + 48);
  v25 = v24(v22, 1, v5);
  v26 = v24(v23, 1, v5);
  if (v25)
  {
    if (!v26)
    {
      (*(v17 + 16))(v22, v23, v5);
      (*(v17 + 56))(v22, 0, 1, v5);
      goto LABEL_56;
    }

    v27 = *(v17 + 84);
  }

  else
  {
    if (!v26)
    {
      (*(v17 + 24))(v22, v23, v5);
      goto LABEL_56;
    }

    (*(v17 + 8))(v22, v5);
    v27 = *(v17 + 84);
  }

  if (v27)
  {
    v28 = v18;
  }

  else
  {
    v28 = v18 + 1;
  }

  memcpy(v22, v23, v28);
LABEL_56:
  if (*(v17 + 84))
  {
    v29 = v18;
  }

  else
  {
    v29 = v18 + 1;
  }

  v30 = ((v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v23 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];
  return a1;
}

_OWORD *initializeWithTake for DropPreview(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 < 2)
  {
    goto LABEL_18;
  }

  if (v8 <= 3)
  {
    v11 = v8;
  }

  else
  {
    v11 = 4;
  }

  if (v11 <= 1)
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = *a2;
  }

  else if (v11 == 2)
  {
    v12 = *a2;
  }

  else if (v11 == 3)
  {
    v12 = *a2 | (a2[2] << 16);
  }

  else
  {
    v12 = *a2;
  }

  v13 = (v12 | (v10 << (8 * v8))) + 2;
  v9 = v12 + 2;
  if (v8 < 4)
  {
    v9 = v13;
  }

LABEL_18:
  if (v9 == 1)
  {
    *a1 = *a2;
    v14 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v14 = 0;
  }

  *(a1 + v8) = v14;
  v15 = *(v6 + 80);
  v16 = v8 + v15 + 1;
  v17 = ((a1 + v16) & ~v15);
  v18 = (&a2[v16] & ~v15);
  if ((*(v6 + 48))(v18, 1, v5))
  {
    v19 = *(v6 + 84);
    if (v19)
    {
      v20 = v7;
    }

    else
    {
      v20 = v7 + 1;
    }

    memcpy(v17, v18, v20);
  }

  else
  {
    (*(v6 + 32))(v17, v18, v5);
    (*(v6 + 56))(v17, 0, 1, v5);
    v19 = *(v6 + 84);
  }

  if (v19)
  {
    v21 = v7;
  }

  else
  {
    v21 = v7 + 1;
  }

  *((v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int8 *assignWithTake for DropPreview(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (a1 != a2)
  {
    if (*(v6 + 64) <= 0x10uLL)
    {
      v7 = 16;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
        if (v7 < 4)
        {
LABEL_22:
          if ((v11 | (v9 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_23;
          }

          goto LABEL_20;
        }
      }

      else if (v10 == 2)
      {
        v11 = *a1;
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v11 = *a1;
        if (v7 < 4)
        {
          goto LABEL_22;
        }
      }

      v8 = v11 + 2;
    }

LABEL_19:
    if (v8 != 1)
    {
LABEL_23:
      (*(v6 + 8))(a1, v5);
LABEL_24:
      v12 = a2[v7];
      v13 = v12 - 2;
      if (v12 < 2)
      {
        goto LABEL_38;
      }

      if (v7 <= 3)
      {
        v14 = v7;
      }

      else
      {
        v14 = 4;
      }

      if (v14 <= 1)
      {
        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = *a2;
        if (v7 < 4)
        {
LABEL_41:
          if ((v15 | (v13 << (8 * v7))) != 0xFFFFFFFF)
          {
            goto LABEL_42;
          }

          goto LABEL_39;
        }
      }

      else if (v14 == 2)
      {
        v15 = *a2;
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      else if (v14 == 3)
      {
        v15 = *a2 | (a2[2] << 16);
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v15 = *a2;
        if (v7 < 4)
        {
          goto LABEL_41;
        }
      }

      v12 = v15 + 2;
LABEL_38:
      if (v12 != 1)
      {
LABEL_42:
        (*(v6 + 32))(a1, a2, v5);
        v16 = 0;
        goto LABEL_43;
      }

LABEL_39:
      *a1 = *a2;
      v16 = 1;
LABEL_43:
      a1[v7] = v16;
      goto LABEL_44;
    }

LABEL_20:

    goto LABEL_24;
  }

LABEL_44:
  v17 = v6;
  v18 = *(v6 + 64);
  v19 = 16;
  if (v18 > 0x10)
  {
    v19 = *(v6 + 64);
  }

  v20 = *(v6 + 80);
  v21 = v19 + v20 + 1;
  v22 = (&a1[v21] & ~v20);
  v23 = (&a2[v21] & ~v20);
  v24 = *(v6 + 48);
  v25 = v24(v22, 1, v5);
  v26 = v24(v23, 1, v5);
  if (v25)
  {
    if (!v26)
    {
      (*(v17 + 32))(v22, v23, v5);
      (*(v17 + 56))(v22, 0, 1, v5);
      goto LABEL_57;
    }

    v27 = *(v17 + 84);
  }

  else
  {
    if (!v26)
    {
      (*(v17 + 40))(v22, v23, v5);
      goto LABEL_57;
    }

    (*(v17 + 8))(v22, v5);
    v27 = *(v17 + 84);
  }

  if (v27)
  {
    v28 = v18;
  }

  else
  {
    v28 = v18 + 1;
  }

  memcpy(v22, v23, v28);
LABEL_57:
  if (*(v17 + 84))
  {
    v29 = v18;
  }

  else
  {
    v29 = v18 + 1;
  }

  v30 = ((v22 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v23 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v30[1] = v31[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for DropPreview(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  v7 = *(v4 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v8;
  }

  if (v7)
  {
    v10 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v10 = v5 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v4 + 80);
  v12 = v6 + v11 + 1;
  if (v9 >= a2)
  {
    goto LABEL_37;
  }

  v13 = ((v10 + (v12 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v9;
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
      if (v19)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (v19)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v8 > 0xFE)
    {
      v23 = (*(v4 + 48))((a1 + v12) & ~v11);
      if (v23 >= 2)
      {
        return v23 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v22 = *(a1 + v6);
      if (v22 >= 2)
      {
        return (v22 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = *(a1 + v13);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_33:
  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    LODWORD(v15) = *a1;
  }

  return v9 + (v15 | v21) + 1;
}

void storeEnumTagSinglePayload for DropPreview(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = *(*(*(a4 + 16) - 8) + 64);
  }

  v9 = *(v6 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = v10;
  }

  v12 = v8 + 1;
  v13 = *(v6 + 80);
  v14 = v8 + 1 + v13;
  if (!v9)
  {
    ++v7;
  }

  v15 = ((v7 + (v14 & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 < a3)
  {
    v16 = a3 - v11;
    if (((v7 + (v14 & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v11)
  {
    if (((v7 + (v14 & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a2 - v11;
    }

    else
    {
      v19 = 1;
    }

    if (((v7 + (v14 & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v20 = ~v11 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_42;
    }

    *(a1 + v15) = 0;
  }

  else if (v5)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_42;
  }

  if (!a2)
  {
    return;
  }

LABEL_42:
  if (v10 > 0xFE)
  {
    v22 = (a1 + v14) & ~v13;
    if (v10 >= a2)
    {
      v30 = *(v6 + 56);
      v31 = a2 + 1;
      v32 = (a1 + v14) & ~v13;

      v30(v32, v31);
    }

    else
    {
      if (v7 <= 3)
      {
        v23 = ~(-1 << (8 * v7));
      }

      else
      {
        v23 = -1;
      }

      if (v7)
      {
        v24 = v23 & (~v10 + a2);
        if (v7 <= 3)
        {
          v25 = v7;
        }

        else
        {
          v25 = 4;
        }

        bzero(((a1 + v14) & ~v13), v7);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            *(v22 + 2) = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0xFE)
  {
    if (v12 <= 3)
    {
      v26 = ~(-1 << (8 * v12));
    }

    else
    {
      v26 = -1;
    }

    if (v8 != -1)
    {
      v27 = v26 & (a2 - 255);
      if (v12 <= 3)
      {
        v28 = v8 + 1;
      }

      else
      {
        v28 = 4;
      }

      v29 = a1;
      bzero(a1, v8 + 1);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          *v29 = v27;
          *(v29 + 2) = BYTE2(v27);
        }

        else
        {
          *v29 = v27;
        }
      }

      else if (v28 == 1)
      {
        *v29 = v27;
      }

      else
      {
        *v29 = v27;
      }
    }
  }

  else
  {
    *(a1 + v8) = -a2;
  }
}

void **assignWithCopy for DefaultDragDropPreview(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for DefaultDragDropPreview(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t storeEnumTagSinglePayload for DefaultDragDropPreview(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DropOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DropProposal(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 65285 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65285 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65285;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65285;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DropProposal(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65285 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65285 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 16) + 1;
    *result = a2 - 251;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<DropOntoTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<DropOntoTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<DropOntoTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<DropOntoTraitKey>, &type metadata for DropOntoTraitKey, &protocol witness table for DropOntoTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<DropOntoTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for TabDropDestinationTraitWritingModifier(uint64_t a1)
{

  if (*(a1 + 16))
  {
  }
}

uint64_t initializeWithCopy for TabDropDestinationTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a2 + 16);

  if (v5)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v5;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    *v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  return a1;
}

uint64_t assignWithCopy for TabDropDestinationTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of TabEntry?(a1 + 8, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      v5 = *(a2 + 24);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  return a1;
}

uint64_t assignWithTake for TabDropDestinationTraitWritingModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (!*(a1 + 16))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    outlined destroy of TabEntry?(a1 + 8, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TabDropDestinationTraitWritingModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TabDropDestinationTraitWritingModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TransferableDropAction(uint64_t a1)
{
  result = outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  if (*(a1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TransferableDropAction(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = a2[3];
  if (v7)
  {
    v8 = a2[4];
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    *(a1 + 24) = *(a2 + 3);
  }

  return a1;
}

uint64_t assignWithCopy for TransferableDropAction(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  v7 = a2[3];
  if (!*(a1 + 24))
  {
    if (v7)
    {
      v9 = a2[4];
      *(a1 + 24) = v7;
      *(a1 + 32) = v9;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = a2[4];
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;

  return a1;
}

uint64_t assignWithTake for TransferableDropAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  v5 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v5)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v5;
      *(a1 + 32) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t destroy for ItemProviderDropAction(void *a1)
{
  if (*a1)
  {
  }
}

void *initializeWithCopy for ItemProviderDropAction(void *a1, void *a2)
{
  if (*a2)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
  }

  else
  {
    *a1 = *a2;
  }

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

void *assignWithCopy for ItemProviderDropAction(void *a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      a1[1] = v6;

      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  a1[1] = v5;

LABEL_8:
  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;

  return a1;
}

uint64_t assignWithTake for ItemProviderDropAction(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (!*a1)
  {
    if (v4)
    {
      v6 = a2[1];
      *a1 = v4;
      *(a1 + 8) = v6;
      goto LABEL_8;
    }

LABEL_7:
    *a1 = *a2;
    goto LABEL_8;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[1];
  *a1 = v4;
  *(a1 + 8) = v5;

LABEL_8:
  *(a1 + 16) = *(a2 + 1);

  return a1;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    v13[2] = v11;
    v13[3] = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[2 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 16 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for DropDelegate(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t lazy protocol witness table accessor for type CGPoint and conformance CGPoint(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_84Tm()
{

  return swift_deallocObject();
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14 + 32;
  v18 = a4 + 32;
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[8 * v12])
    {
      memmove(v17, v18, 8 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v12);
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    a8(0, a5, a6, a7);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size_0(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  v18 = 40 * v12;
  if (v9)
  {
    if (v14 != a4 || v16 >= &v17[v18])
    {
      memmove(v16, v17, v18);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v16, v17, v18);
  }

  return v14;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 96);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 96 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

unint64_t lazy protocol witness table accessor for type TabDropDestinationModifier and conformance TabDropDestinationModifier()
{
  result = lazy protocol witness table cache variable for type TabDropDestinationModifier and conformance TabDropDestinationModifier;
  if (!lazy protocol witness table cache variable for type TabDropDestinationModifier and conformance TabDropDestinationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabDropDestinationModifier and conformance TabDropDestinationModifier);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Range<Int>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>);
    }
  }
}

void type metadata accessor for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload)()
{
  if (!lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload))
  {
    type metadata accessor for IntelligenceDataSourceItem();
    type metadata accessor for IntelligenceAppIntentsPayload();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (IntelligenceDataSourceItem, IntelligenceAppIntentsPayload));
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>)
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(255, &lazy cache variable for type metadata for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(Int, Int)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (Int, Int));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>);
    }
  }
}

void type metadata accessor for ListUpdate<Int, Int>()
{
  if (!lazy cache variable for type metadata for ListUpdate<Int, Int>)
  {
    v0 = type metadata accessor for ListUpdate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListUpdate<Int, Int>);
    }
  }
}

void type metadata accessor for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>()
{
  if (!lazy cache variable for type metadata for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E697E0E0]);
    lazy protocol witness table accessor for type CountingIndex<Int> and conformance CountingIndex<A>();
    v0 = type metadata accessor for ListUpdate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ListUpdate<CountingIndex<Int>, CountingIndex<Int>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CountingIndex<Int> and conformance CountingIndex<A>()
{
  result = lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>;
  if (!lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E697E0E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t outlined init with take of WeakBox<EntityGestureResponder>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(String, String)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (String, String));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
    }
  }
}

uint64_t outlined destroy of DropDelegate?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for DropDelegate?(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<Range<String.Index>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Range<String.Index>>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Range<String.Index>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(seed: Int, removeIndex: Int)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(seed: Int, removeIndex: Int)>)
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(255, &lazy cache variable for type metadata for (seed: Int, removeIndex: Int));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(seed: Int, removeIndex: Int)>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<PresentationOptionsPreference?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<PresentationOptionsPreference?>)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PresentationOptionsPreference?>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<WeakBox<UIGestureRecognizer>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<UIGestureRecognizer>>)
  {
    type metadata accessor for WeakBox<UIGestureRecognizer>(255, &lazy cache variable for type metadata for WeakBox<UIGestureRecognizer>, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60, MEMORY[0x1E6981A78]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakBox<UIGestureRecognizer>>);
    }
  }
}

unint64_t type metadata accessor for Sendable()
{
  result = lazy cache variable for type metadata for Sendable;
  if (!lazy cache variable for type metadata for Sendable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Sendable);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<ClosedRange<CGFloat>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ClosedRange<CGFloat>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<UIKitProxyFocusItem>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for DropDelegate(255, a3);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined init with copy of DropInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for Decodable & Encodable & Hashable()
{
  result = lazy cache variable for type metadata for Decodable & Encodable & Hashable;
  if (!lazy cache variable for type metadata for Decodable & Encodable & Hashable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & Encodable & Hashable);
  }

  return result;
}

void type metadata accessor for (key: String?, value: String)()
{
  if (!lazy cache variable for type metadata for (key: String?, value: String))
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: String?, value: String));
    }
  }
}

void type metadata accessor for (String?, String)()
{
  if (!lazy cache variable for type metadata for (String?, String))
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String?, String));
    }
  }
}

void type metadata accessor for HitTestTrace<ViewResponder>()
{
  if (!lazy cache variable for type metadata for HitTestTrace<ViewResponder>)
  {
    type metadata accessor for ViewResponder();
    v0 = type metadata accessor for HitTestTrace();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HitTestTrace<ViewResponder>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<HitTestTrace<PlatformGestureRecognizerContainerBox>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<PlatformGestureRecognizerContainerBox>>)
  {
    type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(255, &lazy cache variable for type metadata for HitTestTrace<PlatformGestureRecognizerContainerBox>, &type metadata for PlatformGestureRecognizerContainerBox, &protocol witness table for PlatformGestureRecognizerContainerBox, type metadata accessor for HitTestTrace);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<HitTestTrace<PlatformGestureRecognizerContainerBox>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<DropOntoTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for HitTestTrace<UIView>()
{
  if (!lazy cache variable for type metadata for HitTestTrace<UIView>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIView);
    v0 = type metadata accessor for HitTestTrace();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HitTestTrace<UIView>);
    }
  }
}

void _sSny10Foundation16AttributedStringV5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<(tag: String, item: String)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(tag: String, item: String)>)
  {
    type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(255, &lazy cache variable for type metadata for (tag: String, item: String));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(tag: String, item: String)>);
    }
  }
}

void type metadata accessor for (key: Int, value: DragReorderableLayoutCoordinator.ChildFrame)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (_Benchmark, [Double])()
{
  if (!lazy cache variable for type metadata for (_Benchmark, [Double]))
  {
    type metadata accessor for DropDelegate(255, &lazy cache variable for type metadata for _Benchmark);
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for [Double], MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_Benchmark, [Double]));
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for TransferableDropAction.UserActionStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TransferableDropAction.UserActionStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return a1;
}

uint64_t assignWithTake for TransferableDropAction.UserActionStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<WeakAttribute<SwipeActions.Value>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<SwipeActions.Value>>)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for WeakAttribute<SwipeActions.Value>, &type metadata for SwipeActions.Value, MEMORY[0x1E698D370]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<WeakAttribute<SwipeActions.Value>>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<_RowVisitationContext<TableDataSourceAdaptor>>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<_RowVisitationContext<TableDataSourceAdaptor>>)
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<_RowVisitationContext<TableDataSourceAdaptor>>);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<Int?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int?>)
  {
    type metadata accessor for Binding<Bool>(255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int?>);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (index: Int, element: TabCustomizationID, id: TabCustomizationID)()
{
  if (!lazy cache variable for type metadata for (index: Int, element: TabCustomizationID, id: TabCustomizationID))
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (index: Int, element: TabCustomizationID, id: TabCustomizationID));
    }
  }
}

uint64_t View.invalidatableContent(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v7 = 0;
  MEMORY[0x18D00A570](&KeyPath, a2, &type metadata for InvalidatableContentModifier, a3);
  return outlined consume of Environment<Selector?>.Content(KeyPath, v7);
}

uint64_t one-time initialization function for pulsingAnimation()
{
  static Animation.timingCurve(_:_:_:_:duration:)();
  Animation.repeatForever(autoreverses:)();

  v0 = Animation.delay(_:)();

  static InvalidatableContentModifier.pulsingAnimation = v0;
  return result;
}

void InvalidatableContentModifier.body(content:)(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((*(v1 + 8) & 1) == 0)
  {
    outlined copy of Environment<Selector?>.Content(*v1, 0);
    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F2C0, &v11);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v3, 0);

    LOBYTE(v3) = v12;
  }

  if ((v3 & 4) != 0)
  {
    if (one-time initialization token for pulsingAnimation != -1)
    {
      swift_once();
    }

    v8 = static InvalidatableContentModifier.pulsingAnimation;
    static Semantics.v6_4.getter();
    v9 = isLinkedOnOrAfter(_:)() & 1;

    v10 = xmmword_18CD73B30;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 25) = (v3 & 4) == 0;
}

uint64_t protocol witness for Decodable.init(from:) in conformance InvalidatableContentModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t key path getter for EnvironmentValues.redactionReasons : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.redactionReasons.getter();
  *a1 = v3;
  return result;
}

unint64_t instantiation function for generic protocol witness table for InvalidatableContentModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
  a1[2] = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
  result = lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>> and conformance AppearanceAnimationView<A, B>, type metadata accessor for AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>);
    lazy protocol witness table accessor for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>>)
  {
    type metadata accessor for AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>();
    type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>, _ViewModifier_Content<InvalidatableContentModifier>>);
    }
  }
}

void type metadata accessor for AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>()
{
  if (!lazy cache variable for type metadata for AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>)
  {
    type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>();
    type metadata accessor for ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>();
    lazy protocol witness table accessor for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for AppearanceAnimationView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AppearanceAnimationView<_ViewModifier_Content<InvalidatableContentModifier>, ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<InvalidatableContentModifier>)
  {
    lazy protocol witness table accessor for type InvalidatableContentModifier and conformance InvalidatableContentModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<InvalidatableContentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>)
  {
    type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect>();
    lazy protocol witness table accessor for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<InvalidatableContentModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<InvalidatableContentModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<InvalidatableContentModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized FixedSizeLazyLayout<>.sizeThatFits(proposedSize:subviews:context:cache:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(v7 + 8))
  {
    v14 = a6;
    v15 = a7;
    _LazyLayout_SizeAndSpacingContext.containerSize.getter();
    v9 = v8;
  }

  else
  {
    v9 = *v7;
  }

  v14 = 0;
  LOBYTE(v15) = 1;
  *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
  if (v11)
  {
    *&result = COERCE_DOUBLE(_s7SwiftUI19FixedSizeLazyLayoutPAAyt5CacheRtzrlE12sizeThatFits08proposedD08subviews7context5cacheSo6CGSizeVAA012ProposedViewD0V_AA01_eF9_SubviewsVAA01_ef1_D17AndSpacingContextVyttF19flexibleMinorLengthL_12CoreGraphics7CGFloatVvgTf0snnn_nAA0ecd6HStackF033_0AF2004D0031086A175F2FA7B3D0E2A3LLV_Tt0g5Tm(&v14));
    v13 = v12;
  }

  else
  {
    v13 = *&result;
  }

  if (v9 > 0.0 && v13 > 0.0)
  {
    *&result = COERCE_DOUBLE(_ViewList_Node.estimatedCount(style:)());
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
    }
  }

  return result;
}

{
  if (*(v7 + 8))
  {
    v14 = a6;
    v15 = a7;
    _LazyLayout_SizeAndSpacingContext.containerSize.getter();
    v9 = v8;
  }

  else
  {
    v9 = *v7;
  }

  v14 = 0;
  LOBYTE(v15) = 1;
  *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
  if (v11)
  {
    *&result = COERCE_DOUBLE(_s7SwiftUI19FixedSizeLazyLayoutPAAyt5CacheRtzrlE12sizeThatFits08proposedD08subviews7context5cacheSo6CGSizeVAA012ProposedViewD0V_AA01_eF9_SubviewsVAA01_ef1_D17AndSpacingContextVyttF19flexibleMinorLengthL_12CoreGraphics7CGFloatVvgTf0snnn_nAA0ecd6HStackF033_0AF2004D0031086A175F2FA7B3D0E2A3LLV_Tt0g5Tm(&v14));
    v13 = v12;
  }

  else
  {
    v13 = *&result;
  }

  if (v9 > 0.0 && v13 > 0.0)
  {
    *&result = COERCE_DOUBLE(_ViewList_Node.estimatedCount(style:)());
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      *&result = COERCE_DOUBLE(ProposedViewSize.subscript.getter());
    }
  }

  return result;
}

uint64_t _s7SwiftUI19FixedSizeLazyLayoutPAAyt5CacheRtzrlE12sizeThatFits08proposedD08subviews7context5cacheSo6CGSizeVAA012ProposedViewD0V_AA01_eF9_SubviewsVAA01_ef1_D17AndSpacingContextVyttF19flexibleMinorLengthL_12CoreGraphics7CGFloatVvgTf0snnn_nAA0ecd6HStackF033_0AF2004D0031086A175F2FA7B3D0E2A3LLV_Tt0g5Tm(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    MEMORY[0x1EEE9AC00](result);
    _LazyLayout_Subviews.apply(from:style:to:)();
    result = swift_beginAccess();
    *v1 = 0;
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t specialized FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(uint64_t a1, _DWORD *a2)
{
  v4 = v2[1];
  v19 = *v2;
  v20 = v4;
  v21 = v2[2];
  v22 = *(v2 + 6);
  memcpy(v18, a2, 0x129uLL);
  _LazyLayout_PlacementContext.containingVisibleRect.getter();
  x = v27.origin.x;
  width = v27.size.width;
  v7 = 0.0;
  v8 = 0.0;
  if (!CGRectIsNull(v27))
  {
    v9 = x + width;
    if (x + width >= x)
    {
      v10 = x;
    }

    else
    {
      v10 = x + width;
    }

    if (x > v9)
    {
      v9 = x;
    }

    if (v10 > v9)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v9;
    }

    if (v10 > v9)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v10;
    }
  }

  if (*(v2 + 8) == 1)
  {
    memcpy(v18, a2, 0x129uLL);
    _LazyLayout_PlacementContext.containerSize.getter();
    v12 = v11;
  }

  else
  {
    v12 = *v2;
  }

  memcpy(v18, a2, 0x129uLL);
  result = _LazyLayout_PlacementContext.size.getter();
  if (v7 > 0.0)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 < v8)
  {
    if (v15 > v8)
    {
      __break(1u);
    }

    else if (v14 > 0.0)
    {
      swift_getKeyPath();
      v18[0] = *a2;
      LODWORD(v18[1]) = a2[2];
      SizeAndSpacingContext.subscript.getter();

      v16 = *&v23;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v26 = v22;
      result = specialized FixedSizeLazyLayout<>.makeIndexRange(in:subviews:subviewLength:pixelLength:)(v15, v8, v12, v16);
      if ((v17 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        v18[0] = 2;
        _LazyLayout_Subviews.apply(from:style:to:)();
        memcpy(v18, a2, 0x129uLL);
        _LazyLayout_PlacementContext.containingVisibleRect.getter();
        return _LazyLayout_Placements.validRect.setter();
      }
    }
  }

  return result;
}

{
  v4 = v2[1];
  v19 = *v2;
  v20 = v4;
  v21 = v2[2];
  v22 = *(v2 + 6);
  memcpy(v18, a2, 0x129uLL);
  _LazyLayout_PlacementContext.containingVisibleRect.getter();
  y = v27.origin.y;
  height = v27.size.height;
  v7 = 0.0;
  v8 = 0.0;
  if (!CGRectIsNull(v27))
  {
    v9 = y + height;
    if (y + height >= y)
    {
      v10 = y;
    }

    else
    {
      v10 = y + height;
    }

    if (y > v9)
    {
      v9 = y;
    }

    if (v10 > v9)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v9;
    }

    if (v10 > v9)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v10;
    }
  }

  if (*(v2 + 8) == 1)
  {
    memcpy(v18, a2, 0x129uLL);
    _LazyLayout_PlacementContext.containerSize.getter();
    v12 = v11;
  }

  else
  {
    v12 = *v2;
  }

  memcpy(v18, a2, 0x129uLL);
  result = _LazyLayout_PlacementContext.size.getter();
  if (v7 > 0.0)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0.0;
  }

  if (v15 < v8)
  {
    if (v15 > v8)
    {
      __break(1u);
    }

    else if (v14 > 0.0)
    {
      swift_getKeyPath();
      v18[0] = *a2;
      LODWORD(v18[1]) = a2[2];
      SizeAndSpacingContext.subscript.getter();

      v16 = *&v23;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      v26 = v22;
      result = specialized FixedSizeLazyLayout<>.makeIndexRange(in:subviews:subviewLength:pixelLength:)(v15, v8, v12, v16);
      if ((v17 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result);
        v18[0] = 2;
        _LazyLayout_Subviews.apply(from:style:to:)();
        memcpy(v18, a2, 0x129uLL);
        _LazyLayout_PlacementContext.containingVisibleRect.getter();
        return _LazyLayout_Placements.validRect.setter();
      }
    }
  }

  return result;
}

uint64_t specialized FixedSizeLazyLayout<>.makeIndexRange(in:subviews:subviewLength:pixelLength:)(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 24) + a3;
  if (v5 <= 0.0)
  {
    return 0;
  }

  if (a4 == 1.0)
  {
    v6 = round(a1);
    v7 = round(a2);
    v8 = round(v5);
  }

  else
  {
    v6 = round(a1 / a4) * a4;
    v7 = round(a2 / a4) * a4;
    v8 = round(v5 / a4) * a4;
  }

  result = 0;
  v10 = v6 / v8;
  v11 = v7 / v8;
  v12 = COERCE__INT64(fabs(v7 / v8)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v6 / v8)) <= 0x7FEFFFFFFFFFFFFFLL && !v12)
  {
    result = _ViewList_Node.estimatedCount(style:)();
    v13 = floor(v10);
    if (v13 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v13 < 9.22337204e18)
    {
      v14 = result;
      v15 = v13 & ~(v13 >> 63);
      if (result >= v15)
      {
        result = v13 & ~(v13 >> 63);
      }

      v16 = ceil(v11);
      if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          if (v14 >= (v16 & ~(v16 >> 63)))
          {
            v17 = v16 & ~(v16 >> 63);
          }

          else
          {
            v17 = v14;
          }

          if (v15 >= v17)
          {
            return 0;
          }

          return result;
        }

LABEL_22:
        __break(1u);
        return result;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t specialized FixedSizeLazyLayout<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<X0>(void *__src@<X4>, unint64_t result@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, _OWORD *a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>, unsigned __int8 a11)
{
  v12 = a3;
  v13 = result;
  if (a5)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      v15 = a3 + 80 * result;
      v16 = *(v15 + 56);
      *a6 = *(v15 + 40);
      a6[1] = v16;
      v17 = *(v15 + 72);
      v18 = *(v15 + 88);
LABEL_10:
      a6[2] = v17;
      a6[3] = v18;
      return result;
    }

    __break(1u);
  }

  else
  {
    memcpy(v30, __src, 0x129uLL);
    _LazyLayout_PlacementContext.containingVisibleRect.getter();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = swift_allocObject();
    v28 = *(v11 + 16);
    *(v27 + 16) = *v11;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(v11 + 32);
    *(v27 + 64) = *(v11 + 48);
    Array<A>.synthesizedPlacement(of:in:avoiding:distance:)();

    v31 = v30[0];
    v32 = v30[1];
    a7.n128_u64[1] = *(&v30[2] + 1);
    a8.n128_u64[1] = *(&v30[3] + 1);
    v33 = v30[2];
    v34 = v30[3];
    if ((v30[4] & 1) == 0)
    {
      v29 = v32;
      *a6 = v31;
      a6[1] = v29;
      v17 = v33;
      v18 = v34;
      goto LABEL_10;
    }

    result = v13;
    a7.n128_u64[0] = v20;
    a8.n128_u64[0] = v22;
    a9.n128_u64[0] = v24;
    a10.n128_u64[0] = v26;
    a3 = a11;
    a4 = v12;
  }

  return MEMORY[0x1EEDE5D60](result, a3, a4, a7, a8, a9, a10);
}

uint64_t specialized FixedSizeLazyLayout<>.boundingRect(at:subviews:context:cache:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  if (*(v3 + 8))
  {
    memcpy(__dst, __src, sizeof(__dst));
    _LazyLayout_PlacementContext.containerSize.getter();
  }

  else
  {
    v7 = *v3;
  }

  v12 = v7;
  memcpy(__dst, __src, sizeof(__dst));
  result = _LazyLayout_PlacementContext.size.getter();
  if (v9 <= 0.0)
  {
    v10 = 0uLL;
    v11 = 0.0;
LABEL_8:
    *a3 = v11;
    *(a3 + 8) = 0;
    *(a3 + 16) = v10;
    *(a3 + 32) = v9 <= 0.0;
    return result;
  }

  if (!__OFSUB__(a2, 1))
  {
    *&v10 = v12;
    v11 = v12 * a2 + *(v3 + 24) * (a2 - 1);
    *(&v10 + 1) = v9;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

{
  if (*(v3 + 8))
  {
    memcpy(v12, __src, sizeof(v12));
    _LazyLayout_PlacementContext.containerSize.getter();
    v8 = v7;
  }

  else
  {
    v8 = *v3;
  }

  memcpy(v12, __src, sizeof(v12));
  result = _LazyLayout_PlacementContext.size.getter();
  if (v10 <= 0.0)
  {
    v11 = 0uLL;
    v8 = 0.0;
LABEL_8:
    *a3 = 0;
    *(a3 + 8) = v11;
    *(a3 + 24) = v8;
    *(a3 + 32) = v10 <= 0.0;
    return result;
  }

  if (!__OFSUB__(a2, 1))
  {
    *&v11 = v8 * a2 + *(v3 + 24) * (a2 - 1);
    *(&v11 + 1) = v10;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in FixedSizeLazyLayout<>.resolveFlexibleMinorLength(subviews:subviewLength:)(uint64_t a1, _BYTE *a2, char a3, double *a4)
{
  _LazyLayout_Subview.layout.getter();
  _ProposedSize.init(_:)();
  result = LayoutProxy.size(in:)();
  if ((a3 & 1) == 0)
  {
    v8 = v9;
  }

  *a4 = v8;
  *a2 = 1;
  return result;
}

uint64_t protocol witness for LazyLayout.place(subviews:context:cache:in:) in conformance LazyFixedSizeHStackLayout(uint64_t a1, const void *a2)
{
  memcpy(v6, a2, 0x129uLL);
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  v9 = v2[2];
  v10 = *(v2 + 6);
  return specialized FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(a1, v6);
}

unint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyFixedSizeHStackLayout@<X0>(void *__src@<X4>, unint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, _OWORD *a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = v6[1];
  v17 = *v6;
  v18 = v12;
  v19 = v6[2];
  v20 = *(v6 + 6);
  return specialized FixedSizeLazyLayout<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(__dst, a2, a3, a4, a5, a6, v19, v12, v13, v14, 0);
}

unint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyFixedSizeHStackLayout@<X0>(void *__src@<X4>, unint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, _OWORD *a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = v6[1];
  v17 = *v6;
  v18 = v12;
  v19 = v6[2];
  v20 = *(v6 + 6);
  return specialized FixedSizeLazyLayout<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(__dst, a2, a3, a4, a5, a6, v19, v12, v13, v14, 0);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyFixedSizeHStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout();

  return MEMORY[0x1EEDDD118](a1, a2, a3, a4, a5, v10);
}

uint64_t LazyFixedSizeHStack.init(width:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  if (a5)
  {
    static Spacing.defaultValue.getter();
  }

  else
  {
    v11 = a4;
  }

  *(a8 + 24) = v11;
  v12 = type metadata accessor for LazyFixedSizeHStack();
  v13 = *(*(a7 - 8) + 32);
  v14 = a8 + *(v12 + 44);

  return v13(v14, a6, a7);
}

uint64_t static LazyFixedSizeHStack._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v22 = a2[2];
  v23 = v5;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  type metadata accessor for LazyFixedSizeHStack();
  type metadata accessor for _GraphValue();
  v17 = *(&v20 + 1);
  v18 = v21;
  v19 = v22;
  v16[0] = _GraphValue.value.getter();
  v16[1] = _GraphInputs.scrollPhaseState.getter();
  v11 = type metadata accessor for _VariadicView.Tree();
  View = type metadata accessor for LazyFixedSizeHStack.MakeView();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v10, View, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  _GraphValue.init(_:)();
  v14 = &protocol witness table for LazyFixedSizeHStackLayout;
  v15 = a4;
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance LazyFixedSizeHStack<A>.MakeView@<X0>(uint64_t a1@<X8>)
{
  return protocol witness for static Rule.initialValue.getter in conformance LazyFixedSizeHStack<A>.MakeView(a1);
}

{
  v2 = type metadata accessor for _VariadicView.Tree();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LazyFixedSizeHStack<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for LazyLayout.place(subviews:context:cache:in:) in conformance LazyFixedSizeVStackLayout(uint64_t a1, const void *a2)
{
  memcpy(v6, a2, 0x129uLL);
  v4 = v2[1];
  v7 = *v2;
  v8 = v4;
  v9 = v2[2];
  v10 = *(v2 + 6);
  return specialized FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(a1, v6);
}

unint64_t protocol witness for LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:) in conformance LazyFixedSizeVStackLayout@<X0>(void *__src@<X4>, unint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, _OWORD *a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = v6[1];
  v17 = *v6;
  v18 = v12;
  v19 = v6[2];
  v20 = *(v6 + 6);
  return specialized FixedSizeLazyLayout<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(__dst, a2, a3, a4, a5, a6, v19, v12, v13, v14, 1u);
}

unint64_t protocol witness for LazyLayout.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:) in conformance LazyFixedSizeVStackLayout@<X0>(void *__src@<X4>, unint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>, _OWORD *a6@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v12 = v6[1];
  v17 = *v6;
  v18 = v12;
  v19 = v6[2];
  v20 = *(v6 + 6);
  return specialized FixedSizeLazyLayout<>.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)(__dst, a2, a3, a4, a5, a6, v19, v12, v13, v14, 1u);
}

double protocol witness for LazyLayout.boundingRect(at:subviews:context:cache:) in conformance LazyFixedSizeHStackLayout@<D0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void (*a4)(_OWORD *__return_ptr, uint64_t, uint64_t, _BYTE *)@<X6>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x129uLL);
  v10 = v5[1];
  v16 = *v5;
  v17 = v10;
  v18 = v5[2];
  v19 = *(v5 + 6);
  a4(v13, a2, a3, __dst);
  result = *v13;
  v12 = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = v12;
  *(a5 + 32) = v14;
  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyFixedSizeVStackLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout();

  return MEMORY[0x1EEDDD118](a1, a2, a3, a4, a5, v10);
}

uint64_t LazyFixedSizeVStack.init(height:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  if (a5)
  {
    static Spacing.defaultValue.getter();
  }

  else
  {
    v11 = a4;
  }

  *(a8 + 24) = v11;
  v12 = type metadata accessor for LazyFixedSizeVStack();
  v13 = *(*(a7 - 8) + 32);
  v14 = a8 + *(v12 + 44);

  return v13(v14, a6, a7);
}

uint64_t LazyFixedSizeHStack.init(width:alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, uint64_t, uint64_t, void, char *, uint64_t, uint64_t))
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v14;
  v18();
  return a8(*&v17, 0, a1, a2, a3 & 1, v16, a6, a7);
}

uint64_t static LazyFixedSizeVStack._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v22 = a2[2];
  v23 = v5;
  v24 = a2[4];
  v25 = *(a2 + 20);
  v6 = a2[1];
  v20 = *a2;
  v21 = v6;
  type metadata accessor for LazyFixedSizeVStack();
  type metadata accessor for _GraphValue();
  v17 = *(&v20 + 1);
  v18 = v21;
  v19 = v22;
  v16[0] = _GraphValue.value.getter();
  v16[1] = _GraphInputs.scrollPhaseState.getter();
  v11 = type metadata accessor for _VariadicView.Tree();
  View = type metadata accessor for LazyFixedSizeVStack.MakeView();
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v16, closure #1 in Attribute.init<A>(_:)partial apply, v10, View, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  _GraphValue.init(_:)();
  v14 = &protocol witness table for LazyFixedSizeVStackLayout;
  v15 = a4;
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t LazyFixedSizeHStack.MakeView.view.getter@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t LazyFixedSizeHStack.MakeView.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v8 = HIDWORD(a1);
  v39 = a6;
  v38 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v11(0, v9);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33[-v22];
  LazyFixedSizeHStack.MakeView.view.getter(a3, &v33[-v22]);
  v35 = *v23;
  v34 = v23[8];
  v24 = *(v13 + 8);
  v24(v23, v12);
  LazyFixedSizeHStack.MakeView.view.getter(a3, v20);
  v25 = *(v20 + 2);
  v24(v20, v12);
  LazyFixedSizeHStack.MakeView.view.getter(a3, v17);
  v26 = *(v17 + 3);
  v24(v17, v12);
  if (*MEMORY[0x1E698D3F8] == v8 || (Value = AGGraphGetValue(), v28 = *Value, v28 == 5))
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    v29 = &v42;
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v28) = v42;
  }

  else
  {
    v29 = Value;
  }

  v30 = *(v29 + 1);
  v31 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v25;
  v45 = v26;
  v46 = v28;
  v47 = v30;
  LazyFixedSizeHStack.MakeView.view.getter(a3, v36);
  (*(v38 + 32))(v37, &v31[*(v12 + 44)], a2);
  return _VariadicView.Tree.init(root:content:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance LazyFixedSizeVStack<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t LazyFixedSizeHStack.init(alignment:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, uint64_t, uint64_t, uint64_t, void, char *, uint64_t, uint64_t))
{
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  return a8(0, 1, a1, a2, a3 & 1, v16, a6, a7);
}

uint64_t type metadata completion function for LazyFixedSizeHStack()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyFixedSizeHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-33 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    v9 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    (*(v4 + 16))(v9 + 1, v10 + 1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

uint64_t initializeWithCopy for LazyFixedSizeHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 16))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t assignWithCopy for LazyFixedSizeHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v5 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((v5 + *(v7 + 80) + 8) & ~*(v7 + 80), (v6 + *(v7 + 80) + 8) & ~*(v7 + 80));
  return a1;
}

uint64_t initializeWithTake for LazyFixedSizeHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t assignWithTake for LazyFixedSizeHStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyFixedSizeHStack(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for LazyFixedSizeHStack(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 32) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *(a1 + v9) = v14;
              }

              else
              {
                *(a1 + v9) = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        *(a1 + 2) = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *(a1 + v9) = 0;
  }

  else if (v12)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;

  v18(v19);
}

uint64_t getEnumTagSinglePayload for LazyFixedSizeVStackLayout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 56))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyFixedSizeVStackLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 4;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout()
{
  result = lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment()
{
  result = lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment;
  if (!lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalAlignment and conformance VerticalAlignment);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LazyFixedSizeHStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyFixedSizeHStackLayout and conformance LazyFixedSizeHStackLayout();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout()
{
  result = lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout;
  if (!lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LazyFixedSizeVStackLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type LazyFixedSizeVStackLayout and conformance LazyFixedSizeVStackLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(double a1, double a2, double a3, uint64_t a4, BOOL *a5, uint64_t *a6, char a7, uint64_t a8, uint64_t *a9, uint64_t a10, void (*a11)(uint64_t))
{
  if (a7)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  if (a7)
  {
    v18 = a1;
  }

  else
  {
    v18 = a2;
  }

  v19 = _ProposedSize.init(_:)();
  v20 = (a1 + a3) * *a6;
  if (a7)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = (a1 + a3) * *a6;
  }

  if (a7)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0.0;
  }

  a11(v19);
  AlignmentGuide.fraction.getter();
  UnitPoint.init(_:in:by:)();
  v36.origin.x = v21;
  v36.origin.y = v22;
  v36.size.width = v17;
  v36.size.height = v18;
  UnitPoint.in(_:)(v36);
  AlignmentGuide.fraction.getter();
  UnitPoint.init(_:in:by:)();
  _Placement.init(proposedSize:anchoring:at:)();
  _LazyLayout_Subview.place(at:)();
  v23 = *a9;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a9 = v23;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
    *a9 = result;
  }

  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  if (v26 >= v25 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v23);
    v23 = result;
    *a9 = result;
  }

  *(v23 + 16) = v26 + 1;
  v27 = (v23 + 80 * v26);
  v27[2] = v31;
  v27[5] = v34;
  v27[6] = v35;
  v27[3] = v32;
  v27[4] = v33;
  v28 = *a6 + 1;
  if (__OFADD__(*a6, 1))
  {
    __break(1u);
  }

  else
  {
    *a5 = v28 == a10;
    *a6 = v28;
  }

  return result;
}

uint64_t specialized FixedSizeLazyLayout<>.firstIndex<A>(of:subviews:context:)(int a1, int a2, void *__src, uint64_t a4, uint64_t a5, uint64_t a6)
{
  memcpy(v11, __src, 0x129uLL);
  LOBYTE(a6) = (*(a6 + 32))(a4, a6);
  _LazyLayout_PlacementContext.size.getter();
  if ((a6 & 1) == 0)
  {
    v8 = v9;
  }

  if (v8 <= 0.0)
  {
    return 0;
  }

  v11[0] = 2;
  return _ViewList_Node.firstOffset<A>(forID:style:)();
}

uint64_t partial apply for specialized implicit closure #2 in implicit closure #1 in FixedSizeLazyLayout<>.finalPlacement(oldIndex:oldPlacedSubviews:newPlacedSubviews:wasRemovedFromSubviews:context:subviews:cache:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  return MEMORY[0x1EEDE5F98](1, a5, a6, a7, a8, a1, a2, a3, a4);
}

{
  return MEMORY[0x1EEDE5F98](0, a5, a6, a7, a8, a1, a2, a3, a4);
}

uint64_t partial apply for specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(uint64_t a1, BOOL *a2)
{
  return partial apply for specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(a1, a2, lazy protocol witness table accessor for type HorizontalAlignment and conformance HorizontalAlignment);
}

{
  return partial apply for specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(a1, a2, lazy protocol witness table accessor for type VerticalAlignment and conformance VerticalAlignment);
}

uint64_t partial apply for specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(uint64_t a1, BOOL *a2, void (*a3)(uint64_t))
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v11 = *(v3 + 56);
  v10 = *(v3 + 64);
  v12 = *(v3 + 80);
  v13 = *(v11 + 16);
  v15[0] = *v11;
  v15[1] = v13;
  v15[2] = *(v11 + 32);
  v16 = *(v11 + 48);
  return specialized closure #1 in FixedSizeLazyLayout<>.place(subviews:context:cache:in:)(v6, v8, v9, a1, a2, v5, v7, v15, v10, v12, a3);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance DocumentBrowserPopulatesSwiftUINavigationBar()
{
  lazy protocol witness table accessor for type DocumentBrowserPopulatesSwiftUINavigationBar and conformance DocumentBrowserPopulatesSwiftUINavigationBar();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t ToolbarInputFeature.update(graph:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ToolbarContentDescription(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37[-1] - v9;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37[-1] - v13;
  v15 = *(v1 + 1);
  v16 = *MEMORY[0x1E698D3F8];
  if (v15 != *MEMORY[0x1E698D3F8] && (v17 = v12, type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](), Value = AGGraphGetValue(), v19 = *Value, *(*Value + 16)) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(*v2), (v21 & 1) != 0))
  {
    outlined init with copy of ToolbarStorage.NavigationProperties?(*(v19 + 56) + *(v5 + 72) * v20, v14, type metadata accessor for ToolbarContentDescription);
    v22 = *&v14[*(v17 + 28)];
    outlined destroy of CommandOperation(v14, type metadata accessor for ToolbarContentDescription);
    v23 = 0;
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  *(v2 + 3) = v22;
  v2[16] = v23;
  v24 = *v2;
  if (v24 != 1)
  {
    if (*(v2 + 2) == v16)
    {
      v25 = 2;
    }

    else
    {
      v25 = *AGGraphGetValue();
    }

    v2[17] = v25;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result && (v27 = *(a1 + 208), v28 = swift_getObjectType(), v29 = type metadata accessor for ToolbarInputFeatureDelegate(), (*(v27 + 16))(v37, v29, v29, v28, v27), result = swift_unknownObjectRelease(), v37[0]))
  {
    if (v15 != v16 && (v30 = v37[1], type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription](), v31 = AGGraphGetValue(), v32 = *v31, *(*v31 + 16)) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v34 & 1) != 0))
    {
      outlined init with copy of ToolbarStorage.NavigationProperties?(*(v32 + 56) + *(v5 + 72) * v33, v7, type metadata accessor for ToolbarContentDescription);
      outlined init with take of ToolbarStorage.NavigationProperties?(v7, v10, type metadata accessor for ToolbarContentDescription);
      ObjectType = swift_getObjectType();
      (*(v30 + 8))(v10, v24, ObjectType, v30);
      swift_unknownObjectRelease();
      return outlined destroy of CommandOperation(v10, type metadata accessor for ToolbarContentDescription);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    *(v2 + 1) = v16;
    *(v2 + 2) = v16;
  }

  return result;
}

void protocol witness for ViewGraphFeature.uninstantiate(graph:) in conformance ToolbarInputFeature()
{
  v1 = *MEMORY[0x1E698D3F8];
  *(v0 + 4) = *MEMORY[0x1E698D3F8];
  *(v0 + 8) = v1;
}

uint64_t ToolbarContentDescription.merge(_:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  v9 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  *&v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v72 = v10;
  if (v12 != 1)
  {
    v14 = *a1;
    v13 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(v1 + 3);
    if (!v19)
    {
      v25 = *a1;
      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v71 = *(a1 + 48);
      v70 = v18;
      LODWORD(v69) = v16;
      outlined copy of Text?(v25, v26, v27, v12);
      LOBYTE(v16) = v69;
      LOBYTE(v18) = v70;
      LOBYTE(v28) = *(v2 + 40);
      *v2 = v14;
      *(v2 + 1) = v13;
      *(v2 + 2) = v27;
      *(v2 + 3) = v12;
      if (v28 != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v19 == 1)
    {
      v69 = *(a1 + 32);
      v75[0] = *(a1 + 41);
      *(v75 + 3) = *(a1 + 44);
      v20 = v1[1];
      v79 = *v1;
      v80 = v20;
      v81[0] = v1[2];
      *(v81 + 9) = *(v1 + 41);
      *&v83 = v14;
      *(&v83 + 1) = v13;
      *v84 = v15;
      *&v84[8] = v12;
      *&v84[16] = v69;
      v84[24] = v16;
      *&v84[25] = *(a1 + 41);
      *&v84[28] = *(a1 + 44);
      v71 = v17;
      *&v85 = v17;
      BYTE8(v85) = v18;
      v21 = v13;
      v70 = v18;
      v22 = v16;
      v23 = v15;
      outlined init with copy of NavigationTitleStorage(&v83, v77);
      outlined destroy of NavigationTitleStorage?(&v79, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
      *v2 = v14;
      *(v2 + 1) = v21;
      *(v2 + 2) = v23;
      *(v2 + 3) = v12;
      *(v2 + 4) = v69;
      *(v2 + 40) = v22;
      *(v2 + 41) = v75[0];
      *(v2 + 11) = *(v75 + 3);
      v10 = v72;
      *(v2 + 6) = v71;
      LOBYTE(v24) = v70;
LABEL_13:
      *(v2 + 56) = v24;
      goto LABEL_14;
    }

    v28 = *(v1 + 40);
    if (v28 == 5)
    {
LABEL_8:
      LOBYTE(v28) = v16;
LABEL_9:
      *(v2 + 40) = v28;
      v29 = *(v2 + 6);
      if (!v29)
      {
        v30 = v18;

        LOBYTE(v18) = v30;
        v29 = v31;
      }

      *(v2 + 6) = v29;
      v24 = *(v2 + 56);
      if (v24 == 3)
      {
        LOBYTE(v24) = v18;
      }

      goto LABEL_13;
    }

    if (!*(v1 + 6))
    {
      goto LABEL_9;
    }
  }

LABEL_14:
  v32 = type metadata accessor for ToolbarContentDescription(0);
  outlined init with copy of ToolbarStorage.NavigationProperties?(a1 + v32[5], v8, type metadata accessor for ToolbarStorage.NavigationProperties?);
  v33 = *(v10 + 48);
  if (v33(v8, 1, v9) == 1)
  {
    outlined destroy of CommandOperation(v8, type metadata accessor for ToolbarStorage.NavigationProperties?);
  }

  else
  {
    v34 = v8;
    v35 = v32;
    v36 = v73;
    v37 = v74;
    outlined init with take of ToolbarStorage.NavigationProperties?(v34, v74, type metadata accessor for ToolbarStorage.NavigationProperties);
    v71 = v35;
    v38 = v35[5];
    outlined init with copy of ToolbarStorage.NavigationProperties?(v2 + v38, v36, type metadata accessor for ToolbarStorage.NavigationProperties?);
    LODWORD(v35) = v33(v36, 1, v9);
    outlined destroy of CommandOperation(v36, type metadata accessor for ToolbarStorage.NavigationProperties?);
    if (v35 == 1)
    {
      outlined destroy of CommandOperation(v2 + v38, type metadata accessor for ToolbarStorage.NavigationProperties?);
      outlined init with take of ToolbarStorage.NavigationProperties?(v37, v2 + v38, type metadata accessor for ToolbarStorage.NavigationProperties);
      (*(v72 + 56))(v2 + v38, 0, 1, v9);
    }

    else
    {
      result = v33(v2 + v38, 1, v9);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v40 = v74;
      ToolbarStorage.NavigationProperties.merge(_:)(v74);
      outlined destroy of CommandOperation(v40, type metadata accessor for ToolbarStorage.NavigationProperties);
    }

    v32 = v71;
  }

  v41 = (a1 + v32[6]);
  v42 = v41[1];
  v83 = *v41;
  *v84 = v42;
  v43 = v41[3];
  *&v84[16] = v41[2];
  v85 = v43;
  v44 = *(v41 + 8);
  v86 = v44;
  v45 = v43;
  if (v43)
  {
    v46 = *(&v83 + 1);
    v47 = *v84;
    v48 = *&v84[8];
    v49 = v84[24];
    v50 = (v2 + v32[6]);
    v51 = v50[6];
    if (v51)
    {
      v72 = *v84;
      if (v50[1])
      {
        v52 = *v50;
        v46 = v50[1];
      }

      else
      {
        LODWORD(v73) = v84[24];
        v74 = *&v84[8];
        v52 = v83;

        v48 = v74;
        v49 = v73;
      }

      *v50 = v52;
      v50[1] = v46;
      v61 = *(v50 + 3);
      if (v50[3])
      {
        v62 = v50[2];
      }

      else
      {
        v62 = v72;
        v63 = v49;
        v74 = v48;
        outlined copy of Binding<Int>?(v72, v48);
        v49 = v63;
        v51 = v50[6];
        v61 = v74;
      }

      v50[2] = v62;
      *(v50 + 3) = v61;
      *(v50 + 40) = (*(v50 + 40) | v49) & 1;
      *&v77[0] = v51;
      outlined init with copy of ToolbarStorage?(&v83, &v79);

      specialized Array.append<A>(contentsOf:)(v64);
      v50[6] = *&v77[0];

      specialized Set.formUnion<A>(_:)(v65);
      outlined destroy of NavigationTitleStorage?(&v83, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
    }

    else
    {
      v72 = *(&v85 + 1);
      v76[0] = *(v41 + 41);
      *(v76 + 3) = *(v41 + 11);
      v74 = *&v84[8];
      v53 = *(v50 + 3);
      v77[2] = *(v50 + 2);
      v77[3] = v53;
      v78 = v50[8];
      v54 = *(v50 + 1);
      v77[0] = *v50;
      v77[1] = v54;
      v55 = *v41;
      v56 = v41[1];
      v57 = v41[2];
      v58 = v41[3];
      v82 = *(v41 + 8);
      v81[0] = v57;
      v81[1] = v58;
      v79 = v55;
      v80 = v56;
      LODWORD(v73) = v84[24];
      v59 = v83;
      outlined init with copy of ToolbarStorage(&v79, v75);
      outlined destroy of NavigationTitleStorage?(v77, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
      *v50 = v59;
      v50[1] = v46;
      v50[2] = v47;
      *(v50 + 3) = v74;
      *(v50 + 40) = v73;
      *(v50 + 41) = v76[0];
      *(v50 + 11) = *(v76 + 3);
      v60 = v72;
      v50[6] = v45;
      v50[7] = v60;
      v50[8] = v44;
    }
  }

  v66 = v32[7];
  result = *(v2 + v66);
  if (result != -1)
  {
    v67 = *(a1 + v66);
    if (v67)
    {
      if (result)
      {
        if (v67 != -1)
        {
          result = merge32(_:_:)(result, v67);
          v67 = result;
        }
      }

      *(v2 + v66) = v67;
    }
  }

  return result;
}

Swift::Void __swiftcall WriteToolbarDescriptionInput.updateValue()()
{
  v76 = *MEMORY[0x1E69E9840];
  type metadata accessor for ToolbarStorage.NavigationProperties??(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v67 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v56 - v4;
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ToolbarContentDescription(0);
  v60 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  v68 = v0[6] + 1;
  v0[6] = v68;
  v21 = *(v20 + 20);
  v22 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v23 = *(v22 - 8);
  v59 = *(v23 + 56);
  v58 = v23 + 56;
  v59(&v19[v21], 1, 1, v22);
  *v19 = 0u;
  *(v19 + 2) = 0;
  *(v19 + 3) = 1;
  *(v19 + 4) = 0;
  *(v19 + 40) = 0u;
  v19[56] = 0;
  v24 = &v19[v10[6]];
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 8) = 0;
  *&v19[v10[7]] = 0;
  v25 = *MEMORY[0x1E698D3F8];
  if (v0[1] == *MEMORY[0x1E698D3F8])
  {
    v66 = 0uLL;
    v65 = 0;
    v64 = 0;
    v63 = 0;
    v61 = 0;
    v62 = xmmword_18CD633F0;
  }

  else
  {
    Value = AGGraphGetValue();
    v27 = *(Value + 41);
    v29 = Value[1];
    v28 = Value[2];
    v72 = *Value;
    v73 = v29;
    *v74 = v28;
    *&v74[9] = v27;
    v62 = v29;
    v66 = v72;
    v65 = v28;
    v64 = *&v74[8];
    v63 = v27 >> 56;
    v61 = HIBYTE(v27);
    outlined init with copy of NavigationTitleStorage(&v72, v71);
  }

  v30 = v67;
  if (v0[2] == v25)
  {
    v31 = 1;
  }

  else
  {
    v32 = AGGraphGetValue();
    outlined init with copy of ToolbarStorage.NavigationProperties?(v32, v5, type metadata accessor for ToolbarStorage.NavigationProperties?);
    v31 = 0;
  }

  v33 = v69;
  (*(v8 + 56))(v5, v31, 1, v7);
  outlined init with copy of ToolbarStorage.NavigationProperties?(v5, v30, type metadata accessor for ToolbarStorage.NavigationProperties??);
  if ((*(v8 + 48))(v30, 1, v7) == 1)
  {
    outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarStorage.NavigationProperties??);
    v59(v33, 1, 1, v22);
  }

  else
  {
    outlined init with take of ToolbarStorage.NavigationProperties?(v30, v33, type metadata accessor for ToolbarStorage.NavigationProperties?);
    outlined destroy of CommandOperation(v5, type metadata accessor for ToolbarStorage.NavigationProperties??);
  }

  v34 = v70;
  type metadata accessor for Binding<Int>(0, &lazy cache variable for type metadata for ToolbarStorage?, &type metadata for ToolbarStorage, MEMORY[0x1E69E6720]);
  v35 = AGGraphGetValue();
  v36 = *(v35 + 16);
  v37 = *(v35 + 32);
  v38 = *(v35 + 48);
  v75 = *(v35 + 64);
  *v74 = v37;
  *&v74[16] = v38;
  v73 = v36;
  v72 = *v35;
  v39 = v62;
  *v16 = v66;
  *(v16 + 1) = v39;
  v40 = v64;
  *(v16 + 4) = v65;
  *(v16 + 5) = v40;
  *(v16 + 6) = v63;
  v16[56] = v61;
  outlined init with take of ToolbarStorage.NavigationProperties?(v33, &v16[v10[5]], type metadata accessor for ToolbarStorage.NavigationProperties?);
  v41 = &v16[v10[6]];
  v42 = *&v74[16];
  *(v41 + 2) = *v74;
  *(v41 + 3) = v42;
  *(v41 + 8) = v75;
  v43 = v73;
  *v41 = v72;
  *(v41 + 1) = v43;
  *&v16[v10[7]] = v68;
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription]();
  outlined init with copy of ToolbarStorage?(&v72, v71);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v45 = *WeakValue;
  }

  else
  {
    v45 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI23ContentToolbarPlacementV0G0O_AC0fE11DescriptionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v46 = *AGGraphGetValue();
  outlined init with copy of ToolbarStorage.NavigationProperties?(v19, v34, type metadata accessor for ToolbarContentDescription);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71[0] = v45;
  v49 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
  v50 = v45[2];
  v51 = (v48 & 1) == 0;
  v52 = v50 + v51;
  if (__OFADD__(v50, v51))
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v5) = v48;
  if (v45[3] >= v52)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

LABEL_22:
    specialized _NativeDictionary.copy()();
    v45 = v71[0];
    goto LABEL_18;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
  v45 = v71[0];
  v53 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
  if ((v5 & 1) != (v54 & 1))
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v49 = v53;
LABEL_18:
  if ((v5 & 1) == 0)
  {
    v55 = v57;
    outlined init with copy of ToolbarStorage.NavigationProperties?(v34, v57, type metadata accessor for ToolbarContentDescription);
    specialized _NativeDictionary._insert(at:key:value:)(v49, v46, v55, v45);
  }

  ToolbarContentDescription.merge(_:)(v16);
  v71[0] = v45;
  AGGraphSetOutputValue();
  outlined destroy of CommandOperation(v16, type metadata accessor for ToolbarContentDescription);
  outlined destroy of CommandOperation(v19, type metadata accessor for ToolbarContentDescription);

  outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarContentDescription);
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance ToolbarContentInput@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static ToolbarContentInput.defaultValue;
  *a1 = static ToolbarContentInput.defaultValue;
  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance ToolbarContentInput()
{
  type metadata accessor for [ContentToolbarPlacement.Placement : ToolbarContentDescription]();

  return static WeakAttribute.== infix(_:_:)();
}

void _UIHostingView.toolbarInputContentDidChange(_:placement:)(uint64_t a1, char a2)
{
  v4 = _UIHostingView.viewController.getter();
  if (!v4)
  {
    return;
  }

  v10 = v4;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = [v4 tabBarController];
      if (v5)
      {

LABEL_10:
        v6 = specialized UIHostingController.toolbarBridge.getter();
        if (v6)
        {
          v7 = v6;
          ToolbarBridge.toolbarInputContentDidChange<A>(_:hostingController:)(a1, v10);
        }

        v8 = specialized UIHostingController.barAppearanceBridge.getter();
        if (v8)
        {
          v9 = v8;
          BarAppearanceBridge.toolbarInputContentDidChange<A>(_:hostingController:)(a1, v10);
        }
      }
    }

    else if (specialized ContentToolbarPlacement.Placement.canApplySplitViewContent(to:)(v4))
    {
      goto LABEL_10;
    }
  }

  else if (specialized ContentToolbarPlacement.Placement.canApplyDocumentToolbarContent(to:)(v4))
  {
    goto LABEL_10;
  }
}

_OWORD *initializeBufferWithCopyOfBuffer for ToolbarContentDescription(_OWORD *a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));

    return v4;
  }

  v6 = a3;
  v7 = *(a2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *(a2 + 16);
      *a1 = *a2;
      a1[1] = v8;
      a1[2] = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      goto LABEL_11;
    }

    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *v4 = v11;
    *(v4 + 1) = v12;
    *(v4 + 16) = v13;
    *(v4 + 3) = *(a2 + 24);
  }

  else
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    a1[1] = v10;
  }

  v14 = *(a2 + 32);
  if (v14 != 1)
  {
  }

  *(v4 + 4) = v14;
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 6) = *(a2 + 48);
  *(v4 + 56) = *(a2 + 56);

LABEL_11:
  v15 = v6[5];
  v16 = v4 + v15;
  v17 = (a2 + v15);
  v18 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    v21 = *(v17 + 8);
    if (v21 == 255)
    {
      *v16 = *v17;
      v16[8] = *(v17 + 8);
    }

    else
    {
      v22 = *v17;
      v23 = v21 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v17, v21 & 1);
      *v16 = v22;
      v16[8] = v23;
    }

    v24 = *(v17 + 24);
    v151 = v6;
    v149 = v19;
    if (v24 == 254 || v24 == 255)
    {
      *(v16 + 2) = v17[2];
      v16[24] = *(v17 + 24);
    }

    else
    {
      v25 = v17[2];
      v26 = v24 & 1;
      outlined copy of PlatformItemCollection.Storage(v25, v24 & 1);
      *(v16 + 2) = v25;
      v16[24] = v26;
    }

    swift_unknownObjectWeakCopyInit();
    v27 = v17[6];
    *(v16 + 5) = v17[5];
    *(v16 + 6) = v27;
    v28 = *(v18 + 32);
    v150 = v16;
    v29 = &v16[v28];
    v30 = v17 + v28;
    v31 = type metadata accessor for PlatformItemList.Item();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v27;
    if (v33(v30, 1, v31))
    {
      type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
      memcpy(v29, v30, *(*(v35 - 8) + 64));
      v36 = v149;
      v37 = v150;
LABEL_80:
      v6 = v151;
      (*(v36 + 56))(v37, 0, 1, v18);
      goto LABEL_81;
    }

    v144 = v32;
    v145 = v18;
    v148 = v31;
    v38 = *v30;
    v39 = *(v30 + 8);
    *v29 = *v30;
    *(v29 + 1) = v39;
    v40 = *(v30 + 24);
    *(v29 + 2) = *(v30 + 16);
    *(v29 + 3) = v40;
    v29[32] = *(v30 + 32);
    v41 = *(v30 + 48);
    *(v29 + 5) = *(v30 + 40);
    *(v29 + 6) = v41;
    v29[56] = *(v30 + 56);
    v42 = *(v30 + 192);
    v43 = v38;
    v44 = v39;

    if (v42 >> 1 == 4294967294)
    {
      v45 = *(v30 + 208);
      *(v29 + 12) = *(v30 + 192);
      *(v29 + 13) = v45;
      *(v29 + 14) = *(v30 + 224);
      *(v29 + 235) = *(v30 + 235);
      v46 = *(v30 + 144);
      *(v29 + 8) = *(v30 + 128);
      *(v29 + 9) = v46;
      v47 = *(v30 + 176);
      *(v29 + 10) = *(v30 + 160);
      *(v29 + 11) = v47;
      v48 = *(v30 + 80);
      *(v29 + 4) = *(v30 + 64);
      *(v29 + 5) = v48;
      v49 = *(v30 + 112);
      *(v29 + 6) = *(v30 + 96);
      *(v29 + 7) = v49;
      v50 = *(v30 + 264);
      if (v50)
      {
LABEL_24:
        *(v29 + 32) = *(v30 + 256);
        *(v29 + 33) = v50;
        v51 = *(v30 + 272);

        if (v51 >= 2)
        {
          v52 = v51;
        }

        *(v29 + 34) = v51;
        *(v29 + 70) = *(v30 + 280);
        v29[284] = *(v30 + 284);
        *(v29 + 285) = *(v30 + 285);
        v53 = *(v30 + 296);
        *(v29 + 36) = *(v30 + 288);
        *(v29 + 37) = v53;

LABEL_35:
        v64 = *(v30 + 336);
        if (v64 >> 2 == 0xFFFFFFFF)
        {
          v65 = *(v30 + 384);
          *(v29 + 23) = *(v30 + 368);
          *(v29 + 24) = v65;
          *(v29 + 50) = *(v30 + 400);
          v66 = *(v30 + 320);
          *(v29 + 19) = *(v30 + 304);
          *(v29 + 20) = v66;
          v67 = *(v30 + 352);
          *(v29 + 21) = *(v30 + 336);
          *(v29 + 22) = v67;
        }

        else
        {
          v69 = *(v30 + 304);
          v68 = *(v30 + 312);
          v133 = *(v30 + 328);
          v134 = *(v30 + 320);
          v70 = *(v30 + 344);
          v71 = *(v30 + 360);
          v135 = *(v30 + 368);
          v137 = *(v30 + 376);
          v140 = *(v30 + 384);
          __dsta = *(v30 + 392);
          v146 = *(v30 + 400);
          v72 = *(v30 + 352);
          outlined copy of PlatformItemList.Item.SystemItem(v69, v68, v134, v133, v64, v70, v72, v71, v135, v137, v140, __dsta, v146);
          *(v29 + 38) = v69;
          *(v29 + 39) = v68;
          *(v29 + 40) = v134;
          *(v29 + 41) = v133;
          *(v29 + 42) = v64;
          *(v29 + 43) = v70;
          *(v29 + 44) = v72;
          *(v29 + 45) = v71;
          *(v29 + 46) = v135;
          *(v29 + 47) = v137;
          *(v29 + 48) = v140;
          *(v29 + 49) = __dsta;
          *(v29 + 50) = v146;
        }

        v73 = *(v30 + 416);
        if (v73 == 1)
        {
          v74 = *(v30 + 456);
          *(v29 + 440) = *(v30 + 440);
          *(v29 + 456) = v74;
          v29[472] = *(v30 + 472);
          v75 = *(v30 + 424);
          *(v29 + 408) = *(v30 + 408);
          *(v29 + 424) = v75;
        }

        else
        {
          *(v29 + 102) = *(v30 + 408);
          v29[412] = *(v30 + 412);
          if (v73)
          {
            v76 = *(v30 + 424);
            *(v29 + 52) = v73;
            *(v29 + 53) = v76;
          }

          else
          {
            *(v29 + 26) = *(v30 + 416);
          }

          v77 = *(v30 + 432);
          if (v77)
          {
            v78 = *(v30 + 440);
            *(v29 + 54) = v77;
            *(v29 + 55) = v78;
          }

          else
          {
            *(v29 + 27) = *(v30 + 432);
          }

          v79 = *(v30 + 448);
          if (v79)
          {
            v80 = *(v30 + 456);
            *(v29 + 56) = v79;
            *(v29 + 57) = v80;
          }

          else
          {
            *(v29 + 28) = *(v30 + 448);
          }

          *(v29 + 58) = *(v30 + 464);
          v29[472] = *(v30 + 472);
        }

        v81 = *(v30 + 488);
        *(v29 + 60) = *(v30 + 480);
        *(v29 + 61) = v81;
        *(v29 + 62) = *(v30 + 496);
        v29[504] = *(v30 + 504);
        v82 = *(v30 + 512);

        if (v82)
        {
          v83 = *(v30 + 520);
          *(v29 + 64) = v82;
          *(v29 + 65) = v83;
        }

        else
        {
          *(v29 + 32) = *(v30 + 512);
        }

        v29[528] = *(v30 + 528);
        if (!*(v30 + 816))
        {
          memcpy(v29 + 536, (v30 + 536), 0x130uLL);
          goto LABEL_65;
        }

        *(v29 + 67) = *(v30 + 536);
        *(v29 + 68) = *(v30 + 544);
        v29[552] = *(v30 + 552);
        *(v29 + 70) = *(v30 + 560);
        v29[568] = *(v30 + 568);
        *(v29 + 36) = *(v30 + 576);
        v29[592] = *(v30 + 592);
        v84 = v29 + 600;
        v85 = (v30 + 600);
        v86 = *(v30 + 624);

        if (v86)
        {
          if (v86 == 1)
          {
            v87 = *(v30 + 616);
            *v84 = *v85;
            *(v29 + 616) = v87;
            *(v29 + 632) = *(v30 + 632);
LABEL_61:
            *(v29 + 81) = *(v30 + 648);
            v29[656] = *(v30 + 656);
            v89 = v29 + 664;
            v90 = (v30 + 664);
            v91 = *(v30 + 776);
            if (v91 == 1)
            {
              v92 = *(v30 + 776);
              *(v29 + 760) = *(v30 + 760);
              *(v29 + 776) = v92;
              *(v29 + 792) = *(v30 + 792);
              v29[808] = *(v30 + 808);
              v93 = *(v30 + 712);
              *(v29 + 696) = *(v30 + 696);
              *(v29 + 712) = v93;
              v94 = *(v30 + 744);
              *(v29 + 728) = *(v30 + 728);
              *(v29 + 744) = v94;
              v95 = *(v30 + 680);
              *v89 = *v90;
              *(v29 + 680) = v95;
            }

            else
            {
              *v89 = *v90;
              v29[672] = *(v30 + 672);
              *(v29 + 85) = *(v30 + 680);
              v29[688] = *(v30 + 688);
              *(v29 + 689) = *(v30 + 689);
              v29[691] = *(v30 + 691);
              v29[692] = *(v30 + 692);
              *(v29 + 87) = *(v30 + 696);
              v96 = *(v30 + 720);
              *(v29 + 44) = *(v30 + 704);
              *(v29 + 45) = v96;
              *(v29 + 92) = *(v30 + 736);
              *(v29 + 372) = *(v30 + 744);
              *(v29 + 47) = *(v30 + 752);
              v29[768] = *(v30 + 768);
              *(v29 + 97) = v91;
              *(v29 + 49) = *(v30 + 784);
              *(v29 + 100) = *(v30 + 800);
              v29[808] = *(v30 + 808);
            }

            *(v29 + 102) = *(v30 + 816);
            *(v29 + 103) = *(v30 + 824);
            *(v29 + 104) = *(v30 + 832);

LABEL_65:
            v97 = v29 + 840;
            v98 = (v30 + 840);
            v99 = *(v30 + 864);
            if (v99)
            {
              if (v99 == 1)
              {
                v100 = *(v30 + 856);
                *v97 = *v98;
                *(v29 + 856) = v100;
                *(v29 + 872) = *(v30 + 872);
                *(v29 + 111) = *(v30 + 888);
LABEL_73:
                v104 = *(v30 + 896);
                *(v29 + 112) = v104;
                *(v29 + 113) = *(v30 + 904);
                *(v29 + 114) = *(v30 + 912);
                *(v29 + 115) = *(v30 + 920);
                *(v29 + 116) = *(v30 + 928);
                *(v29 + 117) = *(v30 + 936);
                *(v29 + 118) = *(v30 + 944);
                *(v29 + 476) = *(v30 + 952);
                v29[954] = *(v30 + 954);
                v105 = v148[28];
                __dst = &v29[v105];
                v147 = (v30 + v105);
                v106 = type metadata accessor for CommandOperation();
                v136 = *(v106 - 8);
                v138 = *(v136 + 48);
                v107 = v104;

                if (v138(v147, 1, v106))
                {
                  type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(__dst, v147, *(*(v108 - 8) + 64));
                  v36 = v149;
                  v37 = v150;
                  v109 = v144;
                  v18 = v145;
                  v110 = v148;
                }

                else
                {
                  *__dst = *v147;
                  v111 = *(v106 + 20);
                  v112 = &__dst[v111];
                  v113 = &v147[v111];
                  v141 = v106;
                  v114 = *&v147[v111];
                  v115 = *&v147[v111 + 8];
                  v116 = v147[v111 + 16];
                  outlined copy of Text.Storage(*v113, *(v113 + 1), v113[16]);
                  *v112 = v114;
                  *(v112 + 1) = v115;
                  v112[16] = v116;
                  *(v112 + 3) = *(v113 + 3);
                  v117 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                  v118 = type metadata accessor for UUID();
                  v139 = *(*(v118 - 8) + 16);

                  v139(&v112[v117], &v113[v117], v118);
                  v119 = *(v141 + 24);
                  v120 = &__dst[v119];
                  v121 = &v147[v119];
                  if (*v121)
                  {
                    v122 = v121[1];
                    *v120 = *v121;
                    *(v120 + 1) = v122;
                  }

                  else
                  {
                    *v120 = *v121;
                  }

                  v36 = v149;
                  v37 = v150;
                  v109 = v144;
                  v18 = v145;
                  v110 = v148;
                  (*(v136 + 56))(__dst, 0, 1, v141);
                }

                v29[v110[29]] = *(v30 + v110[29]);
                v29[v110[30]] = *(v30 + v110[30]);
                v29[v110[31]] = *(v30 + v110[31]);
                v29[v110[32]] = *(v30 + v110[32]);
                v29[v110[33]] = *(v30 + v110[33]);
                *&v29[v110[34]] = *(v30 + v110[34]);
                v123 = *(v109 + 56);

                v123(v29, 0, 1, v110);
                goto LABEL_80;
              }

              *(v29 + 108) = v99;
              *(v29 + 109) = *(v30 + 872);
              (**(v99 - 8))(v97, v98);
            }

            else
            {
              v101 = *(v30 + 856);
              *v97 = *v98;
              *(v29 + 856) = v101;
              *(v29 + 109) = *(v30 + 872);
            }

            v102 = *(v30 + 880);
            if (v102)
            {
              v103 = *(v30 + 888);
              *(v29 + 110) = v102;
              *(v29 + 111) = v103;
            }

            else
            {
              *(v29 + 55) = *(v30 + 880);
            }

            goto LABEL_73;
          }

          *(v29 + 78) = v86;
          *(v29 + 79) = *(v30 + 632);
          (**(v86 - 8))((v29 + 600), v30 + 600, v86);
        }

        else
        {
          v88 = *(v30 + 616);
          *v84 = *v85;
          *(v29 + 616) = v88;
          *(v29 + 79) = *(v30 + 632);
        }

        *(v29 + 80) = *(v30 + 640);

        goto LABEL_61;
      }
    }

    else
    {
      v54 = *(v30 + 72);
      if (v54 == 255)
      {
        *(v29 + 8) = *(v30 + 64);
        v29[72] = *(v30 + 72);
      }

      else
      {
        v55 = *(v30 + 64);
        outlined copy of GraphicsImage.Contents(v55, *(v30 + 72));
        *(v29 + 8) = v55;
        v29[72] = v54;
        v42 = *(v30 + 192);
      }

      *(v29 + 10) = *(v30 + 80);
      *(v29 + 88) = *(v30 + 88);
      v29[104] = *(v30 + 104);
      *(v29 + 108) = *(v30 + 108);
      *(v29 + 121) = *(v30 + 121);
      *(v29 + 136) = *(v30 + 136);
      *(v29 + 152) = *(v30 + 152);
      *(v29 + 84) = *(v30 + 168);
      v29[170] = *(v30 + 170);
      v29[171] = *(v30 + 171);
      if (v42 >> 1 == 0xFFFFFFFF)
      {
        v56 = *(v30 + 192);
        *(v29 + 11) = *(v30 + 176);
        *(v29 + 12) = v56;
      }

      else
      {
        v57 = *(v30 + 176);
        v58 = *(v30 + 184);
        v59 = *(v30 + 200);
        outlined copy of AccessibilityImageLabel(v57, v58, v42);
        *(v29 + 22) = v57;
        *(v29 + 23) = v58;
        *(v29 + 24) = v42;
        *(v29 + 25) = v59;
      }

      v60 = *(v30 + 216);
      *(v29 + 26) = *(v30 + 208);
      *(v29 + 27) = v60;
      *(v29 + 112) = *(v30 + 224);
      *(v29 + 57) = *(v30 + 228);
      v29[232] = *(v30 + 232);
      v61 = *(v30 + 240);
      *(v29 + 30) = v61;
      *(v29 + 124) = *(v30 + 248);
      v29[250] = *(v30 + 250);
      swift_unknownObjectRetain();

      v62 = v61;
      v50 = *(v30 + 264);
      if (v50)
      {
        goto LABEL_24;
      }
    }

    v63 = *(v30 + 272);
    *(v29 + 16) = *(v30 + 256);
    *(v29 + 17) = v63;
    *(v29 + 18) = *(v30 + 288);
    goto LABEL_35;
  }

  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  memcpy(v16, v17, *(*(v20 - 8) + 64));
LABEL_81:
  v124 = v6[6];
  v125 = v4 + v124;
  v126 = a2 + v124;
  v127 = *(a2 + v124 + 48);
  if (v127)
  {
    v128 = *(v126 + 8);
    *v125 = *v126;
    *(v125 + 1) = v128;
    v129 = *(v126 + 24);

    if (v129)
    {
      *(v125 + 2) = *(v126 + 16);
      *(v125 + 3) = v129;
      *(v125 + 4) = *(v126 + 32);
    }

    else
    {
      *(v125 + 1) = *(v126 + 16);
      *(v125 + 4) = *(v126 + 32);
    }

    v125[40] = *(v126 + 40);
    *(v125 + 6) = v127;
    v125[56] = *(v126 + 56);
    *(v125 + 8) = *(v126 + 64);
  }

  else
  {
    v130 = *(v126 + 48);
    *(v125 + 2) = *(v126 + 32);
    *(v125 + 3) = v130;
    *(v125 + 8) = *(v126 + 64);
    v131 = *(v126 + 16);
    *v125 = *v126;
    *(v125 + 1) = v131;
  }

  *(v4 + v6[7]) = *(a2 + v6[7]);
  return v4;
}

uint64_t destroy for ToolbarContentDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  if (*(a1 + 32) != 1)
  {
  }

LABEL_7:
  v5 = a1 + *(a2 + 20);
  v6 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (!result)
  {
    v8 = *(v5 + 8);
    if (v8 != 255)
    {
      outlined consume of ResolvableCLKTextProvider.FontStorage(*v5, v8 & 1);
    }

    v9 = *(v5 + 24);
    if (v9 <= 0xFD)
    {
      outlined consume of PlatformItemCollection.Storage(*(v5 + 16), v9 & 1);
    }

    MEMORY[0x18D011290](v5 + 32);

    v10 = v5 + *(v6 + 32);
    v11 = type metadata accessor for PlatformItemList.Item();
    result = (*(*(v11 - 8) + 48))(v10, 1, v11);
    if (!result)
    {

      v12 = *(v10 + 192);
      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
      {
        v14 = *(v10 + 72);
        if (v14 != 255)
        {
          outlined consume of GraphicsImage.Contents(*(v10 + 64), v14);
          v12 = *(v10 + 192);
          v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        }

        if (v13 != 0x1FFFFFFFELL)
        {
          outlined consume of AccessibilityImageLabel(*(v10 + 176), *(v10 + 184), v12);
        }

        swift_unknownObjectRelease();
      }

      if (*(v10 + 264))
      {

        v15 = *(v10 + 272);
        if (v15 >= 2)
        {
        }
      }

      v16 = *(v10 + 336);
      if (v16 >> 2 != 0xFFFFFFFF)
      {
        outlined consume of PlatformItemList.Item.SystemItem(*(v10 + 304), *(v10 + 312), *(v10 + 320), *(v10 + 328), v16, *(v10 + 344), *(v10 + 352), *(v10 + 360), *(v10 + 368), *(v10 + 376), *(v10 + 384), *(v10 + 392), *(v10 + 400));
      }

      v17 = *(v10 + 416);
      if (v17)
      {
        if (v17 == 1)
        {
          goto LABEL_32;
        }
      }

      if (*(v10 + 432))
      {
      }

      if (*(v10 + 448))
      {
      }

LABEL_32:

      if (*(v10 + 512))
      {
      }

      if (!*(v10 + 816))
      {
LABEL_42:
        v19 = *(v10 + 864);
        if (v19)
        {
          if (v19 == 1)
          {
LABEL_47:

            v20 = v10 + *(v11 + 112);
            v21 = type metadata accessor for CommandOperation();
            if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
            {
              v22 = v20 + *(v21 + 20);
              outlined consume of Text.Storage(*v22, *(v22 + 8), *(v22 + 16));

              v23 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v24 = type metadata accessor for UUID();
              (*(*(v24 - 8) + 8))(v22 + v23, v24);
              if (*(v20 + *(v21 + 24)))
              {
              }
            }

            goto LABEL_51;
          }

          __swift_destroy_boxed_opaque_existential_1(v10 + 840);
        }

        if (*(v10 + 880))
        {
        }

        goto LABEL_47;
      }

      v18 = *(v10 + 624);
      if (v18)
      {
        if (v18 == 1)
        {
LABEL_39:
          if (*(v10 + 776) != 1)
          {
          }

          goto LABEL_42;
        }

        __swift_destroy_boxed_opaque_existential_1(v10 + 600);
      }

      goto LABEL_39;
    }
  }

LABEL_51:
  v25 = a1 + *(a2 + 24);
  if (*(v25 + 48))
  {

    if (*(v25 + 24))
    {
    }
  }

  return result;
}

_OWORD *initializeWithCopy for ToolbarContentDescription(_OWORD *a1, uint64_t *a2, int *a3)
{
  v5 = a1;
  v6 = a2[3];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v7;
      a1[2] = *(a2 + 2);
      *(a1 + 41) = *(a2 + 41);
      goto LABEL_9;
    }

    v9 = *a2;
    v10 = a2[1];
    v11 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v10, v11);
    *v5 = v9;
    *(v5 + 1) = v10;
    *(v5 + 16) = v11;
    *(v5 + 3) = a2[3];
  }

  else
  {
    v8 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v8;
  }

  v12 = a2[4];
  if (v12 != 1)
  {
  }

  *(v5 + 4) = v12;
  *(v5 + 40) = *(a2 + 40);
  *(v5 + 6) = a2[6];
  *(v5 + 56) = *(a2 + 56);

LABEL_9:
  v13 = a3[5];
  v14 = (v5 + v13);
  v15 = (a2 + v13);
  v16 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
    goto LABEL_76;
  }

  v19 = *(v15 + 8);
  if (v19 == 255)
  {
    *v14 = *v15;
    *(v14 + 8) = *(v15 + 8);
  }

  else
  {
    v20 = *v15;
    v21 = v19 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v15, v19 & 1);
    *v14 = v20;
    *(v14 + 8) = v21;
  }

  v22 = *(v15 + 24);
  v147 = v5;
  v148 = v17;
  if (v22 == 254 || v22 == 255)
  {
    v14[2] = v15[2];
    *(v14 + 24) = *(v15 + 24);
  }

  else
  {
    v23 = v15[2];
    v24 = v22 & 1;
    outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
    v14[2] = v23;
    *(v14 + 24) = v24;
  }

  swift_unknownObjectWeakCopyInit();
  v25 = v15[6];
  v14[5] = v15[5];
  v14[6] = v25;
  v26 = *(v16 + 32);
  v149 = v14;
  v27 = (v14 + v26);
  v28 = (v15 + v26);
  v29 = type metadata accessor for PlatformItemList.Item();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v25;
  if (!v31(v28, 1, v29))
  {
    v141 = v30;
    v142 = v16;
    v146 = v29;
    v143 = a3;
    v35 = *v28;
    v36 = v28[1];
    *v27 = *v28;
    v27[1] = v36;
    v37 = v28[3];
    v27[2] = v28[2];
    v27[3] = v37;
    *(v27 + 32) = *(v28 + 32);
    v38 = v28[6];
    v27[5] = v28[5];
    v27[6] = v38;
    *(v27 + 56) = *(v28 + 56);
    v39 = v28[24];
    v40 = v35;
    v41 = v36;

    if (v39 >> 1 == 4294967294)
    {
      v42 = *(v28 + 13);
      *(v27 + 12) = *(v28 + 12);
      *(v27 + 13) = v42;
      *(v27 + 14) = *(v28 + 14);
      *(v27 + 235) = *(v28 + 235);
      v43 = *(v28 + 9);
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 9) = v43;
      v44 = *(v28 + 11);
      *(v27 + 10) = *(v28 + 10);
      *(v27 + 11) = v44;
      v45 = *(v28 + 5);
      *(v27 + 4) = *(v28 + 4);
      *(v27 + 5) = v45;
      v46 = *(v28 + 7);
      *(v27 + 6) = *(v28 + 6);
      *(v27 + 7) = v46;
      v47 = v28[33];
      if (v47)
      {
LABEL_22:
        v27[32] = v28[32];
        v27[33] = v47;
        v48 = v28[34];

        if (v48 >= 2)
        {
          v49 = v48;
        }

        v27[34] = v48;
        *(v27 + 70) = *(v28 + 70);
        *(v27 + 284) = *(v28 + 284);
        *(v27 + 285) = *(v28 + 285);
        v50 = v28[37];
        v27[36] = v28[36];
        v27[37] = v50;

LABEL_33:
        v61 = v28[42];
        if (v61 >> 2 == 0xFFFFFFFF)
        {
          v62 = *(v28 + 24);
          *(v27 + 23) = *(v28 + 23);
          *(v27 + 24) = v62;
          v27[50] = v28[50];
          v63 = *(v28 + 20);
          *(v27 + 19) = *(v28 + 19);
          *(v27 + 20) = v63;
          v64 = *(v28 + 22);
          *(v27 + 21) = *(v28 + 21);
          *(v27 + 22) = v64;
        }

        else
        {
          v65 = v28[38];
          v66 = v28[40];
          v67 = v28[41];
          v68 = v28[43];
          v69 = v28[44];
          v70 = v28[45];
          v131 = v28[39];
          v132 = v28[46];
          v134 = v28[47];
          v136 = v28[48];
          __dsta = v28[49];
          v144 = v28[50];
          outlined copy of PlatformItemList.Item.SystemItem(v65, v131, v66, v67, v61, v68, v69, v70, v132, v134, v136, __dsta, v144);
          v27[38] = v65;
          v27[39] = v131;
          v27[40] = v66;
          v27[41] = v67;
          v27[42] = v61;
          v27[43] = v68;
          v27[44] = v69;
          v27[45] = v70;
          v27[46] = v132;
          v27[47] = v134;
          v27[48] = v136;
          v27[49] = __dsta;
          v27[50] = v144;
        }

        v71 = v28[52];
        if (v71 == 1)
        {
          v72 = *(v28 + 57);
          *(v27 + 55) = *(v28 + 55);
          *(v27 + 57) = v72;
          *(v27 + 472) = *(v28 + 472);
          v73 = *(v28 + 53);
          *(v27 + 51) = *(v28 + 51);
          *(v27 + 53) = v73;
          goto LABEL_46;
        }

        *(v27 + 102) = *(v28 + 102);
        *(v27 + 412) = *(v28 + 412);
        if (v71)
        {
          v74 = v28[53];
          v27[52] = v71;
          v27[53] = v74;

          v75 = v28[54];
          if (v75)
          {
            goto LABEL_40;
          }
        }

        else
        {
          *(v27 + 26) = *(v28 + 26);
          v75 = v28[54];
          if (v75)
          {
LABEL_40:
            v76 = v28[55];
            v27[54] = v75;
            v27[55] = v76;

            v77 = v28[56];
            if (v77)
            {
LABEL_41:
              v78 = v28[57];
              v27[56] = v77;
              v27[57] = v78;

LABEL_45:
              v27[58] = v28[58];
              *(v27 + 472) = *(v28 + 472);
LABEL_46:
              v79 = v28[61];
              v27[60] = v28[60];
              v27[61] = v79;
              v27[62] = v28[62];
              *(v27 + 504) = *(v28 + 504);
              v80 = v28[64];

              if (v80)
              {
                v81 = v28[65];
                v27[64] = v80;
                v27[65] = v81;
              }

              else
              {
                *(v27 + 32) = *(v28 + 32);
              }

              *(v27 + 528) = *(v28 + 528);
              if (!v28[102])
              {
                memcpy(v27 + 67, v28 + 67, 0x130uLL);
                goto LABEL_61;
              }

              v27[67] = v28[67];
              v27[68] = v28[68];
              *(v27 + 552) = *(v28 + 552);
              v27[70] = v28[70];
              *(v27 + 568) = *(v28 + 568);
              *(v27 + 36) = *(v28 + 36);
              *(v27 + 592) = *(v28 + 592);
              v82 = v27 + 75;
              v83 = v28 + 75;
              v84 = v28[78];

              if (v84)
              {
                if (v84 == 1)
                {
                  v85 = *(v28 + 77);
                  *v82 = *v83;
                  *(v27 + 77) = v85;
                  *(v27 + 79) = *(v28 + 79);
LABEL_57:
                  v27[81] = v28[81];
                  *(v27 + 656) = *(v28 + 656);
                  v87 = v27 + 83;
                  v88 = v28 + 83;
                  v89 = v28[97];
                  if (v89 == 1)
                  {
                    v90 = *(v28 + 97);
                    *(v27 + 95) = *(v28 + 95);
                    *(v27 + 97) = v90;
                    *(v27 + 99) = *(v28 + 99);
                    *(v27 + 808) = *(v28 + 808);
                    v91 = *(v28 + 89);
                    *(v27 + 87) = *(v28 + 87);
                    *(v27 + 89) = v91;
                    v92 = *(v28 + 93);
                    *(v27 + 91) = *(v28 + 91);
                    *(v27 + 93) = v92;
                    v93 = *(v28 + 85);
                    *v87 = *v88;
                    *(v27 + 85) = v93;
                  }

                  else
                  {
                    *v87 = *v88;
                    *(v27 + 672) = *(v28 + 672);
                    v27[85] = v28[85];
                    *(v27 + 688) = *(v28 + 688);
                    *(v27 + 689) = *(v28 + 689);
                    *(v27 + 691) = *(v28 + 691);
                    *(v27 + 692) = *(v28 + 692);
                    v27[87] = v28[87];
                    v94 = *(v28 + 45);
                    *(v27 + 44) = *(v28 + 44);
                    *(v27 + 45) = v94;
                    v27[92] = v28[92];
                    *(v27 + 372) = *(v28 + 372);
                    *(v27 + 47) = *(v28 + 47);
                    *(v27 + 768) = *(v28 + 768);
                    v27[97] = v89;
                    *(v27 + 49) = *(v28 + 49);
                    v27[100] = v28[100];
                    *(v27 + 808) = *(v28 + 808);
                  }

                  v27[102] = v28[102];
                  v27[103] = v28[103];
                  v27[104] = v28[104];

LABEL_61:
                  v95 = v27 + 105;
                  v96 = v28 + 105;
                  v97 = v28[108];
                  if (v97)
                  {
                    if (v97 == 1)
                    {
                      v98 = *(v28 + 107);
                      *v95 = *v96;
                      *(v27 + 107) = v98;
                      *(v27 + 109) = *(v28 + 109);
                      v27[111] = v28[111];
LABEL_68:
                      v102 = v28[112];
                      v27[112] = v102;
                      v27[113] = v28[113];
                      v27[114] = v28[114];
                      v27[115] = v28[115];
                      v27[116] = v28[116];
                      v27[117] = v28[117];
                      v27[118] = v28[118];
                      *(v27 + 476) = *(v28 + 476);
                      *(v27 + 954) = *(v28 + 954);
                      v103 = v146[28];
                      __dst = v27 + v103;
                      v145 = v28 + v103;
                      v104 = type metadata accessor for CommandOperation();
                      v135 = *(v104 - 8);
                      v137 = *(v135 + 48);
                      v105 = v102;

                      if (v137(v145, 1, v104))
                      {
                        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                        memcpy(__dst, v145, *(*(v106 - 8) + 64));
                        v16 = v142;
                        a3 = v143;
                        v34 = v149;
                        v107 = v146;
                        v108 = v141;
                      }

                      else
                      {
                        *__dst = *v145;
                        v109 = *(v104 + 20);
                        v110 = &__dst[v109];
                        v138 = v104;
                        v111 = &v145[v109];
                        v112 = *&v145[v109];
                        v113 = *&v145[v109 + 8];
                        v114 = v145[v109 + 16];
                        outlined copy of Text.Storage(v112, *(v111 + 1), v111[16]);
                        *v110 = v112;
                        *(v110 + 1) = v113;
                        v110[16] = v114;
                        *(v110 + 3) = *(v111 + 3);
                        v115 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v116 = type metadata accessor for UUID();
                        v133 = *(*(v116 - 8) + 16);

                        v133(&v110[v115], &v111[v115], v116);
                        v117 = *(v138 + 24);
                        v118 = &__dst[v117];
                        v119 = &v145[v117];
                        if (*v119)
                        {
                          v120 = v119[1];
                          *v118 = *v119;
                          v118[1] = v120;
                        }

                        else
                        {
                          *v118 = *v119;
                        }

                        v16 = v142;
                        a3 = v143;
                        v34 = v149;
                        v107 = v146;
                        v108 = v141;
                        (*(v135 + 56))(__dst, 0, 1, v138);
                      }

                      *(v27 + v107[29]) = *(v28 + v107[29]);
                      *(v27 + v107[30]) = *(v28 + v107[30]);
                      *(v27 + v107[31]) = *(v28 + v107[31]);
                      *(v27 + v107[32]) = *(v28 + v107[32]);
                      *(v27 + v107[33]) = *(v28 + v107[33]);
                      *(v27 + v107[34]) = *(v28 + v107[34]);
                      v121 = *(v108 + 56);

                      v121(v27, 0, 1, v107);
                      goto LABEL_75;
                    }

                    v27[108] = v97;
                    v27[109] = v28[109];
                    (**(v97 - 8))(v95, v96);
                    v100 = v28[110];
                    if (!v100)
                    {
LABEL_67:
                      *(v27 + 55) = *(v28 + 55);
                      goto LABEL_68;
                    }
                  }

                  else
                  {
                    v99 = *(v28 + 107);
                    *v95 = *v96;
                    *(v27 + 107) = v99;
                    v27[109] = v28[109];
                    v100 = v28[110];
                    if (!v100)
                    {
                      goto LABEL_67;
                    }
                  }

                  v101 = v28[111];
                  v27[110] = v100;
                  v27[111] = v101;

                  goto LABEL_68;
                }

                v27[78] = v84;
                v27[79] = v28[79];
                (**(v84 - 8))((v27 + 75), (v28 + 75), v84);
              }

              else
              {
                v86 = *(v28 + 77);
                *v82 = *v83;
                *(v27 + 77) = v86;
                v27[79] = v28[79];
              }

              v27[80] = v28[80];

              goto LABEL_57;
            }

LABEL_44:
            *(v27 + 28) = *(v28 + 28);
            goto LABEL_45;
          }
        }

        *(v27 + 27) = *(v28 + 27);
        v77 = v28[56];
        if (v77)
        {
          goto LABEL_41;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v51 = *(v28 + 72);
      if (v51 == 255)
      {
        v27[8] = v28[8];
        *(v27 + 72) = *(v28 + 72);
      }

      else
      {
        v52 = v28[8];
        outlined copy of GraphicsImage.Contents(v52, *(v28 + 72));
        v27[8] = v52;
        *(v27 + 72) = v51;
        v39 = v28[24];
      }

      v27[10] = v28[10];
      *(v27 + 11) = *(v28 + 11);
      *(v27 + 104) = *(v28 + 104);
      *(v27 + 108) = *(v28 + 108);
      *(v27 + 121) = *(v28 + 121);
      *(v27 + 17) = *(v28 + 17);
      *(v27 + 19) = *(v28 + 19);
      *(v27 + 84) = *(v28 + 84);
      *(v27 + 170) = *(v28 + 170);
      *(v27 + 171) = *(v28 + 171);
      if (v39 >> 1 == 0xFFFFFFFF)
      {
        v53 = *(v28 + 12);
        *(v27 + 11) = *(v28 + 11);
        *(v27 + 12) = v53;
      }

      else
      {
        v54 = v28[22];
        v55 = v28[23];
        v56 = v28[25];
        outlined copy of AccessibilityImageLabel(v54, v55, v39);
        v27[22] = v54;
        v27[23] = v55;
        v27[24] = v39;
        v27[25] = v56;
      }

      v57 = v28[27];
      v27[26] = v28[26];
      v27[27] = v57;
      *(v27 + 112) = *(v28 + 112);
      *(v27 + 57) = *(v28 + 57);
      *(v27 + 232) = *(v28 + 232);
      v58 = v28[30];
      v27[30] = v58;
      *(v27 + 124) = *(v28 + 124);
      *(v27 + 250) = *(v28 + 250);
      swift_unknownObjectRetain();

      v59 = v58;
      v47 = v28[33];
      if (v47)
      {
        goto LABEL_22;
      }
    }

    v60 = *(v28 + 17);
    *(v27 + 16) = *(v28 + 16);
    *(v27 + 17) = v60;
    *(v27 + 18) = *(v28 + 18);
    goto LABEL_33;
  }

  type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
  memcpy(v27, v28, *(*(v33 - 8) + 64));
  v34 = v149;
LABEL_75:
  (*(v148 + 56))(v34, 0, 1, v16);
  v5 = v147;
LABEL_76:
  v122 = a3[6];
  v123 = v5 + v122;
  v124 = a2 + v122;
  v125 = *(a2 + v122 + 48);
  if (v125)
  {
    v126 = *(v124 + 8);
    *v123 = *v124;
    *(v123 + 1) = v126;
    v127 = *(v124 + 24);

    if (v127)
    {
      *(v123 + 2) = *(v124 + 16);
      *(v123 + 3) = v127;
      *(v123 + 4) = *(v124 + 32);
    }

    else
    {
      *(v123 + 1) = *(v124 + 16);
      *(v123 + 4) = *(v124 + 32);
    }

    v123[40] = *(v124 + 40);
    *(v123 + 6) = v125;
    v123[56] = *(v124 + 56);
    *(v123 + 8) = *(v124 + 64);
  }

  else
  {
    v128 = *(v124 + 48);
    *(v123 + 2) = *(v124 + 32);
    *(v123 + 3) = v128;
    *(v123 + 8) = *(v124 + 64);
    v129 = *(v124 + 16);
    *v123 = *v124;
    *(v123 + 1) = v129;
  }

  *(v5 + a3[7]) = *(a2 + a3[7]);
  return v5;
}

uint64_t assignWithCopy for ToolbarContentDescription(uint64_t a1, __int128 *a2, int *a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *(a1 + 24);
  v7 = *(a2 + 3);
  if (v6 != 1)
  {
    if (v7 == 1)
    {
      outlined destroy of NavigationTitleStorage(a1);
      v12 = v4[1];
      v11 = v4[2];
      v13 = *v4;
      *(v5 + 41) = *(v4 + 41);
      *(v5 + 16) = v12;
      *(v5 + 32) = v11;
      *v5 = v13;
      goto LABEL_28;
    }

    if (v6)
    {
      if (v7)
      {
        v14 = *a2;
        v15 = *(a2 + 1);
        v16 = *(a2 + 16);
        outlined copy of Text.Storage(*a2, v15, v16);
        v17 = *v5;
        v18 = *(v5 + 8);
        v19 = *(v5 + 16);
        *v5 = v14;
        *(v5 + 8) = v15;
        *(v5 + 16) = v16;
        outlined consume of Text.Storage(v17, v18, v19);
        *(v5 + 24) = *(v4 + 3);
      }

      else
      {
        outlined destroy of Text(a1);
        v28 = v4[1];
        *v5 = *v4;
        *(v5 + 16) = v28;
      }
    }

    else if (v7)
    {
      v25 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v26, v27);
      *v5 = v25;
      *(v5 + 8) = v26;
      *(v5 + 16) = v27;
      *(v5 + 24) = *(v4 + 3);
    }

    else
    {
      v29 = a2[1];
      *a1 = *a2;
      *(a1 + 16) = v29;
    }

    v30 = (v5 + 32);
    v31 = *(v4 + 4);
    if (*(v5 + 32) == 1)
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      v32 = 1;
    }

    else
    {
      if (v31 != 1)
      {
        *v30 = v31;

        goto LABEL_27;
      }

      outlined destroy of Transaction(v5 + 32);
      v32 = *(v4 + 4);
    }

    *v30 = v32;
LABEL_27:
    *(v5 + 40) = *(v4 + 40);
    *(v5 + 48) = *(v4 + 6);

    *(v5 + 56) = *(v4 + 56);
    goto LABEL_28;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v9;
      *(a1 + 32) = v10;
      *a1 = v8;
      goto LABEL_28;
    }

    v21 = *a2;
    v22 = *(a2 + 1);
    v23 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v22, v23);
    *v5 = v21;
    *(v5 + 8) = v22;
    *(v5 + 16) = v23;
    *(v5 + 24) = *(v4 + 3);
  }

  else
  {
    v20 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v20;
  }

  v24 = *(v4 + 4);
  if (v24 != 1)
  {
  }

  *(v5 + 32) = v24;
  *(v5 + 40) = *(v4 + 40);
  *(v5 + 48) = *(v4 + 6);
  *(v5 + 56) = *(v4 + 56);

LABEL_28:
  v33 = a3[5];
  v34 = v5 + v33;
  v35 = v4 + v33;
  v36 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  v39 = v38(v34, 1, v36);
  v40 = v38(v35, 1, v36);
  if (v39)
  {
    if (!v40)
    {
      v41 = *(v35 + 8);
      if (v41 == 255)
      {
        v53 = *v35;
        *(v34 + 8) = *(v35 + 8);
        *v34 = v53;
      }

      else
      {
        v42 = *v35;
        v43 = v41 & 1;
        outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v35, v41 & 1);
        *v34 = v42;
        *(v34 + 8) = v43;
      }

      v54 = *(v35 + 24);
      v650 = a3;
      v654 = v4;
      if (v54 == 254 || v54 == 255)
      {
        v55 = *(v35 + 16);
        *(v34 + 24) = *(v35 + 24);
        *(v34 + 16) = v55;
      }

      else
      {
        v56 = *(v35 + 16);
        v57 = v54 & 1;
        outlined copy of PlatformItemCollection.Storage(v56, v54 & 1);
        *(v34 + 16) = v56;
        *(v34 + 24) = v57;
      }

      swift_unknownObjectWeakCopyInit();
      *(v34 + 40) = *(v35 + 40);
      v58 = *(v35 + 48);
      *(v34 + 48) = v58;
      v647 = v36;
      v59 = *(v36 + 32);
      v60 = (v34 + v59);
      v61 = v35 + v59;
      v62 = type metadata accessor for PlatformItemList.Item();
      v63 = *(v62 - 8);
      v64 = *(v63 + 48);
      v65 = v58;
      if (v64(v61, 1, v62))
      {
        type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
        memcpy(v60, v61, *(*(v66 - 8) + 64));
        v67 = v647;
        a3 = v650;
        v4 = v654;
LABEL_129:
        (*(v37 + 56))(v34, 0, 1, v67);
        goto LABEL_130;
      }

      v621 = v63;
      v639 = v62;
      v644 = v5;
      v68 = *v61;
      *v60 = *v61;
      v69 = *(v61 + 8);
      v60[1] = v69;
      v60[2] = *(v61 + 16);
      v60[3] = *(v61 + 24);
      *(v60 + 32) = *(v61 + 32);
      v60[5] = *(v61 + 40);
      v60[6] = *(v61 + 48);
      *(v60 + 56) = *(v61 + 56);
      v70 = *(v61 + 192);
      v71 = v68;
      v72 = v69;

      v627 = v37;
      if (v70 >> 1 == 4294967294)
      {
        v73 = *(v61 + 64);
        v74 = *(v61 + 80);
        v75 = *(v61 + 112);
        *(v60 + 6) = *(v61 + 96);
        *(v60 + 7) = v75;
        *(v60 + 4) = v73;
        *(v60 + 5) = v74;
        v76 = *(v61 + 128);
        v77 = *(v61 + 144);
        v78 = *(v61 + 176);
        *(v60 + 10) = *(v61 + 160);
        *(v60 + 11) = v78;
        *(v60 + 8) = v76;
        *(v60 + 9) = v77;
        v79 = *(v61 + 192);
        v80 = *(v61 + 208);
        v81 = *(v61 + 224);
        *(v60 + 235) = *(v61 + 235);
        *(v60 + 13) = v80;
        *(v60 + 14) = v81;
        *(v60 + 12) = v79;
        if (*(v61 + 264))
        {
LABEL_48:
          v60[32] = *(v61 + 256);
          v60[33] = *(v61 + 264);
          v82 = *(v61 + 272);

          if (v82 >= 2)
          {
            v83 = v82;
          }

          v60[34] = v82;
          v84 = *(v61 + 280);
          *(v60 + 284) = *(v61 + 284);
          *(v60 + 70) = v84;
          *(v60 + 285) = *(v61 + 285);
          *(v60 + 286) = *(v61 + 286);
          v60[36] = *(v61 + 288);
          v60[37] = *(v61 + 296);

LABEL_85:
          v157 = *(v61 + 336);
          if (v157 >> 2 == 0xFFFFFFFF)
          {
            v158 = *(v61 + 304);
            v159 = *(v61 + 336);
            *(v60 + 20) = *(v61 + 320);
            *(v60 + 21) = v159;
            *(v60 + 19) = v158;
            v160 = *(v61 + 352);
            v161 = *(v61 + 368);
            v162 = *(v61 + 384);
            v60[50] = *(v61 + 400);
            *(v60 + 23) = v161;
            *(v60 + 24) = v162;
            *(v60 + 22) = v160;
          }

          else
          {
            v163 = *(v61 + 304);
            v164 = *(v61 + 312);
            v165 = *(v61 + 328);
            v167 = *(v61 + 344);
            v166 = *(v61 + 352);
            v168 = *(v61 + 360);
            v604 = *(v61 + 320);
            v605 = *(v61 + 368);
            v607 = *(v61 + 376);
            v609 = *(v61 + 384);
            __dsta = *(v61 + 392);
            v632 = *(v61 + 400);
            outlined copy of PlatformItemList.Item.SystemItem(v163, v164, v604, v165, v157, v167, v166, v168, v605, v607, v609, __dsta, v632);
            v60[38] = v163;
            v60[39] = v164;
            v60[40] = v604;
            v60[41] = v165;
            v60[42] = v157;
            v60[43] = v167;
            v60[44] = v166;
            v60[45] = v168;
            v60[46] = v605;
            v60[47] = v607;
            v60[48] = v609;
            v60[49] = __dsta;
            v60[50] = v632;
          }

          if (*(v61 + 416) == 1)
          {
            *(v60 + 51) = *(v61 + 408);
            v169 = *(v61 + 424);
            v170 = *(v61 + 440);
            v171 = *(v61 + 456);
            *(v60 + 472) = *(v61 + 472);
            *(v60 + 55) = v170;
            *(v60 + 57) = v171;
            *(v60 + 53) = v169;
            goto LABEL_100;
          }

          *(v60 + 408) = *(v61 + 408);
          *(v60 + 409) = *(v61 + 409);
          *(v60 + 410) = *(v61 + 410);
          *(v60 + 411) = *(v61 + 411);
          *(v60 + 412) = *(v61 + 412);
          v172 = *(v61 + 416);
          if (v172)
          {
            v173 = *(v61 + 424);
            v60[52] = v172;
            v60[53] = v173;

            v174 = *(v61 + 432);
            if (v174)
            {
              goto LABEL_92;
            }
          }

          else
          {
            *(v60 + 26) = *(v61 + 416);
            v174 = *(v61 + 432);
            if (v174)
            {
LABEL_92:
              v175 = *(v61 + 440);
              v60[54] = v174;
              v60[55] = v175;

              v176 = *(v61 + 448);
              if (v176)
              {
LABEL_93:
                v177 = *(v61 + 456);
                v60[56] = v176;
                v60[57] = v177;

LABEL_99:
                v60[58] = *(v61 + 464);
                *(v60 + 472) = *(v61 + 472);
LABEL_100:
                v60[60] = *(v61 + 480);
                v60[61] = *(v61 + 488);
                v60[62] = *(v61 + 496);
                *(v60 + 504) = *(v61 + 504);
                v180 = *(v61 + 512);

                if (v180)
                {
                  v181 = *(v61 + 520);
                  v60[64] = v180;
                  v60[65] = v181;
                }

                else
                {
                  *(v60 + 32) = *(v61 + 512);
                }

                *(v60 + 528) = *(v61 + 528);
                if (!*(v61 + 816))
                {
                  memcpy(v60 + 67, (v61 + 536), 0x130uLL);
                  goto LABEL_115;
                }

                v60[67] = *(v61 + 536);
                v60[68] = *(v61 + 544);
                *(v60 + 552) = *(v61 + 552);
                v60[70] = *(v61 + 560);
                *(v60 + 568) = *(v61 + 568);
                v182 = *(v61 + 576);
                *(v60 + 592) = *(v61 + 592);
                *(v60 + 36) = v182;
                v183 = v60 + 75;
                v184 = (v61 + 600);
                v185 = *(v61 + 624);

                if (v185)
                {
                  if (v185 == 1)
                  {
                    v186 = *v184;
                    v187 = *(v61 + 632);
                    *(v60 + 77) = *(v61 + 616);
                    *(v60 + 79) = v187;
                    *v183 = v186;
LABEL_111:
                    v190 = *(v61 + 648);
                    *(v60 + 656) = *(v61 + 656);
                    v60[81] = v190;
                    v191 = v60 + 83;
                    v192 = (v61 + 664);
                    if (*(v61 + 776) == 1)
                    {
                      v193 = *(v61 + 680);
                      *v191 = *v192;
                      *(v60 + 85) = v193;
                      v194 = *(v61 + 696);
                      v195 = *(v61 + 712);
                      v196 = *(v61 + 744);
                      *(v60 + 91) = *(v61 + 728);
                      *(v60 + 93) = v196;
                      *(v60 + 87) = v194;
                      *(v60 + 89) = v195;
                      v197 = *(v61 + 760);
                      v198 = *(v61 + 776);
                      v199 = *(v61 + 792);
                      *(v60 + 808) = *(v61 + 808);
                      *(v60 + 97) = v198;
                      *(v60 + 99) = v199;
                      *(v60 + 95) = v197;
                    }

                    else
                    {
                      v200 = *v192;
                      *(v60 + 672) = *(v61 + 672);
                      *v191 = v200;
                      v201 = *(v61 + 680);
                      *(v60 + 688) = *(v61 + 688);
                      v60[85] = v201;
                      *(v60 + 689) = *(v61 + 689);
                      *(v60 + 690) = *(v61 + 690);
                      *(v60 + 691) = *(v61 + 691);
                      *(v60 + 692) = *(v61 + 692);
                      v60[87] = *(v61 + 696);
                      v60[88] = *(v61 + 704);
                      v60[89] = *(v61 + 712);
                      v60[90] = *(v61 + 720);
                      v60[91] = *(v61 + 728);
                      v60[92] = *(v61 + 736);
                      *(v60 + 744) = *(v61 + 744);
                      *(v60 + 745) = *(v61 + 745);
                      v60[94] = *(v61 + 752);
                      v60[95] = *(v61 + 760);
                      *(v60 + 768) = *(v61 + 768);
                      v60[97] = *(v61 + 776);
                      v202 = *(v61 + 784);
                      v60[100] = *(v61 + 800);
                      *(v60 + 49) = v202;
                      *(v60 + 808) = *(v61 + 808);
                    }

                    v60[102] = *(v61 + 816);
                    v60[103] = *(v61 + 824);
                    v60[104] = *(v61 + 832);

LABEL_115:
                    v203 = v60 + 105;
                    v204 = (v61 + 840);
                    v205 = *(v61 + 864);
                    if (v205)
                    {
                      if (v205 == 1)
                      {
                        v206 = *v204;
                        v207 = *(v61 + 856);
                        v208 = *(v61 + 872);
                        v60[111] = *(v61 + 888);
                        *(v60 + 107) = v207;
                        *(v60 + 109) = v208;
                        *v203 = v206;
LABEL_122:
                        v213 = *(v61 + 896);
                        v60[112] = v213;
                        v60[113] = *(v61 + 904);
                        v60[114] = *(v61 + 912);
                        v60[115] = *(v61 + 920);
                        v60[116] = *(v61 + 928);
                        v60[117] = *(v61 + 936);
                        v60[118] = *(v61 + 944);
                        *(v60 + 952) = *(v61 + 952);
                        *(v60 + 953) = *(v61 + 953);
                        *(v60 + 954) = *(v61 + 954);
                        v214 = v639[28];
                        __dst = v60 + v214;
                        v633 = (v61 + v214);
                        v215 = type metadata accessor for CommandOperation();
                        v608 = *(v215 - 8);
                        v610 = *(v608 + 48);
                        v216 = v213;

                        if (v610(v633, 1, v215))
                        {
                          type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                          memcpy(__dst, v633, *(*(v217 - 8) + 64));
                          v218 = v639;
                          v5 = v644;
                          a3 = v650;
                          v4 = v654;
                        }

                        else
                        {
                          *__dst = *v633;
                          v219 = *(v215 + 20);
                          v220 = &__dst[v219];
                          v611 = v215;
                          v221 = &v633[v219];
                          v222 = *&v633[v219];
                          v223 = *&v633[v219 + 8];
                          v224 = v633[v219 + 16];
                          outlined copy of Text.Storage(v222, *(v221 + 1), v221[16]);
                          *v220 = v222;
                          *(v220 + 1) = v223;
                          v220[16] = v224;
                          *(v220 + 3) = *(v221 + 3);
                          v225 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v226 = type metadata accessor for UUID();
                          v606 = *(*(v226 - 8) + 16);

                          v606(&v220[v225], &v221[v225], v226);
                          v227 = *(v611 + 24);
                          v228 = &__dst[v227];
                          v229 = &v633[v227];
                          if (*v229)
                          {
                            v230 = v229[1];
                            *v228 = *v229;
                            v228[1] = v230;
                          }

                          else
                          {
                            *v228 = *v229;
                          }

                          v218 = v639;
                          v5 = v644;
                          a3 = v650;
                          v4 = v654;
                          (*(v608 + 56))(__dst, 0, 1, v611);
                        }

                        v67 = v647;
                        *(v60 + v218[29]) = *(v61 + v218[29]);
                        *(v60 + v218[30]) = *(v61 + v218[30]);
                        *(v60 + v218[31]) = *(v61 + v218[31]);
                        *(v60 + v218[32]) = *(v61 + v218[32]);
                        *(v60 + v218[33]) = *(v61 + v218[33]);
                        *(v60 + v218[34]) = *(v61 + v218[34]);
                        v231 = *(v621 + 56);

                        v231(v60, 0, 1, v218);
                        v37 = v627;
                        goto LABEL_129;
                      }

                      v60[108] = v205;
                      v60[109] = *(v61 + 872);
                      (**(v205 - 8))(v203, v204);
                      v211 = *(v61 + 880);
                      if (!v211)
                      {
LABEL_121:
                        *(v60 + 55) = *(v61 + 880);
                        goto LABEL_122;
                      }
                    }

                    else
                    {
                      v209 = *v204;
                      v210 = *(v61 + 856);
                      v60[109] = *(v61 + 872);
                      *v203 = v209;
                      *(v60 + 107) = v210;
                      v211 = *(v61 + 880);
                      if (!v211)
                      {
                        goto LABEL_121;
                      }
                    }

                    v212 = *(v61 + 888);
                    v60[110] = v211;
                    v60[111] = v212;

                    goto LABEL_122;
                  }

                  v60[78] = v185;
                  v60[79] = *(v61 + 632);
                  (**(v185 - 8))((v60 + 75), v61 + 600, v185);
                }

                else
                {
                  v188 = *v184;
                  v189 = *(v61 + 616);
                  v60[79] = *(v61 + 632);
                  *v183 = v188;
                  *(v60 + 77) = v189;
                }

                v60[80] = *(v61 + 640);

                goto LABEL_111;
              }

LABEL_98:
              *(v60 + 28) = *(v61 + 448);
              goto LABEL_99;
            }
          }

          *(v60 + 27) = *(v61 + 432);
          v176 = *(v61 + 448);
          if (v176)
          {
            goto LABEL_93;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v87 = *(v61 + 72);
        if (v87 == 255)
        {
          v143 = *(v61 + 64);
          *(v60 + 72) = *(v61 + 72);
          v60[8] = v143;
        }

        else
        {
          v88 = *(v61 + 64);
          outlined copy of GraphicsImage.Contents(v88, *(v61 + 72));
          v60[8] = v88;
          *(v60 + 72) = v87;
        }

        v60[10] = *(v61 + 80);
        *(v60 + 11) = *(v61 + 88);
        *(v60 + 104) = *(v61 + 104);
        v144 = *(v61 + 108);
        *(v60 + 121) = *(v61 + 121);
        *(v60 + 108) = v144;
        v145 = *(v61 + 136);
        v146 = *(v61 + 152);
        *(v60 + 168) = *(v61 + 168);
        *(v60 + 19) = v146;
        *(v60 + 17) = v145;
        *(v60 + 169) = *(v61 + 169);
        *(v60 + 170) = *(v61 + 170);
        *(v60 + 171) = *(v61 + 171);
        v147 = *(v61 + 192);
        if (v147 >> 1 == 0xFFFFFFFF)
        {
          v148 = *(v61 + 192);
          *(v60 + 11) = *(v61 + 176);
          *(v60 + 12) = v148;
        }

        else
        {
          v149 = *(v61 + 176);
          v150 = *(v61 + 184);
          v151 = *(v61 + 200);
          outlined copy of AccessibilityImageLabel(v149, v150, *(v61 + 192));
          v60[22] = v149;
          v60[23] = v150;
          v60[24] = v147;
          v60[25] = v151;
        }

        v60[26] = *(v61 + 208);
        v60[27] = *(v61 + 216);
        *(v60 + 224) = *(v61 + 224);
        *(v60 + 225) = *(v61 + 225);
        v152 = *(v61 + 228);
        *(v60 + 232) = *(v61 + 232);
        *(v60 + 57) = v152;
        v153 = *(v61 + 240);
        v60[30] = v153;
        *(v60 + 124) = *(v61 + 248);
        *(v60 + 250) = *(v61 + 250);
        swift_unknownObjectRetain();

        v154 = v153;
        if (*(v61 + 264))
        {
          goto LABEL_48;
        }
      }

      v155 = *(v61 + 256);
      v156 = *(v61 + 288);
      *(v60 + 17) = *(v61 + 272);
      *(v60 + 18) = v156;
      *(v60 + 16) = v155;
      goto LABEL_85;
    }

    goto LABEL_34;
  }

  if (v40)
  {
    outlined destroy of CommandOperation(v34, type metadata accessor for ToolbarStorage.NavigationProperties);
LABEL_34:
    type metadata accessor for ToolbarStorage.NavigationProperties?(0);
    v45 = *(*(v44 - 8) + 64);
    v46 = v34;
    v47 = v35;
LABEL_35:
    memcpy(v46, v47, v45);
    goto LABEL_130;
  }

  v48 = *(v35 + 8);
  if (*(v34 + 8) == 255)
  {
    if (v48 == 255)
    {
      v90 = *v35;
      *(v34 + 8) = *(v35 + 8);
      *v34 = v90;
    }

    else
    {
      v85 = *v35;
      v86 = v48 & 1;
      outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v35, v48 & 1);
      *v34 = v85;
      *(v34 + 8) = v86;
    }
  }

  else if (v48 == 255)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.DocumentProperties(v34);
    v89 = *(v35 + 8);
    *v34 = *v35;
    *(v34 + 8) = v89;
  }

  else
  {
    v49 = *v35;
    v50 = v48 & 1;
    outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*v35, v48 & 1);
    v51 = *v34;
    v52 = *(v34 + 8);
    *v34 = v49;
    *(v34 + 8) = v50;
    outlined consume of ResolvableCLKTextProvider.FontStorage(v51, v52);
  }

  v91 = *(v34 + 24);
  v92 = *(v35 + 24);
  if (v91 == 254)
  {
    if (v92 == 254)
    {
LABEL_66:
      v96 = *(v35 + 16);
      *(v34 + 24) = *(v35 + 24);
      *(v34 + 16) = v96;
      goto LABEL_67;
    }

LABEL_64:
    if (v92 != 255)
    {
      v94 = *(v35 + 16);
      v95 = v92 & 1;
      outlined copy of PlatformItemCollection.Storage(v94, v92 & 1);
      *(v34 + 16) = v94;
      *(v34 + 24) = v95;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (v92 == 254)
  {
    outlined destroy of ToolbarStorage.NavigationProperties.Actions(v34 + 16);
LABEL_62:
    v93 = *(v35 + 24);
    *(v34 + 16) = *(v35 + 16);
    *(v34 + 24) = v93;
    goto LABEL_67;
  }

  if (v91 == 255)
  {
    goto LABEL_64;
  }

  if (v92 == 255)
  {
    outlined destroy of PlatformItemCollection(v34 + 16);
    goto LABEL_62;
  }

  v139 = *(v35 + 16);
  v140 = v92 & 1;
  outlined copy of PlatformItemCollection.Storage(v139, v92 & 1);
  v141 = *(v34 + 16);
  v142 = *(v34 + 24);
  *(v34 + 16) = v139;
  *(v34 + 24) = v140;
  outlined consume of PlatformItemCollection.Storage(v141, v142);
LABEL_67:
  swift_unknownObjectWeakCopyAssign();
  *(v34 + 40) = *(v35 + 40);
  v97 = *(v34 + 48);
  v98 = *(v35 + 48);
  *(v34 + 48) = v98;
  v99 = v98;

  v100 = *(v36 + 32);
  v101 = v34 + v100;
  v102 = v35 + v100;
  v103 = type metadata accessor for PlatformItemList.Item();
  v104 = *(v103 - 8);
  v105 = *(v104 + 48);
  v106 = v105(v101, 1, v103);
  v107 = v105(v102, 1, v103);
  if (!v106)
  {
    if (v107)
    {
      outlined destroy of CommandOperation(v101, type metadata accessor for PlatformItemList.Item);
      goto LABEL_73;
    }

    v123 = *v101;
    v124 = *v102;
    *v101 = *v102;
    v125 = v124;

    v126 = *(v101 + 8);
    v127 = *(v102 + 8);
    *(v101 + 8) = v127;
    v128 = v127;

    *(v101 + 16) = *(v102 + 16);
    *(v101 + 24) = *(v102 + 24);

    *(v101 + 32) = *(v102 + 32);
    *(v101 + 40) = *(v102 + 40);
    *(v101 + 48) = *(v102 + 48);

    *(v101 + 56) = *(v102 + 56);
    v129 = *(v102 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v101 + 192) >> 1 == 4294967294)
    {
      if (v129 == 0x1FFFFFFFCLL)
      {
        v130 = *(v102 + 64);
        v131 = *(v102 + 80);
        v132 = *(v102 + 112);
        *(v101 + 96) = *(v102 + 96);
        *(v101 + 112) = v132;
        *(v101 + 64) = v130;
        *(v101 + 80) = v131;
        v133 = *(v102 + 128);
        v134 = *(v102 + 144);
        v135 = *(v102 + 176);
        *(v101 + 160) = *(v102 + 160);
        *(v101 + 176) = v135;
        *(v101 + 128) = v133;
        *(v101 + 144) = v134;
        v136 = *(v102 + 192);
        v137 = *(v102 + 208);
        v138 = *(v102 + 224);
        *(v101 + 235) = *(v102 + 235);
        *(v101 + 208) = v137;
        *(v101 + 224) = v138;
        *(v101 + 192) = v136;
      }

      else
      {
        v353 = *(v102 + 72);
        if (v353 == 255)
        {
          v360 = *(v102 + 64);
          *(v101 + 72) = *(v102 + 72);
          *(v101 + 64) = v360;
        }

        else
        {
          v354 = *(v102 + 64);
          outlined copy of GraphicsImage.Contents(v354, *(v102 + 72));
          *(v101 + 64) = v354;
          *(v101 + 72) = v353;
        }

        *(v101 + 80) = *(v102 + 80);
        *(v101 + 88) = *(v102 + 88);
        *(v101 + 104) = *(v102 + 104);
        v361 = *(v102 + 108);
        *(v101 + 121) = *(v102 + 121);
        *(v101 + 108) = v361;
        v362 = *(v102 + 136);
        v363 = *(v102 + 152);
        *(v101 + 168) = *(v102 + 168);
        *(v101 + 152) = v363;
        *(v101 + 136) = v362;
        *(v101 + 169) = *(v102 + 169);
        *(v101 + 170) = *(v102 + 170);
        *(v101 + 171) = *(v102 + 171);
        v364 = *(v102 + 192);
        if (v364 >> 1 == 0xFFFFFFFF)
        {
          v365 = *(v102 + 192);
          *(v101 + 176) = *(v102 + 176);
          *(v101 + 192) = v365;
        }

        else
        {
          v366 = a3;
          v367 = *(v102 + 176);
          v368 = *(v102 + 184);
          v369 = v103;
          v370 = v5;
          v371 = *(v102 + 200);
          outlined copy of AccessibilityImageLabel(v367, v368, *(v102 + 192));
          *(v101 + 176) = v367;
          *(v101 + 184) = v368;
          a3 = v366;
          *(v101 + 192) = v364;
          *(v101 + 200) = v371;
          v5 = v370;
          v103 = v369;
        }

        *(v101 + 208) = *(v102 + 208);
        *(v101 + 216) = *(v102 + 216);
        *(v101 + 224) = *(v102 + 224);
        *(v101 + 225) = *(v102 + 225);
        v372 = *(v102 + 228);
        *(v101 + 232) = *(v102 + 232);
        *(v101 + 228) = v372;
        v373 = *(v102 + 240);
        *(v101 + 240) = v373;
        *(v101 + 248) = *(v102 + 248);
        *(v101 + 250) = *(v102 + 250);
        swift_unknownObjectRetain();

        v374 = v373;
      }
    }

    else if (v129 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v101 + 64);
      v249 = *(v102 + 112);
      v251 = *(v102 + 64);
      v250 = *(v102 + 80);
      *(v101 + 96) = *(v102 + 96);
      *(v101 + 112) = v249;
      *(v101 + 64) = v251;
      *(v101 + 80) = v250;
      v252 = *(v102 + 176);
      v254 = *(v102 + 128);
      v253 = *(v102 + 144);
      *(v101 + 160) = *(v102 + 160);
      *(v101 + 176) = v252;
      *(v101 + 128) = v254;
      *(v101 + 144) = v253;
      v256 = *(v102 + 208);
      v255 = *(v102 + 224);
      v257 = *(v102 + 192);
      *(v101 + 235) = *(v102 + 235);
      *(v101 + 208) = v256;
      *(v101 + 224) = v255;
      *(v101 + 192) = v257;
    }

    else
    {
      v355 = *(v102 + 72);
      if (*(v101 + 72) == 255)
      {
        if (v355 == 255)
        {
          v377 = *(v102 + 64);
          *(v101 + 72) = *(v102 + 72);
          *(v101 + 64) = v377;
        }

        else
        {
          v375 = *(v102 + 64);
          outlined copy of GraphicsImage.Contents(v375, *(v102 + 72));
          *(v101 + 64) = v375;
          *(v101 + 72) = v355;
        }
      }

      else if (v355 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v101 + 64);
        v376 = *(v102 + 72);
        *(v101 + 64) = *(v102 + 64);
        *(v101 + 72) = v376;
      }

      else
      {
        v356 = *(v102 + 64);
        outlined copy of GraphicsImage.Contents(v356, *(v102 + 72));
        v357 = *(v101 + 64);
        *(v101 + 64) = v356;
        v358 = *(v101 + 72);
        *(v101 + 72) = v355;
        outlined consume of GraphicsImage.Contents(v357, v358);
      }

      *(v101 + 80) = *(v102 + 80);
      *(v101 + 88) = *(v102 + 88);
      *(v101 + 96) = *(v102 + 96);
      *(v101 + 104) = *(v102 + 104);
      v378 = *(v102 + 108);
      *(v101 + 121) = *(v102 + 121);
      *(v101 + 108) = v378;
      v379 = *(v102 + 136);
      v380 = *(v102 + 152);
      *(v101 + 168) = *(v102 + 168);
      *(v101 + 152) = v380;
      *(v101 + 136) = v379;
      *(v101 + 169) = *(v102 + 169);
      *(v101 + 170) = *(v102 + 170);
      *(v101 + 171) = *(v102 + 171);
      v381 = *(v102 + 192);
      v382 = v381 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v101 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v382 == 0x1FFFFFFFELL)
        {
          v383 = *(v102 + 192);
          *(v101 + 176) = *(v102 + 176);
          *(v101 + 192) = v383;
        }

        else
        {
          v385 = a3;
          v386 = *(v102 + 176);
          v387 = *(v102 + 184);
          v388 = v103;
          v389 = v5;
          v390 = *(v102 + 200);
          outlined copy of AccessibilityImageLabel(v386, v387, *(v102 + 192));
          *(v101 + 176) = v386;
          *(v101 + 184) = v387;
          a3 = v385;
          *(v101 + 192) = v381;
          *(v101 + 200) = v390;
          v5 = v389;
          v103 = v388;
        }
      }

      else if (v382 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v101 + 176);
        v384 = *(v102 + 192);
        *(v101 + 176) = *(v102 + 176);
        *(v101 + 192) = v384;
      }

      else
      {
        v391 = a3;
        v392 = *(v102 + 176);
        v393 = *(v102 + 184);
        v394 = v103;
        v395 = v5;
        v396 = *(v102 + 200);
        outlined copy of AccessibilityImageLabel(v392, v393, *(v102 + 192));
        v397 = *(v101 + 176);
        v398 = *(v101 + 184);
        v399 = *(v101 + 192);
        *(v101 + 176) = v392;
        *(v101 + 184) = v393;
        a3 = v391;
        *(v101 + 192) = v381;
        *(v101 + 200) = v396;
        v5 = v395;
        v103 = v394;
        outlined consume of AccessibilityImageLabel(v397, v398, v399);
      }

      *(v101 + 208) = *(v102 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v101 + 216) = *(v102 + 216);

      *(v101 + 224) = *(v102 + 224);
      *(v101 + 225) = *(v102 + 225);
      v400 = *(v102 + 228);
      *(v101 + 232) = *(v102 + 232);
      *(v101 + 228) = v400;
      v401 = *(v101 + 240);
      v402 = *(v102 + 240);
      *(v101 + 240) = v402;
      v403 = v402;

      *(v101 + 248) = *(v102 + 248);
      *(v101 + 250) = *(v102 + 250);
    }

    v404 = *(v102 + 264);
    if (!*(v101 + 264))
    {
      if (v404)
      {
        *(v101 + 256) = *(v102 + 256);
        *(v101 + 264) = *(v102 + 264);
        v408 = *(v102 + 272);

        if (v408 >= 2)
        {
          v409 = v408;
        }

        *(v101 + 272) = v408;
        v410 = *(v102 + 280);
        *(v101 + 284) = *(v102 + 284);
        *(v101 + 280) = v410;
        *(v101 + 285) = *(v102 + 285);
        *(v101 + 286) = *(v102 + 286);
        *(v101 + 288) = *(v102 + 288);
        *(v101 + 296) = *(v102 + 296);
      }

      else
      {
        v413 = *(v102 + 256);
        v414 = *(v102 + 288);
        *(v101 + 272) = *(v102 + 272);
        *(v101 + 288) = v414;
        *(v101 + 256) = v413;
      }

LABEL_244:
      v417 = *(v102 + 336);
      v418 = v417 & 0xFFFFFFFFFFFFFFFCLL;
      v646 = v5;
      v656 = v4;
      v649 = v103;
      if (*(v101 + 336) >> 2 == 0xFFFFFFFFLL)
      {
        if (v418 == 0x3FFFFFFFCLL)
        {
          v419 = *(v102 + 304);
          v420 = *(v102 + 336);
          *(v101 + 320) = *(v102 + 320);
          *(v101 + 336) = v420;
          *(v101 + 304) = v419;
          v421 = *(v102 + 352);
          v422 = *(v102 + 368);
          v423 = *(v102 + 384);
          *(v101 + 400) = *(v102 + 400);
          *(v101 + 368) = v422;
          *(v101 + 384) = v423;
          *(v101 + 352) = v421;
        }

        else
        {
          v652 = a3;
          v429 = *(v102 + 312);
          v430 = *(v102 + 320);
          v431 = *(v102 + 328);
          v432 = *(v102 + 344);
          v433 = *(v102 + 352);
          v434 = *(v102 + 360);
          __dstd = *(v102 + 368);
          v624 = *(v102 + 376);
          v630 = *(v102 + 384);
          v636 = *(v102 + 392);
          v641 = *(v102 + 400);
          v435 = *(v102 + 304);
          outlined copy of PlatformItemList.Item.SystemItem(v435, v429, v430, v431, v417, v432, v433, v434, __dstd, v624, v630, v636, v641);
          *(v101 + 304) = v435;
          *(v101 + 312) = v429;
          v103 = v649;
          a3 = v652;
          *(v101 + 320) = v430;
          *(v101 + 328) = v431;
          *(v101 + 336) = v417;
          *(v101 + 344) = v432;
          *(v101 + 352) = v433;
          *(v101 + 360) = v434;
          *(v101 + 368) = __dstd;
          *(v101 + 376) = v624;
          *(v101 + 384) = v630;
          *(v101 + 392) = v636;
          *(v101 + 400) = v641;
        }
      }

      else if (v418 == 0x3FFFFFFFCLL)
      {
        outlined destroy of PlatformItemList.Item.SystemItem(v101 + 304);
        v425 = *(v102 + 320);
        v424 = *(v102 + 336);
        *(v101 + 304) = *(v102 + 304);
        *(v101 + 320) = v425;
        *(v101 + 336) = v424;
        v427 = *(v102 + 368);
        v426 = *(v102 + 384);
        v428 = *(v102 + 352);
        *(v101 + 400) = *(v102 + 400);
        *(v101 + 368) = v427;
        *(v101 + 384) = v426;
        *(v101 + 352) = v428;
      }

      else
      {
        v436 = a3;
        v437 = *(v102 + 304);
        v438 = *(v102 + 312);
        v439 = *(v102 + 320);
        v440 = *(v102 + 328);
        __dste = *(v102 + 352);
        v625 = *(v102 + 344);
        v441 = *(v102 + 368);
        v614 = *(v102 + 360);
        v442 = *(v102 + 376);
        v631 = *(v102 + 384);
        v637 = *(v102 + 392);
        v642 = *(v102 + 400);
        outlined copy of PlatformItemList.Item.SystemItem(v437, v438, v439, v440, v417, v625, __dste, v614, v441, v442, v631, v637, v642);
        v443 = *(v101 + 304);
        v444 = *(v101 + 312);
        v445 = *(v101 + 320);
        v446 = *(v101 + 328);
        v447 = *(v101 + 336);
        v448 = *(v101 + 344);
        v449 = *(v101 + 352);
        v450 = *(v101 + 360);
        v451 = *(v101 + 368);
        v452 = *(v101 + 384);
        v453 = *(v101 + 400);
        *(v101 + 304) = v437;
        *(v101 + 312) = v438;
        a3 = v436;
        v103 = v649;
        *(v101 + 320) = v439;
        *(v101 + 328) = v440;
        *(v101 + 336) = v417;
        *(v101 + 344) = v625;
        *(v101 + 352) = __dste;
        *(v101 + 360) = v614;
        *(v101 + 368) = v441;
        *(v101 + 376) = v442;
        *(v101 + 384) = v631;
        *(v101 + 392) = v637;
        *(v101 + 400) = v642;
        outlined consume of PlatformItemList.Item.SystemItem(v443, v444, v445, v446, v447, v448, v449, v450, v451, *(&v451 + 1), v452, SBYTE8(v452), v453);
      }

      v454 = (v101 + 408);
      v455 = (v102 + 408);
      v456 = *(v101 + 416);
      v457 = *(v102 + 416);
      if (v456 == 1)
      {
        if (v457 == 1)
        {
          *v454 = *v455;
          v458 = *(v102 + 424);
          v459 = *(v102 + 440);
          v460 = *(v102 + 456);
          *(v101 + 472) = *(v102 + 472);
          *(v101 + 440) = v459;
          *(v101 + 456) = v460;
          *(v101 + 424) = v458;
          goto LABEL_286;
        }

        *(v101 + 408) = *(v102 + 408);
        *(v101 + 409) = *(v102 + 409);
        *(v101 + 410) = *(v102 + 410);
        *(v101 + 411) = *(v102 + 411);
        *(v101 + 412) = *(v102 + 412);
        v464 = *(v102 + 416);
        if (v464)
        {
          v465 = *(v102 + 424);
          *(v101 + 416) = v464;
          *(v101 + 424) = v465;
        }

        else
        {
          *(v101 + 416) = *(v102 + 416);
        }

        v468 = *(v102 + 432);
        if (v468)
        {
          v469 = *(v102 + 440);
          *(v101 + 432) = v468;
          *(v101 + 440) = v469;
        }

        else
        {
          *(v101 + 432) = *(v102 + 432);
        }

        v471 = *(v102 + 448);
        if (!v471)
        {
          goto LABEL_284;
        }

        goto LABEL_282;
      }

      if (v457 == 1)
      {
        outlined destroy of PlatformItemList.Item.SelectionBehavior(v101 + 408);
        *v454 = *v455;
        v462 = *(v102 + 440);
        v461 = *(v102 + 456);
        v463 = *(v102 + 424);
        *(v101 + 472) = *(v102 + 472);
        *(v101 + 440) = v462;
        *(v101 + 456) = v461;
        *(v101 + 424) = v463;
        goto LABEL_286;
      }

      *(v101 + 408) = *v455;
      *(v101 + 409) = *(v102 + 409);
      *(v101 + 410) = *(v102 + 410);
      *(v101 + 411) = *(v102 + 411);
      *(v101 + 412) = *(v102 + 412);
      v466 = *(v102 + 416);
      if (v456)
      {
        if (v466)
        {
          v467 = *(v102 + 424);
          *(v101 + 416) = v466;
          *(v101 + 424) = v467;

          goto LABEL_271;
        }
      }

      else if (v466)
      {
        v470 = *(v102 + 424);
        *(v101 + 416) = v466;
        *(v101 + 424) = v470;

        goto LABEL_271;
      }

      *(v101 + 416) = *(v102 + 416);
LABEL_271:
      v472 = *(v102 + 432);
      if (*(v101 + 432))
      {
        if (v472)
        {
          v473 = *(v102 + 440);
          *(v101 + 432) = v472;
          *(v101 + 440) = v473;

          goto LABEL_278;
        }
      }

      else if (v472)
      {
        v474 = *(v102 + 440);
        *(v101 + 432) = v472;
        *(v101 + 440) = v474;

        goto LABEL_278;
      }

      *(v101 + 432) = *(v102 + 432);
LABEL_278:
      v471 = *(v102 + 448);
      if (*(v101 + 448))
      {
        if (v471)
        {
          v475 = *(v102 + 456);
          *(v101 + 448) = v471;
          *(v101 + 456) = v475;

LABEL_285:
          *(v101 + 464) = *(v102 + 464);
          *(v101 + 472) = *(v102 + 472);
LABEL_286:
          *(v101 + 480) = *(v102 + 480);
          *(v101 + 488) = *(v102 + 488);

          *(v101 + 496) = *(v102 + 496);
          *(v101 + 504) = *(v102 + 504);
          v477 = *(v102 + 512);
          if (*(v101 + 512))
          {
            if (v477)
            {
              v478 = *(v102 + 520);
              *(v101 + 512) = v477;
              *(v101 + 520) = v478;

              goto LABEL_293;
            }
          }

          else if (v477)
          {
            v479 = *(v102 + 520);
            *(v101 + 512) = v477;
            *(v101 + 520) = v479;

            goto LABEL_293;
          }

          *(v101 + 512) = *(v102 + 512);
LABEL_293:
          *(v101 + 528) = *(v102 + 528);
          v480 = *(v102 + 816);
          if (*(v101 + 816))
          {
            if (v480)
            {
              *(v101 + 536) = *(v102 + 536);
              *(v101 + 544) = *(v102 + 544);

              *(v101 + 552) = *(v102 + 552);
              *(v101 + 560) = *(v102 + 560);

              *(v101 + 568) = *(v102 + 568);
              v481 = *(v102 + 576);
              *(v101 + 592) = *(v102 + 592);
              *(v101 + 576) = v481;
              v482 = (v101 + 600);
              v483 = (v102 + 600);
              v484 = *(v101 + 624);
              v485 = *(v102 + 624);
              if (v484 != 1)
              {
                if (v485 == 1)
                {
                  outlined destroy of AccessibilityValueStorage(v101 + 600);
                  v496 = *(v102 + 616);
                  v495 = *(v102 + 632);
                  *v482 = *v483;
                  *(v101 + 616) = v496;
                  *(v101 + 632) = v495;
                }

                else
                {
                  if (v484)
                  {
                    if (v485)
                    {
                      __swift_assign_boxed_opaque_existential_1((v101 + 600), (v102 + 600));
                    }

                    else
                    {
                      outlined destroy of AnyAccessibilityValue(v101 + 600);
                      v514 = *(v102 + 632);
                      v515 = *(v102 + 616);
                      *v482 = *v483;
                      *(v101 + 616) = v515;
                      *(v101 + 632) = v514;
                    }
                  }

                  else if (v485)
                  {
                    *(v101 + 624) = v485;
                    *(v101 + 632) = *(v102 + 632);
                    (**(v485 - 8))(v101 + 600, v102 + 600);
                  }

                  else
                  {
                    v516 = *v483;
                    v517 = *(v102 + 616);
                    *(v101 + 632) = *(v102 + 632);
                    *v482 = v516;
                    *(v101 + 616) = v517;
                  }

                  *(v101 + 640) = *(v102 + 640);
                }

                goto LABEL_325;
              }

              if (v485)
              {
                if (v485 == 1)
                {
                  v486 = *v483;
                  v487 = *(v102 + 632);
                  *(v101 + 616) = *(v102 + 616);
                  *(v101 + 632) = v487;
                  *v482 = v486;
LABEL_325:
                  v518 = *(v102 + 648);
                  *(v101 + 656) = *(v102 + 656);
                  *(v101 + 648) = v518;
                  v519 = (v101 + 664);
                  v520 = (v102 + 664);
                  v521 = *(v102 + 776);
                  if (*(v101 + 776) == 1)
                  {
                    if (v521 == 1)
                    {
                      v522 = *(v102 + 680);
                      *v519 = *v520;
                      *(v101 + 680) = v522;
                      v523 = *(v102 + 696);
                      v524 = *(v102 + 712);
                      v525 = *(v102 + 744);
                      *(v101 + 728) = *(v102 + 728);
                      *(v101 + 744) = v525;
                      *(v101 + 696) = v523;
                      *(v101 + 712) = v524;
                      v526 = *(v102 + 760);
                      v527 = *(v102 + 776);
                      v528 = *(v102 + 792);
                      *(v101 + 808) = *(v102 + 808);
                      *(v101 + 776) = v527;
                      *(v101 + 792) = v528;
                      *(v101 + 760) = v526;
                    }

                    else
                    {
                      v536 = *v520;
                      *(v101 + 672) = *(v102 + 672);
                      *v519 = v536;
                      v537 = *(v102 + 680);
                      *(v101 + 688) = *(v102 + 688);
                      *(v101 + 680) = v537;
                      *(v101 + 689) = *(v102 + 689);
                      *(v101 + 690) = *(v102 + 690);
                      *(v101 + 691) = *(v102 + 691);
                      *(v101 + 692) = *(v102 + 692);
                      *(v101 + 696) = *(v102 + 696);
                      *(v101 + 704) = *(v102 + 704);
                      *(v101 + 712) = *(v102 + 712);
                      *(v101 + 720) = *(v102 + 720);
                      *(v101 + 728) = *(v102 + 728);
                      *(v101 + 736) = *(v102 + 736);
                      *(v101 + 744) = *(v102 + 744);
                      *(v101 + 745) = *(v102 + 745);
                      *(v101 + 752) = *(v102 + 752);
                      *(v101 + 760) = *(v102 + 760);
                      *(v101 + 768) = *(v102 + 768);
                      *(v101 + 776) = *(v102 + 776);
                      v538 = *(v102 + 784);
                      *(v101 + 800) = *(v102 + 800);
                      *(v101 + 784) = v538;
                      *(v101 + 808) = *(v102 + 808);
                    }
                  }

                  else if (v521 == 1)
                  {
                    outlined destroy of AccessibilityTextLayoutProperties(v101 + 664);
                    v529 = *(v102 + 680);
                    *v519 = *v520;
                    *(v101 + 680) = v529;
                    v530 = *(v102 + 744);
                    v532 = *(v102 + 696);
                    v531 = *(v102 + 712);
                    *(v101 + 728) = *(v102 + 728);
                    *(v101 + 744) = v530;
                    *(v101 + 696) = v532;
                    *(v101 + 712) = v531;
                    v534 = *(v102 + 776);
                    v533 = *(v102 + 792);
                    v535 = *(v102 + 760);
                    *(v101 + 808) = *(v102 + 808);
                    *(v101 + 776) = v534;
                    *(v101 + 792) = v533;
                    *(v101 + 760) = v535;
                  }

                  else
                  {
                    v539 = *v520;
                    *(v101 + 672) = *(v102 + 672);
                    *v519 = v539;
                    v540 = *(v102 + 680);
                    *(v101 + 688) = *(v102 + 688);
                    *(v101 + 680) = v540;
                    *(v101 + 689) = *(v102 + 689);
                    *(v101 + 690) = *(v102 + 690);
                    *(v101 + 691) = *(v102 + 691);
                    *(v101 + 692) = *(v102 + 692);
                    *(v101 + 696) = *(v102 + 696);
                    *(v101 + 704) = *(v102 + 704);
                    *(v101 + 712) = *(v102 + 712);
                    *(v101 + 720) = *(v102 + 720);
                    *(v101 + 728) = *(v102 + 728);
                    *(v101 + 736) = *(v102 + 736);
                    *(v101 + 744) = *(v102 + 744);
                    *(v101 + 745) = *(v102 + 745);
                    *(v101 + 752) = *(v102 + 752);
                    *(v101 + 760) = *(v102 + 760);
                    *(v101 + 768) = *(v102 + 768);
                    *(v101 + 776) = *(v102 + 776);

                    v541 = *(v102 + 784);
                    *(v101 + 800) = *(v102 + 800);
                    *(v101 + 784) = v541;
                    *(v101 + 808) = *(v102 + 808);
                  }

                  *(v101 + 816) = *(v102 + 816);

                  *(v101 + 824) = *(v102 + 824);

                  *(v101 + 832) = *(v102 + 832);

                  goto LABEL_333;
                }

                *(v101 + 624) = v485;
                *(v101 + 632) = *(v102 + 632);
                (**(v485 - 8))(v101 + 600, v102 + 600);
              }

              else
              {
                v512 = *v483;
                v513 = *(v102 + 616);
                *(v101 + 632) = *(v102 + 632);
                *v482 = v512;
                *(v101 + 616) = v513;
              }

              *(v101 + 640) = *(v102 + 640);

              goto LABEL_325;
            }

            outlined destroy of PlatformItemList.Item.Accessibility(v101 + 536);
LABEL_304:
            memcpy((v101 + 536), (v102 + 536), 0x130uLL);
            goto LABEL_333;
          }

          if (!v480)
          {
            goto LABEL_304;
          }

          v488 = a3;
          *(v101 + 536) = *(v102 + 536);
          *(v101 + 544) = *(v102 + 544);
          *(v101 + 552) = *(v102 + 552);
          *(v101 + 560) = *(v102 + 560);
          *(v101 + 568) = *(v102 + 568);
          v489 = *(v102 + 576);
          *(v101 + 592) = *(v102 + 592);
          *(v101 + 576) = v489;
          v490 = (v101 + 600);
          v491 = (v102 + 600);
          v492 = *(v102 + 624);

          if (v492)
          {
            if (v492 == 1)
            {
              v493 = *v491;
              v494 = *(v102 + 632);
              *(v101 + 616) = *(v102 + 616);
              *(v101 + 632) = v494;
              *v490 = v493;
LABEL_313:
              a3 = v488;
              v499 = *(v102 + 648);
              *(v101 + 656) = *(v102 + 656);
              *(v101 + 648) = v499;
              v500 = (v101 + 664);
              v501 = (v102 + 664);
              if (*(v102 + 776) == 1)
              {
                v502 = *(v102 + 680);
                *v500 = *v501;
                *(v101 + 680) = v502;
                v503 = *(v102 + 696);
                v504 = *(v102 + 712);
                v505 = *(v102 + 744);
                *(v101 + 728) = *(v102 + 728);
                *(v101 + 744) = v505;
                *(v101 + 696) = v503;
                *(v101 + 712) = v504;
                v506 = *(v102 + 760);
                v507 = *(v102 + 776);
                v508 = *(v102 + 792);
                *(v101 + 808) = *(v102 + 808);
                *(v101 + 776) = v507;
                *(v101 + 792) = v508;
                *(v101 + 760) = v506;
              }

              else
              {
                v509 = *v501;
                *(v101 + 672) = *(v102 + 672);
                *v500 = v509;
                v510 = *(v102 + 680);
                *(v101 + 688) = *(v102 + 688);
                *(v101 + 680) = v510;
                *(v101 + 689) = *(v102 + 689);
                *(v101 + 690) = *(v102 + 690);
                *(v101 + 691) = *(v102 + 691);
                *(v101 + 692) = *(v102 + 692);
                *(v101 + 696) = *(v102 + 696);
                *(v101 + 704) = *(v102 + 704);
                *(v101 + 712) = *(v102 + 712);
                *(v101 + 720) = *(v102 + 720);
                *(v101 + 728) = *(v102 + 728);
                *(v101 + 736) = *(v102 + 736);
                *(v101 + 744) = *(v102 + 744);
                *(v101 + 745) = *(v102 + 745);
                *(v101 + 752) = *(v102 + 752);
                *(v101 + 760) = *(v102 + 760);
                *(v101 + 768) = *(v102 + 768);
                *(v101 + 776) = *(v102 + 776);
                v511 = *(v102 + 784);
                *(v101 + 800) = *(v102 + 800);
                *(v101 + 784) = v511;
                *(v101 + 808) = *(v102 + 808);
              }

              *(v101 + 816) = *(v102 + 816);
              *(v101 + 824) = *(v102 + 824);
              *(v101 + 832) = *(v102 + 832);

LABEL_333:
              v542 = (v101 + 840);
              v543 = (v102 + 840);
              v544 = *(v101 + 864);
              v545 = *(v102 + 864);
              if (v544 == 1)
              {
                if (v545)
                {
                  if (v545 == 1)
                  {
                    v546 = *v543;
                    v547 = *(v102 + 856);
                    v548 = *(v102 + 872);
                    *(v101 + 888) = *(v102 + 888);
                    *(v101 + 856) = v547;
                    *(v101 + 872) = v548;
                    *v542 = v546;
                    goto LABEL_357;
                  }

                  *(v101 + 864) = v545;
                  *(v101 + 872) = *(v102 + 872);
                  (**(v545 - 8))(v101 + 840, v102 + 840);
                }

                else
                {
                  v552 = *v543;
                  v553 = *(v102 + 856);
                  *(v101 + 872) = *(v102 + 872);
                  *v542 = v552;
                  *(v101 + 856) = v553;
                }

                v554 = *(v102 + 880);
                if (!v554)
                {
                  goto LABEL_356;
                }
              }

              else
              {
                if (v545 == 1)
                {
                  outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(v101 + 840);
                  v550 = *(v102 + 856);
                  v549 = *(v102 + 872);
                  v551 = *v543;
                  *(v101 + 888) = *(v102 + 888);
                  *(v101 + 856) = v550;
                  *(v101 + 872) = v549;
                  *v542 = v551;
                  goto LABEL_357;
                }

                if (v544)
                {
                  if (v545)
                  {
                    __swift_assign_boxed_opaque_existential_1((v101 + 840), (v102 + 840));
                  }

                  else
                  {
                    outlined destroy of AnyNavigationLinkPresentedValue(v101 + 840);
                    v555 = *(v102 + 872);
                    v556 = *(v102 + 856);
                    *v542 = *v543;
                    *(v101 + 856) = v556;
                    *(v101 + 872) = v555;
                  }
                }

                else if (v545)
                {
                  *(v101 + 864) = v545;
                  *(v101 + 872) = *(v102 + 872);
                  (**(v545 - 8))(v101 + 840, v102 + 840);
                }

                else
                {
                  v557 = *v543;
                  v558 = *(v102 + 856);
                  *(v101 + 872) = *(v102 + 872);
                  *v542 = v557;
                  *(v101 + 856) = v558;
                }

                v554 = *(v102 + 880);
                if (*(v101 + 880))
                {
                  if (v554)
                  {
                    v559 = *(v102 + 888);
                    *(v101 + 880) = v554;
                    *(v101 + 888) = v559;

                    goto LABEL_357;
                  }

                  goto LABEL_356;
                }

                if (!v554)
                {
LABEL_356:
                  *(v101 + 880) = *(v102 + 880);
LABEL_357:
                  v561 = *(v101 + 896);
                  v562 = *(v102 + 896);
                  *(v101 + 896) = v562;
                  v563 = v562;

                  *(v101 + 904) = *(v102 + 904);
                  *(v101 + 912) = *(v102 + 912);

                  *(v101 + 920) = *(v102 + 920);
                  *(v101 + 928) = *(v102 + 928);

                  *(v101 + 936) = *(v102 + 936);

                  *(v101 + 944) = *(v102 + 944);

                  *(v101 + 952) = *(v102 + 952);
                  *(v101 + 953) = *(v102 + 953);
                  *(v101 + 954) = *(v102 + 954);
                  v564 = *(v103 + 112);
                  v565 = (v101 + v564);
                  v566 = (v102 + v564);
                  v567 = type metadata accessor for CommandOperation();
                  v643 = *(v567 - 8);
                  v568 = *(v643 + 48);
                  v569 = v568(v565, 1, v567);
                  v570 = v566;
                  v571 = v568(v566, 1, v567);
                  if (v569)
                  {
                    v4 = v656;
                    if (!v571)
                    {
                      v653 = a3;
                      *v565 = *v566;
                      v572 = *(v567 + 20);
                      v573 = &v565[v572];
                      v574 = v565;
                      v575 = &v570[v572];
                      v576 = *&v570[v572];
                      v577 = *&v570[v572 + 8];
                      v578 = v570[v572 + 16];
                      outlined copy of Text.Storage(v576, v577, v578);
                      *v573 = v576;
                      *(v573 + 1) = v577;
                      v573[16] = v578;
                      *(v573 + 3) = *(v575 + 3);
                      v579 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v580 = type metadata accessor for UUID();
                      v638 = *(*(v580 - 8) + 16);

                      (v638)(&v573[v579], &v575[v579], v580);
                      v581 = *(v567 + 24);
                      v582 = &v574[v581];
                      v583 = &v570[v581];
                      if (*v583)
                      {
                        v584 = v583[1];
                        *v582 = *v583;
                        v582[1] = v584;
                      }

                      else
                      {
                        *v582 = *v583;
                      }

                      a3 = v653;
                      v4 = v656;
                      (*(v643 + 56))(v574, 0, 1, v567);
                      goto LABEL_369;
                    }
                  }

                  else
                  {
                    v4 = v656;
                    if (!v571)
                    {
                      v626 = v566;
                      *v565 = *v566;
                      v586 = *(v567 + 20);
                      v587 = &v565[v586];
                      v588 = &v566[v586];
                      v589 = *&v566[v586];
                      v590 = *&v566[v586 + 8];
                      v591 = v566[v586 + 16];
                      outlined copy of Text.Storage(*v588, *(v588 + 1), v588[16]);
                      v592 = *v587;
                      v593 = *(v587 + 1);
                      v594 = v587[16];
                      *v587 = v589;
                      *(v587 + 1) = v590;
                      v587[16] = v591;
                      outlined consume of Text.Storage(v592, v593, v594);
                      *(v587 + 3) = *(v588 + 3);

                      v595 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                      v596 = type metadata accessor for UUID();
                      (*(*(v596 - 8) + 24))(&v587[v595], &v588[v595], v596);
                      v597 = *(v567 + 24);
                      v598 = &v565[v597];
                      v599 = &v626[v597];
                      v600 = *&v565[v597];
                      v601 = *&v626[v597];
                      if (v600)
                      {
                        v5 = v646;
                        v4 = v656;
                        if (v601)
                        {
                          v602 = *(v599 + 1);
                          *v598 = v601;
                          v598[1] = v602;

LABEL_370:
                          *(v101 + v649[29]) = *(v102 + v649[29]);
                          *(v101 + v649[30]) = *(v102 + v649[30]);
                          *(v101 + v649[31]) = *(v102 + v649[31]);
                          *(v101 + v649[32]) = *(v102 + v649[32]);
                          *(v101 + v649[33]) = *(v102 + v649[33]);
                          *(v101 + v649[34]) = *(v102 + v649[34]);

                          goto LABEL_130;
                        }
                      }

                      else
                      {
                        v5 = v646;
                        v4 = v656;
                        if (v601)
                        {
                          v603 = *(v599 + 1);
                          *v598 = v601;
                          v598[1] = v603;

                          goto LABEL_370;
                        }
                      }

                      *v598 = *v599;
                      goto LABEL_370;
                    }

                    outlined destroy of CommandOperation(v565, type metadata accessor for CommandOperation);
                  }

                  type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
                  memcpy(v565, v566, *(*(v585 - 8) + 64));
LABEL_369:
                  v5 = v646;
                  goto LABEL_370;
                }
              }

              v560 = *(v102 + 888);
              *(v101 + 880) = v554;
              *(v101 + 888) = v560;

              goto LABEL_357;
            }

            *(v101 + 624) = v492;
            *(v101 + 632) = *(v102 + 632);
            (**(v492 - 8))(v101 + 600, v102 + 600, v492);
          }

          else
          {
            v497 = *v491;
            v498 = *(v102 + 616);
            *(v101 + 632) = *(v102 + 632);
            *v490 = v497;
            *(v101 + 616) = v498;
          }

          *(v101 + 640) = *(v102 + 640);

          goto LABEL_313;
        }
      }

      else if (v471)
      {
LABEL_282:
        v476 = *(v102 + 456);
        *(v101 + 448) = v471;
        *(v101 + 456) = v476;

        goto LABEL_285;
      }

LABEL_284:
      *(v101 + 448) = *(v102 + 448);
      goto LABEL_285;
    }

    if (!v404)
    {
      outlined destroy of Image.NamedResolved(v101 + 256);
      v412 = *(v102 + 272);
      v411 = *(v102 + 288);
      *(v101 + 256) = *(v102 + 256);
      *(v101 + 272) = v412;
      *(v101 + 288) = v411;
      goto LABEL_244;
    }

    *(v101 + 256) = *(v102 + 256);
    *(v101 + 264) = *(v102 + 264);

    v405 = *(v101 + 272);
    v406 = *(v102 + 272);
    if (v405 >= 2)
    {
      if (v406 >= 2)
      {
        *(v101 + 272) = v406;
        v415 = v406;

        goto LABEL_243;
      }

      v406 = *(v102 + 272);
    }

    else if (v406 >= 2)
    {
      *(v101 + 272) = v406;
      v407 = v406;
LABEL_243:
      v416 = *(v102 + 280);
      *(v101 + 284) = *(v102 + 284);
      *(v101 + 280) = v416;
      *(v101 + 285) = *(v102 + 285);
      *(v101 + 286) = *(v102 + 286);
      *(v101 + 288) = *(v102 + 288);

      *(v101 + 296) = *(v102 + 296);

      goto LABEL_244;
    }

    *(v101 + 272) = v406;
    goto LABEL_243;
  }

  if (v107)
  {
LABEL_73:
    type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item);
    v45 = *(*(v122 - 8) + 64);
    v46 = v101;
    v47 = v102;
    goto LABEL_35;
  }

  v640 = v104;
  v108 = *v102;
  *v101 = *v102;
  v109 = *(v102 + 8);
  *(v101 + 8) = v109;
  *(v101 + 16) = *(v102 + 16);
  *(v101 + 24) = *(v102 + 24);
  *(v101 + 32) = *(v102 + 32);
  *(v101 + 40) = *(v102 + 40);
  *(v101 + 48) = *(v102 + 48);
  *(v101 + 56) = *(v102 + 56);
  v110 = *(v102 + 192);
  v111 = v108;
  v112 = v109;

  if (v110 >> 1 == 4294967294)
  {
    v113 = *(v102 + 64);
    v114 = *(v102 + 80);
    v115 = *(v102 + 112);
    *(v101 + 96) = *(v102 + 96);
    *(v101 + 112) = v115;
    *(v101 + 64) = v113;
    *(v101 + 80) = v114;
    v116 = *(v102 + 128);
    v117 = *(v102 + 144);
    v118 = *(v102 + 176);
    *(v101 + 160) = *(v102 + 160);
    *(v101 + 176) = v118;
    *(v101 + 128) = v116;
    *(v101 + 144) = v117;
    v119 = *(v102 + 192);
    v120 = *(v102 + 208);
    v121 = *(v102 + 224);
    *(v101 + 235) = *(v102 + 235);
    *(v101 + 208) = v120;
    *(v101 + 224) = v121;
    *(v101 + 192) = v119;
  }

  else
  {
    v178 = *(v102 + 72);
    if (v178 == 255)
    {
      v258 = *(v102 + 64);
      *(v101 + 72) = *(v102 + 72);
      *(v101 + 64) = v258;
    }

    else
    {
      v179 = *(v102 + 64);
      outlined copy of GraphicsImage.Contents(v179, *(v102 + 72));
      *(v101 + 64) = v179;
      *(v101 + 72) = v178;
    }

    *(v101 + 80) = *(v102 + 80);
    *(v101 + 88) = *(v102 + 88);
    *(v101 + 104) = *(v102 + 104);
    v259 = *(v102 + 108);
    *(v101 + 121) = *(v102 + 121);
    *(v101 + 108) = v259;
    v260 = *(v102 + 136);
    v261 = *(v102 + 152);
    *(v101 + 168) = *(v102 + 168);
    *(v101 + 152) = v261;
    *(v101 + 136) = v260;
    *(v101 + 169) = *(v102 + 169);
    *(v101 + 170) = *(v102 + 170);
    *(v101 + 171) = *(v102 + 171);
    v262 = *(v102 + 192);
    if (v262 >> 1 == 0xFFFFFFFF)
    {
      v263 = *(v102 + 192);
      *(v101 + 176) = *(v102 + 176);
      *(v101 + 192) = v263;
    }

    else
    {
      v264 = *(v102 + 176);
      v265 = *(v102 + 184);
      v266 = v103;
      v267 = a3;
      v268 = *(v102 + 200);
      outlined copy of AccessibilityImageLabel(v264, v265, *(v102 + 192));
      *(v101 + 176) = v264;
      *(v101 + 184) = v265;
      *(v101 + 192) = v262;
      *(v101 + 200) = v268;
      a3 = v267;
      v103 = v266;
    }

    *(v101 + 208) = *(v102 + 208);
    *(v101 + 216) = *(v102 + 216);
    *(v101 + 224) = *(v102 + 224);
    *(v101 + 225) = *(v102 + 225);
    v269 = *(v102 + 228);
    *(v101 + 232) = *(v102 + 232);
    *(v101 + 228) = v269;
    v270 = *(v102 + 240);
    *(v101 + 240) = v270;
    *(v101 + 248) = *(v102 + 248);
    *(v101 + 250) = *(v102 + 250);
    swift_unknownObjectRetain();

    v271 = v270;
  }

  if (*(v102 + 264))
  {
    *(v101 + 256) = *(v102 + 256);
    *(v101 + 264) = *(v102 + 264);
    v272 = *(v102 + 272);

    if (v272 >= 2)
    {
      v273 = v272;
    }

    *(v101 + 272) = v272;
    v274 = *(v102 + 280);
    *(v101 + 284) = *(v102 + 284);
    *(v101 + 280) = v274;
    *(v101 + 285) = *(v102 + 285);
    *(v101 + 286) = *(v102 + 286);
    *(v101 + 288) = *(v102 + 288);
    *(v101 + 296) = *(v102 + 296);
  }

  else
  {
    v275 = *(v102 + 256);
    v276 = *(v102 + 288);
    *(v101 + 272) = *(v102 + 272);
    *(v101 + 288) = v276;
    *(v101 + 256) = v275;
  }

  v648 = v103;
  v277 = *(v102 + 336);
  v645 = v5;
  v651 = a3;
  v655 = v4;
  if (v277 >> 2 == 0xFFFFFFFF)
  {
    v278 = *(v102 + 304);
    v279 = *(v102 + 336);
    *(v101 + 320) = *(v102 + 320);
    *(v101 + 336) = v279;
    *(v101 + 304) = v278;
    v280 = *(v102 + 352);
    v281 = *(v102 + 368);
    v282 = *(v102 + 384);
    *(v101 + 400) = *(v102 + 400);
    *(v101 + 368) = v281;
    *(v101 + 384) = v282;
    *(v101 + 352) = v280;
  }

  else
  {
    v283 = *(v102 + 304);
    v284 = *(v102 + 312);
    v285 = *(v102 + 320);
    v286 = *(v102 + 328);
    v288 = *(v102 + 344);
    v287 = *(v102 + 352);
    v289 = *(v102 + 360);
    v612 = *(v102 + 368);
    __dstb = *(v102 + 376);
    v622 = *(v102 + 384);
    v628 = *(v102 + 392);
    v634 = *(v102 + 400);
    outlined copy of PlatformItemList.Item.SystemItem(v283, v284, v285, v286, v277, v288, v287, v289, v612, __dstb, v622, v628, v634);
    *(v101 + 304) = v283;
    *(v101 + 312) = v284;
    *(v101 + 320) = v285;
    *(v101 + 328) = v286;
    *(v101 + 336) = v277;
    *(v101 + 344) = v288;
    *(v101 + 352) = v287;
    *(v101 + 360) = v289;
    *(v101 + 368) = v612;
    *(v101 + 376) = __dstb;
    *(v101 + 384) = v622;
    *(v101 + 392) = v628;
    *(v101 + 400) = v634;
  }

  if (*(v102 + 416) == 1)
  {
    *(v101 + 408) = *(v102 + 408);
    v290 = *(v102 + 424);
    v291 = *(v102 + 440);
    v292 = *(v102 + 456);
    *(v101 + 472) = *(v102 + 472);
    *(v101 + 440) = v291;
    *(v101 + 456) = v292;
    *(v101 + 424) = v290;
  }

  else
  {
    *(v101 + 408) = *(v102 + 408);
    *(v101 + 409) = *(v102 + 409);
    *(v101 + 410) = *(v102 + 410);
    *(v101 + 411) = *(v102 + 411);
    *(v101 + 412) = *(v102 + 412);
    v293 = *(v102 + 416);
    if (v293)
    {
      v294 = *(v102 + 424);
      *(v101 + 416) = v293;
      *(v101 + 424) = v294;
    }

    else
    {
      *(v101 + 416) = *(v102 + 416);
    }

    v295 = *(v102 + 432);
    if (v295)
    {
      v296 = *(v102 + 440);
      *(v101 + 432) = v295;
      *(v101 + 440) = v296;
    }

    else
    {
      *(v101 + 432) = *(v102 + 432);
    }

    v297 = *(v102 + 448);
    if (v297)
    {
      v298 = *(v102 + 456);
      *(v101 + 448) = v297;
      *(v101 + 456) = v298;
    }

    else
    {
      *(v101 + 448) = *(v102 + 448);
    }

    *(v101 + 464) = *(v102 + 464);
    *(v101 + 472) = *(v102 + 472);
  }

  *(v101 + 480) = *(v102 + 480);
  *(v101 + 488) = *(v102 + 488);
  *(v101 + 496) = *(v102 + 496);
  *(v101 + 504) = *(v102 + 504);
  v299 = *(v102 + 512);

  if (v299)
  {
    v300 = *(v102 + 520);
    *(v101 + 512) = v299;
    *(v101 + 520) = v300;
  }

  else
  {
    *(v101 + 512) = *(v102 + 512);
  }

  *(v101 + 528) = *(v102 + 528);
  if (!*(v102 + 816))
  {
    memcpy((v101 + 536), (v102 + 536), 0x130uLL);
    goto LABEL_191;
  }

  *(v101 + 536) = *(v102 + 536);
  *(v101 + 544) = *(v102 + 544);
  *(v101 + 552) = *(v102 + 552);
  *(v101 + 560) = *(v102 + 560);
  *(v101 + 568) = *(v102 + 568);
  v301 = *(v102 + 576);
  *(v101 + 592) = *(v102 + 592);
  *(v101 + 576) = v301;
  v302 = (v101 + 600);
  v303 = (v102 + 600);
  v304 = *(v102 + 624);

  if (!v304)
  {
    v307 = *v303;
    v308 = *(v102 + 616);
    *(v101 + 632) = *(v102 + 632);
    *v302 = v307;
    *(v101 + 616) = v308;
LABEL_186:
    *(v101 + 640) = *(v102 + 640);

    goto LABEL_187;
  }

  if (v304 != 1)
  {
    *(v101 + 624) = v304;
    *(v101 + 632) = *(v102 + 632);
    (**(v304 - 8))(v101 + 600, v102 + 600, v304);
    goto LABEL_186;
  }

  v305 = *v303;
  v306 = *(v102 + 632);
  *(v101 + 616) = *(v102 + 616);
  *(v101 + 632) = v306;
  *v302 = v305;
LABEL_187:
  v309 = *(v102 + 648);
  *(v101 + 656) = *(v102 + 656);
  *(v101 + 648) = v309;
  v310 = (v101 + 664);
  v311 = (v102 + 664);
  if (*(v102 + 776) == 1)
  {
    v312 = *(v102 + 680);
    *v310 = *v311;
    *(v101 + 680) = v312;
    v313 = *(v102 + 696);
    v314 = *(v102 + 712);
    v315 = *(v102 + 744);
    *(v101 + 728) = *(v102 + 728);
    *(v101 + 744) = v315;
    *(v101 + 696) = v313;
    *(v101 + 712) = v314;
    v316 = *(v102 + 760);
    v317 = *(v102 + 776);
    v318 = *(v102 + 792);
    *(v101 + 808) = *(v102 + 808);
    *(v101 + 776) = v317;
    *(v101 + 792) = v318;
    *(v101 + 760) = v316;
  }

  else
  {
    v319 = *v311;
    *(v101 + 672) = *(v102 + 672);
    *v310 = v319;
    v320 = *(v102 + 680);
    *(v101 + 688) = *(v102 + 688);
    *(v101 + 680) = v320;
    *(v101 + 689) = *(v102 + 689);
    *(v101 + 690) = *(v102 + 690);
    *(v101 + 691) = *(v102 + 691);
    *(v101 + 692) = *(v102 + 692);
    *(v101 + 696) = *(v102 + 696);
    *(v101 + 704) = *(v102 + 704);
    *(v101 + 712) = *(v102 + 712);
    *(v101 + 720) = *(v102 + 720);
    *(v101 + 728) = *(v102 + 728);
    *(v101 + 736) = *(v102 + 736);
    *(v101 + 744) = *(v102 + 744);
    *(v101 + 745) = *(v102 + 745);
    *(v101 + 752) = *(v102 + 752);
    *(v101 + 760) = *(v102 + 760);
    *(v101 + 768) = *(v102 + 768);
    *(v101 + 776) = *(v102 + 776);
    v321 = *(v102 + 784);
    *(v101 + 800) = *(v102 + 800);
    *(v101 + 784) = v321;
    *(v101 + 808) = *(v102 + 808);
  }

  *(v101 + 816) = *(v102 + 816);
  *(v101 + 824) = *(v102 + 824);
  *(v101 + 832) = *(v102 + 832);

LABEL_191:
  v322 = (v101 + 840);
  v323 = (v102 + 840);
  v324 = *(v102 + 864);
  if (!v324)
  {
    v328 = *v323;
    v329 = *(v102 + 856);
    *(v101 + 872) = *(v102 + 872);
    *v322 = v328;
    *(v101 + 856) = v329;
    goto LABEL_196;
  }

  if (v324 != 1)
  {
    *(v101 + 864) = v324;
    *(v101 + 872) = *(v102 + 872);
    (**(v324 - 8))(v322, v323);
LABEL_196:
    v330 = *(v102 + 880);
    if (v330)
    {
      v331 = *(v102 + 888);
      *(v101 + 880) = v330;
      *(v101 + 888) = v331;
    }

    else
    {
      *(v101 + 880) = *(v102 + 880);
    }

    goto LABEL_199;
  }

  v325 = *v323;
  v326 = *(v102 + 856);
  v327 = *(v102 + 872);
  *(v101 + 888) = *(v102 + 888);
  *(v101 + 856) = v326;
  *(v101 + 872) = v327;
  *v322 = v325;
LABEL_199:
  v332 = *(v102 + 896);
  *(v101 + 896) = v332;
  *(v101 + 904) = *(v102 + 904);
  *(v101 + 912) = *(v102 + 912);
  *(v101 + 920) = *(v102 + 920);
  *(v101 + 928) = *(v102 + 928);
  *(v101 + 936) = *(v102 + 936);
  *(v101 + 944) = *(v102 + 944);
  *(v101 + 952) = *(v102 + 952);
  *(v101 + 953) = *(v102 + 953);
  *(v101 + 954) = *(v102 + 954);
  v333 = v648[28];
  v635 = (v101 + v333);
  v334 = (v102 + v333);
  v335 = type metadata accessor for CommandOperation();
  v623 = *(v335 - 8);
  v629 = *(v623 + 48);
  v336 = v332;

  if (v629(v334, 1, v335))
  {
    type metadata accessor for CommandOperation?(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation);
    memcpy(v635, v334, *(*(v337 - 8) + 64));
    v338 = v640;
    v5 = v645;
    a3 = v651;
    v4 = v655;
  }

  else
  {
    *v635 = *v334;
    v613 = v335;
    __dstc = v334;
    v339 = *(v335 + 20);
    v340 = v334;
    v341 = &v635[v339];
    v342 = &v340[v339];
    v343 = *&v340[v339];
    v344 = *&v340[v339 + 8];
    v345 = v340[v339 + 16];
    outlined copy of Text.Storage(v343, v344, v345);
    *v341 = v343;
    *(v341 + 1) = v344;
    v341[16] = v345;
    *(v341 + 3) = *(v342 + 3);
    v346 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v347 = type metadata accessor for UUID();
    v348 = *(*(v347 - 8) + 16);

    v348(&v341[v346], &v342[v346], v347);
    v349 = *(v613 + 24);
    v350 = &v635[v349];
    v351 = &__dstc[v349];
    if (*v351)
    {
      v352 = *(v351 + 1);
      *v350 = *v351;
      v350[1] = v352;
    }

    else
    {
      *v350 = *v351;
    }

    v338 = v640;
    v5 = v645;
    a3 = v651;
    v4 = v655;
    (*(v623 + 56))(v635, 0, 1, v613);
  }

  *(v101 + v648[29]) = *(v102 + v648[29]);
  *(v101 + v648[30]) = *(v102 + v648[30]);
  *(v101 + v648[31]) = *(v102 + v648[31]);
  *(v101 + v648[32]) = *(v102 + v648[32]);
  *(v101 + v648[33]) = *(v102 + v648[33]);
  *(v101 + v648[34]) = *(v102 + v648[34]);
  v359 = *(v338 + 56);

  v359(v101, 0, 1, v648);
LABEL_130:
  v232 = a3[6];
  v233 = v5 + v232;
  v234 = v4 + v232;
  v235 = *(v5 + v232 + 48);
  v236 = *(v4 + v232 + 48);
  if (v235)
  {
    if (v236)
    {
      *v233 = *v234;
      *(v233 + 8) = *(v234 + 8);

      v237 = *(v234 + 24);
      if (*(v233 + 24))
      {
        if (v237)
        {
          *(v233 + 16) = *(v234 + 16);

          *(v233 + 24) = *(v234 + 24);

          *(v233 + 32) = *(v234 + 32);
        }

        else
        {
          outlined destroy of NavigationTitleStorage?(v233 + 16, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
          v245 = *(v234 + 32);
          *(v233 + 16) = *(v234 + 16);
          *(v233 + 32) = v245;
        }
      }

      else if (v237)
      {
        *(v233 + 16) = *(v234 + 16);
        *(v233 + 24) = *(v234 + 24);
        *(v233 + 32) = *(v234 + 32);
      }

      else
      {
        v247 = *(v234 + 16);
        *(v233 + 32) = *(v234 + 32);
        *(v233 + 16) = v247;
      }

      *(v233 + 40) = *(v234 + 40);
      *(v233 + 48) = *(v234 + 48);

      *(v233 + 56) = *(v234 + 56);
      *(v233 + 64) = *(v234 + 64);
    }

    else
    {
      outlined destroy of ToolbarStorage(v233);
      *v233 = *v234;
      v240 = *(v234 + 32);
      v239 = *(v234 + 48);
      v241 = *(v234 + 16);
      *(v233 + 64) = *(v234 + 64);
      *(v233 + 32) = v240;
      *(v233 + 48) = v239;
      *(v233 + 16) = v241;
    }
  }

  else if (v236)
  {
    *v233 = *v234;
    *(v233 + 8) = *(v234 + 8);
    v238 = *(v234 + 24);

    if (v238)
    {
      *(v233 + 16) = *(v234 + 16);
      *(v233 + 24) = *(v234 + 24);
      *(v233 + 32) = *(v234 + 32);
    }

    else
    {
      v246 = *(v234 + 16);
      *(v233 + 32) = *(v234 + 32);
      *(v233 + 16) = v246;
    }

    *(v233 + 40) = *(v234 + 40);
    *(v233 + 48) = *(v234 + 48);
    *(v233 + 56) = *(v234 + 56);
    *(v233 + 64) = *(v234 + 64);
  }

  else
  {
    *v233 = *v234;
    v242 = *(v234 + 16);
    v243 = *(v234 + 32);
    v244 = *(v234 + 48);
    *(v233 + 64) = *(v234 + 64);
    *(v233 + 32) = v243;
    *(v233 + 48) = v244;
    *(v233 + 16) = v242;
  }

  *(v5 + a3[7]) = *(v4 + a3[7]);
  return v5;
}