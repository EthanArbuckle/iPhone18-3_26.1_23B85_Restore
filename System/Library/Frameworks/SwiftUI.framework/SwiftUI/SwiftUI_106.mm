uint64_t assignWithCopy for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
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
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a1 + 104);
  *(a1 + 104) = v4;
  v6 = v4;

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t assignWithTake for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityLabeledContentContentModifier.Attachment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t storeEnumTagSinglePayload for AccessibilityLabeledContentContentModifier.Attachment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of AccessibilityActionCategory?(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 != 2)
  {
    return outlined consume of AccessibilityActionCategory.Category(result, a2, a3, a4);
  }

  return result;
}

uint64_t outlined consume of AccessibilityActionCategory.Category(uint64_t result, uint64_t a2, char a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for AccessibilityLabelPresentation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier);
  }

  return result;
}

uint64_t ViewTraitCollection.insertInteraction(for:)(char a1)
{
  v2 = 1;
  result = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v5)
  {
    return v2;
  }

  if (!__OFADD__(v4, a1 & 1))
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return v4;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall OnInsertInteraction.canInsert(_:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  rawValue = a1._rawValue;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v4)
  {
    return 0;
  }

  v9 = *(v4 + 16);
  v15[2] = v6 + 16;
  v16 = v9;

  v15[1] = v3;

  v10 = 0;
  do
  {
    v11 = v16 != v10;
    if (v16 == v10)
    {
      break;
    }

    v12 = (*(v6 + 16))(v8, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10++, v5);
    MEMORY[0x1EEE9AC00](v12);
    v15[-2] = v8;
    v13 = specialized Sequence.contains(where:)(partial apply for closure #1 in closure #1 in OnInsertInteraction.canInsert(_:), &v15[-4], rawValue);
    (*(v6 + 8))(v8, v5);
  }

  while ((v13 & 1) == 0);

  return v11;
}

uint64_t DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;

  v16[0] = static Transferable.readableContentTypes.getter();
  v16[1] = partial apply for closure #1 in DynamicViewContent.dropDestination<A>(for:action:);
  v16[2] = v13;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  MEMORY[0x18D00A570](v16, a4, v14, *(a6 + 8));
}

uint64_t closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a7;
  v52 = a5;
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = dispatch_group_create();
  v56 = static Array._allocateUninitialized(_:)();
  type metadata accessor for Array();
  result = AtomicBox.init(wrappedValue:)();
  v20 = a2;
  v21 = aBlock[0];
  v53 = a2;
  v50 = v12;
  v51 = v11;
  v48 = v14;
  v49 = v15;
  v47 = v16;
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    v20 = v53;
    v22 = result;
  }

  else
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v54;
  v24 = v52;
  if (!v22)
  {
    goto LABEL_11;
  }

  if (v22 >= 1)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      v24 = v52;
      do
      {
        MEMORY[0x18D00E9C0](v25++, v53);
        dispatch_group_enter(v18);
        v26 = swift_allocObject();
        v26[2] = v24;
        v26[3] = a6;
        v26[4] = v23;
        v26[5] = a8;
        v26[6] = v18;
        v26[7] = v21;
        v27 = v18;

        v28 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();
        swift_unknownObjectRelease();

        v23 = v54;
      }

      while (v22 != v25);
    }

    else
    {
      v29 = (v20 + 32);
      v24 = v52;
      do
      {
        v30 = *v29++;
        v31 = v30;
        dispatch_group_enter(v18);
        v32 = swift_allocObject();
        v32[2] = v24;
        v32[3] = a6;
        v32[4] = v23;
        v32[5] = a8;
        v32[6] = v18;
        v32[7] = v21;
        v33 = v18;

        v34 = NSItemProvider.loadTransferable<A>(type:completionHandler:)();

        v23 = v54;

        --v22;
      }

      while (v22);
    }

LABEL_11:
    type metadata accessor for OS_dispatch_queue();
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    v36[2] = v24;
    v36[3] = a6;
    v36[4] = v23;
    v36[5] = a8;
    v37 = v44;
    v38 = v45;
    v36[6] = v43;
    v36[7] = v38;
    v36[8] = v21;
    v36[9] = v37;
    aBlock[4] = partial apply for closure #2 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:);
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_37;
    v39 = _Block_copy(aBlock);

    v40 = v46;
    static DispatchQoS.unspecified.getter();
    v56 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type _TraitWritingModifier<OnInsertTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v41 = v48;
    v42 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v39);

    (*(v50 + 8))(v41, v42);
    (*(v47 + 8))(v40, v49);
  }

  __break(1u);
  return result;
}

void type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<OnInsertTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<OnInsertTraitKey>);
    }
  }
}

void closure #1 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v33[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-1] - v13;
  type metadata accessor for Error();
  v15 = type metadata accessor for Result();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v33[-1] - v17);
  (*(v19 + 16))(&v33[-1] - v17, a1, v15, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v18;
    v21 = static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_18BD4A000, v22, v21, "Error loading %s: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v14, v18, a5);
    (*(v9 + 16))(v11, v14, a5);
    v33[4] = a3;
    type metadata accessor for Array();
    type metadata accessor for AtomicBox();
    v31 = AtomicBox.wrappedValue.modify();
    Array.append(_:)();
    v31(v33, 0);
    (*(v9 + 8))(v14, a5);
  }

  dispatch_group_leave(a2);
}

uint64_t closure #2 in closure #1 in DynamicViewContent.dropDestination<A>(for:action:)(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Array();
  type metadata accessor for AtomicBox();
  AtomicBox.wrappedValue.getter();
  a1(v7, a4);
}

uint64_t DynamicViewContent.onInsert(of:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[0] = a1;
  v9[1] = a2;
  v9[2] = a3;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  return MEMORY[0x18D00A570](v9, a4, v7, *(a5 + 8));
}

uint64_t DynamicViewContent.onInsert(of:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v27 = a3;
  v28 = a5;
  v26 = a2;
  v29 = a6;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_3(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = (v12 + 48);
    v32 = v12;
    v16 = (v12 + 32);
    v17 = a1 + 40;
    v18 = MEMORY[0x1E69E7CC0];
    v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {

      UTType.init(_:)();
      if ((*v15)(v9, 1, v10) == 1)
      {
        outlined destroy of UTType?(v9);
      }

      else
      {
        v19 = *v16;
        (*v16)(v13, v9, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v22 = v18 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v21;
        v13 = v31;
        v19(v22, v31, v10);
      }

      v17 += 16;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v33[0] = v18;
  v33[1] = v26;
  v33[2] = v27;
  type metadata accessor for _TraitWritingModifier<OnInsertTraitKey>();
  MEMORY[0x18D00A570](v33, v30, v23, *(v28 + 8));
}

id closure #1 in closure #1 in OnInsertInteraction.canInsert(_:)(void **a1)
{
  v1 = *a1;
  v2 = UTType.identifier.getter();
  v3 = MEMORY[0x18D00C850](v2);

  v4 = [v1 hasItemConformingToTypeIdentifier_];

  return v4;
}

Swift::Void __swiftcall OnInsertInteraction.insert(_:)(Swift::OpaquePointer a1)
{
  v5 = v4;
  if (v1)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v10 = swift_allocObject();
    v10[2]._rawValue = v8;
    v10[3]._rawValue = v7;
    v10[4]._rawValue = v6;
    v10[5]._rawValue = v8;
    v10[6]._rawValue = v7;
    v10[7]._rawValue = v6;
    v10[8]._rawValue = v5;
    v10[9]._rawValue = a1._rawValue;
    outlined copy of PasteHelper?(v8);
    outlined copy of PasteHelper?(v8);

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
    _StringGuts.grow(_:)(76);
    MEMORY[0x18D00C9B0](0xD000000000000027, 0x800000018CD4B9C0);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v11);

    MEMORY[0x18D00C9B0](0xD000000000000023, 0x800000018CD4B9F0);
    MEMORY[0x18D009810](0, 0xE000000000000000);
  }
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<OnInsertTraitKey> and conformance _TraitWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.popoverEdgeAppearance(_:)(char *a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  View.transformPreference<A>(_:_:)();
}

Swift::Int PopoverEdgeAppearance.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance()
{
  result = lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance;
  if (!lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverEdgeAppearance and conformance PopoverEdgeAppearance);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind()
{
  result = lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind;
  if (!lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PopoverEdgeAppearance.Kind and conformance PopoverEdgeAppearance.Kind);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance IndexView@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  outlined init with copy of _VariadicView_Children((v1 + 3), (a1 + 3));
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

BOOL ViewGraphBridgePropertiesFeature.needsUpdate(graph:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v29 = *(v1 + 48);
  v7 = *(v1 + 88);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a1 + 208);
    v9 = v6;
    v10 = v4;
    v11 = v5;
    ObjectType = swift_getObjectType();
    v13 = type metadata accessor for ViewGraphBridgePropertiesDelegate();
    (*(v8 + 16))(&v30, v13, v13, ObjectType, v8);
    swift_unknownObjectRelease();
    if (v30)
    {
      swift_unknownObjectRelease();
      v14 = *MEMORY[0x1E698D3F8];
      outlined copy of EnvironmentValues?(v7);
      if (v3 == v14)
      {
        if (v7 != 1)
        {
          goto LABEL_16;
        }

LABEL_14:
        v18 = 0;
        goto LABEL_19;
      }

      v17 = *AGGraphGetValue();

      if (v7 == 1)
      {
        if (v17 != 1)
        {
          v19 = v17;
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (v17 == 1)
      {
LABEL_16:
        v19 = v7;
LABEL_18:
        outlined consume of EnvironmentValues?(v19);
        v18 = 1;
        goto LABEL_19;
      }

      if (v7)
      {
        if (!v17)
        {
          outlined consume of EnvironmentValues?(0);
          goto LABEL_16;
        }

        outlined consume of EnvironmentValues?(v17);
        outlined consume of EnvironmentValues?(v7);
        v18 = v7 != v17;
      }

      else
      {
        if (v17)
        {
          outlined consume of EnvironmentValues?(v17);
          v19 = 0;
          goto LABEL_18;
        }

        outlined consume of EnvironmentValues?(0);
        outlined consume of EnvironmentValues?(0);
        v18 = 0;
      }

LABEL_19:
      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v22 = *WeakValue;
        v21 = WeakValue[1];
        v24 = WeakValue[2];
        v23 = WeakValue[3];

        if (v24)
        {
          if (v9)
          {
            if (v22 == v10)
            {
              if (v21 == v11)
              {

                if (_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v24, v9))
                {
                  v25 = _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v23, v29);

                  outlined consume of ViewGraphBridgeProperties?(v10, v11, v24);
                  result = v18;
                  if (v25)
                  {
                    return result;
                  }

                  return 1;
                }

                v26 = v10;
                v27 = v11;
                goto LABEL_37;
              }

              v26 = v10;
            }

            else
            {
              v26 = v22;
            }

            v27 = v21;
LABEL_37:
            v28 = v24;
            goto LABEL_38;
          }

LABEL_30:
          outlined copy of ViewGraphBridgeProperties?(v10, v11, v9);
          outlined consume of ViewGraphBridgeProperties?(v22, v21, v24);
          v26 = v10;
          v27 = v11;
          v28 = v9;
LABEL_38:
          outlined consume of ViewGraphBridgeProperties?(v26, v27, v28);
          return 1;
        }
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      result = v18;
      if (!v9)
      {
        return result;
      }

      v24 = 0;
      goto LABEL_30;
    }
  }

  return AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8] || v3 != *MEMORY[0x1E698D3F8];
}

uint64_t ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v4 = *(a1 + 208), v5 = swift_getObjectType(), v6 = type metadata accessor for ViewGraphBridgePropertiesDelegate(), (*(v4 + 16))(&v33, v6, v6, v5, v4), swift_unknownObjectRelease(), v33))
  {
    v7 = v34;
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v9 = *WeakValue;
      v10 = WeakValue[1];
      v12 = WeakValue[2];
      v11 = WeakValue[3];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v12 = 0;
      v11 = 0;
    }

    ObjectType = swift_getObjectType();
    v14 = (*(v7 + 8))(v9, v10, v12, v11, 3, ObjectType, v7);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    outlined consume of ViewGraphBridgeProperties?(v9, v10, v12);
    v21 = v2[7];
    v22 = v2[8];
    v23 = v2[10];
    v30 = v21;
    v31 = v2[9];
    v32 = v22;
    if (!v31)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      outlined consume of ViewGraphBridgeProperties?(v14, v16, v18);
      outlined consume of ViewGraphBridgeProperties?(v21, v22, 0);
      v26 = v14;
      v24 = v16;
      v27 = 0;
      goto LABEL_17;
    }

    if (v14 != v21)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v25 = v21;
      v26 = v14;
      v27 = v31;
      outlined copy of ViewGraphBridgeProperties?(v25, v32, v31);

      v24 = v16;
      goto LABEL_17;
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v24 = v16;
    if (v16 != v22)
    {
      outlined copy of ViewGraphBridgeProperties?(v14, v22, v31);

      v26 = v14;
      v27 = v31;
      goto LABEL_17;
    }

    outlined copy of ViewGraphBridgeProperties?(v14, v16, v31);
    if ((_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v18, v31) & 1) == 0)
    {

      v27 = v31;
      v26 = v14;
      goto LABEL_17;
    }

    v29 = _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v20, v23);

    v27 = v31;
    v26 = v14;
    if ((v29 & 1) == 0)
    {
LABEL_17:
      v33 = v2[1];
      v34 = v26;
      v35 = v24;
      v36 = v18;
      v37 = v20;
      lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation();
      default argument 1 of GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();
      GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)();

      swift_unknownObjectRelease();
      outlined consume of ViewGraphBridgeProperties?(v30, v32, v27);
      v2[7] = v26;
      v2[8] = v24;
      v2[9] = v18;
      v2[10] = v20;
      return $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(v2);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = *MEMORY[0x1E698D3F8];
  }

  return $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(v2);
}

uint64_t $defer #1 () in ViewGraphBridgePropertiesFeature.outputsDidChange(graph:)(uint64_t a1)
{
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v14 = *WeakValue;
    v3 = *(WeakValue + 16);
    v4 = *(WeakValue + 24);

    v5 = v14;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  *(a1 + 24) = v5;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  outlined consume of ViewGraphBridgeProperties?(v6, v7, v8);
  if (*(a1 + 16) == *MEMORY[0x1E698D3F8])
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v9 = Value[1];
  }

  v12 = *(a1 + 88);
  *(a1 + 88) = v10;
  *(a1 + 96) = v9;

  return outlined consume of EnvironmentValues?(v12);
}

uint64_t ViewGraphBridgePropertiesFeature.MakeBridgeProperties.value.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  if (v3)
  {
    v4 = v0[1];
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v4 = *WeakValue;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static ViewGraphBridgeProperties.defaultValue;
    }
  }

  outlined copy of ViewGraphBridgeProperties?(v1, v2, v3);
  return v4;
}

uint64_t protocol witness for Rule.value.getter in conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties@<X0>(uint64_t *a1@<X8>)
{
  result = ViewGraphBridgePropertiesFeature.MakeBridgeProperties.value.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

double closure #1 in ViewGraphBridgePropertiesFeature.BridgePropertiesMutation.apply()(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  outlined init with copy of ViewGraphBridgeProperties?(&v10, &v9);
  outlined consume of ViewGraphBridgeProperties?(v4, v5, v6);
  result = *&v10;
  v8 = v11;
  *(a1 + 1) = v10;
  *(a1 + 3) = v8;
  return result;
}

uint64_t ViewGraphBridgePropertiesFeature.BridgePropertiesMutation.combine<A>(with:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if (swift_dynamicCast())
  {
    v5 = v10[2];
    v7 = v10[3];
    v6 = v10[4];
    v8 = v10[5];
    if (static WeakAttribute.== infix(_:_:)())
    {
      outlined consume of ViewGraphBridgeProperties?(v1[1], v1[2], v1[3]);
      v1[1] = v5;
      v1[2] = v7;
      result = 1;
      v1[3] = v6;
      v1[4] = v8;
      return result;
    }

    outlined consume of ViewGraphBridgeProperties?(v5, v7, v6);
  }

  return 0;
}

uint64_t protocol witness for GraphMutation.apply() in conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation()
{
  result = AGWeakAttributeGetAttribute();
  if (result != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v1);
    return AGGraphMutateAttribute();
  }

  return result;
}

void protocol witness for ViewGraphFeature.uninstantiate(graph:) in conformance ViewGraphBridgePropertiesFeature()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = *MEMORY[0x1E698D3F8];
}

uint64_t _UIHostingView.updateRequiredBridges(bridgeProperties:allowedActions:)(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char a5)
{
  v6 = v5;
  v11 = MEMORY[0x1E69E7D40];
  v27 = *MEMORY[0x1E69E7D40] & *v5;
  if (one-time initialization token for defaultValue == -1)
  {
    if (a3)
    {
LABEL_3:
      v12 = a1;
      v13 = a2;
      v14 = a3;
      v15 = a4;
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v13 = *(&static ViewGraphBridgeProperties.defaultValue + 1);
  v12 = static ViewGraphBridgeProperties.defaultValue;
  v14 = qword_1ED5A7320;
  v15 = unk_1ED5A7328;

LABEL_6:
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  if (_UIHostingView.delegate.getter())
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    outlined copy of ViewGraphBridgeProperties?(a1, a2, a3);
    v19(v6, &v29, *(v27 + 80), *(v27 + 88), ObjectType, v17);
    v11 = MEMORY[0x1E69E7D40];
    swift_unknownObjectRelease();
  }

  else
  {
    outlined copy of ViewGraphBridgeProperties?(a1, a2, a3);
  }

  v20 = _UIHostingView.viewController.getter();
  if (v20)
  {
    v21 = v20;
    UIHostingController.resolveRequiredBridges(_:allowedActions:)(v29, v30, v31, v32, a5);
  }

  v22 = _UIHostingView.viewController.getter();
  if (v22)
  {
    v23 = v22;
    UIHostingController.updateViewGraphBridges(_:)(&v29);
  }

  v24 = _UIHostingView.sheetBridge.getter();
  if (v24)
  {
    v25 = v24;
    (*((*v11 & *v24) + 0x220))(&v29);
  }

  return v29;
}

uint64_t outlined copy of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t destroy for ViewGraphBridgePropertiesFeature(void *a1)
{
  if (a1[5])
  {
  }

  if (a1[9])
  {
  }

  result = a1[11];
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;

    v6 = *(a2 + 72);
    if (v6)
    {
LABEL_3:
      *(a1 + 56) = *(a2 + 56);
      v7 = *(a2 + 80);
      *(a1 + 72) = v6;
      *(a1 + 80) = v7;

      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v6 = *(a2 + 72);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_6:
  v8 = *(a2 + 88);
  if (v8 == 1)
  {
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    v9 = *(a2 + 96);
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
  }

  return a1;
}

uint64_t assignWithCopy for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v4)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

      *(a1 + 48) = *(a2 + 48);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 24);
      v5 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v5;
    }
  }

  else if (v4)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v6 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v6;
  }

  v7 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v7)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      *(a1 + 80) = *(a2 + 80);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 56);
      v8 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v8;
    }
  }

  else if (v7)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v9 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v9;
  }

  v10 = *(a2 + 88);
  if (*(a1 + 88) != 1)
  {
    if (v10 != 1)
    {
      *(a1 + 88) = v10;

      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of EnvironmentValues(a1 + 88);
    goto LABEL_20;
  }

  if (v10 == 1)
  {
LABEL_20:
    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  *(a1 + 88) = v10;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithTake for ViewGraphBridgePropertiesFeature(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  if (!*(a1 + 40))
  {
LABEL_6:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    if (!*(a1 + 72))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v4 = *(a2 + 40);
  if (!v4)
  {
    outlined destroy of ViewGraphBridgeProperties(a1 + 24);
    goto LABEL_6;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;

  *(a1 + 48) = *(a2 + 48);

  if (!*(a1 + 72))
  {
    goto LABEL_10;
  }

LABEL_7:
  v5 = *(a2 + 72);
  if (v5)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v5;

    *(a1 + 80) = *(a2 + 80);

    goto LABEL_11;
  }

  outlined destroy of ViewGraphBridgeProperties(a1 + 56);
LABEL_10:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  v6 = *(a2 + 88);
  if (*(a1 + 88) != 1)
  {
    if (v6 != 1)
    {
      *(a1 + 88) = v6;

      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of EnvironmentValues(a1 + 88);
  }

  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for ViewGraphBridgePropertiesFeature(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t storeEnumTagSinglePayload for ViewGraphBridgePropertiesFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t type metadata accessor for ViewGraphBridgePropertiesDelegate()
{
  result = lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate;
  if (!lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewGraphBridgePropertiesDelegate);
  }

  return result;
}

uint64_t outlined consume of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.BridgePropertiesMutation and conformance ViewGraphBridgePropertiesFeature.BridgePropertiesMutation);
  }

  return result;
}

uint64_t specialized ViewGraphBridgePropertiesFeature.modifyViewInputs(inputs:graph:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey();

  PropertyList.subscript.getter();

  AGWeakAttributeGetAttribute();
  *v1 = AGCreateWeakAttribute();
  swift_beginAccess();
  *(v1 + 16) = *(v2 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties();
  Attribute.init<A>(body:value:flags:update:)();
  *(v1 + 8) = AGCreateWeakAttribute();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties()
{
  result = lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties;
  if (!lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewGraphBridgePropertiesFeature.MakeBridgeProperties and conformance ViewGraphBridgePropertiesFeature.MakeBridgeProperties);
  }

  return result;
}

uint64_t destroy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
  }

  return result;
}

__n128 initializeWithCopy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 24);
  if (v2)
  {
    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
  }

  else
  {
    result = *(a2 + 8);
    v5 = *(a2 + 24);
    *(a1 + 8) = result;
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t assignWithCopy for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      outlined destroy of ViewGraphBridgeProperties(a1 + 8);
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
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t assignWithTake for ViewGraphBridgePropertiesFeature.MakeBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of ViewGraphBridgeProperties(a1 + 8);
LABEL_5:
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t outlined init with copy of ViewGraphBridgeProperties?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ViewGraphBridgeProperties?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ViewGraphBridgeProperties?()
{
  if (!lazy cache variable for type metadata for ViewGraphBridgeProperties?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewGraphBridgeProperties?);
    }
  }
}

