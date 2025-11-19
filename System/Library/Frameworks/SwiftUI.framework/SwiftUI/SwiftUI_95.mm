uint64_t specialized AttributedString.PasteboardOwner.InProcessData.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

char *specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = [a1 name];
  if (one-time initialization token for _instances != -1)
  {
    swift_once();
  }

  v25[0] = static AttributedString.PasteboardOwner._instances;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for AtomicBox<[UIPasteboardName : AttributedString.PasteboardOwner]>, type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if (!*(v27 + 16) || (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v9 & 1) == 0))
  {

LABEL_8:

    v13 = [a1 changeCount];
    v14 = type metadata accessor for AttributedString.PasteboardOwner();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content] = a2;
    v16 = &v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment];
    *v16 = v6;
    *(v16 + 1) = v5;
    *&v15[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount] = v13;
    v26.receiver = v15;
    v26.super_class = v14;

    v17 = objc_msgSendSuper2(&v26, sel_init);
    v18 = [a1 name];
    v27 = static AttributedString.PasteboardOwner._instances;
    v10 = v17;

    v19 = AtomicBox.wrappedValue.modify();
    v21 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    *v21 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v18, isUniquelyReferenced_nonNull_native);

    *v21 = v24;
    v19(v25, 0);
    goto LABEL_9;
  }

  v10 = *(*(v27 + 56) + 8 * v8);

  v11 = *&v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount];
  if (v11 != [a1 changeCount])
  {

    goto LABEL_8;
  }

  *&v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_content] = a2;

  v12 = &v10[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_environment];
  swift_beginAccess();
  *v12 = v6;
  *(v12 + 1) = v5;

LABEL_9:

  return v10;
}

char *specialized static AttributedString.PasteboardOwner.inProcessInstance(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x18D00C850]();
  if (one-time initialization token for _instances != -1)
  {
    swift_once();
  }

  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for AtomicBox<[UIPasteboardName : AttributedString.PasteboardOwner]>, type metadata accessor for [UIPasteboardName : AttributedString.PasteboardOwner], MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  if (*(v9 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    v7 = *(*(v9 + 56) + 8 * v5);

    result = v7;
    if (*&v7[OBJC_IVAR____TtCE7SwiftUIV10Foundation16AttributedString15PasteboardOwner_changeCount] == a3)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t specialized UIKitRichTextEditorCoordinator.textDraggableView(_:itemsForDrag:)(void *a1)
{
  v96 = a1;
  v2 = type metadata accessor for AttributedSubstring();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v88 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>.Ranges, MEMORY[0x1E69E7BA8]);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v73 - v7;
  type metadata accessor for Range<AttributedString.Index>();
  v78 = v8;
  v77 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedTextSelection(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for AttributedTextSelection.Indices(0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<AttributedString.Index>.Ranges(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v81 = v13;
  v89 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v73 - v14;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v91 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  v27 = type metadata accessor for AttributedString();
  v94 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v73 - v34;
  v95 = [objc_opt_self() generalPasteboard];
  v93 = v1;
  UIKitRichTextEditorCoordinator.storage.getter(v26);
  v36 = *(v17 + 48);
  v92 = v16;
  if (v36(v26, 1, v16))
  {
    v37 = type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?;
    v38 = v26;
LABEL_13:
    outlined destroy of (String, Any)(v38, v37);
    v57 = [v96 suggestedItems];
    type metadata accessor for UIDragItem();
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v58;
  }

  v39 = v90;
  v75 = v29;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v26, v21, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  outlined destroy of (String, Any)(v26, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  specialized AttributedTextStorage.text.getter();
  outlined destroy of (String, Any)(v21, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v40 = v94;
  (*(v94 + 32))(v35, v32, v27);
  v41 = v91;
  UIKitRichTextEditorCoordinator.storage.getter(v91);
  v42 = v92;
  v43 = v27;
  if (v36(v41, 1, v92))
  {
    (*(v40 + 8))(v35, v27);
    v37 = type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?;
    v38 = v41;
    goto LABEL_13;
  }

  v74 = v35;
  outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v41, v39, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  outlined destroy of (String, Any)(v41, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>?);
  v97[2] = *(v39 + *(v42 + 44));
  _sypSgMaTm_1(0, &lazy cache variable for type metadata for AtomicBox<ChangedValues>, &type metadata for ChangedValues, MEMORY[0x1E6981D80]);
  AtomicBox.wrappedValue.getter();
  v44 = v83;
  if ((v97[0] & 2) != 0)
  {
    BindingStorage.selection.getter(v83);
  }

  else
  {
    PlatformTextViewEditorStorage.selection.getter(v83);
  }

  v45 = v89;
  v46 = v85;
  v47 = v86;
  v48 = v84;
  outlined destroy of (String, Any)(v39, type metadata accessor for AttributedTextStorage<PlatformTextViewEditorStorage>);
  v49 = v74;
  AttributedTextSelection.indices(in:)(v74, v48);
  outlined destroy of (String, Any)(v44, type metadata accessor for AttributedTextSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = v87;
  if (EnumCaseMultiPayload != 1)
  {
    (*(v94 + 8))(v49, v43);
    v56 = type metadata accessor for AttributedTextSelection.Indices;
    goto LABEL_12;
  }

  v52 = v45;
  v53 = *(v45 + 32);
  v54 = v80;
  v55 = v81;
  v53(v80, v48, v81);
  RangeSet.ranges.getter();
  v48 = v79;
  specialized Collection.first.getter(v79);
  (*(v47 + 8))(v46, v51);
  if ((*(v77 + 48))(v48, 1, v78) == 1)
  {
    (*(v52 + 8))(v54, v55);
    (*(v94 + 8))(v74, v43);
    v56 = type metadata accessor for Range<AttributedString.Index>?;
LABEL_12:
    v37 = v56;
    v38 = v48;
    goto LABEL_13;
  }

  v60 = v76;
  outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(v48, v76, type metadata accessor for Range<AttributedString.Index>);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
  v61 = v74;
  AttributedString.subscript.getter();
  v62 = v75;
  AttributedString.init(_:)();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E69E6F90]);
  v63 = v94;
  v64 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_18CD63400;
  (*(v63 + 16))(v65 + v64, v62, v43);
  v66 = (v93 + OBJC_IVAR____TtC7SwiftUI30UIKitRichTextEditorCoordinator_environment);
  result = swift_beginAccess();
  if (*v66 != 1)
  {
    v67 = v66[1];
    v97[0] = *v66;
    v97[1] = v67;

    v68 = v95;
    v69 = specialized static AttributedString.PasteboardOwner.instance(for:with:in:)(v95, v65, v97);

    v70 = v96;
    AttributedString.PasteboardOwner.register(pasteboard:to:)(v68, v96);
    v71 = [v70 suggestedItems];
    type metadata accessor for UIDragItem();
    v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = *(v63 + 8);
    v72(v62, v43);
    outlined destroy of (String, Any)(v60, type metadata accessor for Range<AttributedString.Index>);
    (*(v52 + 8))(v80, v81);
    v72(v61, v43);
    return v58;
  }

  __break(1u);
  return result;
}

BOOL specialized UIKitRichTextEditorCoordinator.dropContainsText(_:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_msgSend(a1 dropSession];
  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_19:
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v8 & 0xFFFFFFFFFFFFFF8;
    v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v36 = v8 & 0xC000000000000001;
  v10 = (v3 + 1);
  v3 = &selRef_bundleIdentifier;
  v33 = v8;
  v34 = v2;
  while (1)
  {
    v11 = v9;
    if (v37 == v9)
    {
LABEL_14:

      return v37 != v11;
    }

    if (v36)
    {
      v12 = MEMORY[0x18D00E9C0](v9, v8);
    }

    else
    {
      if (v9 >= *(v35 + 16))
      {
        goto LABEL_18;
      }

      v12 = *(v8 + 8 * v9 + 32);
    }

    v13 = v12;
    v2 = &selRef_bundleIdentifier;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v38 = v11;
    v14 = [v12 itemProvider];
    static UTType.text.getter();
    v15 = UTType.identifier.getter();
    v17 = v16;
    v18 = v13;
    v19 = *v10;
    v20 = v34;
    (*v10)(v6, v34);
    v21 = MEMORY[0x18D00C850](v15, v17);

    LODWORD(v17) = [v14 hasItemConformingToTypeIdentifier_];

    if (v17)
    {
      break;
    }

    v22 = [v18 itemProvider];
    static UTType.rtfd.getter();
    v23 = UTType.identifier.getter();
    v25 = v24;
    v19(v6, v20);
    v26 = MEMORY[0x18D00C850](v23, v25);

    LODWORD(v25) = [v22 hasItemConformingToTypeIdentifier_];

    if (v25)
    {
      break;
    }

    v27 = [v18 itemProvider];
    static UTType.flatRTFD.getter();
    v28 = UTType.identifier.getter();
    v30 = v29;
    v19(v6, v20);
    v31 = MEMORY[0x18D00C850](v28, v30);

    LODWORD(v30) = [v27 hasItemConformingToTypeIdentifier_];

    v11 = v38;
    v9 = v38 + 1;
    v8 = v33;
    if (v30)
    {
      goto LABEL_14;
    }
  }

  v11 = v38;
  return v37 != v11;
}

BOOL specialized UIKitRichTextEditorCoordinator.dropContainsSwiftUIAttributedString(_:)(void *a1)
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_2(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v30 - v3;
  v34 = type metadata accessor for UTType();
  v4 = *(v34 - 8);
  v5 = MEMORY[0x1EEE9AC00](v34 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_msgSend(a1 dropSession];
  swift_unknownObjectRelease();
  type metadata accessor for UIDragItem();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
LABEL_17:
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v38 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v31 = v9;
  v32 = "asteboardOwner13InProcessItem";
  v36 = (v4 + 7);
  v37 = v9 & 0xC000000000000001;
  ++v4;
  v30 = "I.AttributedString";
  do
  {
    v11 = v10;
    if (v38 == v10)
    {
      break;
    }

    if (v37)
    {
      v13 = MEMORY[0x18D00E9C0](v10, v9);
      v12 = v36;
    }

    else
    {
      v12 = v36;
      if (v10 >= *(v35 + 16))
      {
        goto LABEL_16;
      }

      v13 = *(v9 + 8 * v10 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v40 = v11;
    v39 = [v13 itemProvider];
    v41 = v13;
    v14 = v33;
    static UTType.data.getter();
    v15 = *v12;
    v16 = v34;
    (*v12)(v14, 0, 1, v34);
    UTType.init(exportedAs:conformingTo:)();
    v17 = UTType.identifier.getter();
    v19 = v18;
    v20 = *v4;
    (*v4)(v7, v16);
    v21 = MEMORY[0x18D00C850](v17, v19);

    v22 = v39;
    LODWORD(v19) = [v39 hasItemConformingToTypeIdentifier_];

    if (v19)
    {

      v11 = v40;
      break;
    }

    v23 = [v41 itemProvider];
    v15(v14, 1, 1, v16);
    UTType.init(exportedAs:conformingTo:)();
    v24 = UTType.identifier.getter();
    v26 = v25;
    v20(v7, v16);
    v27 = MEMORY[0x18D00C850](v24, v26);

    LODWORD(v26) = [v23 hasItemConformingToTypeIdentifier_];

    v11 = v40;
    v10 = v40 + 1;
    v9 = v31;
  }

  while (!v26);
  v28 = v38 != v11;

  return v28;
}

unint64_t type metadata accessor for UIDragItem()
{
  result = lazy cache variable for type metadata for UIDragItem;
  if (!lazy cache variable for type metadata for UIDragItem)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIDragItem);
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for RangeSet<AttributedString.Index>.Ranges(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedString.Index();
    v7 = _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, MEMORY[0x1E69687E8]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with take of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ExclusivelyAccessible<AttributedTextStorage<PlatformTextViewEditorStorage>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (Binding<AttributedString>, MutableBox<AttributedTextSelection>)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<AttributedString>();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>()
{
  if (!lazy cache variable for type metadata for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>)
  {
    type metadata accessor for AttributeScopes.SwiftUIAttributes();
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_3(&lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes, MEMORY[0x1E697D930]);
    v0 = type metadata accessor for AttributedString.PasteboardOwner.Item();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AttributedString.PasteboardOwner.Item<AttributeScopes.SwiftUIAttributes>);
    }
  }
}

uint64_t partial apply for closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #2 in UIKitRichTextEditorCoordinator.textDroppableView(_:willPerformDrop:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t lazy protocol witness table accessor for type [AttributedString] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [AttributedString](255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData()
{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData and conformance AttributedString.PasteboardOwner.InProcessData);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for AttributedString.PasteboardOwner.InProcessData(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<AttributedString.PasteboardOwner.InProcessData.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type AttributedString.PasteboardOwner.InProcessData.CodingKeys and conformance AttributedString.PasteboardOwner.InProcessData.CodingKeys();
    v7 = a3(a1, &unk_1EFFBCA50, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MapKitGraphInputs.environment.getter@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

void (*MapKitGraphInputs.environment.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 16);
  return MapKitGraphInputs.environment.modify;
}

void MapKitGraphInputs.environment.modify(void **a1)
{
  v1 = *a1;
  _GraphInputs.environment.setter();

  free(v1);
}

uint64_t destroy for MapKitGraphInputs()
{
}

uint64_t initializeWithCopy for MapKitGraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for MapKitGraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for MapKitGraphInputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t AdaptiveStack.init(axis:alignment:spacing:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1);
  if (v7)
  {
    lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
  }

  else
  {
    lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  AnyLayout.init<A>(_:)();

  a6(v8);
  type metadata accessor for _LayoutRoot<AnyLayout>();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>);
  _VariadicView.Tree.init(root:content:)();
}

unint64_t lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  result = lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout;
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }

  return result;
}

void type metadata accessor for _LayoutRoot<AnyLayout>()
{
  if (!lazy cache variable for type metadata for _LayoutRoot<AnyLayout>)
  {
    lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
    v0 = type metadata accessor for _LayoutRoot();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LayoutRoot<AnyLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

uint64_t type metadata completion function for AdaptiveStack()
{
  type metadata accessor for _LayoutRoot<AnyLayout>();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>);
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static AdaptiveStack._makeView(view:inputs:)()
{
  type metadata accessor for AdaptiveStack();
  type metadata accessor for _GraphValue();
  type metadata accessor for _LayoutRoot<AnyLayout>();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>);
  type metadata accessor for _VariadicView.Tree();
  _GraphValue.subscript.getter();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>);
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static AdaptiveStack._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for AdaptiveStack();
  type metadata accessor for _LayoutRoot<AnyLayout>();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>);
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance AdaptiveStack<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LayoutRoot<AnyLayout>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_SwiftUI_TableColumnCustomizationBehavior __swiftcall TableColumnCustomizationBehavior.insert(_:)(SwiftUI::TableColumnCustomizationBehavior a1)
{
  v3 = *v1;
  v4 = *v2 & *v1;
  if (v4 != *v1)
  {
    *v2 |= v3;
  }

  *a1.guts.rawValue = v3;
  v5 = v4 != v3;
  result.memberAfterInsert.guts.rawValue = v1;
  result.inserted = v5;
  return result;
}

SwiftUI::TableColumnCustomizationBehavior_optional __swiftcall TableColumnCustomizationBehavior.remove(_:)(SwiftUI::TableColumnCustomizationBehavior a1)
{
  v3 = *v2 & *a1.guts.rawValue;
  if (v3)
  {
    *v2 &= ~*a1.guts.rawValue;
  }

  *v1 = v3;
  *(v1 + 8) = v3 == 0;
  result.value = a1;
  return result;
}

SwiftUI::TableColumnCustomizationBehavior_optional __swiftcall TableColumnCustomizationBehavior.update(with:)(SwiftUI::TableColumnCustomizationBehavior with)
{
  v3 = *with.guts.rawValue;
  v4 = *v2;
  *v2 |= *with.guts.rawValue;
  v5 = v4 & v3;
  *v1 = v5;
  *(v1 + 8) = v5 == 0;
  result.value = with;
  return result;
}

uint64_t TableColumnContent.customizationID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = 0;
  v5[3] = 0;
  v6 = 0;
  return TableColumnContent.environment<A>(key:value:)(&type metadata for TableColumnCustomizationIDKey, v5, a3, a4);
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior and conformance TableColumnCustomizationBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationBehavior.Guts and conformance TableColumnCustomizationBehavior.Guts);
  }

  return result;
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance TableColumnCustomizationIDKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance TableColumnCustomizationIDKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA29TableColumnCustomizationIDKey33_AD0B7B82D3360F70EB1ED1A484B203ACLLV_Tt1g5(v5, v7);
}

uint64_t FallbackDelegateBox.__deallocating_deinit()
{
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t ObjectFallbackDelegateBox.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id outlined copy of FallbackDelegateBox<A>.DelegateStorage<A>(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t assignWithCopy for FallbackDelegateBox.DelegateStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of FallbackDelegateBox<A>.DelegateStorage<A>(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(v5, v6);
  return a1;
}

uint64_t assignWithTake for FallbackDelegateBox.DelegateStorage(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of FallbackDelegateBox<A>.DelegateStorage<A>(v5, v6);
  return a1;
}

uint64_t initializeWithCopy for MakeObservableObjectDelegateBox(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t *assignWithCopy for MakeObservableObjectDelegateBox(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for MakeObservableObjectDelegateBox(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t static UIApplicationDelegateAdaptor._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for AppGraph();
  v0 = swift_dynamicCastClass();

  if (!v0)
  {

    JUMPOUT(0x18D009810);
  }

  return result;
}

void UIApplicationDelegateAdaptor<>.projectedValue.getter()
{
  if (!static AppGraph.delegateBox)
  {
    static os_log_type_t.fault.getter();
    v0 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  specialized UIApplicationDelegateAdaptor.wrappedValue.getter();
}

void NSHostingSceneRepresentation.init(rootScene:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void NSHostingSceneRepresentation.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t static SpatialLongPressGesture.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpatialLongPressGesture.Value(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SpatialLongPressGesture.init<A>(minimumDuration:maximumDistance:coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  (*(a3 + 8))(a2, a3);
  v8 = *(*(a2 - 8) + 8);

  return v8(a1, a2);
}

uint64_t SpatialLongPressGesture.internalBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = outlined init with copy of CoordinateSpace((v1 + 2), a1 + 40);
  *a1 = 0;
  *(a1 + 8) = closure #1 in SpatialLongPressGesture.internalBody.getter;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 88) = 16;
  *(a1 + 96) = 1;
  return result;
}

uint64_t closure #1 in SpatialLongPressGesture.internalBody.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 73) > 1u)
  {
    if (*(result + 73) == 2)
    {
      result = TappableSpatialEvent.location.getter();
      *a2 = v4;
      *(a2 + 8) = v5;
      *(a2 + 16) = 0;
      *(a2 + 17) = 2;
      return result;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v3 = 768;
  }

  else if (*(result + 73))
  {
    result = TappableSpatialEvent.location.getter();
    *a2 = v6;
    *(a2 + 8) = v7;
    v3 = 513;
  }

  else
  {
    if (*(result + 16) != 1)
    {
      result = TappableSpatialEvent.location.getter();
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      return result;
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v3 = 2;
  }

  *(a2 + 16) = v3;
  return result;
}

uint64_t View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v38 = a8;
  v37 = a6;
  v35 = a5;
  v34 = a2;
  v36 = a9;
  v18 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a1, a7, v24);
  *v46 = a10;
  *&v46[1] = a11;
  (*(a12 + 8))(v47, a7, a12);
  (*(v18 + 8))(v20, a7);
  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = a3;
  outlined init with copy of SpatialLongPressGesture(v46, &v39);
  v28 = v35;
  v42 = a4;
  v43 = v35;
  v44 = partial apply for closure #1 in View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:);
  v45 = v27;

  outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a4, v28);
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>();
  v30 = v29;
  v31 = lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>);
  Gesture.cancellable()();
  outlined destroy of ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(&v39);
  outlined destroy of SpatialLongPressGesture(v46);
  *&v39 = v30;
  *(&v39 + 1) = MEMORY[0x1E69801F8];
  v40 = v31;
  v41 = MEMORY[0x1E69801F0];
  swift_getOpaqueTypeConformance2();
  View.gesture<A>(_:including:)();
  return (*(v23 + 8))(v26, v22);
}

void type metadata accessor for <<opaque return type of Gesture.truePreference<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>();
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>();
    lazy protocol witness table accessor for type ModifierGesture<DurationGesture<TouchEvent>, EventListener<TouchEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, LongRemoteTouchGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<Bool>, ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<Bool>>, TextSelectionGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0)
  {
    type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>();
    lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<LegacyButtonGesture.Value>>, LegacyButtonGesture>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of Gesture.truePreference<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>)
  {
    type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>();
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>> and conformance CallbacksGesture<A>, type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>);
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>);
    }
  }
}