uint64_t NewDocumentButton.body.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 4;
  type metadata accessor for Button<Text>();
  v4 = v3;
  v5 = &a1[*(v3 + 36)];
  *v5 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v5[1] = 0;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  closure #2 in NewDocumentButton.body.getter(v1, &a1[*(v4 + 40)]);
  type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>();
  v7 = *(v6 + 36);

  return outlined init with copy of _Benchmark((v1 + 4), &a1[v7]);
}

uint64_t closure #2 in NewDocumentButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    v7 = *a1;
    v8 = v4;
    v9 = v5;
    v10 = v6;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v10;

  return outlined copy of Text?(v3, v4, v5, v6);
}

void type metadata accessor for Button<Text>()
{
  if (!lazy cache variable for type metadata for Button<Text>)
  {
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<Text>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>)
  {
    type metadata accessor for Button<Text>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>);
    }
  }
}

uint64_t NewDocumentButton<>.init(_:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v26 = a4;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v25 - v19;
  outlined init with copy of UTType?(a5, &v25 - v19);
  if ((*(v12 + 48))(v20, 1, v11) == 1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    (*(v12 + 32))(v17, v20, v11);
    (*(v12 + 16))(v14, v17, v11);
    *(&v28 + 1) = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
    v29 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    ContentTypeDocumentCreationStrategy.init(_:)(v14, boxed_opaque_existential_1);
    (*(v12 + 8))(v17, v11);
    if (*(&v28 + 1))
    {
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v27, &v30);
      goto LABEL_7;
    }
  }

  v31 = type metadata accessor for DefaultDocumentCreationStrategy(0);
  v32 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy);
  v22 = __swift_allocate_boxed_opaque_existential_1(&v30);
  DefaultDocumentCreationStrategy.init()(v22);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (*(&v28 + 1))
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(&v27, &lazy cache variable for type metadata for DocumentCreationStrategy?, type metadata accessor for DocumentCreationStrategy);
  }

LABEL_7:
  *a6 = a1;
  a6[1] = a2;
  v23 = v26;
  a6[2] = a3;
  a6[3] = v23;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v30, (a6 + 4));
}

uint64_t makeStrategy(contentType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  outlined init with copy of UTType?(a1, &v17 - v12);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    *(&v18 + 1) = type metadata accessor for ContentTypeDocumentCreationStrategy(0);
    v19 = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type ContentTypeDocumentCreationStrategy and conformance ContentTypeDocumentCreationStrategy, type metadata accessor for ContentTypeDocumentCreationStrategy);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    ContentTypeDocumentCreationStrategy.init(_:)(v7, boxed_opaque_existential_1);
    (*(v5 + 8))(v10, v4);
    if (*(&v18 + 1))
    {
      return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v17, a2);
    }
  }

  a2[3] = type metadata accessor for DefaultDocumentCreationStrategy(0);
  a2[4] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy, type metadata accessor for DefaultDocumentCreationStrategy);
  v16 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = DefaultDocumentCreationStrategy.init()(v16);
  if (*(&v18 + 1))
  {
    return _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(&v17, &lazy cache variable for type metadata for DocumentCreationStrategy?, type metadata accessor for DocumentCreationStrategy);
  }

  return result;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t NewDocumentButton<>.init(_:contentType:)@<X0>(uint64_t a1@<X4>, uint64_t *a2@<X8>)
{
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9 & 1;
  makeStrategy(contentType:)(a1, a2 + 4);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a1, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16 & 1;
  makeStrategy(contentType:)(a2, a4 + 4);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a2, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  result = (*(v8 + 8))(a1, a3);
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v17;
  a4[3] = v15;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v23 = a3;
  v24 = a4;
  v16 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v23 - v18;
  outlined init with copy of UTType?(a5, &v23 - v18);
  a8[7] = type metadata accessor for FileDocumentCreationStrategy();
  a8[8] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v19, a6, a7, a9, a10, boxed_opaque_existential_1);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, v16);
  *a8 = a1;
  a8[1] = a2;
  v22 = v24;
  a8[2] = v23;
  a8[3] = v22;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t *a4@<X8>, uint64_t a5, uint64_t a6)
{
  v22 = a2;
  v23 = a3;
  v8 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  outlined init with copy of UTType?(a1, v11);
  a4[7] = type metadata accessor for FileDocumentCreationStrategy();
  a4[8] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v11, v22, v23, a5, a6, boxed_opaque_existential_1);
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a1, &lazy cache variable for type metadata for UTType?, v8);
  *a4 = v12;
  a4[1] = v14;
  a4[2] = v18;
  a4[3] = v16;
  return result;
}

uint64_t NewDocumentButton<>.init<A, B>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>)
{
  v33 = a5;
  v34 = a7;
  v36 = a3;
  v37 = a4;
  v32 = a1;
  v35 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - v13;
  v15 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v15 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a6, v17);
  v19 = Text.init<A>(_:)();
  v21 = v20;
  v31 = v22;
  v24 = v23 & 1;
  outlined init with copy of UTType?(a2, v14);
  v25 = v33;
  v26 = v34;
  a8[7] = type metadata accessor for FileDocumentCreationStrategy();
  a8[8] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  FileDocumentCreationStrategy.init(contentType:prepareDocument:)(v14, v36, v37, v25, v26, boxed_opaque_existential_1);
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a2, &lazy cache variable for type metadata for UTType?, v35);
  result = (*(v15 + 8))(v32, a6);
  *a8 = v19;
  a8[1] = v21;
  v29 = v31;
  a8[2] = v24;
  a8[3] = v29;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v22 = a3;
  v23 = a4;
  v14 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - v16;
  v18 = type metadata accessor for ReferenceFileDocumentCreationStrategy();
  outlined init with copy of UTType?(a5, v17);

  v19 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v17, a6, a7);
  a8[7] = v18;
  a8[8] = swift_getWitnessTable();

  a8[4] = v19;
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(a5, &lazy cache variable for type metadata for UTType?, v14);
  *a8 = a1;
  a8[1] = a2;
  v21 = v23;
  a8[2] = v22;
  a8[3] = v21;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v22 = a1;
  v23 = a2;
  v6 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15 & 1;
  v17 = type metadata accessor for ReferenceFileDocumentCreationStrategy();
  v18 = v22;
  outlined init with copy of UTType?(v22, v9);

  v19 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v9, v23, a3);
  a4[7] = v17;
  a4[8] = swift_getWitnessTable();

  a4[4] = v19;
  result = _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(v18, &lazy cache variable for type metadata for UTType?, v6);
  *a4 = v10;
  a4[1] = v12;
  a4[2] = v16;
  a4[3] = v14;
  return result;
}

uint64_t NewDocumentButton<>.init<A, B>(_:for:contentType:prepareDocument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>)
{
  v32 = a6;
  v33 = a3;
  v30 = a1;
  v31 = a2;
  v34 = MEMORY[0x1E69E8450];
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v14 + 16))(&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v16);
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v29 = v21;
  v23 = v22 & 1;
  v24 = type metadata accessor for ReferenceFileDocumentCreationStrategy();
  v25 = v31;
  outlined init with copy of UTType?(v31, v13);

  v26 = ReferenceFileDocumentCreationStrategy.__allocating_init(contentType:prepareDocument:)(v13, v33, a4);
  a7[7] = v24;
  a7[8] = swift_getWitnessTable();

  a7[4] = v26;
  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_0(v25, &lazy cache variable for type metadata for UTType?, v34);
  result = (*(v14 + 8))(v30, a5);
  *a7 = v18;
  a7[1] = v20;
  v28 = v29;
  a7[2] = v23;
  a7[3] = v28;
  return result;
}

uint64_t NewDocumentButton<>.init(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v24 = a4;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a5, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  a8[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a8[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a8 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v17, a6, a7, boxed_opaque_existential_1);
  result = (*(v19 + 8))(a5, v18);
  *a8 = a1;
  a8[1] = a2;
  v22 = v24;
  a8[2] = a3;
  a8[3] = v22;
  return result;
}

uint64_t NewDocumentButton<>.init(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v21 = a3;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  v16 = v15 & 1;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v9, a1, v17);
  (*(v18 + 56))(v9, 0, 1, v17);
  a4[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a4[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v9, a2, v21, boxed_opaque_existential_1);
  result = (*(v18 + 8))(a1, v17);
  *a4 = v10;
  a4[1] = v12;
  a4[2] = v16;
  a4[3] = v14;
  return result;
}

uint64_t NewDocumentButton<>.init<A>(_:contentType:prepareDocumentURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a3;
  v30 = a4;
  v28 = a1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_4(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  v13 = *(a5 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  (*(v13 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a5, v15);
  v27 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21 & 1;
  v23 = type metadata accessor for UTType();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v12, a2, v23);
  (*(v24 + 56))(v12, 0, 1, v23);
  a6[7] = type metadata accessor for URLDocumentCreationStrategy(0);
  a6[8] = lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type URLDocumentCreationStrategy and conformance URLDocumentCreationStrategy, type metadata accessor for URLDocumentCreationStrategy);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 4);
  URLDocumentCreationStrategy.init(contentType:prepareDocument:)(v12, v29, v30, boxed_opaque_existential_1);
  (*(v24 + 8))(a2, v23);
  result = (*(v13 + 8))(v28, a5);
  *a6 = v27;
  a6[1] = v18;
  a6[2] = v22;
  a6[3] = v20;
  return result;
}

double static PlatformNewDocumentButtonModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a1@<X1>, void (*a2)(uint64_t *__return_ptr)@<X2>, double *a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1[3];
  v16 = a1[2];
  v17 = v5;
  v18 = a1[4];
  v19 = *(a1 + 20);
  v6 = a1[1];
  v14 = *a1;
  v15 = v6;
  a2(&v12);
  v7 = a1[3];
  v16 = a1[2];
  v17 = v7;
  v18 = a1[4];
  v19 = *(a1 + 20);
  v8 = a1[1];
  v14 = *a1;
  v15 = v8;
  if (_ViewInputs.requestsPlatformItem(for:)())
  {
    v9 = a1[3];
    v16 = a1[2];
    v17 = v9;
    v18 = a1[4];
    v19 = *(a1 + 20);
    v10 = a1[1];
    v14 = *a1;
    v15 = v10;
    AGGraphCreateOffsetAttribute2();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform();
    Attribute.init<A>(body:value:flags:update:)();
    lazy protocol witness table accessor for type PlatformButtonActionTransform and conformance PlatformButtonActionTransform();
    lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();
    static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
  }

  *a3 = v12;
  result = v13;
  a3[1] = v13;
  return result;
}

uint64_t protocol witness for static PlatformItemsModifier.updateItems(modifier:items:) in conformance PlatformNewDocumentButtonTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();

  return MEMORY[0x1EEDE22A8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PlatformNewDocumentButtonTransform@<X0>(void (*a1)(void *__return_ptr)@<X2>, void *a2@<X8>)
{
  a1(a2);
  lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform();
  return static PlatformItemsModifier.transformPlatformItemsOutputs<A>(_:inputs:modifier:)();
}

uint64_t DocumentPlatformItemAuxiliaryContent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

id static _NewDocumentButton.defaultAction.getter()
{
  if (one-time initialization token for defaultAction != -1)
  {
    swift_once();
  }

  v1 = static _NewDocumentButton.defaultAction;

  return v1;
}

uint64_t _NewDocumentButton.body.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 4;
  type metadata accessor for Button<Text>();
  v3 = v2;
  v4 = &a1[*(v2 + 36)];
  *v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v4[1] = 0;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v5 = &a1[*(v3 + 40)];
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *v5 = result;
  *(v5 + 1) = v7;
  v5[16] = v8 & 1;
  *(v5 + 3) = v9;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance _NewDocumentButton@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 4;
  type metadata accessor for Button<Text>();
  v3 = v2;
  v4 = &a1[*(v2 + 36)];
  *v4 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v4[1] = 0;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v5 = &a1[*(v3 + 40)];
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *v5 = result;
  *(v5 + 1) = v7;
  v5[16] = v8 & 1;
  *(v5 + 3) = v9;
  return result;
}

uint64_t destroy for NewDocumentButton(uint64_t a1)
{
  if (*(a1 + 24))
  {
    outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));
  }

  return __swift_destroy_boxed_opaque_existential_1(a1 + 32);
}

uint64_t initializeWithCopy for NewDocumentButton(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v6, v7);
    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v4;
  }

  else
  {
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
  }

  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  (**(v9 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t assignWithCopy for NewDocumentButton(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v4)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 16);
      outlined copy of Text.Storage(*a2, v6, v7);
      v8 = *a1;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      outlined destroy of Text(a1);
      v14 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v14;
    }
  }

  else if (v4)
  {
    v11 = *a2;
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v12, v13);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
  }

  __swift_assign_boxed_opaque_existential_1((a1 + 32), (a2 + 32));
  return a1;
}

uint64_t assignWithTake for NewDocumentButton(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    outlined destroy of Text(a1);
LABEL_5:
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    goto LABEL_6;
  }

  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  outlined consume of Text.Storage(v6, v7, v8);
  *(a1 + 24) = v4;

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(a1 + 32);
  v10 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v10;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier>();
    lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, type metadata accessor for Button<Text>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<Text>, PlatformNewDocumentButtonModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultDocumentCreationStrategy and conformance DefaultDocumentCreationStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform()
{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform.MakeTransform and conformance PlatformNewDocumentButtonTransform.MakeTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform()
{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform;
  if (!lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformNewDocumentButtonTransform and conformance PlatformNewDocumentButtonTransform);
  }

  return result;
}

uint64_t specialized static PlatformNewDocumentButtonTransform.updateItem(modifier:item:)(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for DocumentCreationStrategy();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v12);
  type metadata accessor for DocumentPlatformItemAuxiliaryContent();
  v4 = swift_allocObject();
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v12, v4 + 16);
  if (a2[38] == 1)
  {
    LOBYTE(v12[0]) = 1;
    static PlatformItem.SelectionContent.selection(onSelect:onDeselect:options:auxiliaryContent:)();
    swift_unknownObjectRelease();
    result = outlined consume of PlatformItem.SelectionContent?(a2[35], a2[36], a2[37], a2[38]);
    v6 = v12[1];
    *(a2 + 35) = v12[0];
    *(a2 + 37) = v6;
  }

  else
  {
    v8 = PlatformItem.selection.modify();
    if (*(v7 + 24) != 1)
    {
      v9 = *(v7 + 16);
      if ((v9 & 8) == 0)
      {
        *(v7 + 16) = v9 | 8;
      }
    }

    v8(v12, 0);
    v11 = PlatformItem.selection.modify();
    if (*(v10 + 24) != 1)
    {
      *(v10 + 24) = v4;

      swift_unknownObjectRelease();
    }

    v11(v12, 0);
  }

  return result;
}

uint64_t assignWithCopy for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
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
      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 8);
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

  v7 = *(a1 + 32);
  *(a1 + 25) = *(a2 + 25);
  v8 = *(a2 + 32);
  if (v7)
  {
    if (v8)
    {
      v9 = *(a2 + 40);
      *(a1 + 32) = v8;
      *(a1 + 40) = v9;

      goto LABEL_15;
    }
  }

  else if (v8)
  {
    v10 = *(a2 + 40);
    *(a1 + 32) = v8;
    *(a1 + 40) = v10;

    goto LABEL_15;
  }

  *(a1 + 32) = *(a2 + 32);
LABEL_15:
  v11 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v11)
    {
      *(a1 + 48) = *(a2 + 48);

      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
    }

    else
    {
      outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 48);
      v12 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v12;
    }
  }

  else if (v11)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v13;
  }

  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t outlined destroy of Binding<NavigationSplitViewColumn>(uint64_t a1)
{
  type metadata accessor for Binding<NavigationSplitViewColumn>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Binding<NavigationSplitViewColumn>()
{
  if (!lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>);
    }
  }
}

uint64_t assignWithTake for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 16))
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      *(a1 + 8) = *(a2 + 8);

      *(a1 + 16) = v4;

      *(a1 + 24) = *(a2 + 24);
      goto LABEL_6;
    }

    outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 8);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