void type metadata accessor for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>()
{
  if (!lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>)
  {
    type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>();
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>, type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>);
    v0 = type metadata accessor for CallbacksGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>);
    }
  }
}

void type metadata accessor for PressableGestureCallbacks<SpatialLongPressGesture.Value>()
{
  if (!lazy cache variable for type metadata for PressableGestureCallbacks<SpatialLongPressGesture.Value>)
  {
    lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value();
    v0 = type metadata accessor for PressableGestureCallbacks();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PressableGestureCallbacks<SpatialLongPressGesture.Value>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value()
{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture.Value and conformance SpatialLongPressGesture.Value);
  }

  return result;
}

uint64_t partial apply for closure #1 in View.onLongPressGesture<A>(minimumDuration:maximumDistance:coordinateSpace:perform:onPressingChanged:)(unint64_t a1, unint64_t a2, char a3, __n128 a4, __n128 a5)
{
  a4.n128_u64[0] = a1;
  a5.n128_u64[0] = a2;
  if (a3)
  {
    a4.n128_f64[0] = 0.0;
    a5.n128_f64[0] = 0.0;
  }

  return (*(v5 + 16))(a4, a5);
}

uint64_t outlined destroy of ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>(uint64_t a1)
{
  type metadata accessor for ModifierGesture<CallbacksGesture<PressableGestureCallbacks<SpatialLongPressGesture.Value>>, SpatialLongPressGesture>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of SpatialLongPressGesture(uint64_t result)
{
  if (!*(result + 56))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result + 16);
    return v1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialLongPressGesture and conformance SpatialLongPressGesture()
{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture;
  if (!lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialLongPressGesture and conformance SpatialLongPressGesture);
  }

  return result;
}

uint64_t destroy for SpatialLongPressGesture(uint64_t result)
{
  if (!*(result + 56))
  {
    return __swift_destroy_boxed_opaque_existential_1(result + 16);
  }

  return result;
}

_OWORD *initializeWithCopy for SpatialLongPressGesture(_OWORD *result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 56))
  {
    v2 = *(a2 + 32);
    result[1] = *(a2 + 16);
    result[2] = v2;
    *(result + 41) = *(a2 + 41);
  }

  else
  {
    v3 = *(a2 + 40);
    *(result + 40) = v3;
    v4 = result;
    (**(v3 - 8))((result + 1), a2 + 16);
    result = v4;
    *(v4 + 56) = 0;
  }

  return result;
}

uint64_t assignWithCopy for SpatialLongPressGesture(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    if (*(a2 + 56))
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 32);
      *(a1 + 41) = *(a2 + 41);
      *(a1 + 16) = v4;
      *(a1 + 32) = v5;
    }

    else
    {
      v6 = *(a2 + 40);
      *(a1 + 40) = v6;
      *(a1 + 48) = *(a2 + 48);
      (**(v6 - 8))(a1 + 16, a2 + 16);
      *(a1 + 56) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for SpatialLongPressGesture(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *a1 = *a2;
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1 + 16);
    v5 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v5;
    result = *(a2 + 41);
    *(a1 + 41) = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialLongPressGesture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for SpatialLongPressGesture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialLongPressGesture.Value(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialLongPressGesture.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>)
  {
    v0 = MEMORY[0x1E697E628];
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for CategoryGesture<SpatialLongPressGesture.Value>, MEMORY[0x1E697E628]);
    type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>();
    lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>, &lazy cache variable for type metadata for CategoryGesture<SpatialLongPressGesture.Value>, v0);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CategoryGesture<SpatialLongPressGesture.Value>, ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>)
  {
    v0 = MEMORY[0x1E697FE18];
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<SpatialLongPressGesture.Value>, MEMORY[0x1E697FE18]);
    type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>();
    lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(&lazy protocol witness table cache variable for type CoordinateSpaceGesture<SpatialLongPressGesture.Value> and conformance CoordinateSpaceGesture<A>, &lazy cache variable for type metadata for CoordinateSpaceGesture<SpatialLongPressGesture.Value>, v0);
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>> and conformance SingleLongPressGesture<A, B>, type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<SpatialLongPressGesture.Value>, SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>>);
    }
  }
}

void type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for SpatialLongPressGesture.Value);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>()
{
  if (!lazy cache variable for type metadata for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>)
  {
    type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>();
    lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>);
    v0 = type metadata accessor for SingleLongPressGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SingleLongPressGesture<SpatialLongPressGesture.Value, ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>>);
    }
  }
}

void type metadata accessor for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>()
{
  if (!lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, &type metadata for SpatialLongPressGesture.Value, MEMORY[0x1E697DA98]);
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for EventListener<TappableSpatialEvent>, MEMORY[0x1E697FA80], MEMORY[0x1E697E120]);
    lazy protocol witness table accessor for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>();
    lazy protocol witness table accessor for type EventListener<TappableSpatialEvent> and conformance EventListener<A>();
    v0 = type metadata accessor for ModifierGesture();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifierGesture<MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, EventListener<TappableSpatialEvent>>);
    }
  }
}

void type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E697FA90]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>()
{
  result = lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>;
  if (!lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>, &type metadata for SpatialLongPressGesture.Value, MEMORY[0x1E697DA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value> and conformance MapGesture<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EventListener<TappableSpatialEvent> and conformance EventListener<A>()
{
  result = lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>;
  if (!lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>)
  {
    type metadata accessor for MapGesture<TappableSpatialEvent, SpatialLongPressGesture.Value>(255, &lazy cache variable for type metadata for EventListener<TappableSpatialEvent>, MEMORY[0x1E697FA80], MEMORY[0x1E697E120]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EventListener<TappableSpatialEvent> and conformance EventListener<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CategoryGesture<SpatialLongPressGesture.Value> and conformance CategoryGesture<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryGesture<SpatialLongPressGesture.Value>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PressableGestureCallbacks<SpatialLongPressGesture.Value> and conformance PressableGestureCallbacks<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TableRowContent.contextMenu<A>(menuItems:)(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ContextMenuTableRowModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  a1(v13);
  (*(v8 + 32))(v15, v10, a4);
  swift_getWitnessTable();
  TableRowContent.modifier<A>(_:)(v15, a3, v11);
  return (*(v12 + 8))(v15, v11);
}

uint64_t TableRowContent.contextMenu<A, B>(menuItems:preview:)@<X0>(uint64_t (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v30 = a8;
  v31 = a4;
  v28 = a3;
  v29 = a2;
  v27 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v17;
  v34 = v18;
  v35 = a9;
  v36 = a10;
  v19 = type metadata accessor for _ContextMenuPreviewTableRowModifier();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v26 - v22;
  v24 = v27(v21);
  v29(v24);
  _ContextMenuPreviewTableRowModifier.init(menuItems:preview:)(v16, v13, a5, a6, v23);
  swift_getWitnessTable();
  TableRowContent.modifier<A>(_:)(v23, v31, v19);
  return (*(v20 + 8))(v23, v19);
}

uint64_t _ContextMenuPreviewTableRowModifier.init(menuItems:preview:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for _ContextMenuPreviewTableRowModifier();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t _ContextMenuTableRowModifier.body.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v2 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v2);
  View.styleContext<A>(_:)();
  lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  swift_getWitnessTable();
  result = AnyView.init<A>(_:)();
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t _ContextMenuPreviewTableRowModifier.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v9 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v9);
  v10 = *(a1 + 32);
  View.styleContext<A>(_:)();
  v11 = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v14[0] = v10;
  v14[1] = v11;
  swift_getWitnessTable();
  v12 = AnyView.init<A>(_:)();
  (*(v6 + 16))(v8, v2 + *(a1 + 52), v5);
  result = AnyView.init<A>(_:)();
  *a2 = v12;
  a2[1] = result;
  return result;
}

uint64_t static AccessibilityRotorContent._makeEntries(content:inputs:)()
{
  return static AccessibilityRotorContent._makeEntries(content:inputs:)();
}

{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t static AccessibilityRotorContent._entryCount(inputs:)(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v6[0] = a1[2];
  *(v6 + 12) = *(a1 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 32))(v5, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t specialized closure #1 in static AccessibilityRotorContent._makeEntries(content:inputs:)()
{
  v0 = MEMORY[0x1E69E73E0];
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Map<Never, Never>(0, &lazy cache variable for type metadata for Map<Never, Never>, v0, v0, MEMORY[0x1E698D398]);
  lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>();
  Attribute.init<A>(body:value:flags:update:)();

  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t closure #1 in static AccessibilityRotorContent._makeEntries(content:inputs:)(int a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[1] = a1;
  type metadata accessor for _GraphValue();
  v19 = a3;
  v20 = a4;
  LODWORD(v21) = _GraphValue.value.getter();
  *(&v21 + 1) = partial apply for closure #1 in Attribute.subscript.getter;
  *&v22 = swift_getKeyPath();
  v16 = AssociatedTypeWitness;
  v17 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v21, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, v17, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

  _GraphValue.init(_:)();
  v11 = a2[1];
  v21 = *a2;
  v22 = v11;
  v23[0] = a2[2];
  *(v23 + 12) = *(a2 + 44);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(v14, &v21, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static AccessibilityRotorContent._makeEntries(content:inputs:) in conformance Never()
{
  type metadata accessor for MainActor();
  static Semantics.v6.getter();
  return static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
}

uint64_t AccessibilityOptionalRotorContent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t static AccessibilityTupleRotorContent.visitTypes(_:)(void (*a1)(uint64_t, __int128 *), uint64_t a2, uint64_t a3)
{
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA025AccessibilityRotorContentD0V_Tt1g5(a3, &v9);
  v4 = *(v9 + 16);
  if (v4)
  {
    v5 = (v9 + 40);
    do
    {
      v6 = *v5;
      v5 = (v5 + 24);
      v7 = AGTupleElementOffset();
      v9 = v6;
      a1(v7, &v9);
      --v4;
    }

    while (v4);
  }
}

uint64_t static AccessibilityTupleRotorContent._entryCount(inputs:)(_OWORD *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v13[0] = *a1;
  v13[1] = v3;
  v5 = *a1;
  v4 = a1[1];
  v14[0] = a1[2];
  *(v14 + 12) = *(a1 + 44);
  v10 = v5;
  v11 = v4;
  *v12 = a1[2];
  *&v12[12] = *(a1 + 44);
  *&v12[32] = 0;
  v12[40] = 1;
  v9[2] = a2;
  v9[3] = &v10;
  outlined init with copy of _AccessibilityRotorEntryInputs(v13, v15);
  static AccessibilityTupleRotorContent.visitTypes(_:)(partial apply for closure #1 in static AccessibilityTupleRotorContent._entryCount(inputs:), v9, a2);
  v6 = *&v12[32];
  v15[2] = *v12;
  v16[0] = *&v12[16];
  *(v16 + 9) = *&v12[25];
  v15[0] = v10;
  v15[1] = v11;
  v7 = type metadata accessor for AccessibilityTupleRotorContent.CountEntries();
  (*(*(v7 - 8) + 8))(v15, v7);
  return v6;
}

void partial apply for closure #1 in static AccessibilityTupleRotorContent._entryCount(inputs:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = type metadata accessor for AccessibilityTupleRotorContent.CountEntries();
  AccessibilityTupleRotorContent.CountEntries.visit<A>(type:)(v2, v4, v2, v3);
}

void AccessibilityTupleRotorContent.CountEntries.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(v4 + 72) & 1) != 0 || (v7 = v5[1], v19[0] = *v5, v19[1] = v7, v9 = *v5, v8 = v5[1], v20[0] = v5[2], *(v20 + 12) = *(v5 + 44), v10 = *(v5 + 8), v16 = v9, v17 = v8, v18[0] = v5[2], *(v18 + 12) = *(v5 + 44), v11 = *(a4 + 32), v12 = a4, outlined init with copy of _AccessibilityRotorEntryInputs(v19, &v15), v13 = v11(&v16, a3, v12), LOBYTE(v12) = v14, v21[0] = v16, v21[1] = v17, v22[0] = v18[0], *(v22 + 12) = *(v18 + 12), outlined destroy of _AccessibilityRotorEntryInputs(v21), (v12))
  {
    *(v5 + 8) = 0;
    *(v5 + 72) = 1;
  }

  else if (__OFADD__(v10, v13))
  {
    __break(1u);
  }

  else
  {
    *(v5 + 8) = v10 + v13;
    *(v5 + 72) = 0;
  }
}

uint64_t static AccessibilityTupleRotorContent._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v32[0] = *a2;
  v32[1] = v6;
  v8 = *a2;
  v7 = a2[1];
  v33[0] = a2[2];
  *(v33 + 12) = *(a2 + 44);
  *&v30[8] = v8;
  v9 = *a1;
  *&v30[24] = v7;
  *&v30[40] = a2[2];
  *&v30[52] = *(a2 + 44);
  *v30 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *&v30[72] = MEMORY[0x1E69E7CC0];
  v31 = 0;
  v27[2] = a3;
  v27[3] = v30;
  outlined init with copy of _AccessibilityRotorEntryInputs(v32, v28);
  v11 = static AccessibilityTupleRotorContent.visitTypes(_:)(partial apply for closure #1 in static AccessibilityTupleRotorContent._makeEntries(content:inputs:), v27, a3);
  v12 = *&v30[72];
  v13 = *(*&v30[72] + 16);
  if (v13)
  {
    *&v28[0] = v10;
    v11 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v10 = *&v28[0];
    v14 = (v12 + 32);
    v15 = *(*&v28[0] + 16);
    do
    {
      v17 = *v14++;
      v16 = v17;
      *&v28[0] = v10;
      v18 = *(v10 + 24);
      if (v15 >= v18 >> 1)
      {
        v11 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
        v10 = *&v28[0];
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 4 * v15++ + 32) = v16;
      --v13;
    }

    while (v13);
  }

  *&v28[0] = v10;
  MEMORY[0x1EEE9AC00](v11);
  v24 = type metadata accessor for AccessibilityTupleRotorContent.MergeLists();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_16, &v23, v24, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);

  *a4 = v26;
  v28[2] = *&v30[32];
  v28[3] = *&v30[48];
  v28[4] = *&v30[64];
  v29 = v31;
  v28[0] = *v30;
  v28[1] = *&v30[16];
  Lists = type metadata accessor for AccessibilityTupleRotorContent.MakeLists();
  return (*(*(Lists - 8) + 8))(v28, Lists);
}

uint64_t partial apply for closure #1 in static AccessibilityTupleRotorContent._makeEntries(content:inputs:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(*(v2 + 24) + 80) = a1;
  Lists = type metadata accessor for AccessibilityTupleRotorContent.MakeLists();
  return AccessibilityTupleRotorContent.MakeLists.visit<A>(type:)(v3, Lists, v3, v4);
}

uint64_t AccessibilityTupleRotorContent.MakeLists.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for AccessibilityTupleRotorContent();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v21[0] = *(v4 + 8);
  v21[1] = v8;
  v22[0] = *(v4 + 40);
  *(v22 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v16 = *(v4 + 8);
  v17 = v9;
  v18[0] = *(v4 + 40);
  *(v18 + 12) = *(v4 + 52);
  v10 = *(a4 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v21, v23);
  v10(&v20, v19, &v16, a3, a4);
  v23[0] = v16;
  v23[1] = v17;
  v24[0] = v18[0];
  *(v24 + 12) = *(v18 + 12);
  outlined destroy of _AccessibilityRotorEntryInputs(v23);
  v11 = v20;
  v12 = *(v4 + 72);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v15 + 1;
  *(v12 + 4 * v15 + 32) = v11;
  *(v5 + 72) = v12;
  return result;
}

uint64_t AccessibilityTupleRotorContent.MergeLists.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v14;
    v6 = a1 + 32;
    do
    {
      v6 += 4;
      Value = AGGraphGetValue();
      outlined init with copy of DropInfo(Value, &v15);
      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 40 * v9;
      v11 = v15;
      v12 = v16;
      *(v10 + 64) = v17;
      *(v10 + 32) = v11;
      *(v10 + 48) = v12;
      --v3;
    }

    while (v3);
  }

  *(&v16 + 1) = &unk_1EFFBDAB8;
  v17 = &protocol witness table for CombineGenerator;
  *&v15 = v4;
  return outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, a2);
}

uint64_t protocol witness for static TupleDescriptor.typeCache.getter in conformance AccessibilityRotorContentDescriptor()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t protocol witness for static TupleDescriptor.typeCache.setter in conformance AccessibilityRotorContentDescriptor(uint64_t a1)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AccessibilityRotorContentDescriptor.typeCache = a1;
}

uint64_t (*protocol witness for static TupleDescriptor.typeCache.modify in conformance AccessibilityRotorContentDescriptor())()
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return protocol witness for static UserDefaultKeyedFeature.cachedValue.modify in conformance ViewGraphBridgePropertiesAreInput;
}