LABEL_6:
  v5 = *(a2 + 32);
  v6 = *(a1 + 32);
  *(a1 + 25) = *(a2 + 25);
  if (v6)
  {
    if (v5)
    {
      v7 = *(a2 + 40);
      *(a1 + 32) = v5;
      *(a1 + 40) = v7;

      if (!*(a1 + 56))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  else if (v5)
  {
    v8 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v8;
    if (!*(a1 + 56))
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  *(a1 + 32) = *(a2 + 32);
  if (!*(a1 + 56))
  {
LABEL_18:
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(a2 + 56);
  if (!v9)
  {
    outlined destroy of Binding<NavigationSplitViewColumn>(a1 + 48);
    goto LABEL_18;
  }

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = v9;

  *(a1 + 64) = *(a2 + 64);
LABEL_19:
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t NavigationSplitViewState.updateRequiredCompactColumn(_:newValue:)@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v5 = *(result + 8);
  v7 = *(result + 16);
  v8 = *a2;
  v9 = *(v3 + 56);
  if (!v9)
  {
    v13 = *(v3 + 48);

    result = outlined consume of Binding<NavigationSplitViewColumn>?(v13, 0);
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
    v14 = v8 != 0;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    goto LABEL_11;
  }

  v10 = *(v3 + 65);
  if (v10 != 3)
  {
    if (v5 != v9)
    {
      v15 = *(v3 + 48);

      result = outlined consume of Binding<NavigationSplitViewColumn>?(v15, v9);
      *(v3 + 48) = v6;
      *(v3 + 56) = v5;
      *(v3 + 64) = v7;
    }

    if (v8 == v10)
    {
      v11 = 0uLL;
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      v12 = 0x1FFFFFFFCLL;
      goto LABEL_9;
    }

    *(v3 + 65) = v8;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    v14 = 1;
LABEL_11:
    *(a3 + 340) = v14;
    goto LABEL_12;
  }

  v11 = 0uLL;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v12 = 0x1FFFFFFFELL;
LABEL_9:
  *(a3 + 152) = 0;
  *(a3 + 160) = v12;
  *(a3 + 184) = v11;
  *(a3 + 200) = v11;
  *(a3 + 216) = v11;
  *(a3 + 232) = v11;
  *(a3 + 168) = v11;
  *(a3 + 248) = v11;
  *(a3 + 264) = v11;
  *(a3 + 280) = v11;
  *(a3 + 296) = v11;
  *(a3 + 312) = v11;
  *(a3 + 321) = v11;
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 0;
LABEL_12:
  *(a3 + 344) = 0;
  return result;
}

Swift::Bool __swiftcall NavigationSplitViewState.reduceCompactColumnBindingsIfGreaterThan(_:)(SwiftUI::NavigationSplitColumn_optional a1)
{
  if (a1.value <= SwiftUI_NavigationSplitColumn_detail)
  {
    if (*(v1 + 16))
    {
      v3 = *(v1 + 25);
      if (v3 != 3)
      {
        if (a1.value)
        {
          if (a1.value == SwiftUI_NavigationSplitColumn_content && v3 == 2)
          {
LABEL_7:
            *(v1 + 25) = a1;
            dispatch thunk of AnyLocation.set(_:transaction:)();
            v4 = 1;
            if (!*(v1 + 56))
            {
              goto LABEL_17;
            }

LABEL_12:
            v5 = *(v1 + 65);
            if (v5 == 3 || a1.value == SwiftUI_NavigationSplitColumn_detail)
            {
              goto LABEL_17;
            }

            if (a1.value == SwiftUI_NavigationSplitColumn_content)
            {
              if (v5 == 2)
              {
                goto LABEL_22;
              }
            }

            else if ((v5 - 1) < 2)
            {
LABEL_22:
              *(v1 + 65) = a1;
              dispatch thunk of AnyLocation.set(_:transaction:)();
              v4 = 1;
            }

LABEL_17:
            *v1 += v4;
            return v4;
          }
        }

        else if ((v3 - 1) < 2)
        {
          goto LABEL_7;
        }
      }
    }

    v4 = 0;
    if (!*(v1 + 56))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  LOBYTE(v4) = 0;
  return v4;
}

uint64_t ScrollEnvironmentStorage.baseProperties.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentProperties(v1 + 16, a1);
}

uint64_t closure #1 in ScrollEnvironmentStorage.baseProperties.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t ScrollEnvironmentStorage.transform.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return outlined init with copy of ScrollEnvironmentTransform?(v1 + 280, a1);
}

uint64_t specialized implicit closure #1 in _GraphInputs.scrollStorage.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t default argument 3 of TransformScrollStorageEnvironment.init(environment:transform:storage:oldProperties:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = 257;
  *(a1 + 84) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 67) = 0u;
  *(a1 + 88) = 4;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 96) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(a1 + 104) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v2);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 158) = 0;
  *(a1 + 166) = 1;
  *(a1 + 167) = 0u;
  *(a1 + 183) = 0u;
  *(a1 + 199) = 0;
  static EdgeInsets.zero.getter();
  *(a1 + 200) = v3;
  *(a1 + 208) = v4;
  *(a1 + 216) = v5;
  *(a1 + 224) = v6;
  result = static EdgeInsets.zero.getter();
  *(a1 + 232) = v8;
  *(a1 + 240) = v9;
  *(a1 + 248) = v10;
  *(a1 + 256) = v11;
  return result;
}

uint64_t assignWithCopy for TransformScrollStorageEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 84) = *(a2 + 84);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 92) = *(a2 + 92);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(v5);
      *(a1 + 24) = *(a2 + 24);
      v6 = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 88) = v8;
      *(a1 + 72) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
    v9 = *(a2 + 40);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v11;
    *(a1 + 56) = v10;
    *(a1 + 40) = v9;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for TransformScrollStorageEnvironment(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  if (!*(a1 + 48))
  {
    goto LABEL_5;
  }

  if (!*(a2 + 48))
  {
    outlined destroy of AccessibilityRelationshipScope.Key(a1 + 24);
LABEL_5:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
LABEL_6:
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 97) = *(a2 + 97);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 182) = *(a2 + 182);
  *(a1 + 183) = *(a2 + 183);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  v4 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformScrollStorageEnvironment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformScrollStorageEnvironment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options()
{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options;
  if (!lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollEnvironmentProperties.Options and conformance ScrollEnvironmentProperties.Options);
  }

  return result;
}

uint64_t type metadata completion function for PopUpButton()
{
  result = type metadata accessor for PickerStyleConfiguration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v9 = ((v7 + 16) & ~v7) + *(v5 + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v11 = v6 & 0x100000;
  if (v7 > 7 || v11 != 0 || (v8 & (v7 + 72)) + v10 + 39 > 0x18)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + (v8 & (v7 + 16)));
  }

  else
  {
    *a1 = *a2;
    v15 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v16 = (a2 & 0xFFFFFFFFFFFFFFF8);
    v30 = v4;
    v17 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v15[4] = v17;
    v15[5] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    (**(v17 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 8, (a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v18 = v16[6];
    v15[6] = v18;
    v15[7] = v16[7];
    v15[8] = v16[8];
    v28 = v16 + 79;
    v29 = ((v16 + 79) & 0xFFFFFFFFFFFFFFF8);
    *((v15 + 79) & 0xFFFFFFFFFFFFFFF8) = *v29;
    v19 = ((((v15 + 79) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = *(v5 + 16);
    v21 = v18;

    v20(v19 + 1, ((v29 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v30);
    v22 = (v15 + v9 + 79) & 0xFFFFFFFFFFFFFFF8;
    v23 = &v28[v9] & 0xFFFFFFFFFFFFFFF8;
    *v22 = *v23;
    *(v22 + 8) = *(v23 + 8);
    v24 = v10 + ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
    v25 = *(v29 + v10 + 7);
    v26 = *(v29 + v10 + 15);

    outlined copy of Environment<Bool>.Content(v25, v26);
    *(v24 + 7) = v25;
    *(v24 + 15) = v26;
    *(v24 + 23) = *(v29 + v10 + 23);
  }

  return v3;
}

uint64_t destroy for PopUpButton(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((a1 & 0xFFFFFFFFFFFFFFF8) + 8);

  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + (v6 | 7) + 72) & ~(v6 | 7);

  (*(v5 + 8))((v6 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v6, v4);
  v8 = *(v5 + 64) + ((v6 + 16) & ~v6) + 7;

  v9 = v7 + (v8 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);

  return outlined consume of Environment<Bool>.Content(v10, v11);
}

unint64_t initializeWithCopy for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v5 = (a2 & 0xFFFFFFFFFFFFFFF8);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v4[4] = v6;
  v4[5] = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  (**(v6 - 8))((a1 & 0xFFFFFFFFFFFFFFF8) + 8, (a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = v5[6];
  v4[6] = v7;
  v4[7] = v5[7];
  v4[8] = v5[8];
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v29 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = *(v9 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v13 = ((v4 + v11 + 72) & v12);
  v14 = ((v5 + v11 + 72) & v12);
  *v13 = *v14;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = v15 + v11 + 8;
  v18 = v16 + v11 + 8;
  v19 = v7;

  v29(v17 & ~v11, v18 & ~v11, v8);
  v20 = *(v10 + 48) + ((v11 + 16) & ~v11) + 7;
  v21 = (v13 + v20) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v14 + v20) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  v23 = (v20 & 0xFFFFFFFFFFFFFFF8) + 9;
  v24 = v13 + v23;
  v25 = v14 + v23;
  v26 = *(v14 + v23 + 7);
  v27 = *(v14 + v23 + 15);

  outlined copy of Environment<Bool>.Content(v26, v27);
  *(v24 + 7) = v26;
  v24[15] = v27;
  *(v24 + 23) = *(v25 + 23);
  return a1;
}

unint64_t assignWithCopy for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v6 = (a2 & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(((a1 & 0xFFFFFFFFFFFFFFF8) + 8), ((a2 & 0xFFFFFFFFFFFFFFF8) + 8));
  v7 = v6[6];
  v8 = v5[6];
  v5[6] = v7;
  v9 = v7;

  v5[7] = v6[7];

  v5[8] = v6[8];
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v5 + v12 + 72) & v13);
  v15 = ((v6 + v12 + 72) & v13);
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 24))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  v24 = *(v23 + 7);
  LOBYTE(v18) = v23[15];
  outlined copy of Environment<Bool>.Content(v24, v18);
  v25 = *(v22 + 7);
  v26 = v22[15];
  *(v22 + 7) = v24;
  v22[15] = v18;
  outlined consume of Environment<Bool>.Content(v25, v26);
  *(v22 + 23) = *(v23 + 23);
  return a1;
}

unint64_t initializeWithTake for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  *(v4 + 56) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 56);
  *(v4 + 40) = v7;
  *(v4 + 24) = v6;
  *(v4 + 8) = v5;
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v11 = ((v9 + 72 + (a1 & 0xFFFFFFFFFFFFFFF8)) & v10);
  v12 = ((v9 + 72 + (a2 & 0xFFFFFFFFFFFFFFF8)) & v10);
  *v11 = *v12;
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v14;
  v15 = v8 + 32;
  (*(v8 + 32))((v13 + v9 + 8) & ~v9, (v14 + v9 + 8) & ~v9);
  v16 = *(v15 + 32) + ((v9 + 16) & ~v9) + 7;
  v17 = (v11 + v16) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v12 + v16) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8) + 9;
  v20 = v11 + v19;
  v21 = v12 + v19;
  LOBYTE(v18) = v21[15];
  *(v20 + 7) = *(v21 + 7);
  v20[15] = v18;
  *(v20 + 23) = *(v21 + 23);
  return a1;
}

unint64_t assignWithTake for PopUpButton(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((a1 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 24);
  *(v5 + 40) = *(v6 + 40);
  *(v5 + 24) = v8;
  *(v5 + 8) = v7;
  v9 = *(v5 + 48);
  *(v5 + 48) = *(v6 + 48);

  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v12 + 72 + v5) & v13);
  v15 = ((v12 + 72 + v6) & v13);
  *v14 = *v15;

  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  (*(v11 + 40))((v16 + v12 + 8) & ~v12, (v17 + v12 + 8) & ~v12, v10);
  v18 = *(v11 + 64) + ((v12 + 16) & ~v12) + 7;
  v19 = (v14 + v18) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + v18) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;

  *(v19 + 8) = *(v20 + 8);
  v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 9;
  v22 = v14 + v21;
  v23 = v15 + v21;
  v24 = *(v15 + v21 + 15);
  v25 = *(v22 + 7);
  v26 = v22[15];
  *(v22 + 7) = *(v15 + v21 + 7);
  v22[15] = v24;
  outlined consume of Environment<Bool>.Content(v25, v26);
  *(v22 + 23) = *(v23 + 23);
  return a1;
}

uint64_t getEnumTagSinglePayload for PopUpButton(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (v8 >= a2)
  {
    goto LABEL_31;
  }

  v10 = ((v7 + 72) & ~v9) + ((*(*(*(a3 + 16) - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 48;
  v11 = a2 - v8;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_31:
    v19 = a1 & 0xFFFFFFFFFFFFFFF8;
    if (v8 != 0x7FFFFFFF)
    {
      return (*(v4 + 48))((v7 + ((((v19 + v9 + 72) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
    }

    v20 = *(v19 + 32);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    return (v20 + 1);
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

double storeEnumTagSinglePayload for PopUpButton(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  if (v6 >= 0)
  {
    v7 = 0x7FFFFFFF;
  }

  v8 = *(v5 + 80);
  v9 = 46 - ((-73 - v8) | v8 | 7) - ((((-17 - v8) | v8) - *(*(*(a4 + 16) - 8) + 64) - 7) | 7);
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (v9)
    {
      v11 = 2;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_19:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *(a1 + v9) = 0;
      }

      else if (v13)
      {
        *(a1 + v9) = 0;
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
      v19 = a1 & 0xFFFFFFFFFFFFFFF8;
      if (v7 == 0x7FFFFFFF)
      {
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 64) = 0;
          result = 0.0;
          *(v19 + 32) = 0u;
          *(v19 + 48) = 0u;
          *(v19 + 16) = 0u;
          *(v19 + 8) = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 32) = a2 - 1;
        }
      }

      else
      {
        v20 = *(v5 + 56);

        v20((v8 + ((((v19 + (v8 | 7) + 72) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
      }

      return result;
    }
  }

  if (v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v9)
  {
    v16 = ~v7 + a2;
    v17 = a1;
    bzero(a1, v9);
    a1 = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v9) = v15;
    }

    else
    {
      *(a1 + v9) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v9) = v15;
  }

  return result;
}

uint64_t PopUpButton.detailLabel.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + 24);
  type metadata accessor for PickerStyleConfiguration();
  PickerStyleConfiguration.$selection.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v4, v8, v9, v10);
  v11 = type metadata accessor for PickerStyleConfiguration.Content();
  return PickerCurrentValueLabel.init(selection:options:)(v7, v12, v11, a2);
}

uint64_t PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
  v53 = v3;
  v54 = a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  v58 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerCurrentValueLabel();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for PickerContentView();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v56 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v91[15] = swift_getWitnessTable();
  v91[16] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  WitnessTable = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v91[13] = v42;
  v91[14] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v91[11] = swift_getWitnessTable();
  v91[12] = &protocol witness table for ToggleStyleModifier<A>;
  v91[0] = v6;
  v91[1] = v9;
  v91[2] = WitnessTable;
  v91[3] = swift_getWitnessTable();
  type metadata accessor for UIKitMenuButton();
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v46 = type metadata accessor for ModifiedContent();
  v47 = type metadata accessor for ModifiedContent();
  v45 = type metadata accessor for LabeledContent();
  v11 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v43 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v11);
  v44 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v48 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
  v49 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
  v50 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for StaticIf();
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v41 - v15;
  v16 = v55;
  v17 = v55 + *(v54 + 40);
  v18 = *(v17 + *(type metadata accessor for PickerStyleConfiguration() + 36));
  outlined init with copy of SubviewsCollection(v16 + 8, v91);
  PickerContentView.init(selection:items:)(v18, v91, v90);

  View.styleContext<A>(_:)();
  (*(*(v7 - 8) + 8))(v90, v7);
  v63 = v4;
  v64 = v5;
  v65 = v16;
  v66 = v91;
  v59 = v4;
  v60 = v5;
  v61 = v16;
  v62 = v91;
  v19 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v88 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v89 = v19;
  v20 = swift_getWitnessTable();
  v86 = &protocol witness table for UIKitMenuButton<A, B>;
  v87 = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v84 = swift_getWitnessTable();
  v85 = &protocol witness table for AccessibilityAttachmentModifier;
  v21 = swift_getWitnessTable();
  v82 = v20;
  v83 = v21;
  v22 = swift_getWitnessTable();
  v23 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v80 = v22;
  v81 = v23;
  v24 = swift_getWitnessTable();
  v25 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v78 = v24;
  v79 = v25;
  v26 = swift_getWitnessTable();
  v27 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v76 = v26;
  v77 = v27;
  v28 = swift_getWitnessTable();
  v29 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v74 = v28;
  v75 = v29;
  v30 = swift_getWitnessTable();
  v31 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v72 = v30;
  v73 = v31;
  v32 = swift_getWitnessTable();
  v33 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v70 = v32;
  v71 = v33;
  v40 = swift_getWitnessTable();
  v34 = v51;
  StaticIf<>.init<A>(in:then:else:)();
  v67 = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
  v68 = v40;
  v69 = v40;
  v35 = swift_getWitnessTable();
  v36 = v52;
  v37 = v34;
  static ViewBuilder.buildExpression<A>(_:)(v34, v12, v35);
  v38 = *(v53 + 8);
  v38(v37, v12);
  static ViewBuilder.buildExpression<A>(_:)(v36, v12, v35);
  v38(v36, v12);
  return (*(*(v56 - 8) + 8))(v91);
}

uint64_t closure #1 in PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v41 = a1;
  v43 = a3;
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  v35[1] = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerCurrentValueLabel();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerContentView();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v5 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v69 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v6 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v67 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v36 = swift_getWitnessTable();
  v64 = v36;
  v65 = &protocol witness table for ToggleStyleModifier<A>;
  v70 = v3;
  v71 = v5;
  v72 = v6;
  v73 = swift_getWitnessTable();
  type metadata accessor for UIKitMenuButton();
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  type metadata accessor for ModifiedContent();
  v37 = type metadata accessor for ModifiedContent();
  v35[4] = type metadata accessor for LabeledContent();
  v7 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v35[2] = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v7);
  v35[3] = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v38 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
  v39 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
  v40 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - v13;
  v15 = type metadata accessor for PopUpButton();
  if (specialized Environment.wrappedValue.getter(*(v41 + *(v15 + 44)), *(v41 + *(v15 + 44) + 8)) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(v42, 0, v16, v15, v4, v36, v11);
  v17 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v62 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v63 = v17;
  v18 = swift_getWitnessTable();
  v60 = &protocol witness table for UIKitMenuButton<A, B>;
  v61 = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v58 = swift_getWitnessTable();
  v59 = &protocol witness table for AccessibilityAttachmentModifier;
  v19 = swift_getWitnessTable();
  v56 = v18;
  v57 = v19;
  v20 = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v54 = v20;
  v55 = v21;
  v22 = swift_getWitnessTable();
  v23 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v52 = v22;
  v53 = v23;
  v24 = swift_getWitnessTable();
  v25 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v50 = v24;
  v51 = v25;
  v26 = swift_getWitnessTable();
  v27 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v48 = v26;
  v49 = v27;
  v28 = swift_getWitnessTable();
  v29 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v46 = v28;
  v47 = v29;
  v30 = swift_getWitnessTable();
  v31 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v44 = v30;
  v45 = v31;
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v32);
  v33 = *(v9 + 8);
  v33(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v32);
  return (v33)(v14, v8);
}

uint64_t PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a1;
  v51 = a6;
  v57 = a5;
  v67 = a2;
  v68 = a3;
  v71 = a7;
  v8 = *(a4 + 16);
  v63 = *(a4 + 24);
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerCurrentValueLabel();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v106 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v103 = a6;
  v104 = &protocol witness table for ToggleStyleModifier<A>;
  v107 = v9;
  v108 = v10;
  v109 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  type metadata accessor for UIKitMenuButton();
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  type metadata accessor for ModifiedContent();
  v53 = type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for LabeledContent();
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v12;
  v13 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v14 = type metadata accessor for ModifiedContent();
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v47 - v15;
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v13);
  v16 = type metadata accessor for ModifiedContent();
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v47 - v17;
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v56 = type metadata accessor for ModifiedContent();
  v62 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v50 = &v47 - v18;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
  v58 = type metadata accessor for ModifiedContent();
  v64 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v47 - v19;
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  v65 = v20;
  v66 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v55 = &v47 - v22;
  v77 = v8;
  v78 = v57;
  v79 = v63;
  v80 = v51;
  v81 = v67;
  v82 = v68;
  v83 = v70;
  v84 = v69;
  v72 = v8;
  v73 = v57;
  v74 = v63;
  v75 = v51;
  v76 = v70;
  v23 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v101 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v102 = v23;
  v24 = swift_getWitnessTable();
  v99 = &protocol witness table for UIKitMenuButton<A, B>;
  v100 = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v97 = swift_getWitnessTable();
  v98 = &protocol witness table for AccessibilityAttachmentModifier;
  v25 = swift_getWitnessTable();
  v26 = v52;
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), partial apply for closure #2 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), v52);
  v95 = v24;
  v96 = v25;
  v27 = swift_getWitnessTable();
  v28 = v49;
  View.listLabeledContentAllowsOutsetting()();
  (*(v61 + 8))(v26, v11);
  v29 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v93 = v27;
  v94 = v29;
  v30 = swift_getWitnessTable();
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  v31 = v48;
  View.input<A>(_:)();
  (*(v60 + 8))(v28, v14);
  v32 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v91 = v30;
  v92 = v32;
  v33 = swift_getWitnessTable();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v34 = v50;
  MEMORY[0x18D00A570](v35, v16, v35, v33);
  (*(v59 + 8))(v31, v16);
  v36 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v89 = v33;
  v90 = v36;
  v37 = v56;
  v38 = swift_getWitnessTable();
  v39 = v54;
  View.allowsToolbarItemBridging(options:role:)(1, 2, v37, v38);
  (*(v62 + 8))(v34, v37);
  v40 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v87 = v38;
  v88 = v40;
  v41 = v58;
  v42 = swift_getWitnessTable();
  v43 = v55;
  View.toolbarPlatformItemTint()(v41, v42);
  (*(v64 + 8))(v39, v41);
  swift_getKeyPath();
  v44 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v85 = v42;
  v86 = v44;
  v45 = v65;
  swift_getWitnessTable();
  View.transformEnvironment<A>(_:transform:)();

  return (*(v66 + 8))(v43, v45);
}