uint64_t static ForEach<>._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _DWORD *a9@<X8>)
{
  v24 = a9;
  v32 = *MEMORY[0x1E69E9840];
  v15 = *a1;
  v16 = a2[1];
  v27 = *a2;
  v28 = v16;
  v29[0] = a2[2];
  *(v29 + 12) = *(a2 + 44);
  v25 = v15;
  *v30 = a3;
  type metadata accessor for ForEach();
  type metadata accessor for _GraphValue();
  v17 = _GraphValue.value.getter();
  *&v30[4] = v27;
  *&v30[20] = v28;
  *&v30[36] = v29[0];
  *&v30[48] = *(v29 + 12);
  v18 = AGSubgraphGetCurrent();
  if (!v18)
  {
    __break(1u);
  }

  *&v26[4] = *v30;
  *&v26[20] = *&v30[16];
  *&v26[36] = *&v30[32];
  *&v26[52] = *&v30[48];
  *v26 = v17;
  *&v26[72] = v18;
  MEMORY[0x1EEE9AC00](v18);
  *v30 = a3;
  *&v30[8] = a4;
  *&v30[16] = a5;
  *&v30[24] = a6;
  *&v30[32] = a7;
  *&v30[40] = a8;
  List = type metadata accessor for ForEach<>.MakeList();
  v23[2] = List;
  v23[3] = swift_getWitnessTable();
  outlined init with copy of _AccessibilityRotorEntryInputs(&v27, v30);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v26, closure #1 in Attribute.init<A>(_:)partial apply, v23, List, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  *&v30[32] = *&v26[32];
  *&v30[48] = *&v26[48];
  v31 = *&v26[64];
  *v30 = *v26;
  *&v30[16] = *&v26[16];
  result = (*(*(List - 8) + 8))(v30, List);
  *v24 = v25;
  return result;
}

id ForEach<>.MakeList.value.getter@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  *v33 = a1[2];
  v5 = *v33;
  *&v33[8] = v6;
  *&v33[16] = v7;
  *&v33[24] = v8;
  *&v33[32] = v9;
  v10 = type metadata accessor for ForEach();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = v2[1];
  v14 = v2[3];
  *&v33[32] = v2[2];
  *&v33[48] = v14;
  v15 = v2[3];
  *&v33[64] = v2[4];
  v16 = v2[1];
  *v33 = *v2;
  *&v33[16] = v16;
  v32[2] = *&v33[32];
  v32[3] = v15;
  v32[4] = v2[4];
  v32[0] = *v33;
  v32[1] = v13;
  ForEach<>.PreferenceTransform.forEach.getter(&v22 - v11);
  v30[0] = *&v33[8];
  v30[1] = *&v33[24];
  v31[0] = *&v33[40];
  *(v31 + 12) = *&v33[52];
  v17 = *v33;
  v23 = *&v33[72];
  v24 = v5;
  v18 = a1[7];
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v18;
  a2[3] = type metadata accessor for ForEach<>.Generator();
  a2[4] = &protocol witness table for ForEach<A, B, C><>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  ForEach<>.Generator.init(forEach:inputs:attribute:parentSubgraph:)(v12, v30, v17, v23, boxed_opaque_existential_1);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v33[8], v32);
  v20 = v23;

  return v20;
}

double ForEach<>.Generator.init(forEach:inputs:attribute:parentSubgraph:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  *v15 = a2[2];
  *&v15[12] = *(a2 + 44);
  v9 = type metadata accessor for ForEach();
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  v10 = type metadata accessor for ForEach<>.Generator();
  v11 = (a5 + v10[17]);
  *v11 = v13;
  v11[1] = v14;
  v11[2] = *v15;
  result = *&v15[12];
  *(v11 + 44) = *&v15[12];
  *(a5 + v10[18]) = a3;
  *(a5 + v10[19]) = a4;
  return result;
}

void ForEach<>.Generator.forEachContentList(_:)(uint64_t (*a1)(_OWORD *), uint64_t a2, void *a3)
{
  v37 = a1;
  v38 = a2;
  v44 = a3[5];
  v5 = a3[2];
  v42 = *(*(*(v44 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v29 - v7;
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = swift_getAssociatedTypeWitness();
  v31 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = AGSubgraphGetGraph();
  v43 = AGSubgraphCreate2();

  v17 = a3[3];
  v18 = a3[4];
  v39 = a3;
  v19 = a3[6];
  v34 = v18;
  v35 = v17;
  *&v20 = v18;
  *(&v20 + 1) = v44;
  *&v21 = v5;
  *(&v21 + 1) = v17;
  v45[0] = v21;
  v45[1] = v20;
  v33 = v19;
  v46 = v19;
  type metadata accessor for ForEach();
  v40 = v3;
  ForEach.data.getter();
  dispatch thunk of Sequence.makeIterator()();
  v36 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v15;
  v42 = v13;
  v32 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v23 = v30;
  v24 = *(v30 + 48);
  if (v24(v11, 1, AssociatedTypeWitness) == 1)
  {
LABEL_5:
    (*(v31 + 8))(v41, v42);
  }

  else
  {
    v25 = *(v23 + 32);
    v26 = (v23 + 8);
    while (1)
    {
      v25(v8, v11, AssociatedTypeWitness);
      AGGraphClearUpdate();
      v27 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      closure #1 in ForEach<>.Generator.forEachContentList(_:)(v40, v8, v36, v35, v34, v44, v33, v39[7], v45);
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      v28 = v37(v45);
      outlined destroy of AccessibilityRelationshipScope.Key(v45);
      if ((v28 & 1) == 0)
      {
        break;
      }

      (*v26)(v8, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v24(v11, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v31 + 8))(v41, v42);

    (*v26)(v8, AssociatedTypeWitness);
  }
}

uint64_t closure #1 in ForEach<>.Generator.forEachContentList(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v35 = a1;
  v36 = a8;
  v34 = a7;
  v38 = a9;
  v49 = *MEMORY[0x1E69E9840];
  v37 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v46 = v16;
  *(&v46 + 1) = v17;
  *&v47 = v18;
  *(&v47 + 1) = v19;
  *&v48[0] = v20;
  v21 = type metadata accessor for ForEach();
  v22 = specialized ForEach.content.getter(v21);

  v22(a2);

  *(&v40[2] + 4) = a5;
  v23 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, partial apply for closure #1 in Attribute.init(value:), v40 + 4, a5, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  _GraphValue.init(_:)();
  *&v46 = a3;
  *(&v46 + 1) = a4;
  *&v47 = a5;
  *(&v47 + 1) = a6;
  v25 = v36;
  *&v48[0] = v34;
  *(&v48[0] + 1) = v36;
  v26 = (v35 + *(type metadata accessor for ForEach<>.Generator() + 68));
  v27 = v26[1];
  v44[0] = *v26;
  v28 = *v26;
  v29 = v26[1];
  v30 = v26[2];
  v44[1] = v27;
  v45[0] = v30;
  *(v45 + 12) = *(v26 + 44);
  v41 = v28;
  v42 = v29;
  v43[0] = v26[2];
  *(v43 + 12) = *(v26 + 44);
  v31 = *(v25 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v44, &v46);
  v31(v40, &v39, &v41, a5, v25);
  v46 = v41;
  v47 = v42;
  v48[0] = v43[0];
  *(v48 + 12) = *(v43 + 12);
  outlined destroy of _AccessibilityRotorEntryInputs(&v46);
  Value = AGGraphGetValue();
  outlined init with copy of DropInfo(Value, v38);
  return (*(v37 + 8))(v15, a5);
}

uint64_t ForEach<>.Generator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 1;
  v16 = 0;
  v6[1] = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = a4;
  v9 = *(a3 + 40);
  v10 = *(a3 + 56);
  v11 = a5;
  v12 = a2;
  v13 = &v16;
  v14 = a1;
  v15 = &v17;
  ForEach<>.Generator.forEachContentList(_:)(partial apply for closure #1 in ForEach<>.Generator.visitEntries<A>(applying:from:), v6, a3);
  return v17;
}

uint64_t closure #1 in ForEach<>.Generator.visitEntries<A>(applying:from:)(void *a1, uint64_t *a2, void *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  result = (*(v19 + 16))(v18, v19);
  v21 = *a3;
  v22 = *a3 + result;
  v23 = __OFADD__(*a3, result);
  if (__OFADD__(*a3, result))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = *a2;
  if (*a2 >= v22)
  {
LABEL_11:
    if (!v23)
    {
      *a3 = v22;
      return 1;
    }

    goto LABEL_16;
  }

  if (__OFSUB__(v24, v21))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v25 = result;
  v28 = (v24 - v21) & ~((v24 - v21) >> 63);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  result = (*(v27 + 8))(a4, &v28, a9, a13, v26, v27);
  if (result)
  {
    v22 = *a3 + v25;
    v23 = __OFADD__(*a3, v25);
    goto LABEL_11;
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t ForEach<>.Generator.count.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(v7 + 68));
  v9 = v8[1];
  v25[0] = *v8;
  v25[1] = v9;
  v11 = *v8;
  v10 = v8[1];
  v26[0] = v8[2];
  *(v26 + 12) = *(v8 + 44);
  v12 = *(v7 + 32);
  v23 = v11;
  *v24 = v10;
  *&v24[16] = v8[2];
  *&v24[28] = *(v8 + 44);
  v13 = *(v7 + 56);
  v14 = *(v13 + 32);
  outlined init with copy of _AccessibilityRotorEntryInputs(v25, v27);
  v15 = v14(&v23, v12, v13);
  v17 = v16;
  v27[0] = v23;
  v27[1] = *v24;
  v28[0] = *&v24[16];
  *(v28 + 12) = *&v24[28];
  v18 = outlined destroy of _AccessibilityRotorEntryInputs(v27);
  if (v17)
  {
    *&v23 = 0;
    MEMORY[0x1EEE9AC00](v18);
    *(&v22 - 2) = &v23;
    ForEach<>.Generator.forEachContentList(_:)(partial apply for closure #1 in ForEach<>.Generator.count.getter, (&v22 - 2), a1);
    return v23;
  }

  else
  {
    v20 = *(a1 + 24);
    *&v23 = v3;
    *(&v23 + 1) = v20;
    *v24 = v12;
    v22 = *(a1 + 40);
    *&v24[8] = v22;
    type metadata accessor for ForEach();
    ForEach.data.getter();
    v21 = dispatch thunk of Collection.count.getter();
    (*(v4 + 8))(v6, v3);
    result = v21 * v15;
    if ((v21 * v15) >> 64 != (v21 * v15) >> 63)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in ForEach<>.Generator.count.getter(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  if (__OFADD__(*a2, result))
  {
    __break(1u);
  }

  else
  {
    *a2 += result;
    return 1;
  }

  return result;
}

uint64_t ForEach<>.init(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a2;
  v20[1] = a3;
  v15 = *(a4 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = a9;
  v20[9] = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ForEach.init(_:idGenerator:content:)();
  return (*(v15 + 8))(a1, a4);
}

uint64_t static AccessibilityRotorEntry._makeEntries(content:inputs:)@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v11[0] = *a1;
  type metadata accessor for AccessibilityRotorEntry();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  swift_beginAccess();
  v6 = *(v4 + 16);
  v11[0] = v5;
  v11[1] = v6;
  List = type metadata accessor for AccessibilityRotorEntry.MakeList();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  result = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, closure #1 in Attribute.init<A>(_:)partial apply, v12, List, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  *a3 = v10;
  return result;
}

uint64_t AccessibilityRotorEntry.MakeList.entry.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityRotorEntry();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

double AccessibilityRotorEntry.MakeList.value.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityRotorEntry();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  AccessibilityRotorEntry.MakeList.entry.getter(&v11 - v4);
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(&v12);
  v11 = v12;
  AccessibilityRotorEntry.resolveForList(in:)(&v11, v2, v13);

  (*(v3 + 8))(v5, v2);
  a1[3] = type metadata accessor for AccessibilityRotorEntry.Generator();
  a1[4] = &protocol witness table for AccessibilityRotorEntry<A>.Generator;
  v6 = swift_allocObject();
  *a1 = v6;
  v7 = v17;
  *(v6 + 80) = v16;
  *(v6 + 96) = v7;
  *(v6 + 112) = v18;
  *(v6 + 128) = v19;
  v8 = v13[1];
  *(v6 + 16) = v13[0];
  *(v6 + 32) = v8;
  result = *&v14;
  v10 = v15;
  *(v6 + 48) = v14;
  *(v6 + 64) = v10;
  return result;
}

uint64_t AccessibilityRotorEntry.Generator.visitEntries<A>(applying:from:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 8))(v5, a4, a5);
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    return result & 1;
  }

  return result;
}

uint64_t AccessibilityOptionalRotorContent.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccessibilityOptionalRotorContent.content.setter(uint64_t a1)
{
  v3 = type metadata accessor for Optional();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static AccessibilityOptionalRotorContent._makeEntries(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, _DWORD *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a2[1];
  v16 = *a2;
  v17 = v5;
  v18[0] = a2[2];
  *(v18 + 12) = *(a2 + 44);
  v11 = v4;
  type metadata accessor for AccessibilityOptionalRotorContent();
  type metadata accessor for _GraphValue();
  v6 = _GraphValue.value.getter();
  v19 = v16;
  v20 = v17;
  *v21 = v18[0];
  *&v21[12] = *(v18 + 12);
  AccessibilityOptionalRotorContent.MakeList.init(optionalContent:inputs:)(v6, &v19, v15);
  List = type metadata accessor for AccessibilityOptionalRotorContent.MakeList();
  v13 = List;
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _AccessibilityRotorEntryInputs(&v16, &v19);
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for Attribute<AccessibilityRotorEntryList>, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v15, closure #1 in Attribute.init<A>(_:)partial apply, v12, List, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  *v21 = v15[2];
  *&v21[16] = v15[3];
  v22 = v15[4];
  v19 = v15[0];
  v20 = v15[1];
  result = (*(*(List - 8) + 8))(&v19, List);
  *a3 = v11;
  return result;
}

id AccessibilityOptionalRotorContent.MakeList.init(optionalContent:inputs:)@<X0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v6[4] = *a2;
  *&v6[20] = a2[1];
  *&v6[36] = a2[2];
  *&v6[48] = *(a2 + 44);
  result = AGSubgraphGetCurrent();
  if (result)
  {
    *a3 = a1;
    *(a3 + 4) = *v6;
    *(a3 + 20) = *&v6[16];
    *(a3 + 36) = *&v6[32];
    *(a3 + 52) = *&v6[48];
    *(a3 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AccessibilityOptionalRotorContent.MakeList.optionalContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessibilityOptionalRotorContent();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

id AccessibilityOptionalRotorContent.MakeList.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AccessibilityOptionalRotorContent();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = v1[1];
  v7 = v1[3];
  *&v19[32] = v1[2];
  *&v19[48] = v7;
  v8 = v1[3];
  *&v19[64] = v1[4];
  v9 = v1[1];
  *v19 = *v1;
  *&v19[16] = v9;
  v18[2] = *&v19[32];
  v18[3] = v8;
  v18[4] = v1[4];
  v18[0] = *v19;
  v18[1] = v6;
  AccessibilityOptionalRotorContent.MakeList.optionalContent.getter(&v14 - v4);
  v16[0] = *&v19[8];
  v16[1] = *&v19[24];
  v17[0] = *&v19[40];
  *(v17 + 12) = *&v19[52];
  v10 = *v19;
  v15 = *&v19[72];
  a1[3] = type metadata accessor for AccessibilityOptionalRotorContent.Generator();
  a1[4] = &protocol witness table for AccessibilityOptionalRotorContent<A>.Generator;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  AccessibilityOptionalRotorContent.Generator.init(optionalContent:inputs:attribute:parentSubgraph:)(v5, v16, v10, v15, boxed_opaque_existential_1);
  outlined init with copy of _AccessibilityRotorEntryInputs(&v19[8], v18);
  v12 = v15;

  return v12;
}

__n128 AccessibilityOptionalRotorContent.Generator.init(optionalContent:inputs:attribute:parentSubgraph:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = *a2;
  v14 = a2[1];
  *v15 = a2[2];
  *&v15[12] = *(a2 + 44);
  v9 = type metadata accessor for AccessibilityOptionalRotorContent();
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  v10 = type metadata accessor for AccessibilityOptionalRotorContent.Generator();
  v11 = (a5 + v10[9]);
  *v11 = v13;
  v11[1] = v14;
  v11[2] = *v15;
  result = *&v15[12];
  *(v11 + 44) = *&v15[12];
  *(a5 + v10[10]) = a3;
  *(a5 + v10[11]) = a4;
  return result;
}

uint64_t AccessibilityOptionalRotorContent.Generator.someContentList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(a1 + 24);
  v11 = type metadata accessor for AccessibilityOptionalRotorContent();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *(v5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, v3, v16);
  (*(v7 + 32))(v9, v13, v6);
  if ((*(v14 + 48))(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    v21 = v26;
    *(v26 + 32) = 0;
    *v21 = 0u;
    v21[1] = 0u;
  }

  else
  {
    (*(v14 + 32))(v18, v9, v5);
    v22 = AGSubgraphGetGraph();
    v23 = AGSubgraphCreate2();

    AGGraphClearUpdate();
    v24 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    closure #1 in AccessibilityOptionalRotorContent.Generator.someContentList.getter(v18, v3, v5, v10, v26);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    return (*(v14 + 8))(v18, v5);
  }

  return result;
}

uint64_t closure #1 in AccessibilityOptionalRotorContent.Generator.someContentList.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[2] = a3;
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in Attribute.init(value:)partial apply, v18, a3, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  _GraphValue.init(_:)();
  v12 = (a2 + *(type metadata accessor for AccessibilityOptionalRotorContent.Generator() + 36));
  v13 = v12[1];
  v25[0] = v12[2];
  *(v25 + 12) = *(v12 + 44);
  v14 = v12[1];
  v24[0] = *v12;
  v24[1] = v14;
  v19 = v24[0];
  v20 = v13;
  *v21 = v12[2];
  *&v21[12] = *(v12 + 44);
  v15 = *(a4 + 24);
  outlined init with copy of _AccessibilityRotorEntryInputs(v24, v26);
  v15(&v23, v22, &v19, a3, a4);
  v26[0] = v19;
  v26[1] = v20;
  v27[0] = *v21;
  *(v27 + 12) = *&v21[12];
  outlined destroy of _AccessibilityRotorEntryInputs(v26);
  Value = AGGraphGetValue();
  return outlined init with copy of DropInfo(Value, a5);
}

uint64_t AccessibilityOptionalRotorContent.Generator.count.getter(uint64_t a1)
{
  AccessibilityOptionalRotorContent.Generator.someContentList.getter(a1, v8);
  if (v9)
  {
    outlined init with copy of _Benchmark(v8, v5);
    outlined destroy of AccessibilityRelationshipScope.Key(v8);
    v1 = v6;
    v2 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v3 = (*(v2 + 16))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    outlined destroy of AccessibilityRotorEntryList?(v8);
    return 0;
  }

  return v3;
}

uint64_t AccessibilityOptionalRotorContent.Generator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AccessibilityOptionalRotorContent.Generator.someContentList.getter(a3, v16);
  if (v17)
  {
    outlined init with copy of _Benchmark(v16, v13);
    outlined destroy of AccessibilityRelationshipScope.Key(v16);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v11 = (*(v10 + 8))(a1, a2, a4, a5, v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    outlined destroy of AccessibilityRotorEntryList?(v16);
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t Group<A>.init(content:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2(v1);
  return Group.init(_content:)();
}

uint64_t static Group<A>._makeEntries(content:inputs:)(int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v12[0] = a2[2];
  *(v12 + 12) = *(a2 + 44);
  v10 = v6;
  type metadata accessor for Group();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  return (*(a4 + 24))(v9, v11, a3, a4);
}

uint64_t closure #1 in static Group<A>._makeEntries(content:inputs:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for Group();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t CombineGenerator.count.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    for (i = a1 + 32; ; i += 40)
    {
      outlined init with copy of DropInfo(i, v8);
      v4 = v9;
      v5 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      result = (*(v5 + 16))(v4, v5);
      v7 = __OFADD__(v2, result);
      v2 += result;
      if (v7)
      {
        break;
      }

      outlined destroy of AccessibilityRelationshipScope.Key(v8);
      if (!--v1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CombineGenerator.visitEntries<A>(applying:from:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 1;
  }

  v8 = 0;
  v9 = *a2;
  for (i = a3 + 32; ; i += 40)
  {
    outlined init with copy of DropInfo(i, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    result = (*(v12 + 16))(v11, v12);
    v14 = v8 + result;
    if (__OFADD__(v8, result))
    {
      break;
    }

    if (v9 < v14)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      v18 = (v9 - v8) & ~((v9 - v8) >> 63);
      v15 = v20;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (((*(v16 + 8))(a1, &v18, a4, a5, v15, v16) & 1) == 0)
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v19);
        return 0;
      }
    }

    outlined destroy of AccessibilityRelationshipScope.Key(v19);
    v8 = v14;
    if (!--v5)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ForEach<>.MakeList()
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

uint64_t type metadata completion function for AccessibilityOptionalRotorContent()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityOptionalRotorContent(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

uint64_t destroy for AccessibilityOptionalRotorContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void *initializeWithCopy for AccessibilityOptionalRotorContent(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithCopy for AccessibilityOptionalRotorContent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

void *initializeWithTake for AccessibilityOptionalRotorContent(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for AccessibilityOptionalRotorContent(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for AccessibilityOptionalRotorContent(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void destroy for AccessibilityOptionalRotorContent.MakeList(uint64_t a1)
{

  v2 = *(a1 + 72);
}

uint64_t initializeWithCopy for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;

  v5 = v4;
  return a1;
}

uint64_t assignWithCopy for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityOptionalRotorContent.MakeList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for AccessibilityTupleRotorContent.MakeLists()
{
}

uint64_t initializeWithCopy for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t assignWithCopy for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t assignWithTake for AccessibilityTupleRotorContent.MakeLists(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t initializeWithCopy for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v4;
  return a1;
}

uint64_t assignWithTake for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityTupleRotorContent.CountEntries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t storeEnumTagSinglePayload for AccessibilityTupleRotorContent.CountEntries(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t base witness table accessor for _AttributeBody in ForEach<A, B, C><>.MakeList()
{
  return swift_getWitnessTable();
}

{
  return swift_getWitnessTable();
}

uint64_t type metadata accessor for ForEach<>.Generator()
{
  return swift_getGenericMetadata();
}

{
  return swift_getGenericMetadata();
}

void outlined consume of AccessibilityRotorEntryRange(id a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }
}

void partial apply for specialized closure #1 in Attribute.subscript.getter()
{
  specialized closure #1 in Attribute.subscript.getter();
}

{
  swift_getAtKeyPath();
  __break(1u);
}

{
  swift_getAtKeyPath();
  __break(1u);
}

{
  partial apply for specialized closure #1 in Attribute.subscript.getter();
}

unint64_t lazy protocol witness table accessor for type Map<Never, Never> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>)
  {
    type metadata accessor for Map<Never, Never>(255, &lazy cache variable for type metadata for Map<Never, Never>, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<Never, Never> and conformance Map<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityOptionalRotorContent.Generator()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityOptionalRotorContent.Generator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v11 = *v12;
    *(v11 + 8) = *(v12 + 8);
    *(v11 + 16) = *(v12 + 16);
    *(v11 + 24) = *(v12 + 24);
    *(v11 + 28) = *(v12 + 28);
    *(v11 + 32) = *(v12 + 32);
    *(v11 + 36) = *(v12 + 36);
    *(v11 + 40) = *(v12 + 40);
    *(v11 + 48) = *(v12 + 48);
    *(v11 + 56) = *(v12 + 56);
    v13 = ((v11 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    v14 = ((v12 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *v14;
    v15 = ((v14 + 11) & 0xFFFFFFFFFFFFFFF8);
    v16 = *v15;
    *((v13 + 11) & 0xFFFFFFFFFFFFFFF8) = *v15;

    v17 = v16;
  }

  return a1;
}

void destroy for AccessibilityOptionalRotorContent.Generator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }

  v5 = a1 + *(v4 + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = *((((v6 + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
}

void *initializeWithCopy for AccessibilityOptionalRotorContent.Generator(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = (a1 + v13) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;
  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);
  *(v14 + 24) = *(v15 + 24);
  *(v14 + 28) = *(v15 + 28);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 36) = *(v15 + 36);
  *(v14 + 40) = *(v15 + 40);
  *(v14 + 48) = *(v15 + 48);
  *(v14 + 56) = *(v15 + 56);
  v16 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  *((v16 + 11) & 0xFFFFFFFFFFFFFFF8) = *v18;

  v20 = v19;
  return a1;
}

void *assignWithCopy for AccessibilityOptionalRotorContent.Generator(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = v20;
  v22 = v20;

  return a1;
}

void *initializeWithTake for AccessibilityOptionalRotorContent.Generator(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  v13 = v12 + 7;
  v14 = ((a1 + v13) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[2];
  *(v14 + 44) = *(v15 + 44);
  v14[1] = v17;
  v14[2] = v18;
  *v14 = v16;
  v19 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void *assignWithTake for AccessibilityOptionalRotorContent.Generator(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = v13 + 7;
  v15 = (a1 + v14) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  *v19 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityOptionalRotorContent.Generator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
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
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void storeEnumTagSinglePayload for AccessibilityOptionalRotorContent.Generator(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
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
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v10 + 7) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      *(v22 + 40) = 0u;
      *(v22 + 24) = 0u;
      *(v22 + 8) = 0u;
      *(v22 + 56) = 0;
      *v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v22 + 16) = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

id outlined copy of AccessibilityRotorEntryRange(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
    return result;
  }

  return result;
}

uint64_t destroy for AccessibilityRotorEntry.Generator(uint64_t a1)
{
  if (*(a1 + 48) <= 1u)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v2 = *(a1 + 80);
  if (v2 != 255)
  {
    outlined consume of AccessibilityRotorEntryRange(*(a1 + 64), *(a1 + 72), v2);
  }
}

uint64_t initializeWithCopy for AccessibilityRotorEntry.Generator(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = *(a2 + 40);
    v6 = 1;
  }

  else
  {
    if (!*(a2 + 48))
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
      goto LABEL_7;
    }

    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    v6 = *(a2 + 48);
  }

  *(a1 + 48) = v6;
LABEL_7:
  v8 = *(a2 + 56);
  *(a1 + 56) = v8;
  v9 = *(a2 + 80);
  v10 = v8;
  if (v9 == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    v11 = *(a2 + 64);
    v12 = *(a2 + 72);
    outlined copy of AccessibilityRotorEntryRange(v11, v12, v9);
    *(a1 + 64) = v11;
    *(a1 + 72) = v12;
    *(a1 + 80) = v9;
  }

  v13 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v13;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

uint64_t assignWithCopy for AccessibilityRotorEntry.Generator(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 3);
      *(a1 + 24) = v5;
      *(a1 + 32) = *(a2 + 4);
      (**(v5 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = 1;
    }

    else if (*(a2 + 48))
    {
      v6 = *a2;
      v7 = a2[1];
      v8 = a2[2];
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 16) = v7;
      *(a1 + 32) = v8;
      *a1 = v6;
    }

    else
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 48) = 0;
    }
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 7);
  *(a1 + 56) = v10;
  v11 = v10;

  v12 = *(a2 + 80);
  if (*(a1 + 80) == 255)
  {
    if (v12 == 255)
    {
      v21 = a2[4];
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 64) = v21;
    }

    else
    {
      v18 = *(a2 + 8);
      v19 = *(a2 + 9);
      outlined copy of AccessibilityRotorEntryRange(v18, v19, *(a2 + 80));
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v12;
    }
  }

  else if (v12 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
    v20 = *(a2 + 80);
    *(a1 + 64) = a2[4];
    *(a1 + 80) = v20;
  }

  else
  {
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    outlined copy of AccessibilityRotorEntryRange(v13, v14, *(a2 + 80));
    v15 = *(a1 + 64);
    v16 = *(a1 + 72);
    *(a1 + 64) = v13;
    *(a1 + 72) = v14;
    v17 = *(a1 + 80);
    *(a1 + 80) = v12;
    outlined consume of AccessibilityRotorEntryRange(v15, v16, v17);
  }

  v22 = *(a2 + 12);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 96) = v22;

  v23 = *(a2 + 13);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v23;
  return a1;
}

uint64_t outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(uint64_t a1)
{
  type metadata accessor for Map<Never, Never>(0, &lazy cache variable for type metadata for AccessibilityRotorEntryElementSpecifier<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for AccessibilityRotorEntryElementSpecifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Map<Never, Never>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t assignWithTake for AccessibilityRotorEntry.Generator(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of AccessibilityRotorEntryElementSpecifier<AnyHashable>(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  v6 = *(a1 + 80);
  if (v6 == 255)
  {
    goto LABEL_7;
  }

  v7 = *(a2 + 80);
  if (v7 == 255)
  {
    outlined destroy of AccessibilityRotorEntryRange(a1 + 64);
LABEL_7:
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_8;
  }

  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  outlined consume of AccessibilityRotorEntryRange(v8, v9, v6);
LABEL_8:
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityRotorEntry.Generator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityRotorEntry.Generator(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t type metadata completion function for ForEach<>.Generator()
{
  result = type metadata accessor for ForEach();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ForEach<>.Generator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v7 = (((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, ((((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18))
  {
    v24 = *a2;
    *v3 = *a2;
    v3 = (v24 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    v8 = v7 + 8;
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v16;
    *((v15 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v17 = *v18;
    *(v17 + 8) = *(v18 + 8);
    *(v17 + 16) = *(v18 + 16);
    *(v17 + 24) = *(v18 + 24);
    *(v17 + 28) = *(v18 + 28);
    *(v17 + 32) = *(v18 + 32);
    *(v17 + 36) = *(v18 + 36);
    *(v17 + 40) = *(v18 + 40);
    *(v17 + 48) = *(v18 + 48);
    *(v17 + 56) = *(v18 + 56);
    v19 = ((v17 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 63) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *v21;

    v23 = v22;
  }

  return v3;
}

void destroy for ForEach<>.Generator(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = *(v3 + 56) + 7;

  v5 = *((((((a1 + (((((((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t initializeWithCopy for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;
  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);
  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);
  *(v15 + 48) = *(v16 + 48);
  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *v19;
  *((v17 + 11) & 0xFFFFFFFFFFFFFFF8) = *v19;

  v21 = v20;
  return a1;
}

uint64_t assignWithCopy for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;

  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;

  *((v12 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = (a1 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (a2 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v15 = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 16) = *(v16 + 16);

  *(v15 + 24) = *(v16 + 24);
  *(v15 + 28) = *(v16 + 28);
  *(v15 + 32) = *(v16 + 32);
  *(v15 + 36) = *(v16 + 36);
  *(v15 + 40) = *(v16 + 40);

  *(v15 + 48) = *(v16 + 48);

  *(v15 + 56) = *(v16 + 56);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v18 = ((v16 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v17 = *v18;
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = *((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v19;
  *v19 = v20;
  v22 = v20;

  return a1;
}

uint64_t initializeWithTake for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v15 + 44);
  v18 = v15[1];
  v17 = v15[2];
  *v14 = *v15;
  v14[1] = v18;
  v14[2] = v17;
  *(v14 + 44) = v16;
  v19 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v20 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v19 = *v20;
  *((v19 + 11) & 0xFFFFFFFFFFFFFFF8) = *((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for ForEach<>.Generator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;

  *((v11 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v14 = *v15;

  *(v14 + 8) = *(v15 + 8);
  *(v14 + 16) = *(v15 + 16);

  *(v14 + 24) = *(v15 + 24);
  *(v14 + 28) = *(v15 + 28);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 36) = *(v15 + 36);
  *(v14 + 40) = *(v15 + 40);

  *(v14 + 48) = *(v15 + 48);

  *(v14 + 56) = *(v15 + 56);
  v16 = ((v14 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  v17 = ((v15 + 63) & 0xFFFFFFFFFFFFFFFCLL);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  *v18 = *((v17 + 11) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for ForEach<>.Generator(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for ForEach<>.Generator(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 63) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t outlined destroy of AccessibilityRotorEntryList?(uint64_t a1)
{
  type metadata accessor for Attribute<AccessibilityRotorEntryList>(0, &lazy cache variable for type metadata for AccessibilityRotorEntryList?, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Attribute<AccessibilityRotorEntryList>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for AccessibilityRotorEntryList);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for UIArrayInteractionRepresentable.makeUIInteractions() in conformance ScrollPocketElementInteractionRepresentable()
{
  v1 = *v0;
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithStyle_];
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18CD69590;
  *(result + 32) = v3;
  return result;
}

Swift::Int BarMagicPocketStyle.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle and conformance BarMagicPocketStyle()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle and conformance BarMagicPocketStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role);
  }

  return result;
}

void type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>()
{
  if (!lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>)
  {
    v0 = type metadata accessor for CoreInteractionRepresentableAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketElementInteractionRepresentable>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<BarPocketModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type BarMagicPocketStyle.Role? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?)
  {
    type metadata accessor for SceneList.Item?(255, &lazy cache variable for type metadata for BarMagicPocketStyle.Role?, &type metadata for BarMagicPocketStyle.Role, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type BarMagicPocketStyle.Role and conformance BarMagicPocketStyle.Role();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BarMagicPocketStyle.Role? and conformance <A> A?);
  }

  return result;
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a8 = 1;
  *(a8 + 8) = a10;
  *(a8 + 16) = a14;
  outlined init with copy of _Benchmark(a2, a8 + 24);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a15;
  v17[9] = a3;
  v17[10] = a4;
  v17[11] = a5;
  type metadata accessor for DocumentGroupConfiguration.LazyViewerManagedDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(a10, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a6;
  *(a8 + 80) = a7;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  (*(v19 + 16))(v21 + v20, a1, v18);
  *(a8 + 88) = v21;

  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v19 + 8))(a1, v18);
  *(a8 + 96) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v49 = a7;
  v56 = a6;
  v46 = a3;
  v45 = a2;
  v44 = a1;
  v57 = a8;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for URLDocumentConfiguration();
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v48 = a4;
  v17 = type metadata accessor for ModifiedContent();
  v52 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v42 - v21;
  v22 = type metadata accessor for _ConditionalContent();
  v54 = *(v22 - 8);
  v55 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v53 = &v42 - v23;
  v24 = *(a9 + 24);
  swift_unknownObjectRetain();
  v25 = v24(a5, a9);
  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = *(a9 + 56);
    swift_unknownObjectRetain();
    v26(a5, a9);
    swift_unknownObjectRelease();
    *v14 = 0;
    v27 = v43;
    v45(v14);
    outlined destroy of DocumentConfiguration?(v14, type metadata accessor for URLDocumentConfiguration);
    swift_getKeyPath();
    v28 = v50;
    v29 = v48;
    v30 = v56;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a5, v50, a9, type metadata accessor for DocumentConfiguration);
    v31 = type metadata accessor for DocumentConfiguration();
    (*(*(v31 - 8) + 56))(v28, 0, 1, v31);
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v28, type metadata accessor for DocumentConfiguration?);
    (*(v47 + 8))(v27, v29);
    v32 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v58 = v30;
    v59 = v32;
    WitnessTable = swift_getWitnessTable();
    v34 = v51;
    static ViewBuilder.buildExpression<A>(_:)(v19, v17, WitnessTable);
    v35 = *(v52 + 8);
    v35(v19, v17);
    static ViewBuilder.buildExpression<A>(_:)(v34, v17, WitnessTable);
    v36 = v53;
    static ViewBuilder.buildEither<A, B>(first:)(v19, v17);
    v35(v19, v17);
    v35(v34, v17);
  }

  else
  {
    v66 = static Color.clear.getter();
    v37 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v30 = v56;
    v64 = v56;
    v65 = v37;
    swift_getWitnessTable();
    v36 = v53;
    static ViewBuilder.buildEither<A, B>(second:)(&v66, v17, MEMORY[0x1E69815C0]);
  }

  v38 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
  v62 = v30;
  v63 = v38;
  v60 = swift_getWitnessTable();
  v61 = MEMORY[0x1E6981580];
  v39 = v55;
  v40 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v36, v39, v40);
  return (*(v54 + 8))(v36, v39);
}

uint64_t DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.configuration.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 56);
  type metadata accessor for DocumentConfiguration();
  v6 = *(a1 + 24);
  swift_unknownObjectRetain();
  v5(v6, v4);
  result = swift_unknownObjectRelease();
  *a2 = 0;
  return result;
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a8 = 0;
  *(a8 + 8) = a10;
  *(a8 + 16) = a14;
  outlined init with copy of _Benchmark(a7, a8 + 24);
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = a11;
  v17[5] = a12;
  v17[6] = a13;
  v17[7] = a14;
  v17[8] = a15;
  v17[9] = a2;
  v17[10] = a3;
  v17[11] = a6;
  type metadata accessor for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  PlatformItemListTransformModifier.init(flags:transform:)(a10, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));

  type metadata accessor for ObservableDocumentBoxInputView();
  *(a8 + 64) = AnyView.init<A>(_:)();
  *(a8 + 72) = a4;
  *(a8 + 80) = a5;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  v22 = *(v19 + 16);
  v22(v21 + v20, a1, v18);
  *(a8 + 88) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18CD63400;
  v22(v23 + v20, a1, v18);

  __swift_destroy_boxed_opaque_existential_1(a7);
  result = (*(v19 + 8))(a1, v18);
  *(a8 + 96) = v23;
  return result;
}

uint64_t closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, uint64_t *), uint64_t a14)
{
  v34 = a7;
  v35 = a4;
  v37 = a9;
  v31 = a8;
  v32 = a14;
  v33 = a12;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();

  v44 = ObservedObject.init(wrappedValue:)();
  *&v45 = v20;
  *(&v45 + 1) = a2;
  v46 = a3;
  v40 = a5;
  *&v41 = a6;
  *(&v41 + 1) = v31;
  v42 = a10;
  v43 = a11;
  a13(0, &v40);
  WitnessTable = swift_getWitnessTable();
  View.styleContext<A>(_:)();

  swift_unknownObjectRelease();
  v44 = v40;
  v45 = v41;
  v46 = v42;
  v22 = v33;
  v23 = *(v33 + 16);
  v24 = swift_unknownObjectRetain();
  v25 = v34;
  v23(v24, a11, v34, v22);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v26 = type metadata accessor for ModifiedContent();
  v27 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  v38 = WitnessTable;
  v39 = v27;
  v28 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v19, v26, v25, v28);
  (*(v36 + 8))(v19, v25);

  return swift_unknownObjectRelease();
}

uint64_t DocumentGroupConfiguration.LazyEditorManagedDocumentContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_BYTE *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a8;
  v63 = a7;
  v52 = a4;
  v51 = a3;
  v50 = a1;
  v64 = a9;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v54 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLDocumentConfiguration();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v59 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v55 = a5;
  v20 = type metadata accessor for ModifiedContent();
  v58 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v57 = v47 - v24;
  v25 = type metadata accessor for _ConditionalContent();
  v61 = *(v25 - 8);
  v62 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v60 = v47 - v26;
  v27 = *(a10 + 24);
  swift_unknownObjectRetain();
  v28 = v27(a6, a10);
  swift_unknownObjectRelease();
  if (v28)
  {
    v49 = v20;
    v29 = v51;
    v47[1] = a2;
    v30 = v55;
    v48 = v22;
    v31 = v63;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a6, v17, a10, type metadata accessor for URLDocumentConfiguration);
    v29(v17);
    v32 = v49;
    outlined destroy of DocumentConfiguration?(v17, type metadata accessor for URLDocumentConfiguration);
    v47[2] = swift_getKeyPath();
    v33 = v54;
    DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter(a6, v54, a10, type metadata accessor for DocumentConfiguration);
    v34 = type metadata accessor for DocumentConfiguration();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    v35 = v48;
    v36 = v59;
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v33, type metadata accessor for DocumentConfiguration?);
    (*(v53 + 8))(v36, v30);
    v37 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v65 = v31;
    v66 = v37;
    WitnessTable = swift_getWitnessTable();
    v39 = v57;
    static ViewBuilder.buildExpression<A>(_:)(v35, v32, WitnessTable);
    v40 = *(v58 + 8);
    v40(v35, v32);
    static ViewBuilder.buildExpression<A>(_:)(v39, v32, WitnessTable);
    v41 = v60;
    static ViewBuilder.buildEither<A, B>(first:)(v35, v32);
    v40(v35, v32);
    v40(v39, v32);
  }

  else
  {
    v73 = static Color.clear.getter();
    v42 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v31 = v63;
    v71 = v63;
    v72 = v42;
    swift_getWitnessTable();
    v41 = v60;
    static ViewBuilder.buildEither<A, B>(second:)(&v73, v20, MEMORY[0x1E69815C0]);
  }

  v43 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
  v69 = v31;
  v70 = v43;
  v67 = swift_getWitnessTable();
  v68 = MEMORY[0x1E6981580];
  v44 = v62;
  v45 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v41, v44, v45);
  return (*(v61 + 8))(v41, v44);
}

uint64_t DocumentGroupConfiguration.LazyViewerManagedDocumentContainer.configuration.getter@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>, uint64_t a3, void (*a4)(void))
{
  v6 = *(a3 + 80);
  swift_unknownObjectRetain();
  v7 = v6(a1, a3);
  v8 = *(a3 + 56);
  a4(0);
  v8(a1, a3);
  result = swift_unknownObjectRelease();
  *a2 = v7 & 1;
  return result;
}

uint64_t DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.body.getter@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v39 = a3;
  type metadata accessor for DocumentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[2];
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v33 = v7;
  v8 = type metadata accessor for ModifiedContent();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v31 - v12;
  v13 = type metadata accessor for _ConditionalContent();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v36 = &v31 - v14;
  v15 = a1[6];
  v16 = *(v15 + 24);
  v17 = a1[3];
  swift_unknownObjectRetain();
  LOBYTE(v7) = v16(v17, v15);
  swift_unknownObjectRelease();
  v18 = MEMORY[0x1E6981580];
  if (v7)
  {
    swift_getKeyPath();
    v32(a1);
    v19 = type metadata accessor for DocumentConfiguration();
    (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    v20 = a1[4];
    View.environment<A>(_:_:)();

    outlined destroy of DocumentConfiguration?(v6, type metadata accessor for DocumentConfiguration?);
    v21 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v40 = v20;
    v41 = v21;
    WitnessTable = swift_getWitnessTable();
    v23 = v34;
    static ViewBuilder.buildExpression<A>(_:)(v10, v8, WitnessTable);
    v24 = *(v35 + 8);
    v24(v10, v8);
    static ViewBuilder.buildExpression<A>(_:)(v23, v8, WitnessTable);
    v25 = v36;
    static ViewBuilder.buildEither<A, B>(first:)(v10, v8);
    v24(v10, v8);
    v24(v23, v8);
  }

  else
  {
    v48 = static Color.clear.getter();
    v20 = a1[4];
    v26 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
    v46 = v20;
    v47 = v26;
    swift_getWitnessTable();
    v25 = v36;
    static ViewBuilder.buildEither<A, B>(second:)(&v48, v8, MEMORY[0x1E69815C0]);
  }

  v27 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>);
  v44 = v20;
  v45 = v27;
  v42 = swift_getWitnessTable();
  v43 = v18;
  v28 = v38;
  v29 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v25, v28, v29);
  return (*(v37 + 8))(v25, v28);
}

uint64_t DocumentGroupConfiguration.EagerEditorManagedDocumentContainer.configuration.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 80);
  v5 = *(a1 + 24);
  swift_unknownObjectRetain();
  v6 = v4(v5, v3);
  swift_unknownObjectRelease();
  v7 = *(v3 + 56);
  type metadata accessor for DocumentConfiguration();
  swift_unknownObjectRetain();
  v7(v5, v3);
  result = swift_unknownObjectRelease();
  *a2 = v6 & 1;
  return result;
}

uint64_t DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.init(modelBox:viewer:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t (*a7)(void, void *)@<X7>, uint64_t *a8@<X8>)
{
  *a8 = ObservedObject.init(wrappedValue:)();
  a8[1] = v16;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v17 = a7(0, v19);
  return (*(*(a2 - 8) + 32))(a8 + *(v17 + 60), a1, a2);
}

uint64_t URLDocumentConfiguration.documentURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for URLDocumentConfiguration() + 20);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t type metadata accessor for URLDocumentConfiguration()
{
  result = type metadata singleton initialization cache for URLDocumentConfiguration;
  if (!type metadata singleton initialization cache for URLDocumentConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t URLDocumentConfiguration.documentURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for URLDocumentConfiguration() + 20);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t DocumentGroup.init<A, B>(editing:newDocumentProvider:documentBoxType:contentModifierType:editor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  v26 = a4;
  v27 = a5;
  v28 = a3;
  v25 = a7;
  v23 = a10;
  v24 = a9;
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = _typeName(_:qualified:)();
  v21 = v20;
  outlined init with copy of _Benchmark(a2, v29);
  DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(v18, v26, v27, v19, v21, v28, v29, v25, a6, a8, v24, *(&v24 + 1), v23, *(&v23 + 1), a11);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v15 + 8))(a1, v14);
}

{
  return DocumentGroup.init<A, B>(editing:newDocument:documentBoxType:contentModifierType:editor:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t DocumentGroup.init<A, B>(viewing:newDocumentProvider:documentBoxType:contentModifierType:viewer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v28 = a6;
  v29 = a4;
  v27 = a3;
  v25 = a10;
  v26 = a9;
  v17 = type metadata accessor for UTType();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, a1, v17, v19);
  outlined init with copy of _Benchmark(a2, v30);
  v22 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(v21, v30, a5, v28, v29, v22, v23, a8, a7, v26, *(&v26 + 1), v25, *(&v25 + 1), a11, a12);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v18 + 8))(a1, v17);
}

{
  return DocumentGroup.init<A, B>(viewing:newDocument:documentBoxType:contentModifierType:viewer:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t DocumentGroup.init<A, B>(editing:newDocument:documentBoxType:contentModifierType:editor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, __int128 a8, __int128 a9, uint64_t a10)
{
  v33 = a6;
  v34 = a3;
  v29 = a2;
  v27 = a1;
  v32 = a7;
  v30 = a9;
  v31 = a8;
  v13 = *(a5 - 8);
  v28 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v18);
  (*(v13 + 16))(v15, a4, a5);
  v21 = _typeName(_:qualified:)();
  v23 = v22;
  v24 = v29;
  outlined init with copy of _Benchmark(v29, v35);
  DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(v20, v15, v21, v23, v33, v34, v35, a5, v33, v31, *(&v31 + 1), v30, *(&v30 + 1), v28);
  (*(v13 + 8))(a4, a5);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return (*(v17 + 8))(v27, v16);
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v56 = a2;
  v57 = a7;
  v51 = a6;
  *&v55 = a4;
  v53 = a3;
  v58 = a1;
  v50 = a12;
  v49 = a11;
  v16 = *(a8 - 8);
  v17 = *(v16 + 64);
  v48[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v19;
  *v19 = 0;
  v19[1] = a9;
  v19[2] = a13;
  outlined init with copy of _Benchmark(v20, (v19 + 3));
  (*(v16 + 16))(v18, a2, a8);
  v21 = *(v16 + 80);
  v54 = v16;
  v22 = (v21 + 72) & ~v21;
  v23 = (v17 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = a8;
  *(v24 + 2) = a8;
  *(v24 + 3) = a9;
  *(v24 + 4) = a10;
  v26 = v49;
  v27 = v50;
  *(v24 + 5) = v49;
  *(v24 + 6) = v27;
  *(v24 + 7) = a13;
  *(v24 + 8) = a14;
  v28 = *(v16 + 32);
  v29 = v25;
  v52 = v25;
  v28(&v24[v22], v18);
  *&v24[v23] = v51;
  v66 = v29;
  v67 = a9;
  v68 = v26;
  v69 = v27;
  v70 = a13;
  type metadata accessor for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  v30 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v32 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  v64 = WitnessTable;
  v65 = v32;
  v33 = swift_getWitnessTable();
  v34 = *(a14 + 8);
  v62 = v33;
  v63 = v34;
  v35 = swift_getWitnessTable();
  v60 = PlatformItemListTransformModifier.init(flags:transform:)(a9, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
  v61 = v36;
  v66 = a9;
  v67 = v30;
  v68 = v27;
  v69 = a13;
  v70 = v35;
  type metadata accessor for ObservableDocumentBoxInputView();
  v37 = AnyView.init<A>(_:)();
  v38 = v59;
  v39 = v53;
  v59[8] = v37;
  v38[9] = v39;
  v38[10] = v55;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v40 = type metadata accessor for UTType();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  v55 = xmmword_18CD63400;
  *(v43 + 16) = xmmword_18CD63400;
  v44 = *(v41 + 16);
  v45 = v58;
  v44(v43 + v42, v58, v40);
  v59[11] = v43;
  v46 = swift_allocObject();
  *(v46 + 16) = v55;
  v44(v46 + v42, v45, v40);
  __swift_destroy_boxed_opaque_existential_1(v57);
  (*(v54 + 8))(v56, v52);
  result = (*(v41 + 8))(v45, v40);
  v59[12] = v46;
  return result;
}

uint64_t DocumentGroup.init<A, B>(viewing:newDocument:documentBoxType:contentModifierType:viewer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v28 = a8;
  v26 = a10;
  v27 = a9;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UTType();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18, v20);
  outlined init with copy of _Benchmark(a2, v32);
  (*(v15 + 16))(v17, a5, a6);
  v23 = _typeName(_:qualified:)();
  DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(v22, v32, v17, v31, v23, v24, a6, v28, v29, v27, *(&v27 + 1), v26, *(&v26 + 1), a11);
  (*(v15 + 8))(a5, a6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return (*(v19 + 8))(a1, v18);
}

uint64_t DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v52 = a5;
  v53 = a6;
  v54 = a3;
  v55 = a2;
  v49 = a12;
  v50 = a4;
  v48 = a11;
  v56 = a1;
  v57 = a14;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v47[1] = a10;
  MEMORY[0x1EEE9AC00](a1);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = 1;
  *(a8 + 8) = a9;
  *(a8 + 16) = a13;
  outlined init with copy of _Benchmark(v20, a8 + 24);
  (*(v17 + 16))(v19, a3, a7);
  v21 = *(v17 + 80);
  v51 = v17;
  v22 = (v21 + 72) & ~v21;
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = a7;
  *(v24 + 2) = a7;
  *(v24 + 3) = a9;
  v26 = v48;
  *(v24 + 4) = a10;
  *(v24 + 5) = v26;
  v27 = v49;
  *(v24 + 6) = v49;
  *(v24 + 7) = a13;
  *(v24 + 8) = v57;
  v28 = *(v17 + 32);
  v29 = v25;
  v28(&v24[v22], v19);
  *&v24[v23] = v50;
  v64 = v29;
  v65 = a9;
  v66 = v26;
  v67 = v27;
  v68 = a13;
  type metadata accessor for DocumentGroupConfiguration.EagerViewerManagedDocumentContainer();
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  type metadata accessor for ModifiedContent();
  v30 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v32 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  v62 = WitnessTable;
  v63 = v32;
  v33 = swift_getWitnessTable();
  v34 = *(v57 + 8);
  v60 = v33;
  v61 = v34;
  v35 = swift_getWitnessTable();
  v58 = PlatformItemListTransformModifier.init(flags:transform:)(a9, partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
  v59 = v36;
  v64 = a9;
  v65 = v30;
  v66 = v27;
  v67 = a13;
  v68 = v35;
  type metadata accessor for ObservableDocumentBoxInputView();
  v37 = AnyView.init<A>(_:)();
  v39 = v52;
  v38 = v53;
  *(a8 + 64) = v37;
  *(a8 + 72) = v39;
  *(a8 + 80) = v38;
  _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<UTType>, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v40 = type metadata accessor for UTType();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_18CD63400;
  v44 = v43 + v42;
  v45 = v56;
  (*(v41 + 16))(v44, v56, v40);
  *(a8 + 88) = v43;
  (*(v51 + 8))(v54, v29);
  __swift_destroy_boxed_opaque_existential_1(v55);
  result = (*(v41 + 8))(v45, v40);
  *(a8 + 96) = MEMORY[0x1E69E7CC0];
  return result;
}

char *initializeBufferWithCopyOfBuffer for URLDocumentConfiguration(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for URL();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(&v4[v6], &a2[v6], v7);
      (*(v8 + 56))(&v4[v6], 0, 1, v7);
    }
  }

  return v4;
}

uint64_t destroy for URLDocumentConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = type metadata accessor for URL();
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1 + v3, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1 + v3, v4);
  }

  return result;
}

_BYTE *initializeWithCopy for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithCopy for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 16))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

_BYTE *initializeWithTake for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 1, v6))
  {
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(&a1[v5], &a2[v5], v6);
    (*(v7 + 56))(&a1[v5], 0, 1, v6);
  }

  return a1;
}

_BYTE *assignWithTake for URLDocumentConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 1, v6);
  v10 = v8(&a2[v5], 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(&a1[v5], &a2[v5], v6);
      return a1;
    }

    (*(v7 + 8))(&a1[v5], v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    _s10Foundation3URLVSgMaTm_2(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v5], &a2[v5], *(*(v11 - 8) + 64));
    return a1;
  }

  (*(v7 + 32))(&a1[v5], &a2[v5], v6);
  (*(v7 + 56))(&a1[v5], 0, 1, v6);
  return a1;
}

void type metadata completion function for URLDocumentConfiguration()
{
  _s10Foundation3URLVSgMaTm_2(319, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(uint64_t a1)
{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
}

{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:));
}

uint64_t closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(void, void *), uint64_t a14)
{
  v51 = a7;
  v52 = a8;
  v58 = a6;
  v59 = a3;
  v50 = a5;
  v61 = a9;
  v54 = a13;
  v55 = a14;
  v60 = *(a6 - 8);
  v57 = a11;
  v49 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64[0] = v23;
  v64[1] = v24;
  v64[2] = v25;
  v64[3] = v26;
  v64[4] = v27;
  v29 = v28(0, v64, v20);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v48 - v31);
  type metadata accessor for StyleContextWriter<DocumentStyleContext>();
  v33 = type metadata accessor for ModifiedContent();
  v53 = *(v33 - 8);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v48 - v35;
  (*(v18 + 16))(v22, a2, a4, v34);
  swift_unknownObjectRetain();
  v37 = v49;
  DocumentGroupConfiguration.EagerViewerManagedDocumentContainer.init(modelBox:viewer:)(v22, a4, v50, v51, v52, v49, v54, v32);
  WitnessTable = swift_getWitnessTable();
  View.styleContext<A>(_:)();
  (*(v30 + 8))(v32, v29);
  v39 = v57;
  v40 = *(v57 + 16);
  v41 = swift_unknownObjectRetain();
  v42 = v56;
  v43 = v37;
  v44 = v58;
  v40(v41, v43, v58, v39);
  v45 = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<DocumentStyleContext>);
  v62 = WitnessTable;
  v63 = v45;
  v46 = swift_getWitnessTable();
  MEMORY[0x18D00A570](v42, v33, v44, v46);
  (*(v60 + 8))(v42, v44);
  return (*(v53 + 8))(v36, v33);
}

uint64_t partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:)(uint64_t a1)
{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
}

{
  return partial apply for closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:newDocumentProvider:viewer:documentBoxType:contentModifierType:contentViewType:)(a1, closure #1 in DocumentGroupConfiguration.init<A, B, C>(contentType:editor:contentViewType:documentBoxType:contentModifierType:newDocumentProvider:));
}

uint64_t destroy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer()
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t assignWithTake for DocumentGroupConfiguration.LazyEditorManagedDocumentContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  v4 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;

  return a1;
}

uint64_t type metadata completion function for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
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
    swift_unknownObjectRetain();
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

uint64_t destroy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = a2 + v7 + 16;
  swift_unknownObjectRetain();
  v6((a1 + v7 + 16) & ~v7, v8 & ~v7, v5);
  return a1;
}

void *assignWithCopy for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 24))((a1 + *(v6 + 80) + 16) & ~*(v6 + 80), (a2 + *(v6 + 80) + 16) & ~*(v6 + 80));
  return a1;
}