uint64_t closure #2 in PopUpButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a1;
  v38 = a3;
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  v35[0] = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerCurrentValueLabel();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for PickerContentView();
  _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v5 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v64 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v6 = swift_getWitnessTable();
  v61 = swift_getWitnessTable();
  v62 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v7 = swift_getWitnessTable();
  v59 = v7;
  v60 = &protocol witness table for ToggleStyleModifier<A>;
  v65 = v3;
  v66 = v5;
  v67 = v6;
  v68 = swift_getWitnessTable();
  type metadata accessor for UIKitMenuButton();
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  type metadata accessor for ModifiedContent();
  v35[4] = type metadata accessor for ModifiedContent();
  v35[3] = type metadata accessor for LabeledContent();
  v8 = MEMORY[0x1E697FD28];
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting, &type metadata for ListLabeledContentAllowsOutsetting, MEMORY[0x1E697FD28]);
  v35[1] = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, v8);
  v35[2] = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>();
  v35[5] = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>();
  v35[6] = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>);
  v35[7] = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = type metadata accessor for PopUpButton();
  PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(v36, 0, 3, v16, v4, v7, v12);
  v17 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  v57 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v58 = v17;
  v18 = swift_getWitnessTable();
  v55 = &protocol witness table for UIKitMenuButton<A, B>;
  v56 = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for AccessibilityAttachmentModifier;
  v19 = swift_getWitnessTable();
  v51 = v18;
  v52 = v19;
  v20 = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>();
  v49 = v20;
  v50 = v21;
  v22 = swift_getWitnessTable();
  v23 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v47 = v22;
  v48 = v23;
  v24 = swift_getWitnessTable();
  v25 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>, lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  v45 = v24;
  v46 = v25;
  v26 = swift_getWitnessTable();
  v27 = _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier>, EmptyModifier>, lazy protocol witness table accessor for type InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate> and conformance InvertedViewInputPredicate<A>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, StaticIf<_SemanticFeature<Semantics_v5>, AllowsToolbarItemBridgingModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  v43 = v26;
  v44 = v27;
  v28 = swift_getWitnessTable();
  v29 = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>, &type metadata for PlatformItemTintModifier, lazy protocol witness table accessor for type PlatformItemTintModifier and conformance PlatformItemTintModifier);
  v41 = v28;
  v42 = v29;
  v30 = swift_getWitnessTable();
  v31 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>();
  v39 = v30;
  v40 = v31;
  v32 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v32);
  v33 = *(v10 + 8);
  v33(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v32);
  return (v33)(v15, v9);
}

uint64_t closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(int a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a4;
  v61 = a3;
  v56 = a1;
  v59 = a9;
  v52 = a2;
  v13 = type metadata accessor for UIButton.Configuration();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PickerStyleConfiguration.Content();
  v71 = a5;
  v60 = a5;
  v72 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v73 = a7;
  type metadata accessor for PickerCurrentValueLabel();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v15 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v54 = a6;
  v16 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v68 = WitnessTable;
  v69 = v18;
  v19 = swift_getWitnessTable();
  v66 = a8;
  v67 = &protocol witness table for ToggleStyleModifier<A>;
  v20 = swift_getWitnessTable();
  v51 = v15;
  v70 = v15;
  v71 = v16;
  v50 = v16;
  v47 = v19;
  v72 = v19;
  v73 = v20;
  v46 = v20;
  v21 = type metadata accessor for UIKitMenuButton();
  v48 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  type metadata accessor for UIKitSystemButtonConfigurationModifier(255);
  v24 = type metadata accessor for ModifiedContent();
  v49 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v45 - v25;
  v27 = type metadata accessor for ModifiedContent();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v45 - v33;
  if (v52 == 3)
  {
    v35 = type metadata accessor for PopUpButton();
    v32 = specialized Environment.wrappedValue.getter(*(v61 + *(v35 + 44)), *(v61 + *(v35 + 44) + 8));
  }

  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v36);
  v44[7] = v46;
  v44[6] = v47;
  v44[5] = v50;
  v44[3] = v44;
  v44[4] = v51;
  UIKitMenuButton.init(action:isPopUpButton:flexibleDimensions:menuTitleVisibility:menuIndicatorVisibility:onPresentationChanged:menuContent:label:)(0, 0, 1, v56, 2, v37, 0, 0, v23, partial apply for closure #1 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:), v38, partial apply for closure #2 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:));
  v39 = v55;
  static UIButton.Configuration.bordered()();
  View.uikitButtonConfiguration(_:)(v39, v21, &protocol witness table for UIKitMenuButton<A, B>);
  (*(v57 + 8))(v39, v58);
  (*(v48 + 8))(v23, v21);
  LOBYTE(v70) = 27;
  v64 = &protocol witness table for UIKitMenuButton<A, B>;
  v65 = &protocol witness table for UIKitSystemButtonConfigurationModifier;
  v40 = swift_getWitnessTable();
  View.accessibilityAddTraits(_:)(&v70, v24, v40);
  (*(v49 + 8))(v26, v24);
  v62 = v40;
  v63 = &protocol witness table for AccessibilityAttachmentModifier;
  v41 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v30, v27, v41);
  v42 = *(v28 + 8);
  v42(v30, v27);
  static ViewBuilder.buildExpression<A>(_:)(v34, v27, v41);
  return (v42)(v34, v27);
}

uint64_t closure #1 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v19[0] = a1;
  v19[1] = a4;
  type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v6 = type metadata accessor for ModifiedContent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  KeyPath = swift_getKeyPath();
  v32 = 0;
  v14 = swift_getKeyPath();
  v31 = 0;
  v15 = swift_getKeyPath();
  v30 = 0;
  *&v20 = 0x4038000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v29 = BYTE8(v33);
  v28 = BYTE8(v34);
  *&v20 = KeyPath;
  BYTE8(v20) = v32;
  *&v21 = v14;
  BYTE8(v21) = v31;
  v22 = v15;
  v23 = 0uLL;
  LOBYTE(v24) = v30;
  *(&v24 + 1) = v33;
  LOBYTE(v25) = BYTE8(v33);
  *(&v25 + 1) = v34;
  LOBYTE(v26) = BYTE8(v34);
  *(&v26 + 1) = v35;
  v27 = BYTE8(v35);
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v20, a2, &type metadata for CheckmarkToggleStyle, a3);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v33 = v20;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  outlined destroy of CheckmarkToggleStyle(&v33);
  v19[2] = a3;
  v19[3] = &protocol witness table for ToggleStyleModifier<A>;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v17 = *(v7 + 8);
  v17(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, WitnessTable);
  return (v17)(v12, v6);
}

uint64_t closure #2 in closure #1 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v22[4] = type metadata accessor for PickerStyleConfiguration.Content();
  v22[5] = a1;
  v22[6] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v22[7] = a2;
  v5 = type metadata accessor for PickerCurrentValueLabel();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = type metadata accessor for PopUpButton();
  PopUpButton.detailLabel.getter(v16, v8);
  WitnessTable = swift_getWitnessTable();
  View.toolbarButtonLabel()(v5, WitnessTable);
  (*(v6 + 8))(v8, v5);
  v18 = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[2] = WitnessTable;
  v22[3] = v18;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v19);
  v20 = *(v10 + 8);
  v20(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v19);
  return (v20)(v15, v9);
}

uint64_t closure #2 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a4, a3, a4);
  v4 = type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  MEMORY[0x18D00A570](v5, v4, v5, &protocol witness table for PickerStyleConfiguration<A>.Label);
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>);
  v6 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>, &type metadata for PlatformItemListContentModifier, lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier);
  WitnessTable = swift_getWitnessTable();
  v8 = static ViewBuilder.buildExpression<A>(_:)(WitnessTable, v6, WitnessTable);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v6, WitnessTable);
}

_BYTE *closure #3 in PopUpButton.menuButton<A>(content:flexibleDimensions:menuIndicatorVisibility:)(_BYTE *result)
{
  if (!*result)
  {
    *result = 1;
  }

  return result;
}

unint64_t PopUpButton.init(children:configuration:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PickerStyleConfiguration.CurrentValueLabel();
  swift_getWitnessTable();
  *a3 = protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key() & 1;
  v6 = a1[1];
  *(a3 + 8) = *a1;
  *(a3 + 24) = v6;
  v7 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v7;
  v8 = type metadata accessor for PopUpButton();
  v9 = v8[10];
  v10 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v10 - 8) + 32))(a3 + v9, a2, v10);
  v11 = a3 + v8[11];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = (a3 + v8[12]);
  result = lazy protocol witness table accessor for type AnyButtonStyleType.Unknown and conformance AnyButtonStyleType.Unknown();
  *v12 = &type metadata for AnyButtonStyleType.Unknown;
  v12[1] = result;
  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<HideLabelPredicate, LabelsHiddenModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s7SwiftUI8StaticIfVyAA16_SemanticFeatureVyAA12Semantics_v5VGAA33AllowsToolbarItemBridgingModifierVAA05EmptyM0VGACyxq_q0_GAA04ViewM0A2A0O14InputPredicateRzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type HideLabelPredicate and conformance HideLabelPredicate()
{
  result = lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate;
  if (!lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HideLabelPredicate and conformance HideLabelPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<MenuOrder>, &type metadata for MenuOrder, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<MenuOrder> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance HideLabelPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static HideLabelPredicate.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t specialized static HideLabelPredicate.evaluate(inputs:)()
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (static Semantics.v4.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0) || (static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 || (static StyleContextAcceptsPredicate.evaluate(inputs:)())
  {
    v0 = 0;
  }

  else
  {
    v0 = static StyleContextAcceptsPredicate.evaluate(inputs:)() ^ 1;
  }

  return v0 & 1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy7SwiftUI7ToolbarO11BarLocationOG_SSs5NeverOTg503_s7d9UI20UIKitf37StrategyV15updateLocationsShyAA0D0O11gH76OGyFSaySSGycfu35_SSAHcfu36_33_8c3cf78dad0b9b80499610c7de1a2d3dAHSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v31;
    v5 = v1 + 56;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      outlined init with copy of Toolbar.BarLocation(*(v1 + 48) + 40 * v6, v30);
      v10 = Toolbar.BarLocation.description.getter();
      v12 = v11;
      result = outlined destroy of Toolbar.BarLocation(v30);
      v13 = v4;
      v31 = v4;
      v14 = v1;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v10;
      *(v17 + 40) = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t ToolbarBridge.toolbarInputContentDidChange<A>(_:hostingController:)(uint64_t a1, void *a2)
{
  v3 = a2;
  Toolbar.UpdateContext.init<A>(hostingController:)(v3, v7);
  v4 = ToolbarBridge.toolbarInputContentDidChange(_:context:)(a1, v7);
  ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v4, v5 & 0xFF010101, v3, v7);

  return outlined destroy of Toolbar.UpdateContext(v7);
}

uint64_t ToolbarBridge.uiTabViewSidebarBottomBarItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for ToolbarBridge.platformVended;
  swift_beginAccess();
  v4 = type metadata accessor for Toolbar.PlatformVended(0);
  return outlined init with copy of PlatformItemList.Item?(v3 + *(v4 + 44), a1, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
}

uint64_t static ToolbarBridge.update<A>(environment:toolbarBridge:hostingController:)(uint64_t *a1, void *a2, void *a3)
{
  v5 = a3;
  Toolbar.UpdateContext.init<A>(hostingController:)(v5, v12);
  if (a2)
  {
    v6 = a2;
    v7 = ToolbarBridge.update(environment:context:)(a1, v12);
    ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)(v7, v8 & 0xFF010101, v5, v12);
  }

  outlined init with copy of Toolbar.UpdateContext(v12, v11);
  outlined init with copy of PushTarget?(v11, &v10, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey>, &type metadata for EnvironmentValues.ToolbarUpdateContextKey, &protocol witness table for EnvironmentValues.ToolbarUpdateContextKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarUpdateContextKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined destroy of PushTarget?(v11, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  return outlined destroy of Toolbar.UpdateContext(v12);
}

void ToolbarBridge.adoptSystemUpdates<A>(_:hostingController:context:)(uint64_t a1, __int16 a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CDA90C0;
  v6 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v6 & 1) != 0 || (v12 = 0, v13 = 0, v14 = 0, v15 = xmmword_18CDA90D0, v7 = specialized Set.contains(_:)(&v12, a1), outlined destroy of Toolbar.BarLocation(&v12), (v7))
  {
    ToolbarBridge.updateSplitControllerItem<A>(hostingController:updates:)(a3, a1);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CD90760;
  v8 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v8)
  {
    swift_beginAccess();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 setToolbarItems_];
  }

  if ((a2 & 0x100) != 0)
  {
    ToolbarBridge.updateToolbarVisibility<A>(hostingController:)(a3);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = xmmword_18CDA90E0;
  v10 = specialized Set.contains(_:)(&v12, a1);
  outlined destroy of Toolbar.BarLocation(&v12);
  if (v10 & 1) != 0 || (v12 = 0, v13 = 0, v14 = 0, v15 = xmmword_18CDA90F0, v11 = specialized Set.contains(_:)(&v12, a1), outlined destroy of Toolbar.BarLocation(&v12), (v11))
  {
    ToolbarBridge.updateTabBarSidebar<A>(hostingController:updates:)(a3, a1);
  }
}

void ToolbarBridge.updateSplitControllerItem<A>(hostingController:updates:)(void *a1, uint64_t a2)
{
  v4 = [a1 splitViewController];
  if (v4)
  {
    v5 = v4;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CDA90C0;
    v6 = specialized Set.contains(_:)(&v14, a2);
    outlined destroy of Toolbar.BarLocation(&v14);
    if (v6)
    {
      v7 = v2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      isa = [*(v7 + *(type metadata accessor for Toolbar.PlatformVended(0) + 52)) leadingItemGroups];
      if (!isa)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v9 = [v5 navigationItem];
      [v9 setLeadingItemGroups_];
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CDA90D0;
    v10 = specialized Set.contains(_:)(&v14, a2);
    outlined destroy of Toolbar.BarLocation(&v14);
    if (v10)
    {
      v11 = v2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      v12 = [*(v11 + *(type metadata accessor for Toolbar.PlatformVended(0) + 52)) trailingItemGroups];
      if (!v12)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = Array._bridgeToObjectiveC()().super.isa;
      }

      v13 = [v5 navigationItem];
      [v13 setTrailingItemGroups_];
    }
  }
}

void ToolbarBridge.updateTabBarSidebar<A>(hostingController:updates:)(void *a1, uint64_t a2)
{
  v4 = [a1 tabBarController];
  if (v4)
  {
    v5 = v4;
    if (specialized ToolbarBridge.canUpdateTabBar<A>(_:hostingController:)(v4, a1))
    {
      ToolbarBridge.updateTabSidebar(tabBarController:updates:)(v5, a2);
    }
  }
}

void closure #1 in ToolbarBridge.updateNavigationItem<A>(hostingController:adaptor:)(uint64_t a1, id a2)
{
  v3 = [a2 navigationItem];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v5, v7);
      v6 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      (*(v6 + 16))(v3);
      __swift_destroy_boxed_opaque_existential_1(v7);
      v5 += 48;
      --v4;
    }

    while (v4);
  }
}

void closure #1 in ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v7, v11);
      v8 = v12;
      v9 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      (*(v9 + 8))(&v14, v8, v9);
      a1 = __swift_destroy_boxed_opaque_existential_1(v11);
      v6 |= v14;
      v7 += 48;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v10[2] = a3;
  v10[3] = a2;
  v10[4] = v6;
}

uint64_t closure #1 in closure #1 in ToolbarBridge.navigationItemWillAppear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a2 + direct field offset for ToolbarBridge.navigationAdaptor);
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = v5 + 32;

    v10 = 1;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v9, v17);
      outlined init with copy of _Benchmark(v17, v14);
      outlined destroy of UINavigationItemAdaptorStorage.Adaptor(v17);
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 &= (*(v12 + 24))(a3, a1, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v14);
      v9 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return ((a4 & 1) == 0) | ((v10 & 1) == 0);
}

void closure #1 in ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v6 = a1;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    do
    {
      outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(v9, v14);
      v10 = v15;
      v11 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      (*(v11 + 8))(&v17, v10, v11);
      a1 = __swift_destroy_boxed_opaque_existential_1(v14);
      v8 |= v17;
      v9 += 48;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  v12[2] = a3;
  v12[3] = v13;
  v12[4] = v6;
  v12[5] = a2;
  v12[6] = v8;
}

uint64_t closure #1 in closure #1 in ToolbarBridge.navigationItemWillDisappear<A>(hostingController:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    v8 = -v4;
    v9 = a2 + 32;
    v10 = 1;
    do
    {
      for (i = v9 + 48 * v7++; ; i += 48)
      {
        outlined init with copy of UINavigationItemAdaptorStorage.Adaptor(i, v18);
        v12 = v19;
        v13 = v20;
        __swift_project_boxed_opaque_existential_1(v18, v19);
        v14 = (*(v13 + 32))(a3, a1, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v18);
        if ((v14 & 1) == 0)
        {
          break;
        }

        ++v7;
        if (v8 + v7 == 1)
        {
          v15 = v10;
          return ((a4 & 1) == 0) | ((v15 & 1) == 0);
        }
      }

      v15 = 0;
      v10 = 0;
    }

    while (v8 + v7);
  }

  else
  {
    v15 = 1;
  }

  return ((a4 & 1) == 0) | ((v15 & 1) == 0);
}