void *assignWithTake for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  swift_unknownObjectRelease();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((a1 + *(v7 + 80) + 16) & ~*(v7 + 80), (a2 + *(v7 + 80) + 16) & ~*(v7 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
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

void storeEnumTagSinglePayload for DocumentGroupConfiguration.EagerEditorManagedDocumentContainer(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t associated type witness table accessor for View.Body : View in DocumentGroupConfiguration.LazyEditorManagedDocumentContainer<A, B>()
{
  return associated type witness table accessor for View.Body : View in DocumentGroupConfiguration.LazyEditorManagedDocumentContainer<A, B>();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined destroy of DocumentConfiguration?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t EnvironmentValues.presentationMode.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.presentationMode : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t key path setter for EnvironmentValues.presentationMode : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance PresentationModeKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EAA25328;
  v2 = byte_1EAA25330;
  *a1 = static PresentationModeKey.defaultValue;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
}

uint64_t PresentationMode.FromItem.get(base:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  result = (*(*(a2 - 8) + 48))(a1, 1, a2);
  *a3 = result != 1;
  return result;
}

uint64_t View.presentationMode(isPresented:)()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  View.environment<A>(_:_:)();
}

uint64_t View.presentationMode<A>(item:)()
{
  swift_getKeyPath();
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  type metadata accessor for PresentationMode.FromItem();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  View.environment<A>(_:_:)();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>)
  {
    type metadata accessor for Binding<PresentationMode>();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>);
    }
  }
}