void ToolbarBridge.updateTabSidebar(tabBarController:updates:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  v46 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &selRef_bundleIdentifier;
  v14 = [a1 sidebar];
  aBlock = 0;
  v48 = 0;
  v49 = 0;
  v50 = xmmword_18CDA90E0;
  v15 = specialized Set.contains(_:)(&aBlock, a2);
  outlined destroy of Toolbar.BarLocation(&aBlock);
  if (v15)
  {
    v16 = v2 + direct field offset for ToolbarBridge.platformVended;
    swift_beginAccess();
    v17 = *(v16 + 6);
    if (v17 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      v19[2] = *(v5 + 80);
      v19[3] = *(v5 + 88);
      v19[4] = v18;
      *(&v50 + 1) = partial apply for closure #1 in ToolbarBridge.updateTabSidebar(tabBarController:updates:);
      v51 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v48 = 1107296256;
      v49 = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
      *&v50 = &block_descriptor_182;
      v20 = _Block_copy(&aBlock);
      v21 = v12;
      v22 = v14;
      v23 = objc_opt_self();

      v24 = [v23 elementWithProvider_];
      _Block_release(v20);

      [v22 setNavigationOverflowItems_];

      v14 = v22;
      v12 = v21;
      v13 = 0x1FBA79000;
      goto LABEL_7;
    }

    [v14 setNavigationOverflowItems_];
  }

LABEL_7:
  aBlock = 0;
  v48 = 0;
  v49 = 0;
  v50 = xmmword_18CDA90F0;
  v25 = specialized Set.contains(_:)(&aBlock, a2);
  outlined destroy of Toolbar.BarLocation(&aBlock);
  if ((v25 & 1) != 0 && (type metadata accessor for UIKitTabBarController(), (v26 = swift_dynamicCastClass()) != 0))
  {
    v27 = v26;
    v28 = v13;
    ToolbarBridge.uiTabViewSidebarBottomBarItem.getter(v8);
    if ((*(v46 + 48))(v8, 1, v9) == 1)
    {
      v29 = a1;
      outlined destroy of ToolbarStorage.NavigationProperties?(v8, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v30 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost;
      v31 = *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost];
      *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost] = 0;

      v32 = [v27 v28 + 1802];
      [v32 setBottomBarView_];
    }

    else
    {
      outlined init with take of ToolbarStorage.NavigationProperties(v8, v12, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of _ViewList_View((v12 + 184), &aBlock);
      v33 = a1;
      v34 = AnyView.init<A>(_:)();
      v35 = OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost;
      v36 = *&v27[OBJC_IVAR____TtC7SwiftUI21UIKitTabBarController_sidebarBottomBarHost];
      if (v36)
      {
        v37 = *((*MEMORY[0x1E69E7D40] & *v36) + 0x60);
        swift_beginAccess();
        *(v36 + v37) = v34;
        v38 = v36;

        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }

      else
      {
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
        v40 = objc_allocWithZone(v39);

        v42 = specialized _UIHostingView.init(rootView:)(v41);
        v43 = *&v27[v35];
        *&v27[v35] = v42;
        v44 = v42;

        v45 = [v27 v28 + 1802];
        v38 = *&v27[v35];
        [v45 setBottomBarView_];

        v33 = v45;
      }

      outlined destroy of ToolbarStorage.NavigationProperties(v12, type metadata accessor for ToolbarStorage.Item);
    }
  }

  else
  {
  }
}

uint64_t closure #1 in ToolbarBridge.updateTabSidebar(tabBarController:updates:)(void (*a1)())
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a1)(MEMORY[0x1E69E7CC0]);
  }

  v3 = Strong;
  v4 = swift_beginAccess();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for [UIMenuElement]();

  static Update.ensure<A>(_:)();

  a1();
}

uint64_t implicit closure #36 in implicit closure #35 in UIKitToolbarStrategy.updateLocations()()
{
  memset(v2, 0, sizeof(v2));
  v3 = xmmword_18CDA90F0;
  v0 = specialized ToolbarStrategy.withUpdate<A>(_:)(partial apply for closure #1 in UIKitToolbarStrategy.updateTabBottomBarEntry(placement:));
  outlined destroy of Toolbar.BarLocation(v2);
  return v0 & 1;
}

void UIKitToolbarStrategy.updateInferredToolbarIfNeeded()()
{
  v1 = UIKitToolbarStrategy.makeBarItems()();
  if (!(v1 >> 62))
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (__CocoaSet.count.getter())
  {
LABEL_3:
    UIKitToolbarStrategy.createToolbarIfNeeded()();
  }

LABEL_4:
  v2 = *v0;
  if (!*v0)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  outlined init with copy of PushTarget?((v0 + 1), v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v9)
  {
    outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
    goto LABEL_13;
  }

  v3 = v2;
  outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  v4 = &v3[direct field offset for ToolbarBridge.platformVended];
  swift_beginAccess();
  v5 = *(v4 + 3);
  if (v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v6 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setItems_];
  }

  else
  {
  }
}

void closure #1 in closure #1 in UIKitToolbarStrategy.barButtonItems(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v33 = a3;
  v13 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34[-1] - v20;
  memset(v34, 0, sizeof(v34));
  v35 = xmmword_18CD7DD20;
  LOBYTE(a5) = specialized static Toolbar.BarLocation.== infix(_:_:)(a5, v34);
  outlined destroy of Toolbar.BarLocation(v34);
  if ((a5 & 1) != 0 && *a4 == a6)
  {
    *(v33 + 8) = 1;
  }

  v22 = *a2;
  v23 = *(a2 + 8);
  if (v23 == 1)
  {
    v24 = v22;
  }

  else
  {
    outlined init with copy of ToolbarStorage.Entry.Kind(a1, v15, type metadata accessor for ToolbarStorage.Entry.Kind);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Entry.Kind);
      goto LABEL_11;
    }

    outlined init with take of ToolbarStorage.NavigationProperties(v15, v18, type metadata accessor for ToolbarStorage.Item);
    outlined consume of OpenURLOptions?(v22, v23);
    outlined init with take of ToolbarStorage.NavigationProperties(v18, v21, type metadata accessor for ToolbarStorage.Item);
    v26 = *(v33 + 8);
    v27 = *v33;
    v28 = specialized static UIKitBarButtonItem.makeVended(item:context:)(v21, v27, v26);
    v30 = v29;
    v32 = v31;

    outlined destroy of ToolbarStorage.NavigationProperties(v21, type metadata accessor for ToolbarStorage.Item);
    *a2 = v28;
    *(a2 + 8) = v30;
    if (!v32)
    {
      goto LABEL_11;
    }

    v24 = v32;
  }

  v25 = v24;
  MEMORY[0x18D00CC30]();
  if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_11:
  *(v33 + 8) = 2;
  ++*a4;
}

uint64_t closure #3 in closure #1 in closure #1 in UIKitToolbarStrategy.makeBarItems()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v46 = a4;
  v45 = a3;
  v47 = a5;
  v7 = type metadata accessor for ToolbarStorage.Item(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of ToolbarStorage.Entry.Kind(a1, v18, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v18[1];
    v50[0] = *v18;
    v50[1] = v19;
    v20 = v18[3];
    v50[2] = v18[2];
    v50[3] = v20;
    v50[4] = v18[4];
    v21 = LOBYTE(v50[0]);
    v22 = objc_opt_self();
    if (v21 == 1)
    {
      v23 = [v22 flexibleSpaceItem];
    }

    else
    {
      v23 = [v22 fixedSpaceItemOfWidth_];
    }

    v25 = v23;
    result = outlined destroy of ToolbarStorage.SpacerItem(v50);
  }

  else
  {
    outlined init with copy of ToolbarStorage.Entry.Kind(v18, v15, type metadata accessor for ToolbarStorage.Item);
    if (v15[153] == 3)
    {
      v24 = a2 + direct field offset for ToolbarBridge.platformVended;
      swift_beginAccess();
      v25 = [*(v24 + 8) searchBarPlacementBarButtonItem];
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Item);
      v26 = v18;
    }

    else
    {
      outlined destroy of ToolbarStorage.NavigationProperties(v15, type metadata accessor for ToolbarStorage.Item);
      outlined init with take of ToolbarStorage.NavigationProperties(v18, v12, type metadata accessor for ToolbarStorage.Item);
      outlined init with copy of _ViewList_View((v12 + 184), v50);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v28 = v46;
      v51 = v46;
      outlined init with copy of BarItemView(v50, v49);
      v29 = *(v12 + 35);
      v43 = type metadata accessor for UIKitBarItemHost;
      type metadata accessor for UIKitBarItemHost<BarItemView>(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, type metadata accessor for UIKitBarItemHost);
      v44 = v30;
      v31 = objc_allocWithZone(v30);
      v32 = MEMORY[0x1E69E7D40];
      v33 = &v31[*((*MEMORY[0x1E69E7D40] & *v31) + 0x710)];
      *v33 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
      *(v33 + 1) = 0;
      v34 = &v31[*((*v32 & *v31) + 0x720)];
      *v34 = 0;
      *(v34 + 1) = 0;
      v34[16] = 1;
      *&v31[*((*v32 & *v31) + 0x718)] = v29;
      outlined init with copy of BarItemView(v49, v48);
      v35 = v29;
      v36 = specialized _UIHostingView.init(rootView:)(v48);
      v37 = specialized _UIHostingView.base.getter();
      UIHostingViewBase.safeAreaRegions.setter();

      outlined destroy of BarItemView(v49);
      UIHostingViewBase.viewGraph.getter();

      swift_weakLoadStrong();
      ViewGraph.preferenceBridge.setter();

      outlined init with copy of ToolbarStorage.Entry.Kind(v12, v9, type metadata accessor for ToolbarStorage.Item);
      v38 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
      v39 = v36;
      v40 = v45;
      v25 = specialized UIKitBarButtonItem.init(item:context:host:)(v9, v40, v28, v39);

      lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, v43);
      v41 = ViewRendererHost.idealSize()();
      [v39 setBounds_];
      UIKitBarButtonItem.initializePlatformItem(_:)(0);

      outlined destroy of BarItemView(v50);
      v26 = v12;
    }

    result = outlined destroy of ToolbarStorage.NavigationProperties(v26, type metadata accessor for ToolbarStorage.Item);
  }

  *v47 = v25;
  return result;
}

id thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (@autoreleased UIMenu?)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = (*(a2 + 16))(a2, isa);

  return v4;
}

void closure #1 in closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = ~a3;
  v7 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](v8);
    LOBYTE(v23._rawValue) = a3 & 1;
    type metadata accessor for [UIMenuElement]();
    static Update.ensure<A>(_:)();
    v11 = v25;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v14 = MEMORY[0x1E69E7CC8];
    v10[8] = 0;
    *(v10 + 2) = v14;
    *(v10 + 3) = v13;
    *(v10 + 4) = v12;
    *(v10 + 5) = v14;
    v10[48] = 0;
    type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
    v15 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
    v16 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD63400;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v15, static MenuVisitor.MenuStackGroup.empty);
    outlined init with copy of ToolbarStorage.Entry.Kind(v18, v17 + v16, type metadata accessor for MenuVisitor.MenuStackGroup);
    *(v10 + 7) = v17;
    v19 = *(v7 + 32);
    v20 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
    (*(*(v20 - 8) + 56))(&v10[v19], 1, 1, v20);
    *v10 = 0;
    MenuVisitor.visit(_:uniqueNames:)(a4, &v25);

    v11 = *(v10 + 4);

    outlined destroy of ToolbarStorage.NavigationProperties(v10, type metadata accessor for MenuVisitor);
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, v21, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v11, v23);
}

uint64_t closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.updateTitleMenuProvider()@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    goto LABEL_4;
  }

  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    a1 = *WeakValue;
LABEL_4:

    goto LABEL_5;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v22 = v9;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v9);
  v12 = MEMORY[0x1E69E7CC8];
  v8[8] = 0;
  *(v8 + 2) = v12;
  *(v8 + 3) = v11;
  *(v8 + 4) = v9;
  *(v8 + 5) = v12;
  v8[48] = 0;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v13 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v14 = (*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v13, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ToolbarStorage.Entry.Kind(v16, v15 + v14, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v8 + 7) = v15;
  v17 = *(v6 + 32);
  v18 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  *v8 = 0;
  MenuVisitor.visit(_:uniqueNames:)(a1, &v22);

  v19 = *(v8 + 4);

  result = outlined destroy of ToolbarStorage.NavigationProperties(v8, type metadata accessor for MenuVisitor);
  *a3 = v19;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

double closure #1 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  outlined init with copy of PushTarget?(a1 + 8, v17, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
  if (v18)
  {
    v7 = v19;
    *(a4 + 32) = v18;
    *(a4 + 48) = v7;
    v8 = v21;
    *(a4 + 64) = v20;
    *(a4 + 80) = v8;
    result = *v17;
    v10 = v17[1];
    *a4 = v17[0];
    *(a4 + 16) = v10;
  }

  else
  {
    outlined destroy of PushTarget?(v17, &lazy cache variable for type metadata for AnySharePreview?, &type metadata for AnySharePreview);
    if (a3)
    {
      v11 = a2;
    }

    else
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    if (a3)
    {
      v12 = a3;
    }

    *&v17[0] = v11;
    *(&v17[0] + 1) = v12;
    lazy protocol witness table accessor for type String and conformance String();

    v13 = Text.init<A>(_:)();
    result = 0.0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *a4 = v13;
    *(a4 + 8) = v15;
    *(a4 + 16) = v14 & 1;
    *(a4 + 24) = v16;
    *(a4 + 32) = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    *(a4 + 40) = 0;
    *(a4 + 48) = protocol witness for CollectionViewListDataSourceBase.section(forSectionLabelIndex:) in conformance TableDataSourceAdaptor;
    *(a4 + 56) = 0;
  }

  return result;
}

uint64_t closure #2 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItemList.Item.SystemItem?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18CD69590;
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
  return v3;
}

Class thunk for @escaping @callee_guaranteed (@guaranteed UIDragSession) -> (@owned [UIDragItem])(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id closure #3 in closure #1 in UIKitToolbarStrategy.updateHeaderProperties()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityViewController);
  v11[0] = a2;
  v11[1] = a3;
  outlined init with copy of AnyShareConfiguration(a1, v10);

  result = UIActivityViewController.init(configuration:env:)(a1, v11);
  if (!result)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v9 = [v7 initWithActivityItems:isa applicationActivities:0];

    return v9;
  }

  return result;
}

void UIKitToolbarStrategy.createToolbarIfNeeded()()
{
  v1 = *v0;
  if (!*v0)
  {
    goto LABEL_12;
  }

  outlined init with copy of PushTarget?((v0 + 1), v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
  if (!v9)
  {
    outlined destroy of PushTarget?(v8, &lazy cache variable for type metadata for Toolbar.UpdateContext?, &type metadata for Toolbar.UpdateContext);
LABEL_12:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  outlined init with take of Toolbar.UpdateContext(v8, v10);
  outlined init with copy of HostingControllerOverrides(v10, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v1;
  outlined destroy of HostingControllerOverrides(v8);
  if (Strong)
  {
  }

  else
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
    }

    else
    {
      v5 = &v3[direct field offset for ToolbarBridge.platformVended];
      swift_beginAccess();
      if (!*(v5 + 3))
      {
        v6 = [objc_allocWithZone(type metadata accessor for UIKitToolbar()) initWithFrame_];
        outlined destroy of Toolbar.UpdateContext(v10);
        v7 = *(v5 + 3);
        *(v5 + 3) = v6;

        return;
      }
    }
  }

  outlined destroy of Toolbar.UpdateContext(v10);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.InputAccessoryKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of PlatformItemList.Item?(&static EnvironmentValues.InputAccessoryKey.defaultValue, v1, &lazy cache variable for type metadata for WeakBox<InputAccessoryGenerator>, type metadata accessor for InputAccessoryGenerator, MEMORY[0x1E6981A78]);
}

uint64_t specialized closure #1 in Collection<>.menuItems.getter(unint64_t a1)
{
  v32 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v38 = type metadata accessor for PlatformItemList.Item();
  v34 = *(v38 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v10 = 0;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1 & 0xC000000000000001;
    v11 = (v34 + 48);
    while (1)
    {
      if (v36)
      {
        v12 = MEMORY[0x18D00E9C0](v10, a1, v6);
      }

      else
      {
        if (v10 >= *(v35 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = a1;
      v16 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
      swift_beginAccess();
      outlined init with copy of PlatformItemList.Item?(v13 + v16, v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);

      if ((*v11)(v5, 1, v38) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties?(v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v5, v37, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v18 = v9[2];
        v17 = v9[3];
        if (v18 >= v17 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1, v9);
        }

        v9[2] = v18 + 1;
        outlined init with take of ToolbarStorage.NavigationProperties(v37, v9 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v18, type metadata accessor for PlatformItemList.Item);
      }

      a1 = v15;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_18:
  v19 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v21 = MEMORY[0x1E69E7CC8];
  v22 = v33;
  v33[8] = 0;
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  *(v22 + 32) = v19;
  *(v22 + 40) = v21;
  *(v22 + 48) = 0;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
  v23 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v24 = (*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18CD63400;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v23, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ToolbarStorage.Entry.Kind(v26, v25 + v24, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v22 + 56) = v25;
  v27 = *(v32 + 32);
  v28 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v28 - 8) + 56))(v22 + v27, 1, 1, v28);
  *v22 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v9, &v39);

  v29 = *(v22 + 32);

  outlined destroy of ToolbarStorage.NavigationProperties(v22, type metadata accessor for MenuVisitor);
  return v29;
}

uint64_t assignWithCopy for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v7)
    {
      v8 = *(a2 + 16);
      if (*(a1 + 16) == 2)
      {
        if (v8 == 2)
        {
          v9 = *(a2 + 8);
          *(a1 + 17) = *(a2 + 17);
          *(a1 + 8) = v9;
LABEL_18:
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          *(a1 + 56) = *(a2 + 56);
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          swift_unknownObjectWeakCopyAssign();
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 89) = *(a2 + 89);
          *(a1 + 96) = *(a2 + 96);

          return a1;
        }

        swift_unknownObjectWeakCopyInit();
      }

      else
      {
        if (v8 == 2)
        {
          outlined destroy of PushTarget(a1 + 8);
          v15 = *(a2 + 17);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 17) = v15;
          goto LABEL_18;
        }

        swift_unknownObjectWeakCopyAssign();
      }

      *(a1 + 16) = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 24) = v21;
      goto LABEL_18;
    }

    outlined destroy of Toolbar.UpdateContext(a1 + 8);
    v11 = *(a2 + 24);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = v11;
    v12 = *(a2 + 56);
    v13 = *(a2 + 72);
    v14 = *(a2 + 88);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 88) = v14;
    *(a1 + 72) = v13;
    *(a1 + 56) = v12;
  }

  else if (v7)
  {
    if (*(a2 + 16) == 2)
    {
      v10 = *(a2 + 8);
      *(a1 + 17) = *(a2 + 17);
      *(a1 + 8) = v10;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      *(a1 + 16) = *(a2 + 16);
      v20 = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 24) = v20;
    }

    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 56) = *(a2 + 56);
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    swift_unknownObjectWeakCopyInit();
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 89) = *(a2 + 89);
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v16 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v16;
    v17 = *(a2 + 40);
    v18 = *(a2 + 56);
    v19 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v19;
    *(a1 + 56) = v18;
    *(a1 + 40) = v17;
  }

  return a1;
}

uint64_t assignWithTake for UIKitToolbarStrategy(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 96);
  if (*(a1 + 96))
  {
    if (v5)
    {
      v6 = *(a2 + 16);
      if (*(a1 + 16) == 2)
      {
        if (v6 != 2)
        {
          swift_unknownObjectWeakTakeInit();
LABEL_17:
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 != 2)
        {
          swift_unknownObjectWeakTakeAssign();
          goto LABEL_17;
        }

        outlined destroy of PushTarget(a1 + 8);
      }

      *(a1 + 8) = *(a2 + 8);
      *(a1 + 17) = *(a2 + 17);
LABEL_18:
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 56) = *(a2 + 56);
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      swift_unknownObjectWeakTakeAssign();
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);

      return a1;
    }

    outlined destroy of Toolbar.UpdateContext(a1 + 8);
    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_10:
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (*(a2 + 16) == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 17) = *(a2 + 17);
  }

  else
  {
    swift_unknownObjectWeakTakeInit();
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 56) = *(a2 + 56);
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  swift_unknownObjectWeakTakeInit();
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitToolbarStrategy(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for UIKitToolbarStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.update(with:isUnique:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  ToolbarItemPlacement.Role.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  v11 = v9 & ~v10;
  if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v35 = a3;
    v12 = v3;
    v13 = ~v10;
    v14 = 1;
    while (1)
    {
      outlined init with copy of ToolbarItemPlacement.Role(*(v8 + 48) + 48 * v11, v36);
      v15 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v36, a1);
      outlined destroy of ToolbarItemPlacement.Role(v36);
      if (v15)
      {
        break;
      }

      v11 = (v11 + 1) & v13;
      if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
LABEL_8:
    v16 = v15 ^ 1;
    v4 = v12;
    a3 = v35;
  }

  else
  {
    v16 = 1;
    v14 = 1;
  }

  v17 = *(v8 + 16);
  result = v17 + v14;
  if (__OFADD__(v17, v14))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = *(v8 + 24);
  if (v19 < result || (a2 & 1) == 0)
  {
    if (a2)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v19 >= result)
      {
        result = specialized _NativeSet.copy()();
        if ((v16 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_25;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v21 = *v4;
    Hasher.init(_seed:)();
    ToolbarItemPlacement.Role.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v21 + 32);
    v11 = result & ~v22;
    if ((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      v23 = ~v22;
      while (1)
      {
        v20 = 48 * v11;
        outlined init with copy of ToolbarItemPlacement.Role(*(v21 + 48) + 48 * v11, v36);
        v24 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v36, a1);
        result = outlined destroy of ToolbarItemPlacement.Role(v36);
        if (v24)
        {
          break;
        }

        v11 = (v11 + 1) & v23;
        if (((*(v21 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_24:
      if (v16)
      {
LABEL_25:
        v25 = *v4;
        *(*v4 + 8 * (v11 >> 6) + 56) |= 1 << v11;
        v26 = (*(v25 + 48) + 48 * v11);
        v27 = a1[1];
        *v26 = *a1;
        v26[1] = v27;
        *(v26 + 25) = *(a1 + 25);
        v28 = *(v25 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (!v29)
        {
          *(v25 + 16) = v30;
          *a3 = 0u;
          *(a3 + 16) = 0u;
          *(a3 + 32) = 0;
          *(a3 + 40) = -1;
          return result;
        }

        goto LABEL_31;
      }
    }

LABEL_32:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if (v16)
  {
    goto LABEL_25;
  }

LABEL_13:
  v20 = 48 * v11;
LABEL_28:
  v31 = (*(*v4 + 48) + v20);
  v32 = v31[1];
  *a3 = *v31;
  *(a3 + 16) = v32;
  *(a3 + 25) = *(v31 + 25);
  v33 = *(a1 + 25);
  v34 = a1[1];
  *v31 = *a1;
  v31[1] = v34;
  *(v31 + 25) = v33;
  return result;
}

uint64_t specialized ToolbarBridge.canUpdateTabBar<A>(_:hostingController:)(void *a1, void *a2)
{
  swift_getObjectType();
  if ([swift_getObjCClassFromMetadata() _isFromSwiftUI])
  {
    v4 = [a2 _appearState];
    v5 = v4 == 1;
    v6 = [a1 selectedViewController];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v8 = v7;
      v9 = a2;
      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      v5 = v7 | (v4 == 1);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t specialized ToolbarPlatformDelegate.navigationItem(_:didEndRenamingWith:)(uint64_t a1, void *a2)
{
  v26._countAndFlagsBits = a1;
  v26._object = a2;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for PlatformItemList.Item();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, v3);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + OBJC_IVAR____TtC7SwiftUI23ToolbarPlatformDelegate_provider;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    v22 = (*(v20 + 8))(ObjectType, v20);
    swift_unknownObjectRelease();
    specialized ToolbarBridge.navigationProperties.getter(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      return outlined destroy of ToolbarStorage.NavigationProperties?(v13, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
    }

    else
    {
      outlined init with take of ToolbarStorage.NavigationProperties(v13, v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      outlined init with copy of PlatformItemList.Item?(&v17[*(v14 + 32)], v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.NavigationProperties);

        return outlined destroy of ToolbarStorage.NavigationProperties?(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v6, v10, type metadata accessor for PlatformItemList.Item);
        v23 = *(v10 + 22);
        v29 = *(v10 + 21);
        v30 = v23;
        v24 = *(v10 + 24);
        v31 = *(v10 + 23);
        v32 = v24;
        v33 = *(v10 + 50);
        v25 = *(v10 + 20);
        v27 = *(v10 + 19);
        v28 = v25;
        if (v29 >> 2 == 0xFFFFFFFF || v29 >> 62 != 1)
        {
        }

        else
        {
          outlined copy of PlatformItemList.Item.SystemItem(v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, SBYTE8(v30), v31, *(&v31 + 1), v32, SBYTE8(v32), v33);
          PlatformTextFieldCoordinator.updateText(_:)(v26);

          outlined destroy of PushTarget?(&v27, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem);
        }

        outlined destroy of ToolbarStorage.NavigationProperties(v10, type metadata accessor for PlatformItemList.Item);
        return outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.NavigationProperties);
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate()
{
  result = lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate;
  if (!lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate)
  {
    type metadata accessor for ToolbarPlatformDelegate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarPlatformDelegate and conformance ToolbarPlatformDelegate);
  }

  return result;
}

id outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties?(id result, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(result, a2 & 1);
  }

  return result;
}

void outlined consume of ToolbarStorage.NavigationProperties.DocumentProperties?(void *a1, char a2)
{
  if (a2 != -1)
  {
    outlined consume of ResolvableCLKTextProvider.FontStorage(a1, a2 & 1);
  }
}

uint64_t outlined copy of ToolbarStorage.NavigationProperties.Actions?(uint64_t result, char a2)
{
  if (a2 != 254)
  {
    return outlined copy of PlatformItemCollection?(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>, &type metadata for EnvironmentValues.DocumentCommandsKey, &protocol witness table for EnvironmentValues.DocumentCommandsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIKitBarItemHost<BarItemView>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in UINavigationItem.adoptNavigationItem(_:updates:forceUpdate:isFromSwiftUI:)()
{
  if (*(v0 + 41))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 40);
  if (*(v0 + 42))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  closure #1 in UINavigationItem.adoptNavigationItem(_:updates:forceUpdate:isFromSwiftUI:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), v2 | v3 | (*(v0 + 43) << 24), *(v0 + 44), *(v0 + 45));
}

void partial apply for closure #2 in ToolbarBridge.adoptUpdates<A>(_:hostingController:context:)()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  ToolbarBridge.adoptSystemUpdates<A>(_:hostingController:context:)(*(v0 + 24), v1 | *(v0 + 32), *(v0 + 40));
}

uint64_t partial apply for specialized closure #1 in Collection<>.menuItems.getter@<X0>(uint64_t *a1@<X8>)
{
  result = specialized closure #1 in Collection<>.menuItems.getter(**(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v4VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void partial apply for closure #1 in ToolbarBridge.safeAreaDidChange<A>(hostingController:)()
{
  v1 = *(v0 + 16);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

unint64_t lazy protocol witness table accessor for type SubmitTriggers and conformance SubmitTriggers()
{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers;
  if (!lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitTriggers and conformance SubmitTriggers);
  }

  return result;
}

uint64_t ScrollableHStack.init(_:width:padding:alignment:spacing:content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = *a1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3 & 1;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6 & 1;
  v11 = type metadata accessor for ScrollableHStackBase();
  result = a7(v11, v12, v13, v14);
  v16 = (a8 + *(v11 + 72));
  *v16 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v16[1] = 0;
  return result;
}

uint64_t ScrollableHStack.body.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v9[0] = *(a1 + 16);
  v9[1] = MEMORY[0x1E697E108];
  v9[2] = v2;
  v9[3] = MEMORY[0x1E697E100];
  v3 = type metadata accessor for ScrollableHStackBase();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v1, v3, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v6, v3, WitnessTable);
  return (*(v4 + 8))(v6, v3);
}

uint64_t type metadata completion function for ScrollableHStack()
{
  result = type metadata accessor for ScrollableHStackBase();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollableHStack(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 49) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

unint64_t storeEnumTagSinglePayload for ScrollableHStack(unint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((((((result & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8;
      if (v6 < 0x7FFFFFFF)
      {
        v20 = ((v9 + result) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v20 = a2 & 0x7FFFFFFF;
          v20[1] = 0;
        }

        else
        {
          *v20 = a2 - 1;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 49) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

uint64_t type metadata completion function for ScrollableHStackBase()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((v6 + ((v5 + 49) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v10 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v11 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    v14 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *v16;
    *(v15 + 8) = *(v16 + 8);
    *v15 = v17;
    v18 = (v15 + v5 + 9) & ~v5;
    v19 = (v16 + v5 + 9) & ~v5;
    (*(v4 + 16))(v18, v19);
    v20 = ((v6 + v19) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20[1];
    v22 = ((v6 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v20;
    v22[1] = v21;
  }

  return v3;
}

uint64_t destroy for ScrollableHStack(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))(((((((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 9) & ~*(*(*(a2 + 16) - 8) + 80));
}

unint64_t initializeWithCopy for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 16;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 16))(v15, v16);
  v17 = *(v13 + 48) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

unint64_t assignWithCopy for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 24))(v15, v16);
  v17 = *(v13 + 40) + 7;
  v18 = ((v17 + v15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + v16) & 0xFFFFFFFFFFFFFFF8);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;

  return a1;
}

unint64_t initializeWithTake for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 32))(v15, v16);
  *((*(v13 + 32) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 32) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unint64_t assignWithTake for ScrollableHStack(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *v9 = v11;
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 9 + v9) & ~v14;
  v16 = (v14 + 9 + v10) & ~v14;
  (*(v12 + 40))(v15, v16);
  *((*(v13 + 24) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v13 + 24) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t ScrollableHStackBase.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v4 = a1[4];
  v64 = a1[2];
  v65 = v4;
  type metadata accessor for LazyFixedSizeHStack();
  v5 = type metadata accessor for ScrollView();
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v56 - v6;
  v73 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v12;
  v13 = type metadata accessor for PagingScrollView();
  v57 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v70 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v58 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>();
  v69 = v17;
  v20 = type metadata accessor for ModifiedContent();
  v61 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - v24;
  v66 = v8;
  v68 = type metadata accessor for _ConditionalContent();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v56 - v27;
  if (*v2 == 3)
  {
    MEMORY[0x1EEE9AC00](v26);
    v28 = a1[3];
    *(&v56 - 6) = v64;
    *(&v56 - 5) = v28;
    v29 = a1[5];
    *(&v56 - 4) = v65;
    *(&v56 - 3) = v29;
    *(&v56 - 2) = v2;
    v30 = v59;
    ScrollView.init(_:content:)(1, partial apply for closure #2 in ScrollableHStackBase.body.getter, v59);
    v31 = static Edge.Set.horizontal.getter();
    v32 = ScrollableHStackBase.actualPadding.getter();
    v33 = v73;
    WitnessTable = swift_getWitnessTable();
    View.scrollContentPadding(_:_:)(v31, v33, WitnessTable, v32);
    (*(v60 + 8))(v30, v33);
    v93 = WitnessTable;
    v94 = &protocol witness table for ContentMarginModifier;
    v35 = v66;
    v36 = swift_getWitnessTable();
    v37 = v20;
    v38 = v62;
    static ViewBuilder.buildExpression<A>(_:)(v10, v35, v36);
    v39 = *(v63 + 8);
    v39(v10, v35);
    static ViewBuilder.buildExpression<A>(_:)(v38, v35, v36);
    v91 = swift_getWitnessTable();
    v92 = &protocol witness table for ContentMarginModifier;
    v89 = swift_getWitnessTable();
    v90 = &protocol witness table for TransformScrollStorageModifier<A>;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(second:)(v10, v37, v35);
    v39(v10, v35);
    v39(v38, v35);
  }

  else
  {
    v80 = *v2;
    MEMORY[0x1EEE9AC00](v26);
    v40 = a1[3];
    *(&v56 - 6) = v64;
    *(&v56 - 5) = v40;
    v41 = a1[5];
    *(&v56 - 4) = v65;
    *(&v56 - 3) = v41;
    *(&v56 - 2) = v2;
    PagingScrollView.init(behavior:axis:content:)(&v80, 0, partial apply for closure #1 in ScrollableHStackBase.body.getter, v15);
    v42 = static Edge.Set.horizontal.getter();
    v43 = ScrollableHStackBase.actualPadding.getter();
    v44 = v70;
    v45 = swift_getWitnessTable();
    View.scrollContentPadding(_:_:)(v42, v44, v45, v43);
    (*(v57 + 8))(v15, v44);
    v80 = 3;
    v78 = v45;
    v79 = &protocol witness table for ContentMarginModifier;
    v46 = v69;
    v47 = swift_getWitnessTable();
    View.scrollIndicators(_:axes:)(&v80, 3, v46, v47);
    (*(v58 + 8))(v19, v46);
    v76 = v47;
    v77 = &protocol witness table for TransformScrollStorageModifier<A>;
    v48 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v22, v20, v48);
    v49 = *(v61 + 8);
    v49(v22, v20);
    static ViewBuilder.buildExpression<A>(_:)(v25, v20, v48);
    v74 = swift_getWitnessTable();
    v75 = &protocol witness table for ContentMarginModifier;
    swift_getWitnessTable();
    static ViewBuilder.buildEither<A, B>(first:)(v22, v20);
    v49(v22, v20);
    v49(v25, v20);
  }

  v87 = swift_getWitnessTable();
  v88 = &protocol witness table for ContentMarginModifier;
  v85 = swift_getWitnessTable();
  v86 = &protocol witness table for TransformScrollStorageModifier<A>;
  v50 = swift_getWitnessTable();
  v83 = swift_getWitnessTable();
  v84 = &protocol witness table for ContentMarginModifier;
  v51 = swift_getWitnessTable();
  v81 = v50;
  v82 = v51;
  v52 = v68;
  v53 = swift_getWitnessTable();
  v54 = v72;
  static ViewBuilder.buildExpression<A>(_:)(v72, v52, v53);
  return (*(v67 + 8))(v54, v52);
}

uint64_t ScrollableHStackBase.scrollContent.getter(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 32);
  if (*(v1 + 48))
  {
    a1 = static Spacing.defaultValue.getter();
  }

  MEMORY[0x1EEE9AC00](a1);
  v4 = *(v2 + 32);
  v8 = *(v2 + 16);
  v9 = v4;
  v10 = v1;
  return LazyFixedSizeHStack.init(width:alignment:spacing:content:)(v3, v5, 0, partial apply for closure #1 in ScrollableHStackBase.scrollContent.getter, &v7, v8, v4);
}

double ScrollableHStackBase.actualPadding.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  EnvironmentValues.init()();
  EnvironmentValues.defaultPadding.getter();
  v2 = v1;

  return v2;
}

uint64_t closure #1 in ScrollableHStackBase.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LazyFixedSizeHStack();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v16 = type metadata accessor for ScrollableHStackBase();
  ScrollableHStackBase.scrollContent.getter(v16);
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, &protocol witness table for LazyFixedSizeHStack<A>);
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, &protocol witness table for LazyFixedSizeHStack<A>);
  return (v17)(v15, v9);
}

uint64_t closure #1 in ScrollableHStackBase.scrollContent.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  v14 = type metadata accessor for ScrollableHStackBase();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v14 + 68), a2, a4);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  return (*(v7 + 8))(v9, a2);
}

void type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>()
{
  if (!lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>)
  {
    v0 = type metadata accessor for TransformScrollStorageModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>);
    }
  }
}

Swift::Int ToolbarLegibility.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ToolbarLegibility and conformance ToolbarLegibility()
{
  result = lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility;
  if (!lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLegibility and conformance ToolbarLegibility);
  }

  return result;
}

uint64_t assignWithCopy for ToolbarAppearanceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t assignWithTake for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for ToolbarAppearanceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarAppearanceModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role()
{
  result = lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role;
  if (!lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarLegibility.Role and conformance ToolbarLegibility.Role);
  }

  return result;
}

uint64_t (*ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if ((*(a3 + 24))(a2, a3))
  {
    goto LABEL_4;
  }

  v6 = ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
  result = (*(a3 + 16))(&v120, a2, a3);
  if (*(&v121 + 1) != 7)
  {
    v8 = specialized Sequence<>.contains(_:)(&v120, v6);

    outlined destroy of ToolbarPlacement.Role(&v120);
    v9 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    if ((v8 & 1) == 0)
    {
      return v9;
    }

LABEL_4:
    AGGraphClearUpdate();
    closure #2 in ToolbarAppearanceModifier.PreferenceValue.value.getter(&v120);
    AGGraphSetUpdate();
    v72 = v120;
    Value = AGGraphGetValue();
    v120 = *Value;
    v12 = *(Value + 32);
    v11 = *(Value + 48);
    v13 = *(Value + 16);
    *&v122[25] = *(Value + 57);
    *v122 = v12;
    *&v122[16] = v11;
    v121 = v13;
    v14 = *Value;
    v71 = *Value;
    v116 = *(Value + 1);
    v15 = *(Value + 17);
    v16 = *(Value + 33);
    v17 = *(Value + 49);
    *&v118[32] = *(Value + 65);
    *v118 = v16;
    *&v118[16] = v17;
    v117 = v15;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v80 = v14;
    v82 = v117;
    v83 = *v118;
    v84 = *&v118[16];
    v85 = *&v118[32];
    v81 = v116;
    outlined destroy of ToolbarAppearanceModifier(&v80);
    v18 = AGGraphGetValue();
    v120 = *v18;
    v19 = *(v18 + 16);
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    *&v122[25] = *(v18 + 57);
    *v122 = v20;
    *&v122[16] = v21;
    v121 = v19;
    v111 = *v18;
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);
    v24 = *(v18 + 40);
    v25 = *(v18 + 56);
    v118[16] = *(v18 + 72);
    v117 = v24;
    *v118 = v25;
    v116 = v23;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v86 = v111;
    v70 = v22;
    v87 = v22;
    v88 = v116;
    v89 = v117;
    v90 = *v118;
    v91 = v118[16];

    outlined destroy of ToolbarAppearanceModifier(&v86);
    v26 = AGGraphGetValue();
    v120 = *v26;
    v27 = *(v26 + 16);
    v28 = *(v26 + 32);
    v29 = *(v26 + 48);
    *&v122[25] = *(v26 + 57);
    *v122 = v28;
    *&v122[16] = v29;
    v121 = v27;
    v111 = *v26;
    *&v112 = *(v26 + 16);
    LOBYTE(v22) = *(v26 + 24);
    v69 = v22;
    v30 = *(v26 + 25);
    v31 = *(v26 + 57);
    v117 = *(v26 + 41);
    *v118 = v31;
    v116 = v30;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v92 = v111;
    v93 = v112;
    v94 = v22;
    v95 = v116;
    v96 = v117;
    v97 = *v118;
    outlined destroy of ToolbarAppearanceModifier(&v92);
    v32 = AGGraphGetValue();
    v120 = *v32;
    v34 = *(v32 + 32);
    v33 = *(v32 + 48);
    v35 = *(v32 + 16);
    *&v122[25] = *(v32 + 57);
    *v122 = v34;
    *&v122[16] = v33;
    v121 = v35;
    v116 = *v32;
    v117 = *(v32 + 16);
    v36 = *(v32 + 32);
    v68 = v36;
    LOBYTE(v22) = *(v32 + 40);
    v67 = v22;
    v37 = *(v32 + 57);
    v111 = *(v32 + 41);
    v112 = v37;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v98[0] = v116;
    v98[1] = v117;
    v99 = v36;
    v100 = v22;
    v101 = v111;
    v102 = v112;
    outlined destroy of ToolbarAppearanceModifier(v98);
    v38 = AGGraphGetValue();
    v40 = *(v38 + 32);
    v39 = *(v38 + 48);
    v41 = *(v38 + 57);
    v121 = *(v38 + 16);
    *v122 = v40;
    v42 = *v38;
    *&v122[25] = v41;
    v120 = v42;
    *&v122[16] = v39;
    v116 = *v38;
    v117 = *(v38 + 16);
    *v118 = *(v38 + 32);
    v43 = *(v38 + 48);
    v66 = v43;
    LOBYTE(v22) = *(v38 + 56);
    v65 = v22;
    v111 = *(v38 + 57);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v103[0] = v116;
    v103[1] = v117;
    v103[2] = *v118;
    v104 = v43;
    v105 = v22;
    v106 = v111;
    outlined destroy of ToolbarAppearanceModifier(v103);
    v44 = AGGraphGetValue();
    v120 = *v44;
    v46 = *(v44 + 32);
    v45 = *(v44 + 48);
    v47 = *(v44 + 16);
    *&v122[25] = *(v44 + 57);
    *v122 = v46;
    *&v122[16] = v45;
    v121 = v47;
    v116 = *v44;
    v117 = *(v44 + 16);
    *v118 = *(v44 + 32);
    *&v118[9] = *(v44 + 41);
    LOBYTE(v43) = *(v44 + 57);
    v48 = *(v44 + 58);
    *(&v111 + 7) = *(v44 + 65);
    *&v111 = v48;
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v107[0] = v116;
    v107[1] = v117;
    *v108 = *v118;
    *&v108[9] = *&v118[9];
    v109 = v43;
    v110[0] = v111;
    *(v110 + 7) = *(&v111 + 7);
    outlined destroy of ToolbarAppearanceModifier(v107);
    v49 = AGGraphGetValue();
    v120 = *v49;
    v51 = *(v49 + 32);
    v50 = *(v49 + 48);
    v52 = *(v49 + 16);
    *&v122[25] = *(v49 + 57);
    *v122 = v51;
    *&v122[16] = v50;
    v121 = v52;
    v116 = *v49;
    v117 = *(v49 + 16);
    *v118 = *(v49 + 32);
    *&v118[10] = *(v49 + 42);
    LOBYTE(v22) = *(v49 + 58);
    *(&v74 + 6) = *(v49 + 65);
    *&v74 = *(v49 + 59);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v111 = v116;
    v112 = v117;
    *v113 = *v118;
    *&v113[10] = *&v118[10];
    v114 = v22;
    v115[0] = v74;
    *(v115 + 6) = *(&v74 + 6);
    outlined destroy of ToolbarAppearanceModifier(&v111);
    v53 = AGGraphGetValue();
    v120 = *v53;
    v54 = *(v53 + 16);
    v55 = *(v53 + 32);
    v56 = *(v53 + 48);
    *&v122[25] = *(v53 + 57);
    *v122 = v55;
    *&v122[16] = v56;
    v121 = v54;
    v58 = *v53;
    v57 = *(v53 + 8);
    *&v79[9] = *(v53 + 57);
    v77 = *(v53 + 32);
    *v79 = *(v53 + 48);
    v75 = *(v53 + 16);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    *&v116 = v58;
    *(&v116 + 1) = v57;
    v117 = v75;
    *v118 = v77;
    *&v118[16] = *v79;
    *&v118[25] = *&v79[9];

    outlined destroy of ToolbarAppearanceModifier(&v116);
    v59 = AGGraphGetValue();
    v120 = *v59;
    v61 = *(v59 + 32);
    v60 = *(v59 + 48);
    v62 = *(v59 + 16);
    *&v122[25] = *(v59 + 57);
    *v122 = v61;
    *&v122[16] = v60;
    v121 = v62;
    v76 = *v59;
    v78 = *(v59 + 16);
    *v79 = *(v59 + 32);
    *&v79[11] = *(v59 + 43);
    v63 = *(v59 + 59);
    *(&v73 + 5) = *(v59 + 65);
    *&v73 = *(v59 + 60);
    outlined init with copy of ToolbarAppearanceModifier(&v120, v119);
    v120 = v76;
    v121 = v78;
    *v122 = *v79;
    *&v122[11] = *&v79[11];
    v122[27] = v63;
    *&v122[28] = v73;
    *&v122[33] = *(&v73 + 5);
    outlined destroy of ToolbarAppearanceModifier(&v120);
    v64 = swift_allocObject();
    *(v64 + 16) = a2;
    *(v64 + 24) = a3;
    *(v64 + 32) = a1;
    *(v64 + 40) = v71;
    *(v64 + 48) = v70;
    *(v64 + 56) = v69;
    *(v64 + 64) = v68;
    *(v64 + 72) = v67 & 1;
    *(v64 + 80) = v66;
    *(v64 + 88) = v65 & 1;
    *(v64 + 89) = v43;
    *(v64 + 90) = v22;
    *(v64 + 96) = v57;
    *(v64 + 104) = v72;
    *(v64 + 112) = v63;
    return partial apply for closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter;
  }

  __break(1u);
  return result;
}

char *ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter()
{
  Value = AGGraphGetValue();
  v37 = *Value;
  v2 = *(Value + 32);
  v1 = *(Value + 48);
  v3 = *(Value + 16);
  *(v40 + 9) = *(Value + 57);
  v39 = v2;
  v40[0] = v1;
  v38 = v3;
  v25 = *Value;
  v26 = *(Value + 16);
  v27 = *(Value + 32);
  v28[0] = *(Value + 48);
  v4 = *(Value + 64);
  v5 = *(Value + 72);
  outlined init with copy of ToolbarAppearanceModifier(&v37, &v34);
  v31[0] = v25;
  v31[1] = v26;
  v31[2] = v27;
  v31[3] = v28[0];
  v32 = v4;
  v33 = v5;

  outlined destroy of ToolbarAppearanceModifier(v31);
  v6 = *(v4 + 2);
  if (v6)
  {
    goto LABEL_10;
  }

  v29 = 0uLL;
  *v30 = 0;
  *&v30[8] = xmmword_18CD9F780;
  v7 = AGGraphGetValue();
  v37 = *v7;
  v9 = v7[2];
  v8 = v7[3];
  v10 = v7[1];
  *(v40 + 9) = *(v7 + 57);
  v39 = v9;
  v40[0] = v8;
  v38 = v10;
  v26 = v7[1];
  v27 = v7[2];
  v28[0] = v7[3];
  *(v28 + 9) = *(v7 + 57);
  v25 = *v7;
  outlined init with copy of ToolbarAppearanceModifier(&v37, &v34);
  v39 = v27;
  v40[0] = v28[0];
  *(v40 + 9) = *(v28 + 9);
  v37 = v25;
  v38 = v26;
  outlined destroy of ToolbarAppearanceModifier(&v37);
  outlined init with copy of ToolbarPlacement.Storage(&v29, &v34);
  if (*(&v35 + 1) == 7)
  {
    outlined destroy of ToolbarPlacement(&v29);
    v11 = 0;
    v23 = 0u;
    v24 = 0u;
  }

  else
  {
    outlined destroy of ToolbarPlacement.Storage(&v34);
    v23 = *v30;
    v24 = v29;
    v11 = *&v30[16];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v13 = *(v4 + 2);
  v12 = *(v4 + 3);
  if (v13 >= v12 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v4);
  }

  *(v4 + 2) = v13 + 1;
  v14 = &v4[40 * v13];
  *(v14 + 2) = v24;
  *(v14 + 3) = v23;
  *(v14 + 8) = v11;
  v6 = v13 + 1;
  if (v13 == -1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
LABEL_10:
    v15 = (v4 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarPlacement(v15, &v37);
      v25 = v37;
      v26 = v38;
      *&v27 = v39;
      if (*(&v38 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement.Storage(&v25);
      }

      else
      {
        v34 = v37;
        v35 = v38;
        v36 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        v19 = &v16[40 * v18];
        v20 = v34;
        v21 = v35;
        *(v19 + 8) = v36;
        *(v19 + 2) = v20;
        *(v19 + 3) = v21;
      }

      v15 += 40;
      --v6;
    }

    while (v6);
  }

  return v16;
}

uint64_t closure #2 in ToolbarAppearanceModifier.PreferenceValue.value.getter@<X0>(uint64_t *a1@<X8>)
{
  AGGraphGetValue();

  v2 = Transaction.animation.getter();

  *a1 = v2;
  return result;
}

uint64_t closure #3 in ToolbarAppearanceModifier.PreferenceValue.value.getter(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, char a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  (*(a16 + 16))(&v96, a15, a16);
  outlined init with copy of ToolbarPlacement.Role?(&v96, &v91);
  if (*(&v92 + 1) == 7)
  {
    outlined destroy of ToolbarPlacement.Role?(&v96);
    v17 = ToolbarAppearanceModifier.PreferenceValue.resolvedBars.getter();
    v18 = *(v17 + 2);
    if (!v18)
    {
    }
  }

  else
  {
    type metadata accessor for ToolbarPlacement.Role?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    v20 = v91;
    v21 = v92;
    *(v19 + 16) = xmmword_18CD63400;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    *(v19 + 64) = v93;
    outlined destroy of ToolbarPlacement.Role?(&v96);
    v17 = v19;
    v18 = *(v19 + 16);
    if (!v18)
    {
    }
  }

  v22 = 0;
  v23 = (v17 + 32);
  v75 = v18 - 1;
  v77 = a4;
  v76 = v17;
  while (1)
  {
    outlined init with copy of ToolbarPlacement.Role(v23, v108);
    v24 = *a1;
    if (*(*a1 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(v108), (v26 & 1) != 0))
    {
      v27 = *(v24 + 56) + 80 * v25;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      *&v99[9] = *(v27 + 57);
      v96 = *v27;
      v97 = v30;
      v98 = v29;
      *v99 = v28;
      v31 = *&v99[16];
      v32 = *(&v96 + 1);
      v90 = v30;
      v84 = v96;
      v33 = BYTE1(v96);
      v34 = *(v27 + 2);
      v107 = *(v27 + 6);
      v106 = v34;
      v35 = BYTE8(v30);
      v36 = *(v27 + 25);
      *(v105 + 3) = *(v27 + 28);
      v105[0] = v36;
      v104 = BYTE8(v29);
      v37 = *(v27 + 41);
      *(v103 + 3) = *(v27 + 44);
      v103[0] = v37;
      v86 = v28;
      v87 = v29;
      v102 = BYTE8(v28);
      v38 = BYTE9(v28);
      v39 = BYTE10(v28);
      v40 = *(v27 + 59);
      v101 = *(v27 + 63);
      v100 = v40;
      v41 = v99[24];
      outlined init with copy of ToolbarAppearanceConfiguration(&v96, &v91);
      v88 = v32;
      v89 = v31;
    }

    else
    {
      v41 = 0;
      v89 = 0;
      v90 = 0;
      v39 = 0;
      v86 = 0;
      v87 = 0;
      v35 = 0;
      v88 = 0;
      v33 = 0;
      v104 = 1;
      v84 = 1;
      v102 = 1;
      v38 = 2;
    }

    if (a3 == 3)
    {
      v42 = v33;
    }

    else
    {
      v42 = a3;
    }

    v83 = v42;
    if (v77)
    {

      v90 = v77;
    }

    if (a5 == 4)
    {
      v43 = v35;
    }

    else
    {
      v43 = a5;
    }

    v82 = v43;
    if ((a7 & 1) == 0)
    {
      v104 = 0;
      v87 = a6;
    }

    if ((a9 & 1) == 0)
    {
      v102 = 0;
      v86 = a8;
    }

    if (a10 == 2)
    {
      v44 = v38;
    }

    else
    {
      v44 = a10;
    }

    v81 = v44;
    if (a11 != 3)
    {
      v39 = a11;
    }

    if (a12)
    {

      v88 = a12;
    }

    if (a13)
    {

      v89 = a13;
    }

    if (a14 != 3)
    {
      v41 = a14;
    }

    outlined init with copy of ToolbarPlacement.Role(v108, v95);
    LOBYTE(v96) = v84;
    BYTE1(v96) = v83;
    *(&v96 + 2) = v106;
    WORD3(v96) = v107;
    *(&v96 + 1) = v88;
    *&v97 = v90;
    BYTE8(v97) = v82;
    *(&v97 + 9) = v105[0];
    HIDWORD(v97) = *(v105 + 3);
    *&v98 = v87;
    v45 = v104;
    BYTE8(v98) = v104;
    HIDWORD(v98) = *(v103 + 3);
    *(&v98 + 9) = v103[0];
    *v99 = v86;
    v46 = v102;
    v99[8] = v102;
    v99[9] = v81;
    v99[10] = v39;
    *&v99[11] = v100;
    v99[15] = v101;
    *&v99[16] = v89;
    v99[24] = v41;
    outlined init with copy of ToolbarAppearanceConfiguration(&v96, &v91);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *a1;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
    v51 = v48[2];
    v52 = (v50 & 1) == 0;
    v53 = __OFADD__(v51, v52);
    v54 = v51 + v52;
    if (v53)
    {
      break;
    }

    v55 = v50;
    if (v48[3] < v54)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v95);
      if ((v55 & 1) != (v56 & 1))
      {
        goto LABEL_49;
      }

LABEL_38:
      if (v55)
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_38;
    }

    v64 = v49;
    specialized _NativeDictionary.copy()();
    v49 = v64;
    if (v55)
    {
LABEL_39:
      v57 = (v48[7] + 80 * v49);
      v91 = *v57;
      v58 = v57[1];
      v59 = v57[2];
      v60 = v57[3];
      *&v94[9] = *(v57 + 57);
      v93 = v59;
      *v94 = v60;
      v92 = v58;
      v62 = v98;
      v61 = *v99;
      v63 = v97;
      *(v57 + 57) = *&v99[9];
      v57[2] = v62;
      v57[3] = v61;
      v57[1] = v63;
      *v57 = v96;
      outlined destroy of ToolbarAppearanceConfiguration(&v91);
      outlined destroy of ToolbarPlacement.Role(v95);
      outlined destroy of ToolbarPlacement.Role(v108);
      goto LABEL_43;
    }

LABEL_41:
    v48[(v49 >> 6) + 8] |= 1 << v49;
    v65 = v49;
    outlined init with copy of ToolbarPlacement.Role(v95, v48[6] + 40 * v49);
    v66 = (v48[7] + 80 * v65);
    v67 = *&v99[9];
    v69 = v98;
    v68 = *v99;
    v66[1] = v97;
    v66[2] = v69;
    v66[3] = v68;
    *(v66 + 57) = v67;
    *v66 = v96;
    outlined destroy of ToolbarPlacement.Role(v95);
    outlined destroy of ToolbarPlacement.Role(v108);
    v70 = v48[2];
    v53 = __OFADD__(v70, 1);
    v71 = v70 + 1;
    if (v53)
    {
      goto LABEL_48;
    }

    v48[2] = v71;
LABEL_43:
    *a1 = v48;
    LOBYTE(v91) = v84;
    BYTE1(v91) = v83;
    *(&v91 + 2) = v106;
    WORD3(v91) = v107;
    *(&v91 + 1) = v88;
    *&v92 = v90;
    BYTE8(v92) = v82;
    *(&v92 + 9) = v105[0];
    HIDWORD(v92) = *(v105 + 3);
    *&v93 = v87;
    BYTE8(v93) = v45;
    HIDWORD(v93) = *(v103 + 3);
    *(&v93 + 9) = v103[0];
    *v94 = v86;
    v94[8] = v46;
    v94[9] = v81;
    v94[10] = v39;
    v94[15] = v101;
    *&v94[11] = v100;
    *&v94[16] = v89;
    v94[24] = v41;
    outlined destroy of ToolbarAppearanceConfiguration(&v91);
    if (v75 == v22)
    {
    }

    ++v22;
    v23 += 40;
    if (v22 >= *(v76 + 2))
    {
      __break(1u);
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarAppearanceModifier.PreferenceValue<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ToolbarAppearanceModifier.PreferenceValue.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance TabBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 5;
  *(a1 + 24) = xmmword_18CD79540;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance BottomBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 3;
  *(a1 + 24) = xmmword_18CD7DD20;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance WindowToolbarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_18CD79D60;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance AccessoryBarAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 7;
  *(a1 + 24) = xmmword_18CD9F780;
  return result;
}

double protocol witness for static ToolbarAppearanceKey.toolbarPlacement.getter in conformance BottomOrnamentAppearanceKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 6;
  *(a1 + 24) = xmmword_18CD90770;
  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationBarAppearanceKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(&v6);
  v3 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  *a1 = v6;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v85 = a1;
  v86 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v87 = v8;
  v88 = 0;
  v89 = v11 & v9;
  v90 = a2;
  v91 = a3;

  specialized LazyMapSequence.Iterator.next()(v79);
  if (*(&v81 + 1) == 1)
  {
LABEL_5:
    outlined consume of Set<UIPress>.Iterator._Variant();
  }

  v60 = a5;
  while (1)
  {
    v72 = v79[0];
    v73 = v79[1];
    v74 = v80;
    v77 = v83;
    *v78 = v84[0];
    *&v78[9] = *(v84 + 9);
    v75 = v81;
    v76 = v82;
    v24 = *a5;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(&v72);
    v27 = *(v24 + 16);
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (*(v24 + 24) < v30)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, a4 & 1);
      v25 = specialized __RawDictionaryStorage.find<A>(_:)(&v72);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_36;
      }

LABEL_21:
      if (v31)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    if (a4)
    {
      goto LABEL_21;
    }

    v49 = v25;
    specialized _NativeDictionary.copy()();
    v25 = v49;
    if (v31)
    {
LABEL_22:
      v33 = *a5;
      v34 = 80 * v25;
      v35 = *(*a5 + 56) + 80 * v25;
      v68 = *v35;
      v37 = *(v35 + 32);
      v36 = *(v35 + 48);
      v38 = *(v35 + 16);
      *&v71[9] = *(v35 + 57);
      v70 = v37;
      *v71 = v36;
      v69 = v38;
      v93 = v68;
      v39 = *(v35 + 2);
      *(v67 + 6) = *(v35 + 8);
      v67[0] = v39;
      v40 = v38;
      v41 = BYTE8(v38);
      v42 = *(v35 + 25);
      *&v66[15] = *(v35 + 40);
      *v66 = v42;
      v43 = *v71;
      v44 = v71[8];
      v65 = v71[8];
      v45 = v71[9];
      LODWORD(v39) = *(v35 + 58);
      v64 = *(v35 + 62);
      v63 = v39;
      v48 = *&v71[16];
      v14 = v71[24];
      v46 = BYTE1(v75);
      if (BYTE1(v68))
      {
        v46 = BYTE1(v68);
      }

      v92 = v46;
      if (!v69)
      {
        v40 = v76;
      }

      if (v41)
      {
        v47 = v41;
      }

      else
      {
        v47 = BYTE8(v76);
      }

      if (v44)
      {
        v43 = *v78;
        v65 = v78[8];
      }

      if (v45 == 2)
      {
        v13 = v78[9];
      }

      else
      {
        v13 = v45;
      }

      if (!v48)
      {
        v48 = *&v78[16];
      }

      outlined init with copy of ToolbarAppearanceConfiguration(&v68, v61);
      outlined destroy of ToolbarAppearanceConfiguration(&v75);
      if (!v14)
      {
        LOBYTE(v14) = v78[24];
      }

      v15 = v65;
      outlined destroy of ToolbarPlacement.Role(&v72);
      v16 = *(v33 + 56) + v34;
      v18 = *(v16 + 16);
      v17 = *(v16 + 32);
      v19 = *(v16 + 57);
      v62[0] = *(v16 + 48);
      *(v62 + 9) = v19;
      v61[0] = *v16;
      v61[1] = v18;
      v61[2] = v17;
      v20 = v92;
      *v16 = v93;
      *(v16 + 1) = v20;
      v21 = v67[0];
      *(v16 + 8) = *(v67 + 6);
      *(v16 + 16) = v40;
      *(v16 + 2) = v21;
      *(v16 + 24) = v47;
      v22 = *v66;
      *(v16 + 40) = *&v66[15];
      *(v16 + 48) = v43;
      *(v16 + 25) = v22;
      *(v16 + 56) = v15;
      *(v16 + 57) = v13;
      v23 = v63;
      *(v16 + 62) = v64;
      *(v16 + 58) = v23;
      *(v16 + 64) = v48;
      *(v16 + 72) = v14;
      outlined destroy of ToolbarAppearanceConfiguration(v61);
      a5 = v60;
      goto LABEL_15;
    }

LABEL_32:
    v50 = *a5;
    *(*a5 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v51 = v50[6] + 40 * v25;
    v52 = v72;
    v53 = v73;
    *(v51 + 32) = v74;
    *v51 = v52;
    *(v51 + 16) = v53;
    v54 = (v50[7] + 80 * v25);
    *v54 = v75;
    v55 = v76;
    v56 = v77;
    v57 = *v78;
    *(v54 + 57) = *&v78[9];
    v54[2] = v56;
    v54[3] = v57;
    v54[1] = v55;
    v58 = v50[2];
    v29 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v29)
    {
      goto LABEL_35;
    }

    v50[2] = v59;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(v79);
    a4 = 1;
    if (*(&v81 + 1) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext()
{
  result = lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext;
  if (!lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarAppearanceModificationContext and conformance ToolbarAppearanceModificationContext);
  }

  return result;
}

uint64_t AnimatedValueKeyframe.interpolation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t AnimatedValueKeyframe.interpolation.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

__n128 AnimatedValueKeyframe.timingCurve.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

__n128 AnimatedValueKeyframe.timingCurve.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = v2 + *(a2 + 32);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  return static AnimatedValueKeyframe.InterpolationParameters.automatic.getter(a1);
}

{
  v2 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v7, v4, a1);
}

uint64_t AnimatedValueKeyframe.init(value:interpolation:incomingTimingCurve:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 32);
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v9 = type metadata accessor for AnimatedValueKeyframe();
  v10 = a5 + *(v9 + 32);
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 16) = v11;
  *(v10 + 32) = v8;
  v12 = *(v9 + 28);
  v13 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a2, v13);
}

uint64_t AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for AnimatedValueKeyframe.InterpolationParameters() + 28);

  return v9(v7, a2, v6);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.kochanekBartels(tension:continuity:bias:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v8 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v19 - v16);
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  swift_storeEnumTagMultiPayload();
  (*(v9 + 16))(v14, v17, v8);
  (*(v9 + 32))(v11, v17, v8);
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v14, v11, a1);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.catmullRom.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v9 - v6);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  swift_storeEnumTagMultiPayload();
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v7, v4, a1);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.asymmetric(incomingControlPoint:outgoingControlPoint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  return static AnimatedValueKeyframe.InterpolationParameters.asymmetric(incomingControlPoint:outgoingControlPoint:)(a1, a2, a3, a4);
}

{
  v8 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  v15 = *(*(a3 - 8) + 16);
  v15(&v17 - v13, a1, a3, v12);
  swift_storeEnumTagMultiPayload();
  (v15)(v10, a2, a3);
  swift_storeEnumTagMultiPayload();
  return AnimatedValueKeyframe.InterpolationParameters.init(incoming:outgoing:)(v14, v10, a4);
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a2;
  v4 = *(a3 - 8);
  v43 = a4;
  v44 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v45 = v9;
  v10 = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters.Mode();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v41 - v17);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v23 = &v41 - v22;
  v25 = (&v41 + *(v24 + 48) - v22);
  v46 = v11;
  v26 = *(v11 + 16);
  v26(&v41 - v22, v47, v10, v21);
  (v26)(v25, v48, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_14:
        v30 = 1;
        v20 = v46;
        goto LABEL_19;
      }

LABEL_18:
      v30 = 0;
      v10 = TupleTypeMetadata2;
      goto LABEL_19;
    }

    v15 = v42;
    (v26)(v42, v23, v10);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v44;
      v31 = v45;
      v33 = v41;
      (*(v44 + 32))(v41, v25, v45);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v32 + 8);
      v34(v33, v31);
      v34(v15, v31);
      v20 = v46;
      goto LABEL_19;
    }