uint64_t specialized PresentationMode.FromItem.set(base:newValue:)(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    v4 = result;
    v6 = type metadata accessor for Optional();
    (*(*(v6 - 8) + 8))(v4, v6);
    v7 = *(*(a3 - 8) + 56);

    return v7(v4, 1, 1, a3);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.valuesEqual(_:_:) in conformance InspectorPresentationKindInput(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t static AttachInspectorPresentationEnvironment._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v27 = a2[2];
  v28 = v4;
  v6 = a2[3];
  v29 = a2[4];
  v7 = a2[1];
  v25 = *a2;
  v26 = v7;
  v21 = v27;
  v22 = v6;
  v23 = a2[4];
  v30 = *(a2 + 20);
  v24 = *(a2 + 20);
  v19 = v25;
  v20 = v5;
  type metadata accessor for GraphHost();
  v8 = outlined init with copy of _ViewInputs(&v25, v35);
  MEMORY[0x18D00B7D0](v8);
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  LOBYTE(v35[0]) = 0;
  LOBYTE(v33[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  LODWORD(v35[0]) = IndirectAttribute2;
  BYTE4(v35[0]) = 0;
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  PropertyList.subscript.setter();
  v10 = v26;
  swift_beginAccess();
  LODWORD(v35[0]) = *(v10 + 16);
  DWORD1(v35[0]) = IndirectAttribute2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v31[2] = v21;
  v31[3] = v22;
  v31[4] = v23;
  v32 = v24;
  v31[0] = v19;
  v31[1] = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v13 = v19;
  v14 = v20;
  v11 = outlined init with copy of _ViewInputs(v31, v35);
  a3(v11, &v13);
  v33[2] = v15;
  v33[3] = v16;
  v33[4] = v17;
  v34 = v18;
  v33[0] = v13;
  v33[1] = v14;
  outlined destroy of _ViewInputs(v33);
  v35[2] = v21;
  v35[3] = v22;
  v35[4] = v23;
  v36 = v24;
  v35[0] = v19;
  v35[1] = v20;
  return outlined destroy of _ViewInputs(v35);
}

uint64_t AttachInspectorPresentationEnvironment.MakeInspectorEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  swift_retain_n();
  AGGraphGetValue();
  type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t static PresentationEnvironmentWritingModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t *))
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 5);
  v16 = *(a2 + 3);
  v17 = v7;
  v18[0] = *(a2 + 7);
  *(v18 + 12) = *(a2 + 68);
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  v8 = PropertyList.subscript.getter();
  if ((v10 & 0x100000000) == 0)
  {
    swift_beginAccess();
    LODWORD(v10) = *(v6 + 16);
    v11 = partial apply for specialized closure #1 in Attribute.subscript.getter;
    KeyPath = swift_getKeyPath();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for Map<EnvironmentValues, PresentationKind>, MEMORY[0x1E697F230], &type metadata for PresentationKind, MEMORY[0x1E698D398]);
    lazy protocol witness table accessor for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>();

    Attribute.init<A>(body:value:flags:update:)();

    v8 = AGGraphSetIndirectAttribute();
  }

  v10 = v5;
  v11 = v4;
  KeyPath = v6;
  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 12) = *(v18 + 12);
  return a3(v8, &v10);
}