LABEL_17:
    (*(v44 + 8))(v15, v45);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    (v26)(v15, v23, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v44;
      v36 = v8;
      v37 = v8;
      v38 = v45;
      (*(v44 + 32))(v37, v25, v45);
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v35 + 8);
      v39(v36, v38);
      v39(v15, v38);
      v20 = v46;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  (v26)(v18, v23, v10);
  v29 = v18[1];
  v28 = v18[2];
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_18;
  }

  if (*v18 == *v25 && v29 == v25[1])
  {
    v30 = v28 == v25[2];
    v20 = v46;
  }

  else
  {
    v30 = 0;
    v20 = v46;
  }

LABEL_19:
  (*(v20 + 8))(v23, v10);
  return v30 & 1;
}

uint64_t static AnimatedValueKeyframe.InterpolationParameters<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(a1, a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for AnimatedValueKeyframe.InterpolationParameters() + 28);

  return static AnimatedValueKeyframe.InterpolationParameters.Mode<A>.== infix(_:_:)(a1 + v8, a2 + v8, a3, a4);
}

uint64_t static AnimatedValueKeyframe<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (v8 = type metadata accessor for AnimatedValueKeyframe(), (static AnimatedValueKeyframe.InterpolationParameters<A>.== infix(_:_:)(a1 + *(v8 + 28), a2 + *(v8 + 28), a3, a4)))
  {
    v9 = static UnitCurve.== infix(_:_:)();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t type metadata completion function for AnimatedValueKeyframe()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnimatedValueKeyframe.InterpolationParameters();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnimatedValueKeyframe(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v7 & 0xF8 | 7;
  if (v6 <= 0x18)
  {
    v9 = 24;
  }

  else
  {
    v9 = *(v5 + 64);
  }

  v10 = v9 + 8;
  if ((v7 & 0x1000F8) != 0 || ((v9 + 8 + ((v9 + 1 + v8) & ~v8) + ((v6 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 33 > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v8 + 16) & ~v8));

    return v3;
  }

  v39 = 8 * v9;
  v13 = *(v5 + 16);
  v13(a1, a2, v4);
  v40 = v3 + v6 + 7;
  v15 = v40 & 0xFFFFFFFFFFFFFFF8;
  v16 = a2 + v6 + 7;
  v17 = (v16 & 0xFFFFFFFFFFFFFFF8);
  v18 = *((v16 & 0xFFFFFFFFFFFFFFF8) + v9);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v9 <= 3)
    {
      v20 = v9;
    }

    else
    {
      v20 = 4;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        goto LABEL_24;
      }

      v21 = *v17;
    }

    else if (v20 == 2)
    {
      v21 = *v17;
    }

    else if (v20 == 3)
    {
      v21 = *v17 | (v17[2] << 16);
    }

    else
    {
      v21 = *v17;
    }

    v22 = (v21 | (v19 << v39)) + 3;
    v18 = v21 + 3;
    if (v9 < 4)
    {
      v18 = v22;
    }
  }

LABEL_24:
  if (v18 == 2)
  {
    v13((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v4);
    *(v15 + v9) = 2;
  }

  else if (v18 == 1)
  {
    v13((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v4);
    *(v15 + v9) = 1;
  }

  else if (v18)
  {
    memcpy((v40 & 0xFFFFFFFFFFFFFFF8), (v16 & 0xFFFFFFFFFFFFFFF8), v9 + 1);
  }

  else
  {
    v23 = *v17;
    *(v15 + 16) = *(v17 + 2);
    *v15 = v23;
    *(v15 + v9) = 0;
  }

  v24 = v10 + v15;
  v25 = (&v17[v10] & 0xFFFFFFFFFFFFFFF8);
  v26 = *(v25 + v9);
  v27 = v26 - 3;
  if (v26 >= 3)
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
      }

      else if (v28 == 3)
      {
        v29 = *v25 | (*(v25 + 2) << 16);
      }

      else
      {
        v29 = *v25;
      }

LABEL_43:
      v30 = (v29 | (v27 << v39)) + 3;
      v26 = v29 + 3;
      if (v9 < 4)
      {
        v26 = v30;
      }

      goto LABEL_45;
    }

    if (v28)
    {
      v29 = *v25;
      goto LABEL_43;
    }
  }

LABEL_45:
  v31 = v24 & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 2)
  {
    (v13)(v24 & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 2;
  }

  else if (v26 == 1)
  {
    (v13)(v24 & 0xFFFFFFFFFFFFFFF8);
    *(v31 + v9) = 1;
  }

  else if (v26)
  {
    memcpy((v24 & 0xFFFFFFFFFFFFFFF8), v25, v9 + 1);
  }

  else
  {
    v32 = *v25;
    *(v31 + 16) = v25[2];
    *v31 = v32;
    *(v31 + v9) = 0;
  }

  v33 = (v9 & 0xFFFFFFFFFFFFFFF8) + v9 + 1 + 8;
  v34 = (v40 | 7) + v33;
  v35 = ((v16 | 7) + v33) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  v37 = *(v35 + 16);
  v34 &= 0xFFFFFFFFFFFFFFF8;
  *(v34 + 32) = *(v35 + 32);
  *v34 = v36;
  *(v34 + 16) = v37;
  return v3;
}

unsigned __int8 *destroy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v21 = *(v4 + 8);
  v22 = v4 + 8;
  (v21)(a1, v3);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80) & 0xF8 | 7;
  v7 = ((v5 + a1 + v6) & ~v6);
  if (v5 <= 0x18)
  {
    v8 = 24;
  }

  else
  {
    v8 = *(v22 + 56);
  }

  v9 = 8 * v8;
  v10 = v7[v8];
  v11 = v10 - 3;
  if (v10 >= 3)
  {
    if (v8 <= 3)
    {
      v12 = v8;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = *v7;
    }

    else if (v12 == 2)
    {
      v13 = *v7;
    }

    else if (v12 == 3)
    {
      v13 = *v7 | (v7[2] << 16);
    }

    else
    {
      v13 = *v7;
    }

    v14 = (v13 | (v11 << v9)) + 3;
    v10 = v13 + 3;
    if (v8 < 4)
    {
      v10 = v14;
    }
  }

LABEL_18:
  if (v10 - 1 <= 1)
  {
    (v21)(v7, v3);
  }

  result = (&v7[v8 + 1 + v6] & ~v6);
  v16 = result[v8];
  v17 = v16 - 3;
  if (v16 >= 3)
  {
    if (v8 <= 3)
    {
      v18 = v8;
    }

    else
    {
      v18 = 4;
    }

    if (v18 <= 1)
    {
      if (!v18)
      {
        goto LABEL_34;
      }

      v19 = *result;
    }

    else if (v18 == 2)
    {
      v19 = *result;
    }

    else if (v18 == 3)
    {
      v19 = *result | (*((&v7[v8 + 1 + v6] & ~v6) + 2) << 16);
    }

    else
    {
      v19 = *result;
    }

    v20 = (v19 | (v17 << v9)) + 3;
    v16 = v19 + 3;
    if (v8 < 4)
    {
      v16 = v20;
    }
  }

LABEL_34:
  if (v16 - 1 <= 1)
  {

    return v21();
  }

  return result;
}

uint64_t initializeWithCopy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(a1, a2, v5);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = ((v9 + v10 + a1) & ~v10);
  v12 = ((v9 + v10 + a2) & ~v10);
  if (v9 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(v8 + 48);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v10;
  if (v14 == 2)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v10;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30 + 7;
  v32 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 16);
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *(v31 + 32) = *(v32 + 32);
  *v31 = v33;
  *(v31 + 16) = v34;
  return a1;
}

uint64_t assignWithCopy for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  (*(v6 + 24))(a1, a2, v5);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80) & 0xF8 | 7;
  v9 = ~v8;
  v10 = ((v7 + v8 + a1) & ~v8);
  v11 = ((v7 + v8 + a2) & ~v8);
  if (v7 <= 0x18)
  {
    v12 = 24;
  }

  else
  {
    v12 = *(v6 + 64);
  }

  v46 = v6;
  if (v10 == v11)
  {
    v45 = 8 * v12;
    goto LABEL_6;
  }

  v22 = 8 * v12;
  v23 = *(v10 + v12);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v12 <= 3)
    {
      v25 = v12;
    }

    else
    {
      v25 = 4;
    }

    if (v25 <= 1)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v26 = *v10;
    }

    else if (v25 == 2)
    {
      v26 = *v10;
    }

    else if (v25 == 3)
    {
      v26 = *v10 | (*(v10 + 2) << 16);
    }

    else
    {
      v26 = *v10;
    }

    v31 = (v26 | (v24 << v22)) + 3;
    v23 = v26 + 3;
    if (v12 < 4)
    {
      v23 = v31;
    }
  }

LABEL_33:
  if (v23 - 1 <= 1)
  {
    (*(v6 + 8))(v10, v5);
  }

  v32 = *(v11 + v12);
  v33 = v32 - 3;
  if (v32 < 3)
  {
    goto LABEL_65;
  }

  if (v12 <= 3)
  {
    v34 = v12;
  }

  else
  {
    v34 = 4;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = *v11;
    }

    else if (v34 == 3)
    {
      v35 = *v11 | (*(v11 + 2) << 16);
    }

    else
    {
      v35 = *v11;
    }

LABEL_63:
    v41 = (v35 | (v33 << v22)) + 3;
    v32 = v35 + 3;
    if (v12 < 4)
    {
      v32 = v41;
    }

    goto LABEL_65;
  }

  if (v34)
  {
    v35 = *v11;
    goto LABEL_63;
  }

LABEL_65:
  v45 = 8 * v12;
  if (v32 == 2)
  {
    (*(v6 + 16))(v10, v11, v5);
    *(v10 + v12) = 2;
  }

  else if (v32 == 1)
  {
    (*(v6 + 16))(v10, v11, v5);
    *(v10 + v12) = 1;
  }

  else if (v32)
  {
    memcpy(v10, v11, v12 + 1);
  }

  else
  {
    v42 = *v11;
    v10[2] = v11[2];
    *v10 = v42;
    *(v10 + v12) = 0;
  }

LABEL_6:
  v13 = v12 + 1 + v8;
  v14 = ((v10 + v13) & v9);
  v15 = ((v11 + v13) & v9);
  if (v14 == v15)
  {
    goto LABEL_7;
  }

  v27 = v14[v12];
  v28 = v27 - 3;
  if (v27 >= 3)
  {
    if (v12 <= 3)
    {
      v29 = v12;
    }

    else
    {
      v29 = 4;
    }

    if (v29 <= 1)
    {
      if (!v29)
      {
        goto LABEL_49;
      }

      v30 = *v14;
    }

    else if (v29 == 2)
    {
      v30 = *v14;
    }

    else if (v29 == 3)
    {
      v30 = *v14 | (*(((v10 + v13) & v9) + 2) << 16);
    }

    else
    {
      v30 = *v14;
    }

    v36 = (v30 | (v28 << v45)) + 3;
    v27 = v30 + 3;
    if (v12 < 4)
    {
      v27 = v36;
    }
  }

LABEL_49:
  if (v27 - 1 <= 1)
  {
    (*(v46 + 8))((v10 + v13) & v9, v5);
  }

  v37 = v15[v12];
  v38 = v37 - 3;
  if (v37 < 3)
  {
    goto LABEL_75;
  }

  if (v12 <= 3)
  {
    v39 = v12;
  }

  else
  {
    v39 = 4;
  }

  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v40 = *v15;
    }

    else if (v39 == 3)
    {
      v40 = *v15 | (*(((v11 + v13) & v9) + 2) << 16);
    }

    else
    {
      v40 = *v15;
    }

LABEL_73:
    v43 = (v40 | (v38 << v45)) + 3;
    v37 = v40 + 3;
    if (v12 < 4)
    {
      v37 = v43;
    }

    goto LABEL_75;
  }

  if (v39)
  {
    v40 = *v15;
    goto LABEL_73;
  }

LABEL_75:
  if (v37 == 2)
  {
    (*(v46 + 16))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 2;
  }

  else if (v37 == 1)
  {
    (*(v46 + 16))((v10 + v13) & v9, (v11 + v13) & v9, v5);
    v14[v12] = 1;
  }

  else if (v37)
  {
    memcpy(((v10 + v13) & v9), ((v11 + v13) & v9), v12 + 1);
  }

  else
  {
    v44 = *v15;
    *(((v10 + v13) & v9) + 0x10) = *(((v11 + v13) & v9) + 0x10);
    *v14 = v44;
    v14[v12] = 0;
  }

LABEL_7:
  v16 = (v13 & v9) + v12 + 1;
  v17 = v10 + v16 + 7;
  v18 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = *v18;
  v20 = *(v18 + 16);
  v17 &= 0xFFFFFFFFFFFFFFF8;
  *(v17 + 32) = *(v18 + 32);
  *v17 = v19;
  *(v17 + 16) = v20;
  return a1;
}

uint64_t initializeWithTake for AnimatedValueKeyframe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v8 = v6 + 32;
  v7(a1, a2, v5);
  v9 = *(v6 + 64);
  v10 = *(v6 + 80) & 0xF8 | 7;
  v11 = ((v9 + v10 + a1) & ~v10);
  v12 = ((v9 + v10 + a2) & ~v10);
  if (v9 <= 0x18)
  {
    v13 = 24;
  }

  else
  {
    v13 = *(v8 + 32);
  }

  v14 = *(v12 + v13);
  v15 = v14 - 3;
  if (v14 < 3)
  {
    goto LABEL_18;
  }

  if (v13 <= 3)
  {
    v16 = v13;
  }

  else
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = *v12;
  }

  else if (v16 == 2)
  {
    v17 = *v12;
  }

  else if (v16 == 3)
  {
    v17 = *v12 | (*(v12 + 2) << 16);
  }

  else
  {
    v17 = *v12;
  }

  v18 = (v17 | (v15 << (8 * v13))) + 3;
  v14 = v17 + 3;
  if (v13 < 4)
  {
    v14 = v18;
  }

LABEL_18:
  v19 = ~v10;
  if (v14 == 2)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 2;
  }

  else if (v14 == 1)
  {
    v7(v11, v12, v5);
    *(v11 + v13) = 1;
  }

  else if (v14)
  {
    memcpy(v11, v12, v13 + 1);
  }

  else
  {
    v20 = *v12;
    v11[2] = v12[2];
    *v11 = v20;
    *(v11 + v13) = 0;
  }

  v21 = v13 + 1 + v10;
  v22 = ((v11 + v21) & v19);
  v23 = ((v12 + v21) & v19);
  v24 = v23[v13];
  v25 = v24 - 3;
  if (v24 >= 3)
  {
    if (v13 <= 3)
    {
      v26 = v13;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_39;
      }

      v27 = *v23;
    }

    else if (v26 == 2)
    {
      v27 = *v23;
    }

    else if (v26 == 3)
    {
      v27 = *v23 | (*(((v12 + v21) & v19) + 2) << 16);
    }

    else
    {
      v27 = *v23;
    }

    v28 = (v27 | (v25 << (8 * v13))) + 3;
    v24 = v27 + 3;
    if (v13 < 4)
    {
      v24 = v28;
    }
  }

LABEL_39:
  if (v24 == 2)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 2;
  }

  else if (v24 == 1)
  {
    (v7)((v11 + v21) & v19);
    *(v22 + v13) = 1;
  }

  else if (v24)
  {
    memcpy(((v11 + v21) & v19), v23, v13 + 1);
  }

  else
  {
    v29 = *v23;
    *(((v11 + v21) & v19) + 0x10) = *(((v12 + v21) & v19) + 0x10);
    *v22 = v29;
    *(v22 + v13) = 0;
  }

  v30 = (v21 & v19) + v13 + 1;
  v31 = v11 + v30 + 7;
  v32 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  v34 = *(v32 + 16);
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *(v31 + 32) = *(v32 + 32);
  *v31 = v33;
  *(v31 + 16) = v34;
  return a1;
}