uint64_t static ClearInspectorPresentationEnvironment._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = a2[1];
  v25 = a2[2];
  v26 = v4;
  v6 = a2[3];
  v27 = a2[4];
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v19 = v25;
  v20 = v6;
  v21 = a2[4];
  v28 = *(a2 + 20);
  v22 = *(a2 + 20);
  v17 = v23;
  v18 = v5;
  LODWORD(v31[0]) = 0;
  BYTE4(v31[0]) = 1;
  outlined init with copy of _ViewInputs(&v23, v33);
  lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput();
  PropertyList.subscript.setter();
  v8 = v24;
  swift_beginAccess();
  LODWORD(v33[0]) = *(v8 + 16);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v30 = v22;
  v29[0] = v17;
  v29[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v29, v33);
  a3(v9, &v11);
  v31[2] = v13;
  v31[3] = v14;
  v31[4] = v15;
  v32 = v16;
  v31[0] = v11;
  v31[1] = v12;
  outlined destroy of _ViewInputs(v31);
  v33[2] = v19;
  v33[3] = v20;
  v33[4] = v21;
  v34 = v22;
  v33[0] = v17;
  v33[1] = v18;
  return outlined destroy of _ViewInputs(v33);
}

uint64_t ClearInspectorPresentationEnvironment.ResetInspectorEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;
  type metadata accessor for Map<EnvironmentValues, PresentationKind>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput()
{
  result = lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput;
  if (!lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput;
  if (!lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectorPresentationKindInput and conformance InspectorPresentationKindInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>)
  {
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(255, &lazy cache variable for type metadata for Map<EnvironmentValues, PresentationKind>, MEMORY[0x1E697F230], &type metadata for PresentationKind, MEMORY[0x1E698D398]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<EnvironmentValues, PresentationKind> and conformance Map<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment()
{
  result = lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment;
  if (!lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClearInspectorPresentationEnvironment.ResetInspectorEnvironment and conformance ClearInspectorPresentationEnvironment.ResetInspectorEnvironment);
  }

  return result;
}

void type metadata accessor for Map<EnvironmentValues, PresentationKind>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Map<EnvironmentValues, PresentationKind>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationKind.Key>, &type metadata for PresentationKind.Key, &protocol witness table for PresentationKind.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentationKind.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment()
{
  result = lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment;
  if (!lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttachInspectorPresentationEnvironment.MakeInspectorEnvironment and conformance AttachInspectorPresentationEnvironment.MakeInspectorEnvironment);
  }

  return result;
}

uint64_t static PrimitiveButtonStyleConfiguration.Label._viewListCount(inputs:)(__int128 *a1)
{
  v1 = a1[3];
  v4[2] = a1[2];
  v4[3] = v1;
  v4[4] = a1[4];
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return _s7SwiftUI9ViewAliasPAAE14_viewListCount6inputsSiSgAA01_cfG6InputsV_tFZAA015NavigationSplitC18StyleConfigurationV7SidebarV_Tt0B5Tm(v4, &lazy cache variable for type metadata for SourceInput<ButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata for ButtonStyleConfiguration.Label, lazy protocol witness table accessor for type SourceInput<ButtonStyleConfiguration.Label> and conformance SourceInput<A>);
}

_BYTE *ScrapeableContent.Content.Button.Role.init(_:)@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  if (*result == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

_BYTE *protocol witness for StyleableView.scrapeableContent.getter in conformance ResolvedButtonStyle@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  v5 = *v1;
  result = ScrapeableContent.Content.Button.Role.init(_:)(&v5, &v6);
  *(v3 + 16) = v6;
  *a1 = v3 | 0x7000000000000000;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PrimitiveButtonStyleConfiguration(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v26 = *a2;
    *v3 = *a2;
    v3 = (v26 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v27 = *v7;
      v28 = *(v7 + 1);
      v29 = v7[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v7, v28, v29);
      *v6 = v27;
      *(v6 + 1) = v28;
      v6[16] = v29;
      v30 = *(v7 + 5);
      v31 = *(v7 + 24);
      *(v6 + 24) = v31;
      *(v6 + 5) = v30;
      v32 = v31;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      v11 = *(v7 + 2);
      v12 = *(v7 + 3);
      v13 = v7[34];
      v14 = *(v7 + 16);
      outlined copy of Environment<OpenURLAction>.Content(*v7, v10, v11, v12, v14, v13);
      *v6 = v9;
      *(v6 + 1) = v10;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
      *(v6 + 16) = v14;
      v6[34] = v13;
      v15 = *(v7 + 5);
      v16 = *(v7 + 6);
      v17 = *(v7 + 7);
      v18 = *(v7 + 8);
      v19 = v7[74];
      v20 = *(v7 + 36);
      outlined copy of Environment<OpenURLAction>.Content(v15, v16, v17, v18, v20, v19);
      *(v6 + 5) = v15;
      *(v6 + 6) = v16;
      *(v6 + 7) = v17;
      *(v6 + 8) = v18;
      *(v6 + 36) = v20;
      v6[74] = v19;
      v21 = *(type metadata accessor for LinkDestination() + 24);
      v22 = &v6[v21];
      v23 = &v7[v21];
      v24 = type metadata accessor for URL();
      (*(*(v24 - 8) + 16))(v22, v23, v24);
      v25 = type metadata accessor for LinkDestination.Configuration();
      v22[*(v25 + 20)] = v23[*(v25 + 20)];
    }

    else
    {
      v33 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v33;
    }

    swift_storeEnumTagMultiPayload();
  }

  return v3;
}

_BYTE *assignWithCopy for PrimitiveButtonStyleConfiguration(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = *(a3 + 24);
    v32 = result;
    v4 = &result[v3];
    v5 = &a2[v3];
    _s7SwiftUI12ButtonActionOWOhTm_0(&result[v3], type metadata accessor for ButtonAction);
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v24 = *v5;
      v25 = *(v5 + 1);
      v26 = v5[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v5, v25, v26);
      *v4 = v24;
      *(v4 + 1) = v25;
      v4[16] = v26;
      v27 = *(v5 + 3);
      *(v4 + 3) = v27;
      v28 = *(v5 + 4);
      v29 = *(v5 + 5);
      *(v4 + 4) = v28;
      *(v4 + 5) = v29;
      v30 = v27;
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *v5;
        v8 = *(v5 + 1);
        v9 = *(v5 + 2);
        v10 = *(v5 + 3);
        v11 = v5[34];
        v12 = *(v5 + 16);
        outlined copy of Environment<OpenURLAction>.Content(*v5, v8, v9, v10, v12, v11);
        *v4 = v7;
        *(v4 + 1) = v8;
        *(v4 + 2) = v9;
        *(v4 + 3) = v10;
        *(v4 + 16) = v12;
        v4[34] = v11;
        v13 = *(v5 + 5);
        v14 = *(v5 + 6);
        v15 = *(v5 + 7);
        v16 = *(v5 + 8);
        v17 = v5[74];
        v18 = *(v5 + 36);
        outlined copy of Environment<OpenURLAction>.Content(v13, v14, v15, v16, v18, v17);
        *(v4 + 5) = v13;
        *(v4 + 6) = v14;
        *(v4 + 7) = v15;
        *(v4 + 8) = v16;
        *(v4 + 36) = v18;
        v4[74] = v17;
        v19 = *(type metadata accessor for LinkDestination() + 24);
        v20 = &v4[v19];
        v21 = &v5[v19];
        v22 = type metadata accessor for URL();
        (*(*(v22 - 8) + 16))(v20, v21, v22);
        v23 = type metadata accessor for LinkDestination.Configuration();
        v20[*(v23 + 20)] = v21[*(v23 + 20)];
LABEL_8:
        swift_storeEnumTagMultiPayload();
        return v32;
      }

      v31 = *(v5 + 1);
      *v4 = *v5;
      *(v4 + 1) = v31;
    }

    goto LABEL_8;
  }

  return result;
}

_BYTE *initializeWithTake for PrimitiveButtonStyleConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for ButtonAction();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v8;
    *(v5 + 31) = *(v6 + 31);
    *(v5 + 40) = *(v6 + 40);
    *(v5 + 56) = *(v6 + 56);
    *(v5 + 71) = *(v6 + 71);
    v9 = *(type metadata accessor for LinkDestination() + 24);
    v10 = &v5[v9];
    v11 = &v6[v9];
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 32))(v10, v11, v12);
    v13 = type metadata accessor for LinkDestination.Configuration();
    v10[*(v13 + 20)] = v11[*(v13 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  return a1;
}

_BYTE *assignWithTake for PrimitiveButtonStyleConfiguration(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  *result = *a2;
  if (result != a2)
  {
    v3 = *(a3 + 24);
    v4 = result;
    v5 = &result[v3];
    v6 = &a2[v3];
    _s7SwiftUI12ButtonActionOWOhTm_0(&result[v3], type metadata accessor for ButtonAction);
    v7 = type metadata accessor for ButtonAction();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *(v6 + 1);
      *v5 = *v6;
      *(v5 + 1) = v8;
      *(v5 + 31) = *(v6 + 31);
      *(v5 + 40) = *(v6 + 40);
      *(v5 + 56) = *(v6 + 56);
      *(v5 + 71) = *(v6 + 71);
      v9 = *(type metadata accessor for LinkDestination() + 24);
      v10 = &v5[v9];
      v11 = &v6[v9];
      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 32))(v10, v11, v12);
      v13 = type metadata accessor for LinkDestination.Configuration();
      v10[*(v13 + 20)] = v11[*(v13 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v5, v6, *(*(v7 - 8) + 64));
    }

    return v4;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedButtonStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(v4 + 24);
    v7 = a1 + v6;
    v8 = a2 + v6;
    type metadata accessor for ButtonAction();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v28 = *v8;
      v29 = *(v8 + 1);
      v30 = v8[16];
      outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v29, v30);
      *v7 = v28;
      *(v7 + 1) = v29;
      v7[16] = v30;
      v31 = *(v8 + 5);
      v32 = *(v8 + 24);
      *(v7 + 24) = v32;
      *(v7 + 5) = v31;
      v33 = v32;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v10 = *v8;
      v11 = *(v8 + 1);
      v12 = *(v8 + 2);
      v13 = *(v8 + 3);
      v14 = v8[34];
      v15 = *(v8 + 16);
      outlined copy of Environment<OpenURLAction>.Content(*v8, v11, v12, v13, v15, v14);
      *v7 = v10;
      *(v7 + 1) = v11;
      *(v7 + 2) = v12;
      *(v7 + 3) = v13;
      *(v7 + 16) = v15;
      v7[34] = v14;
      v16 = *(v8 + 5);
      v17 = *(v8 + 6);
      v18 = *(v8 + 7);
      v19 = *(v8 + 8);
      v20 = v8[74];
      v21 = *(v8 + 36);
      outlined copy of Environment<OpenURLAction>.Content(v16, v17, v18, v19, v21, v20);
      *(v7 + 5) = v16;
      *(v7 + 6) = v17;
      *(v7 + 7) = v18;
      *(v7 + 8) = v19;
      *(v7 + 36) = v21;
      v7[74] = v20;
      v22 = *(type metadata accessor for LinkDestination() + 24);
      v23 = &v7[v22];
      v24 = &v8[v22];
      v25 = type metadata accessor for URL();
      (*(*(v25 - 8) + 16))(v23, v24, v25);
      v26 = type metadata accessor for LinkDestination.Configuration();
      v23[*(v26 + 20)] = v24[*(v26 + 20)];
    }

    else
    {
      v34 = *(v8 + 1);
      *v7 = *v8;
      *(v7 + 1) = v34;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *initializeWithTake for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for PrimitiveButtonStyleConfiguration(0) + 24);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for ButtonAction();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v6 + 1);
    *v5 = *v6;
    *(v5 + 1) = v8;
    *(v5 + 31) = *(v6 + 31);
    *(v5 + 40) = *(v6 + 40);
    *(v5 + 56) = *(v6 + 56);
    *(v5 + 71) = *(v6 + 71);
    v9 = *(type metadata accessor for LinkDestination() + 24);
    v10 = &v5[v9];
    v11 = &v6[v9];
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 32))(v10, v11, v12);
    v13 = type metadata accessor for LinkDestination.Configuration();
    v10[*(v13 + 20)] = v11[*(v13 + 20)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  return a1;
}

_BYTE *assignWithTake for ResolvedButtonStyle(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  if (a1 != a2)
  {
    v5 = *(v4 + 24);
    v6 = &a1[v5];
    v7 = &a2[v5];
    _s7SwiftUI12ButtonActionOWOhTm_0(&a1[v5], type metadata accessor for ButtonAction);
    v8 = type metadata accessor for ButtonAction();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *(v7 + 1);
      *v6 = *v7;
      *(v6 + 1) = v9;
      *(v6 + 31) = *(v7 + 31);
      *(v6 + 40) = *(v7 + 40);
      *(v6 + 56) = *(v7 + 56);
      *(v6 + 71) = *(v7 + 71);
      v10 = *(type metadata accessor for LinkDestination() + 24);
      v11 = &v6[v10];
      v12 = &v7[v10];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(v11, v12, v13);
      v14 = type metadata accessor for LinkDestination.Configuration();
      v11[*(v14 + 20)] = v12[*(v14 + 20)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v6, v7, *(*(v8 - 8) + 64));
    }
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListStyleContent>, lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent, &type metadata for ListStyleContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListStyleContent> and conformance SourceInput<A>);
  }

  return result;
}

__n128 protocol witness for static PropertyKey.defaultValue.getter in conformance ButtonStyleInput@<Q0>(void *a1@<X2>, __n128 *a2@<X3>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions, &type metadata for EnvironmentValues.SearchSuggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchSuggestions> and conformance SourceInput<A>);
  }

  return result;
}

void partial apply for implicit closure #2 in implicit closure #1 in AccessibilityButtonModifier.init(_:)()
{
  type metadata accessor for PrimitiveButtonStyleConfiguration(0);

  implicit closure #2 in implicit closure #1 in AccessibilityButtonModifier.init(_:)();
}

uint64_t partial apply for specialized closure #1 in AccessibilityButtonModifier.Attachment.accessibilityActions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 2;
  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent()
{
  result = lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent;
  if (!lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent;
  if (!lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessoryBarContent and conformance AccessoryBarContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<AccessoryBarContent>, lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent, &type metadata for AccessoryBarContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<AccessoryBarContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Suggestions>, lazy protocol witness table accessor for type SearchFieldConfiguration.Suggestions and conformance SearchFieldConfiguration.Suggestions, &type metadata for SearchFieldConfiguration.Suggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Suggestions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SearchFieldConfiguration.Control>, lazy protocol witness table accessor for type SearchFieldConfiguration.Control and conformance SearchFieldConfiguration.Control, &type metadata for SearchFieldConfiguration.Control, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SearchFieldConfiguration.Control> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListFirstRowHeightTemplateContent>, lazy protocol witness table accessor for type ListFirstRowHeightTemplateContent and conformance ListFirstRowHeightTemplateContent, &type metadata for ListFirstRowHeightTemplateContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListFirstRowHeightTemplateContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type LabelGroupStyleConfiguration.Content and conformance LabelGroupStyleConfiguration.Content, &type metadata for LabelGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel()
{
  result = lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel;
  if (!lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel;
  if (!lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_DatePickerStyleLabel>, lazy protocol witness table accessor for type _DatePickerStyleLabel and conformance _DatePickerStyleLabel, &type metadata for _DatePickerStyleLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_DatePickerStyleLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label, &type metadata for DatePickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DatePickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Icon>, lazy protocol witness table accessor for type LabelStyleConfiguration.Icon and conformance LabelStyleConfiguration.Icon, &type metadata for LabelStyleConfiguration.Icon, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Icon> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabelStyleConfiguration.Title>, lazy protocol witness table accessor for type LabelStyleConfiguration.Title and conformance LabelStyleConfiguration.Title, &type metadata for LabelStyleConfiguration.Title, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabelStyleConfiguration.Title> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Content>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Content and conformance LabeledContentStyleConfiguration.Content, &type metadata for LabeledContentStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<LabeledContentStyleConfiguration.Label>, lazy protocol witness table accessor for type LabeledContentStyleConfiguration.Label and conformance LabeledContentStyleConfiguration.Label, &type metadata for LabeledContentStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<LabeledContentStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<HelpStyleConfiguration.Content>, lazy protocol witness table accessor for type HelpStyleConfiguration.Content and conformance HelpStyleConfiguration.Content, &type metadata for HelpStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<HelpStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Content>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Content and conformance _MenuButtonStyleConfiguration.Content, &type metadata for _MenuButtonStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_MenuButtonStyleConfiguration.Label>, lazy protocol witness table accessor for type _MenuButtonStyleConfiguration.Label and conformance _MenuButtonStyleConfiguration.Label, &type metadata for _MenuButtonStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_MenuButtonStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<NavigationLinkStyleConfiguration.Label>, lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label, &type metadata for NavigationLinkStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<NavigationLinkStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Content>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Content and conformance GroupBoxStyleConfiguration.Content, &type metadata for GroupBoxStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GroupBoxStyleConfiguration.Label>, lazy protocol witness table accessor for type GroupBoxStyleConfiguration.Label and conformance GroupBoxStyleConfiguration.Label, &type metadata for GroupBoxStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GroupBoxStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label, &type metadata for ControlGroupStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ControlGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content, &type metadata for ControlGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ControlGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MarkedValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MarkedValueLabel and conformance GaugeStyleConfiguration.MarkedValueLabel, &type metadata for GaugeStyleConfiguration.MarkedValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MarkedValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MaximumValueLabel and conformance GaugeStyleConfiguration.MaximumValueLabel, &type metadata for GaugeStyleConfiguration.MaximumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.MinimumValueLabel and conformance GaugeStyleConfiguration.MinimumValueLabel, &type metadata for GaugeStyleConfiguration.MinimumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type GaugeStyleConfiguration.CurrentValueLabel and conformance GaugeStyleConfiguration.CurrentValueLabel, &type metadata for GaugeStyleConfiguration.CurrentValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<GaugeStyleConfiguration.Label>, lazy protocol witness table accessor for type GaugeStyleConfiguration.Label and conformance GaugeStyleConfiguration.Label, &type metadata for GaugeStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<GaugeStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<BadgeViewStyleConfiguration.Content>, lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content, &type metadata for BadgeViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<BadgeViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MaximumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MaximumValueLabel and conformance SliderStyleConfiguration.MaximumValueLabel, &type metadata for SliderStyleConfiguration.MaximumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MaximumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.MinimumValueLabel>, lazy protocol witness table accessor for type SliderStyleConfiguration.MinimumValueLabel and conformance SliderStyleConfiguration.MinimumValueLabel, &type metadata for SliderStyleConfiguration.MinimumValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.MinimumValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SliderStyleConfiguration.Label>, lazy protocol witness table accessor for type SliderStyleConfiguration.Label and conformance SliderStyleConfiguration.Label, &type metadata for SliderStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SliderStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<StepperStyleConfiguration.Label>, lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label, &type metadata for StepperStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<StepperStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_NavigationStackStyleConfiguration.Root>, lazy protocol witness table accessor for type _NavigationStackStyleConfiguration.Root and conformance _NavigationStackStyleConfiguration.Root, &type metadata for _NavigationStackStyleConfiguration.Root, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_NavigationStackStyleConfiguration.Root> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer()
{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Footer>, lazy protocol witness table accessor for type FormStyleConfiguration.Footer and conformance FormStyleConfiguration.Footer, &type metadata for FormStyleConfiguration.Footer, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Footer> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<FormStyleConfiguration.Content>, lazy protocol witness table accessor for type FormStyleConfiguration.Content and conformance FormStyleConfiguration.Content, &type metadata for FormStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<FormStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Actions>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Actions and conformance ProgressViewStyleConfiguration.Actions, &type metadata for ProgressViewStyleConfiguration.Actions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Actions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.CurrentValueLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ProgressViewStyleConfiguration.Label>, lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label, &type metadata for ProgressViewStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ProgressViewStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_TextFieldStyleLabel>, lazy protocol witness table accessor for type _TextFieldStyleLabel and conformance _TextFieldStyleLabel, &type metadata for _TextFieldStyleLabel, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_TextFieldStyleLabel> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ButtonBehaviorStyleConfiguration.Content>, lazy protocol witness table accessor for type ButtonBehaviorStyleConfiguration.Content and conformance ButtonBehaviorStyleConfiguration.Content, &type metadata for ButtonBehaviorStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ButtonBehaviorStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_NavigationViewStyleConfiguration.Content>, lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content, &type metadata for _NavigationViewStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_NavigationViewStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Content>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Content and conformance DisclosureGroupStyleConfiguration.Content, &type metadata for DisclosureGroupStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<DisclosureGroupStyleConfiguration.Label>, lazy protocol witness table accessor for type DisclosureGroupStyleConfiguration.Label and conformance DisclosureGroupStyleConfiguration.Label, &type metadata for DisclosureGroupStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<DisclosureGroupStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<OutlineSubgroupChildren>, lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren, &type metadata for OutlineSubgroupChildren, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<OutlineSubgroupChildren> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ToggleStyleConfiguration.Label>, lazy protocol witness table accessor for type ToggleStyleConfiguration.Label and conformance ToggleStyleConfiguration.Label, &type metadata for ToggleStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ToggleStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content, &type metadata for MenuStyleConfiguration.Content, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Label>, lazy protocol witness table accessor for type MenuStyleConfiguration.Label and conformance MenuStyleConfiguration.Label, &type metadata for MenuStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ColorPickerStyleConfiguration.Label>, lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label, &type metadata for ColorPickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ColorPickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<PreviewModifierContent>, lazy protocol witness table accessor for type PreviewModifierContent and conformance PreviewModifierContent, &type metadata for PreviewModifierContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<PreviewModifierContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<UIKitButtonConfiguration.Label>, lazy protocol witness table accessor for type UIKitButtonConfiguration.Label and conformance UIKitButtonConfiguration.Label, &type metadata for UIKitButtonConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<UIKitButtonConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.InspectorContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.InspectorContent and conformance InspectorStyleConfiguration.InspectorContent, &type metadata for InspectorStyleConfiguration.InspectorContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.InspectorContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<InspectorStyleConfiguration.MainContent>, lazy protocol witness table accessor for type InspectorStyleConfiguration.MainContent and conformance InspectorStyleConfiguration.MainContent, &type metadata for InspectorStyleConfiguration.MainContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<InspectorStyleConfiguration.MainContent> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label;
  if (!lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label;
  if (!lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<TokenFieldConfiguration.Label>, lazy protocol witness table accessor for type TokenFieldConfiguration.Label and conformance TokenFieldConfiguration.Label, &type metadata for TokenFieldConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<TokenFieldConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomScopeBar>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomScopeBar and conformance EnvironmentValues.SearchCustomScopeBar, &type metadata for EnvironmentValues.SearchCustomScopeBar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomScopeBar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<_SidebarConfiguration.Sidebar>, lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar, &type metadata for _SidebarConfiguration.Sidebar, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<_SidebarConfiguration.Sidebar> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<ResolvedRadioGroupPicker.Label>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label, &type metadata for ResolvedRadioGroupPicker.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<ResolvedRadioGroupPicker.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.TextInputSuggestions>, lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions, &type metadata for EnvironmentValues.TextInputSuggestions, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.TextInputSuggestions> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<EnvironmentValues.SearchCustomAccessory>, lazy protocol witness table accessor for type EnvironmentValues.SearchCustomAccessory and conformance EnvironmentValues.SearchCustomAccessory, &type metadata for EnvironmentValues.SearchCustomAccessory, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<EnvironmentValues.SearchCustomAccessory> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label()
{
  result = lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label;
  if (!lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<MultiDatePickerStyleConfiguration.Label>, lazy protocol witness table accessor for type MultiDatePickerStyleConfiguration.Label and conformance MultiDatePickerStyleConfiguration.Label, &type metadata for MultiDatePickerStyleConfiguration.Label, type metadata accessor for SourceInput);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<MultiDatePickerStyleConfiguration.Label> and conformance SourceInput<A>);
  }

  return result;
}

unint64_t type metadata accessor for PrimitiveButtonStyle.Type()
{
  result = lazy cache variable for type metadata for PrimitiveButtonStyle.Type;
  if (!lazy cache variable for type metadata for PrimitiveButtonStyle.Type)
  {
    type metadata accessor for PrimitiveButtonStyle();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PrimitiveButtonStyle.Type);
  }

  return result;
}

unint64_t type metadata accessor for PrimitiveButtonStyle()
{
  result = lazy cache variable for type metadata for PrimitiveButtonStyle;
  if (!lazy cache variable for type metadata for PrimitiveButtonStyle)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PrimitiveButtonStyle);
  }

  return result;
}

uint64_t withBridgedAnimation<A>(_:_:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = static Transaction.current.getter();

  Transaction.animation.setter();
  type metadata accessor for _SemanticFeature<Semantics_v5>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  v14 = static SemanticFeature.isEnabled.getter();
  if (v14)
  {
    v18[1] = v18;
    MEMORY[0x1EEE9AC00](v14);
    v17[2] = a6;
    v17[3] = &v19;
    v17[4] = a2;
    v17[5] = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    *(v15 + 24) = a5;

    static UIKitAnimationBridge.withAnimation<A>(_:_:completion:)(a1, partial apply for closure #1 in withBridgedAnimation<A>(_:_:completion:), v17, partial apply for closure #2 in withBridgedAnimation<A>(_:_:completion:), v15, a6, a7);
  }

  else
  {
    withTransaction<A>(_:_:)();
  }
}

uint64_t closure #1 in withBridgedAnimation<A>(_:_:completion:)()
{

  withTransaction<A>(_:_:)();
}

void destroy for AnyIdentifiableShareConfiguration(uint64_t a1)
{
  outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
  if (*(a1 + 72))
  {
    outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  if (*(a1 + 104))
  {
    outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
  }
}

uint64_t initializeWithCopy for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v9 = *(a2 + 72);
  if (!v9)
  {
    v17 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v17;
    v13 = *(a2 + 104);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v18;
    return a1;
  }

  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  outlined copy of Text.Storage(v10, v11, v12);
  *(a1 + 48) = v10;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  *(a1 + 72) = v9;

  v13 = *(a2 + 104);
  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  outlined copy of Text.Storage(v14, v15, v16);
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v13;

  return a1;
}

uint64_t assignWithCopy for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of AnyShareConfiguration.Storage(v4, v5, v6, v7, v8);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v13 = *(a1 + 40);
  *(a1 + 40) = v8;
  outlined consume of AnyShareConfiguration.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v14)
    {
      v15 = *(a2 + 48);
      v16 = *(a2 + 56);
      v17 = *(a2 + 64);
      outlined copy of Text.Storage(v15, v16, v17);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 64);
      *(a1 + 48) = v15;
      *(a1 + 56) = v16;
      *(a1 + 64) = v17;
      outlined consume of Text.Storage(v18, v19, v20);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      outlined destroy of Text(a1 + 48);
      v24 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v24;
    }
  }

  else if (v14)
  {
    v21 = *(a2 + 48);
    v22 = *(a2 + 56);
    v23 = *(a2 + 64);
    outlined copy of Text.Storage(v21, v22, v23);
    *(a1 + 48) = v21;
    *(a1 + 56) = v22;
    *(a1 + 64) = v23;
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v25 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v25;
  }

  v26 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v26)
    {
      v27 = *(a2 + 80);
      v28 = *(a2 + 88);
      v29 = *(a2 + 96);
      outlined copy of Text.Storage(v27, v28, v29);
      v30 = *(a1 + 80);
      v31 = *(a1 + 88);
      v32 = *(a1 + 96);
      *(a1 + 80) = v27;
      *(a1 + 88) = v28;
      *(a1 + 96) = v29;
      outlined consume of Text.Storage(v30, v31, v32);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      outlined destroy of Text(a1 + 80);
      v36 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v36;
    }
  }

  else if (v26)
  {
    v33 = *(a2 + 80);
    v34 = *(a2 + 88);
    v35 = *(a2 + 96);
    outlined copy of Text.Storage(v33, v34, v35);
    *(a1 + 80) = v33;
    *(a1 + 88) = v34;
    *(a1 + 96) = v35;
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v37 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v37;
  }

  return a1;
}

uint64_t assignWithTake for AnyIdentifiableShareConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  v11 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of AnyShareConfiguration.Storage(v6, v7, v8, v9, v11);
  if (*(a1 + 72))
  {
    v12 = *(a2 + 72);
    if (v12)
    {
      v13 = *(a2 + 64);
      v14 = *(a1 + 48);
      v15 = *(a1 + 56);
      v16 = *(a1 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 72) = v12;

      if (!*(a1 + 104))
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

    outlined destroy of Text(a1 + 48);
  }

  v17 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v17;
  if (!*(a1 + 104))
  {
LABEL_10:
    v23 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v23;
    return a1;
  }

LABEL_7:
  v18 = *(a2 + 104);
  if (!v18)
  {
    outlined destroy of Text(a1 + 80);
    goto LABEL_10;
  }

  v19 = *(a2 + 96);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v22 = *(a1 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v19;
  outlined consume of Text.Storage(v20, v21, v22);
  *(a1 + 104) = v18;

  return a1;
}