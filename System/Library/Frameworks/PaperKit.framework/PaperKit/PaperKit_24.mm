uint64_t (*sub_1D3B803EC(double a1, double a2, double a3, double a4))(void, void)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return UnknownCanvasElementView.flags.modify;
}

unint64_t lazy protocol witness table accessor for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum()
{
  result = lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum);
  }

  return result;
}

void keypath_getTm(uint64_t a1@<X1>, uint64_t a2@<X2>, double (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
}

uint64_t dispatch thunk of PaperPage.addDrawingAnnotation<A>(pdfPage:use:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 168) + **(a8 + 168));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of PaperPage.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 216) + **(a9 + 216));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

PaperKit::PaperNewShapeType_Internal_optional __swiftcall PaperNewShapeType_Internal.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int PaperNewShapeType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t PaperNewShapeType_Internal.symbolName.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6873657261757173;
    v8 = 0x656C676E61697274;
    v9 = 0x6169642E656E696CLL;
    if (v1 != 3)
    {
      v9 = 0x6C2E656C62627562;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x656C63726963;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000010;
    if (v1 != 9)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x657261757173;
    v5 = 0x6E6F6761786568;
    if (v1 != 6)
    {
      v5 = 1918989427;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PaperNewShapeType and conformance PaperNewShapeType()
{
  result = lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType;
  if (!lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal()
{
  result = lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal;
  if (!lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PaperNewShapeType] and conformance [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall LinkView.pasteboardRepresentation()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

id LinkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIMenu closure #1 in LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)(uint64_t a1, UIMenuElementSize a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  swift__string._object = 0x80000001D4088540;
  v3._countAndFlagsBits = 0x7474412074696445;
  v3._object = 0xEF746E656D686361;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0xD000000000000022;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, paperKitBundle, v5, swift__string);
  if (a2 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);

    v8 = _bridgeCocoaArray<A>(_:)();

    a2 = v8;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v10, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v9);
}

uint64_t specialized LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit8LinkView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v7 = objc_opt_self();
      v10[4] = partial apply for closure #1 in LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:);
      v10[5] = v6;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      v10[3] = &block_descriptor_26;
      v8 = _Block_copy(v10);

      v9 = [v7 configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];

      _Block_release(v8);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall Canvas.setupBandSelection()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v4;
  *(v3 + 32) = 6;
  *(v3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = type metadata accessor for PKDrawing();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v19 = *((v2 & v1) + 0xB50);
  v10[2] = v19;
  v11 = *((v2 & v1) + 0xB58);
  v10[3] = v11;
  v12 = *((v2 & v1) + 0xB60);
  v10[4] = v12;
  v10[5] = v9;
  v10[6] = v3;
  v10[7] = v5;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC6F8]);
  v24 = partial apply for closure #1 in Canvas.setupBandSelection();
  v25 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v23 = &block_descriptor_27;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithSelectionHandler_];
  _Block_release(v14);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v19;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v16;
  v24 = partial apply for closure #2 in Canvas.setupBandSelection();
  v25 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction, @unowned CGPoint) -> (@unowned Bool);
  v23 = &block_descriptor_13_0;
  v18 = _Block_copy(&aBlock);

  [v15 setShouldBeginHandler_];
  _Block_release(v18);
  [v0 addInteraction_];
}

void closure #1 in Canvas.setupBandSelection()(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    swift_beginAccess();
    Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(a1, a3 + 16, v5);
    swift_endAccess();
    swift_endAccess();
  }
}

void Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v133 = a3;
  v7 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v10 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v120 - v14;
  v134 = type metadata accessor for NSFastEnumerationIterator();
  v15 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v141 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v146 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v149 = &v120 - v20;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v21 = *(v150 - 1);
  MEMORY[0x1EEE9AC00](v150);
  v137 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v120 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v140 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v127 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v120 - v32;
  v34 = [a1 state];
  if (v34 == 3)
  {
    v83 = *(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v83)
    {
      v84 = v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
      v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 0;
      if (v84 == 1)
      {
        v85 = *&v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
        if (v85)
        {
          v150 = v83;
          v86 = v85;
          specialized MiniMenuController.update()();

          v87 = v150;
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_77;
  }

  v142 = v4;
  if (v34 != 2)
  {
    if (v34 != 1)
    {
      return;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9PencilKit9PKDrawingVSgMd);

    v35 = v4;
    v36 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
    v37 = *(v35 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v37)
    {
      v38 = (v37 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      LOBYTE(v38) = *(v38 + 24);
      *a2 = v39;
      *(a2 + 8) = v40;
      *(a2 + 16) = v41;
      *(a2 + 24) = v38;
      v42 = Canvas.editingView.getter();
      v44 = v43;
      ObjectType = swift_getObjectType();
      v46 = *(v44 + 16);

      v47 = v46(ObjectType, v44);

      if (v47)
      {
        v48 = [v47 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = type metadata accessor for PKDrawing();
        (*(*(v49 - 8) + 56))(v33, 0, 1, v49);
      }

      else
      {
        v88 = type metadata accessor for PKDrawing();
        (*(*(v88 - 8) + 56))(v33, 1, 1, v88);
      }

      outlined init with take of PKDrawing?(v33, v133);
      v89 = *&v142[v36];
      if (v89)
      {
        v90 = v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
        v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 1;
        if ((v90 & 1) == 0)
        {
          v91 = *&v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
          if (v91)
          {
            v92 = v89;
            v93 = v91;
            specialized MiniMenuController.update()();
          }
        }

        return;
      }

LABEL_78:
      __break(1u);
      return;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  UIBandSelectionInteraction.selectionRect.getter();
  if (v162)
  {
    return;
  }

  v126 = v10;
  v125 = v9;
  v123 = a1;
  v51 = v160;
  v50 = v161;
  v53 = v158;
  v52 = v159;
  v54 = Canvas.editingView.getter();
  [v54 convertRect:v4 fromCoordinateSpace:{v53, v52, v51, v50}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v156 = MEMORY[0x1E69E7CD0];
  v63 = Canvas.editingView.getter();
  v65 = v64;
  v66 = swift_getObjectType();
  v67 = (*(v65 + 64))(v66, v65);

  *&v154 = MEMORY[0x1E69E7CC0];
  if (v67 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v69 = v149;
    v124 = v12;
    v122 = a2;
    v70 = MEMORY[0x1E69E7D40];
    v121 = v15;
    if (i)
    {
      v145 = v21;
      v12 = 0;
      v15 = v67 & 0xC000000000000001;
      v21 = v67 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v72 = MEMORY[0x1DA6CE0C0](v12, v67);
        }

        else
        {
          if (v12 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v72 = *(v67 + 8 * v12 + 32);
        }

        a2 = v72;
        v73 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v74 = [v4 bounds];
        v76.n128_u64[0] = v75;
        v78.n128_u64[0] = v77;
        v80.n128_u64[0] = v79;
        v82.n128_u64[0] = v81;
        if ((*((*v70 & *a2) + 0x378))(v74, v56, v58, v60, v62, v76, v78, v80, v82))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v142;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        v71 = v73 == i;
        v69 = v149;
        if (v71)
        {
          v94 = v154;
          v21 = v145;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_34:

    if ((v94 & 0x8000000000000000) == 0 && (v94 & 0x4000000000000000) == 0)
    {
      v12 = *(v94 + 16);
      if (!v12)
      {
        break;
      }

      goto LABEL_37;
    }

    v12 = __CocoaSet.count.getter();
    if (!v12)
    {
      break;
    }

LABEL_37:
    v4 = 0;
    v145 = v94 & 0xC000000000000001;
    v144 = (v21 + 48);
    v130 = (v21 + 32);
    v129 = (v21 + 16);
    v128 = (v21 + 8);
    v143 = (v140 + 32);
    v67 = MEMORY[0x1E69E7CC0];
    v15 = v150;
    v132 = v94;
    v131 = v12;
    while (1)
    {
      if (v145)
      {
        v95 = MEMORY[0x1DA6CE0C0](v4, v94);
      }

      else
      {
        if (v4 >= *(v94 + 16))
        {
          goto LABEL_54;
        }

        v95 = *(v94 + 8 * v4 + 32);
      }

      a2 = v95;
      v21 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      (*((*v70 & *v95) + 0xF0))();
      if ((*v144)(v69, 1, v15) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      }

      else
      {
        v96 = v70;
        v97 = v136;
        (*v130)(v136, v69, v15);
        v98 = v137;
        (*v129)(v137, v97, v150);
        WeakTagged_10.tag.getter();
        *&v153 = v154;
        BYTE8(v153) = BYTE8(v154);
        MEMORY[0x1DA6CB7A0](v150);
        lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
        v99 = v135;
        WeakTagged_10.init(_:id:)();

        v100 = *v128;
        v101 = v98;
        v15 = v150;
        (*v128)(v101, v150);
        v100(v97, v15);
        v102 = *v143;
        (*v143)(v147, v99, v148);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 16) + 1, 1, v67);
        }

        a2 = *(v67 + 16);
        v103 = *(v67 + 24);
        v70 = v96;
        v12 = v131;
        if (a2 >= v103 >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103 > 1, a2 + 1, 1, v67);
        }

        v94 = v132;
        *(v67 + 16) = a2 + 1;
        v102((v67 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * a2), v147, v148);
        v69 = v149;
      }

      ++v4;
      if (v21 == v12)
      {
        goto LABEL_58;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_58:

  v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v67);

  v157 = v104;
  v105 = v127;
  outlined init with copy of PKDrawing?(v133, v127);
  v106 = type metadata accessor for PKDrawing();
  if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9PencilKit9PKDrawingVSgMd);
  }

  else
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing);
    swift_dynamicCast();
    v107 = v154;
    v108 = [v154 intersectedStrokesFromRect:0 visibleOnscreenStrokes:{v56, v58, v60, v62}];

    v149 = v108;
    NSOrderedSet.makeIterator()();
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0]);
    v109 = v134;
    dispatch thunk of IteratorProtocol.next()();
    if (v155)
    {
      v110 = MEMORY[0x1E69E7CC0];
      v150 = (v126 + 32);
      do
      {
        outlined init with take of Any(&v154, &v153);
        outlined init with copy of Any(&v153, v152);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke);
        if (swift_dynamicCast())
        {
          v111 = v151;
          v112 = [v151 _strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          CRKeyPath.init(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          v113 = v124;
          WeakRef.init(id:)();

          __swift_destroy_boxed_opaque_existential_0(&v153);
          v114 = *v150;
          (*v150)(v138, v113, v139);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
          }

          v116 = *(v110 + 2);
          v115 = *(v110 + 3);
          if (v116 >= v115 >> 1)
          {
            v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v115 > 1, v116 + 1, 1, v110);
          }

          *(v110 + 2) = v116 + 1;
          v114(&v110[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v116], v138, v139);
          v109 = v134;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v153);
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v155);
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
    }

    (*(v121 + 8))(v141, v109);
    v117 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v110);

    v156 = v117;
  }

  if ([v123 initialModifierFlags] == 0x20000)
  {
    v118 = *v122;
    v119 = v122[1];

    specialized Set.formSymmetricDifference(_:)(v118);
    specialized Set.formSymmetricDifference(_:)(v119);
  }

  AnyCanvas.selection.setter(v157, v156, 6, 0);
}

uint64_t closure #2 in Canvas.setupBandSelection()(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = specialized Canvas.bandSelectionShouldBegin(_:point:)(a1, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t closure #1 in implicit closure #2 in Canvas.bandSelectionShouldBegin(_:point:)(void **a1, uint64_t a2, double a3, double a4)
{
  v7 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))())
  {
    return 1;
  }

  [v7 convertPoint:a2 fromCoordinateSpace:{a3, a4}];
  v8 = [v7 hitTest:0 withEvent:?];
  if (!v8)
  {
    return 1;
  }

  return 0;
}

void specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v13;
  v41 = v11;
  v14 = 0;
  v43 = a1;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = v11 + 32;
  v38 = v19;
  v46 = (v11 + 8);
  v47 = v11 + 16;
  v39 = v15;
  v42 = v1;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      do
      {
LABEL_9:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72);
        v25 = *(v43 + 48) + v24 * (v21 | (v14 << 6));
        v44 = *(v41 + 16);
        v45 = v24;
        v44(v40, v25, v5, v12);
        (*(v22 + 32))(v48, v23, v5);
        v26 = *v1;
        if (*(*v1 + 16) && (lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            (v44)(v7, *(v26 + 48) + v29 * v45, v5);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v46;
            (*v46)(v7, v5);
            if (v31)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v33 = v36;
          v34 = v48;
          v1 = v42;
          specialized Set._Variant.remove(_:)(v48, v36);
          outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
          v32(v34, v5);
        }

        else
        {
LABEL_14:
          v1 = v42;
          specialized Set._Variant.insert(_:)(v7, v48);
          (*v46)(v7, v5);
        }

        v19 = v38;
        v15 = v39;
      }

      while (v18);
    }
  }

  __break(1u);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v13;
  v41 = v11;
  v14 = 0;
  v43 = a1;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = v11 + 32;
  v38 = v19;
  v46 = (v11 + 8);
  v47 = v11 + 16;
  v39 = v15;
  v42 = v1;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      do
      {
LABEL_9:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72);
        v25 = *(v43 + 48) + v24 * (v21 | (v14 << 6));
        v44 = *(v41 + 16);
        v45 = v24;
        v44(v40, v25, v5, v12);
        (*(v22 + 32))(v48, v23, v5);
        v26 = *v1;
        if (*(*v1 + 16) && (lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            (v44)(v7, *(v26 + 48) + v29 * v45, v5);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v46;
            (*v46)(v7, v5);
            if (v31)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v33 = v36;
          v34 = v48;
          v1 = v42;
          specialized Set._Variant.remove(_:)(v48, v36);
          outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
          v32(v34, v5);
        }

        else
        {
LABEL_14:
          v1 = v42;
          specialized Set._Variant.insert(_:)(v7, v48);
          (*v46)(v7, v5);
        }

        v19 = v38;
        v15 = v39;
      }

      while (v18);
    }
  }

  __break(1u);
}

void specialized MiniMenuController.dismissMiniMenu()()
{
  v1 = v0;
  v2 = *(v0 + direct field offset for MiniMenuController.state);
  v3 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  v4 = *(v3 + 40);
  v5 = type metadata accessor for MiniMenuState(0);
  if (v4(v5, v3))
  {
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, miniMenuLogger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D38C4000, v7, v8, "Mini Menu being hidden", v9, 2u);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }
  }

  if ((*(v3 + 48))(v5, v3))
  {
    if (*(v2 + 32))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + 32) = 0;
    }

    *((*(v3 + 72))(v5, v3) + 80) = 1;
  }

  v11 = direct field offset for MiniMenuController.miniMenu;
  v12 = *(v1 + direct field offset for MiniMenuController.miniMenu);
  if (v12)
  {
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
      goto LABEL_23;
    }

    v14 = v13;
    [v13 setHidden_];

    v15 = *(v1 + v11);
    if (v15)
    {
      v16 = [v15 parentViewController];
      if (v16)
      {

        v17 = *(v1 + v11);
        if (v17)
        {
          [v17 willMoveToParentViewController_];
          v18 = *(v1 + v11);
          if (v18)
          {
            [v18 removeFromParentViewController];
            v19 = *(v1 + v11);
            if (v19)
            {
              v20 = [v19 view];
              if (v20)
              {
                v21 = v20;
                [v20 removeFromSuperview];

                return;
              }

LABEL_23:
              __break(1u);
            }
          }
        }
      }
    }
  }
}

void specialized MiniMenuController.showMiniMenu()()
{
  v1 = v0;
  v2 = *(v0 + direct field offset for MiniMenuController.state);
  v3 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
  v4 = *(v3 + 40);
  v5 = type metadata accessor for MiniMenuState(0);
  if ((v4(v5, v3) & 1) == 0)
  {
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, miniMenuLogger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D38C4000, v7, v8, "Mini Menu being shown", v9, 2u);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }
  }

  if (((*(v3 + 48))(v5, v3) & 1) == 0)
  {
    if (*(v2 + 32) == 1)
    {
      *(v2 + 32) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *((*(v3 + 72))(v5, v3) + 80) = 0;
  }

  v11 = *(v1 + direct field offset for MiniMenuController.miniMenu);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

void specialized MiniMenuController.update()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

LABEL_17:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D38C4000, v23, v24, "Not showing minimenu - no delegate or superview", v25, 2u);
      MEMORY[0x1DA6D0660](v25, -1, -1);
    }

    specialized MiniMenuController.dismissMiniMenu()();
    return;
  }

  v5 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      v9 = [v8 viewForOverlay];

      v5 = v9;
    }
  }

  MiniMenuState.startUpdate()();
  if (CanvasElementResizeView.shouldShowMiniMenu.getter())
  {
    v10 = ResizeView.miniMenuVisibleBounds.getter();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (!CGRect.isFinite.getter(v10, v11, v13, v15) || (v155.origin.x = v10, v155.origin.y = v12, v155.size.width = v14, v155.size.height = v16, CGRectIsEmpty(v155)))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not showing minimenu - no visible bounds";
LABEL_13:
      _os_log_impl(&dword_1D38C4000, v18, v19, v21, v20, 2u);
      MEMORY[0x1DA6D0660](v20, -1, -1);
LABEL_14:

      specialized MiniMenuController.dismissMiniMenu()();
LABEL_15:

      return;
    }

    v30 = direct field offset for MiniMenuController.miniMenu;
    v31 = *(v1 + direct field offset for MiniMenuController.miniMenu);
    if (!v31 || (v144 = [v31 view]) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not showing minimenu - no view";
      goto LABEL_13;
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    v140 = v30;
    if (v32)
    {
      if (*(v1 + direct field offset for MiniMenuController.needsStateUpdate) == 1)
      {
        *(v1 + direct field offset for MiniMenuController.needsStateUpdate) = 0;
        r2 = v32;
        v33 = *(v32 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v33)
        {
          __break(1u);
LABEL_95:
          __break(1u);
          return;
        }

        v34 = v33 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        v38 = *(v34 + 24);

        MiniMenuState.update(from:in:)(v35, v36, v37, v38, r2);

        v30 = v140;
      }

      else
      {
      }
    }

    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = v40;
      v42 = swift_unknownObjectWeakLoadStrong();
      if (v42)
      {
        v43 = v42;
        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();

        if (v44)
        {
          v45 = [v44 viewForOverlay];

          v41 = v45;
        }
      }

      v46 = [v41 window];

      if (v46)
      {
        v47 = [objc_opt_self() activeToolPickerForWindow_];

        if (v47)
        {
          v48 = [v144 superview];
          if (v48)
          {
            v49 = v48;
            [v47 frameObscuredInView_];
            v10 = specialized MiniMenuController.cropFrameToPreventOverlap(frame:overlapFrame:)(v10, v12, v14, v16, v50, v51, v52, v53);
            v12 = v54;
            v14 = v55;
            v16 = v56;
          }
        }
      }
    }

    v57 = *(v1 + v30);
    if (!v57)
    {
LABEL_68:
      v143 = v14;
      v71 = MEMORY[0x1DA6CCED0](0x756E654D696E694DLL, 0xE800000000000000);
      [v144 setAccessibilityIdentifier_];

      v72 = v144;
      v73 = MEMORY[0x1DA6CCED0](0x756E654D696E694DLL, 0xE800000000000000);
      [v72 setAccessibilityLabel_];

      CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(v150);
      v74 = v151;
      v75 = v152;
      ResizeView.modelToViewTransform.getter(&v153);
      *&t1.a = v150[0];
      *&t1.c = v150[1];
      t1.tx = v74;
      t1.ty = v75;
      t2 = v153;
      CGAffineTransformConcat(&v147, &t1, &t2);
      t1 = v147;
      v156.origin.x = 0.0;
      v156.origin.y = 0.0;
      v156.size.width = 1.0;
      v156.size.height = 1.0;
      v157 = CGRectApplyAffineTransform(v156, &t1);
      x = v157.origin.x;
      y = v157.origin.y;
      width = v157.size.width;
      height = v157.size.height;
      v80 = swift_unknownObjectWeakLoadStrong();
      if (v80 && (v81 = v80, swift_beginAccess(), v82 = swift_unknownObjectWeakLoadStrong(), v81, v82))
      {
        v83 = [v82 viewForOverlay];
      }

      else
      {
        v83 = v3;
      }

      [v83 convertRect:v3 fromCoordinateSpace:{x, y, width, height}];
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v91 = v90;

      v92 = [v5 window];
      r2a = v10;
      if (v92)
      {
        v93 = v92;
        v94 = [v92 screen];

        [v94 scale];
        v96 = v95;
      }

      else
      {
        v96 = 1.0;
      }

      v97 = CGRect.rounded(scale:)(v96, v85, v87, v89, v91);
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v104 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState);
      v105 = *(v104 + 72);
      v106 = type metadata accessor for MiniMenuState(0);
      v107 = v105(v106, v104);
      v107[2] = v97;
      v107[3] = v99;
      v107[4] = v101;
      v107[5] = v103;

      v158.origin.x = v97;
      v158.origin.y = v99;
      v158.size.width = v101;
      v158.size.height = v103;
      MinY = CGRectGetMinY(v158);
      v159.origin.x = r2a;
      v159.origin.y = v12;
      v159.size.width = v143;
      v159.size.height = v16;
      v136 = CGRectGetMinY(v159);
      v160.origin.x = r2a;
      v160.origin.y = v12;
      v160.size.width = v143;
      v160.size.height = v16;
      MaxY = CGRectGetMaxY(v160);
      v161.origin.x = v97;
      v161.origin.y = v99;
      v161.size.width = v101;
      v161.size.height = v103;
      v132 = CGRectGetMaxY(v161);
      specialized MiniMenuController.showMiniMenu()();
      [v72 sizeThatFits_];
      [v72 frame];
      [v72 setFrame_];
      [v72 frame];
      v141 = v109;
      v142 = v108;
      v139 = v99;
      v162.origin.x = v97;
      v162.origin.y = v99;
      v110 = v101;
      v162.size.width = v101;
      v138 = v103;
      v162.size.height = v103;
      v174.origin.x = r2a;
      v174.origin.y = v12;
      v174.size.width = v143;
      v174.size.height = v16;
      v163 = CGRectIntersection(v162, v174);
      v111 = *MEMORY[0x1E695F050];
      v112 = *(MEMORY[0x1E695F050] + 8);
      v114 = *(MEMORY[0x1E695F050] + 16);
      v113 = *(MEMORY[0x1E695F050] + 24);
      v175.origin.x = *MEMORY[0x1E695F050];
      v175.origin.y = v112;
      v175.size.width = v114;
      v175.size.height = v113;
      if (CGRectEqualToRect(v163, v175))
      {
        goto LABEL_88;
      }

      v131 = MinY - v136;
      v135 = MaxY - v132;
      v164.origin.x = v97;
      v164.origin.y = v139;
      v164.size.width = v110;
      v164.size.height = v138;
      v176.origin.x = r2a;
      v176.origin.y = v12;
      v176.size.width = v143;
      v176.size.height = v16;
      v165 = CGRectIntersection(v164, v176);
      v177.origin.x = r2a;
      v177.origin.y = v12;
      v177.size.width = v143;
      v177.size.height = v16;
      if (CGRectEqualToRect(v165, v177))
      {
        v166.origin.x = r2a;
        v166.origin.y = v12;
        v166.size.width = v143;
        v166.size.height = v16;
        v111 = CGRectGetMidX(v166) + v142 * -0.5;
        v115 = r2a;
        v116 = v12;
        v117 = v143;
        v118 = v16;
        if (v135 >= v131)
        {
          v119 = CGRectGetMaxY(*&v115);
        }

        else
        {
          v119 = CGRectGetMinY(*&v115);
        }

        v112 = v119 + -16.0 - v141;
        goto LABEL_87;
      }

      v120 = v110;
      v121 = v138;
      v133 = v141 + 16.0;
      v122 = v97;
      v123 = v139;
      if (v135 >= v131)
      {
        v124 = CGRectGetMaxY(*&v122);
        v168.origin.x = r2a;
        v168.origin.y = v12;
        v168.size.width = v143;
        v168.size.height = v16;
        if (v133 >= CGRectGetMaxY(v168) - v124)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v124 = CGRectGetMinY(*&v122);
        v167.origin.x = r2a;
        v167.origin.y = v12;
        v167.size.width = v143;
        v167.size.height = v16;
        if (v133 < v124 - CGRectGetMinY(v167))
        {
LABEL_81:
          v112 = v124 + -16.0 - v141;
LABEL_86:
          v169.origin.x = v97;
          v169.origin.y = v139;
          v169.size.width = v110;
          v169.size.height = v138;
          v111 = CGRectGetMidX(v169) + v142 * -0.5;
LABEL_87:
          v113 = v141;
          v114 = v142;
LABEL_88:
          v170.origin.x = v111;
          v170.origin.y = v112;
          v170.size.width = v114;
          v170.size.height = v113;
          if (CGRectIsEmpty(v170))
          {

            goto LABEL_15;
          }

          v171.origin.x = r2a;
          v171.origin.y = v12;
          v171.size.width = v143;
          v171.size.height = v16;
          v172 = CGRectInset(v171, 5.0, 5.0);
          v173 = CGRect.closestRect(in:)(v172);
          [v72 setFrame_];
          v125 = *(v1 + v140);
          if (!v125)
          {
            goto LABEL_93;
          }

          v126 = v125;
          v127 = [v126 view];
          if (v127)
          {
            v128 = v127;
            [v5 bringSubviewToFront_];

            v129 = v126;
            [v129 setIsAccessibilityElement_];
            [v129 setAccessibilityElementsHidden_];

LABEL_93:
            v130 = v105(v106, v104);

            v130[6] = r2a;
            v130[7] = v12;
            v130[8] = v143;
            v130[9] = v16;

            return;
          }

          goto LABEL_95;
        }
      }

      v112 = v124 + 16.0;
      goto LABEL_86;
    }

    v58 = v57;
    v59 = [v58 parentViewController];
    v60 = swift_unknownObjectWeakLoadStrong();
    if (!v60 || (v61 = v60, swift_beginAccess(), v62 = swift_unknownObjectWeakLoadStrong(), v61, !v62))
    {
      v63 = swift_unknownObjectWeakLoadStrong();
      if (!v63)
      {
        if (v59)
        {
          goto LABEL_61;
        }

        goto LABEL_67;
      }

      v64 = v63;
      v62 = (*((*MEMORY[0x1E69E7D40] & *v63) + 0x8C0))();
    }

    if (v59)
    {
      if (v62)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIViewController);
        v65 = static NSObject.== infix(_:_:)();

        if (v65)
        {
          goto LABEL_67;
        }

LABEL_62:
        [v58 removeFromParentViewController];
        [v144 removeFromSuperview];
        [v58 didMoveToParentViewController_];
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66 && (v67 = v66, swift_beginAccess(), v68 = swift_unknownObjectWeakLoadStrong(), v67, v68) || (v69 = swift_unknownObjectWeakLoadStrong()) != 0 && (v70 = v69, v68 = (*((*MEMORY[0x1E69E7D40] & *v69) + 0x8C0))(), v70, v68))
        {
          [v68 addChildViewController_];
          [v5 addSubview_];
          [v58 didMoveToParentViewController_];
        }

        goto LABEL_67;
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v62)
    {
      v59 = v62;
      goto LABEL_61;
    }

LABEL_67:

    goto LABEL_68;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D38C4000, v27, v28, "Should not be showing minimenu!", v29, 2u);
    MEMORY[0x1DA6D0660](v29, -1, -1);
  }

  specialized MiniMenuController.dismissMiniMenu()();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

CGFloat specialized MiniMenuController.cropFrameToPreventOverlap(frame:overlapFrame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v27 = CGRectIntersection(v26, v36);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (!CGRectEqualToRect(v27, *MEMORY[0x1E695F050]))
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    MaxY = CGRectGetMaxY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v22 = MaxY - CGRectGetMinY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v24 = CGRectGetMaxY(v30);
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    v21 = v24 - CGRectGetMinY(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    v20 = MaxX - CGRectGetMinX(v33);
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    v16 = CGRectGetMaxX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v17 = v16 - CGRectGetMinX(v35);
    if (v21 >= v22)
    {
      v18 = v22;
    }

    else
    {
      v18 = v21;
    }

    if (v20 < v18)
    {
      v18 = v20;
    }

    if (v17 < v18)
    {
      v18 = v17;
    }

    if (v18 != v22 && v18 != v21 && v18 == v20)
    {
      return v20 + a1;
    }
  }

  return a1;
}

uint64_t specialized Canvas.bandSelectionShouldBegin(_:point:)(double a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (result)
  {
    if (*(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) != 1)
    {

      return 0;
    }

    v23 = result;
    if ([result allowsFingerDrawing])
    {
      v8 = *((*v6 & *v2) + 0x3C8);
      result = (v8)(&v24);
      if (v24 != 1)
      {
        result = v8(&v24, result);
        if (v24 != 2)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      result = (*((*v6 & *v2) + 0x3C8))(&v24);
      if (!v24)
      {
LABEL_24:

        return 0;
      }
    }

    v9 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = v9;
    [v10 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
    v11 = [v10 hitTest:0 withEvent:?];

    if (v11)
    {

      return 0;
    }

    v12 = Canvas.editingView.getter();
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 64))(ObjectType, v14);

    if (v16 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6CE0C0](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24 = v19;
        v22 = closure #1 in implicit closure #2 in Canvas.bandSelectionShouldBegin(_:point:)(&v24, v3, a1, a2);

        if ((v22 & 1) == 0)
        {

          goto LABEL_24;
        }

        ++v18;
        if (v21 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    return 1;
  }

  return result;
}

uint64_t outlined init with copy of PKDrawing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t dispatch thunk of FindResultProvider.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}

void _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAEG_Tt0g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd);
  v16[3] = v8;
  v16[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd);
  v9 = swift_allocObject();
  v16[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v16, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    closure #1 in Data.init<A>(_:)((v10[1] + v11), (v10[1] + v11 + v14), &v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }
}

double CGFloat.init(from:)()
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (!v0)
  {
    dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v1 = v3;
  }

  return v1;
}

uint64_t PKDrawingUUIDKeyPath.aes128Key.getter()
{
  v0 = type metadata accessor for Insecure.MD5();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Insecure.MD5Digest();
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CRKeyPath.rawValue.getter();
  v9 = v8;
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v7, v9);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v7, v9);
  outlined consume of Data._Representation(v7, v9);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v7, v9);
  (*(v1 + 8))(v3, v0);
  v18 = v4;
  v19 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5Digest and conformance Insecure.MD5Digest, 255, MEMORY[0x1E69666B0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v11 = v15;
  (*(v15 + 16))(boxed_opaque_existential_1, v6, v4);
  __swift_project_boxed_opaque_existential_1(v17, v18);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v11 + 8))(v6, v4);
  v12 = v16;
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v12;
}

uint64_t PKDrawingUUIDKeyPath.isEqual(_:)(uint64_t a1)
{
  v31 = a1;
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = *(v3 + 16);
  v17(&v29 - v15, v1 + OBJC_IVAR____TtC8PaperKit20PKDrawingUUIDKeyPath_keypath, v2, v14);
  v18 = *(v3 + 56);
  v18(v16, 0, 1, v2);
  outlined init with copy of Date?(v31, v33, &_sypSgMd);
  if (v34)
  {
    type metadata accessor for PKDrawingUUIDKeyPath();
    if (swift_dynamicCast())
    {
      v31 = v5;
      v19 = v32;
      (v17)(v12, &v32[OBJC_IVAR____TtC8PaperKit20PKDrawingUUIDKeyPath_keypath], v2);

      v5 = v31;
      v20 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_sypSgMd);
  }

  v20 = 1;
LABEL_6:
  v18(v12, v20, 1, v2);
  v21 = *(v5 + 48);
  outlined init with copy of Date?(v16, v7, &_s9Coherence9CRKeyPathVSgMd);
  outlined init with copy of Date?(v12, &v7[v21], &_s9Coherence9CRKeyPathVSgMd);
  v22 = *(v3 + 48);
  if (v22(v7, 1, v2) != 1)
  {
    v24 = v30;
    outlined init with copy of Date?(v7, v30, &_s9Coherence9CRKeyPathVSgMd);
    if (v22(&v7[v21], 1, v2) != 1)
    {
      v25 = v29;
      (*(v3 + 32))(v29, &v7[v21], v2);
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, 255, MEMORY[0x1E69954B8]);
      v26 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v3 + 8);
      v27(v25, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
      v27(v26, v2);
      outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd);
      return v23 & 1;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
    (*(v3 + 8))(v24, v2);
    goto LABEL_11;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence9CRKeyPathVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence9CRKeyPathVSgMd);
  if (v22(&v7[v21], 1, v2) != 1)
  {
LABEL_11:
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSg_ADtMd);
    v23 = 0;
    return v23 & 1;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence9CRKeyPathVSgMd);
  v23 = 1;
  return v23 & 1;
}

id PKDrawingUUIDKeyPath.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKDrawingUUIDKeyPath();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PKStrokeMaskStruct.__allocating_init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  outlined consume of Data._Representation(a1, a2);
  if (v7)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v4 + 16) = v8;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t PKStrokeMaskStruct.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  outlined consume of Data._Representation(a1, a2);
  if (v7)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v2 + 16) = v8;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t PKStrokeMaskStruct.rawValue.getter()
{
  v1 = [*(*(v0 + 16) + 16) rawValue];
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t PKStrokeMaskStruct.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v2 = [*(*(v1 + 16) + 16) rawValue];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined consume of Data._Representation(v3, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t PKStrokeMaskStruct.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PKStrokeMaskStruct@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x1E69784E0]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithRawValue_];

  outlined consume of Data._Representation(v3, v4);
  if (v8)
  {
    type metadata accessor for PKStrokeMaskWrapper();
    result = swift_allocObject();
    *(result + 16) = v8;
    *(v5 + 16) = result;
  }

  else
  {
    result = swift_deallocPartialClassInstance();
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PKStrokeMaskStruct(uint64_t *a1@<X8>)
{
  v3 = [*(*(*v1 + 16) + 16) rawValue];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t protocol witness for CRCodable.init(from:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v2, type metadata accessor for PKStrokeMaskStruct);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v2, type metadata accessor for PKStrokeMaskStruct);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct);
  v5 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v4, type metadata accessor for PKStrokeMaskStruct);
  v6 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v3, v5, v6);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  v4 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct);
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PKStrokeMaskStruct@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PKStrokeMaskStruct.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeMaskStruct(uint64_t a1, uint64_t a2)
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, a2, type metadata accessor for PKStrokeMaskStruct);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKStrokeMaskStruct and conformance PKStrokeMaskStruct, v2, type metadata accessor for PKStrokeMaskStruct);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PKInk@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = [v5 initWithRawValue_];

  result = outlined consume of Data._Representation(v3, v4);
  *a2 = v7;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PKInk(uint64_t *a1@<X8>)
{
  v3 = [*v1 rawValue];
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t protocol witness for CRCodable.init(from:) in conformance PKInk()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKInk()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKInk(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = swift_getWitnessTable();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, WitnessTable, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKInk(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKInk()
{
  type metadata accessor for PKInk();
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance PKInk, 255, type metadata accessor for PKInk);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type PKInk and conformance NSObject, 255, type metadata accessor for PKInk);

  return CRValue<>.observableDifference(from:with:)();
}

double CGRect.init(rawValue:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized CGRect.init(rawValue:)(a1, a2, v8);
  outlined consume of Data._Representation(a1, a2);
  result = *v8;
  v7 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v7;
  *(a3 + 32) = v9;
  return result;
}

uint64_t CGRect.rawValue.getter(double a1, double a2, double a3, double a4)
{
  v8[0] = _OSSwapInt64(*&a1);
  v8[1] = _OSSwapInt64(*&a2);
  v8[2] = _OSSwapInt64(*&a3);
  v8[3] = _OSSwapInt64(*&a4);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v8, &v9);
}

BOOL CGRect.isDefaultState.getter(double a1, double a2, double a3, double a4)
{
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 0.0;
  v5.size.height = 0.0;
  return CGRectEqualToRect(*&a1, v5);
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance CGRect@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  specialized CGRect.init(rawValue:)(*a1, v4, v7);
  outlined consume of Data._Representation(v3, v4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGRect@<X0>(uint64_t *a1@<X8>)
{
  result = CGRect.rawValue.getter(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGRect()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGRect()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGRect()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGRect(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, 255, type metadata accessor for CGRect);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

double protocol witness for CRCodable.init(defaultState:) in conformance CGRect@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGPoint()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGPoint()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGPoint()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGPoint(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t CGPoint.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized CGPoint.init(rawValue:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t CGPoint.rawValue.getter(double a1, double a2)
{
  v4[0] = _OSSwapInt64(*&a1);
  v4[1] = _OSSwapInt64(*&a2);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v4, &v5);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CGPoint@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = specialized CGPoint.init(rawValue:)(*a1, v4);
  v7 = v6;
  v9 = v8;
  result = outlined consume of Data._Representation(v3, v4);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGPoint@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v6[0] = CFConvertDoubleHostToSwapped(*v1);
  v6[1] = CFConvertDoubleHostToSwapped(v3);
  result = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v6, &v7);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGSize()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGSize()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGSize()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGSize(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, 255, type metadata accessor for CGSize);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGFloat()
{
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGFloat@<X0>(void *a1@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v4 = v3;

  *a1 = v4;
  return result;
}

unint64_t CGImagePropertyOrientation.init(from:)()
{
  result = Int.init(from:)();
  if (!v0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGImagePropertyOrientation()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, 255, type metadata accessor for CGImagePropertyOrientation);

  return CRValue<>.observableDifference(from:with:)();
}

unint64_t protocol witness for CRCodable.init(from:) in conformance CGImagePropertyOrientation@<X0>(_DWORD *a1@<X8>)
{
  result = Int.init(from:)();
  if (!v1)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(result))
    {
      *a1 = result;
      return result;
    }

    __break(1u);
  }

  return result;
}

double CGAffineTransform.init(rawValue:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized CGAffineTransform.init(rawValue:)(a1, a2, v8);
  outlined consume of Data._Representation(a1, a2);
  v6 = v8[1];
  *a3 = v8[0];
  *(a3 + 16) = v6;
  result = *&v9;
  *(a3 + 32) = v9;
  *(a3 + 48) = v10;
  return result;
}

uint64_t CGAffineTransform.rawValue.getter()
{
  v2[0] = _OSSwapInt64(*v0);
  v2[1] = _OSSwapInt64(v0[1]);
  v2[2] = _OSSwapInt64(v0[2]);
  v2[3] = _OSSwapInt64(v0[3]);
  v2[4] = _OSSwapInt64(v0[4]);
  v2[5] = _OSSwapInt64(v0[5]);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v2, &v3);
}

void CGAffineTransform.init(defaultState:)(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

double protocol witness for RawRepresentable.init(rawValue:) in conformance CGAffineTransform@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  specialized CGAffineTransform.init(rawValue:)(*a1, v4, v7);
  outlined consume of Data._Representation(v3, v4);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CGAffineTransform@<X0>(uint64_t *a1@<X8>)
{
  result = CGAffineTransform.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for CRType.copy(renamingReferences:) in conformance CGAffineTransform@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance CGAffineTransform()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance CGAffineTransform()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance CGAffineTransform()
{
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance CGAffineTransform(uint64_t a1)
{
  v2 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  v3 = _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGAffineTransform and conformance CGAffineTransform, 255, type metadata accessor for CGAffineTransform);
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

void protocol witness for CRCodable.init(defaultState:) in conformance CGAffineTransform(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

PaperKit::PKStrokeClipPlane __swiftcall PKStrokeClipPlane.init(origin:normal:)(CGPoint origin, CGPoint normal)
{
  *v2 = origin.x;
  v2[1] = origin.y;
  v2[2] = normal.x;
  v2[3] = normal.y;
  result.normal.y = normal.y;
  result.normal.x = normal.x;
  result.origin.y = origin.y;
  result.origin.x = origin.x;
  return result;
}

uint64_t PKStrokeClipPlane.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v11 != 32)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) != 32)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (HIDWORD(a1) - a1 != 32)
    {
LABEL_19:
      result = outlined consume of Data._Representation(a1, a2);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 1;
      return result;
    }
  }

LABEL_8:
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      __src = a1;
      v13 = a1;
      v44 = a2;
      v45 = BYTE2(a2);
      v46 = BYTE3(a2);
      v47 = BYTE4(a2);
      v31 = (a2 >> 51) & 0x1F;
      v48 = BYTE5(a2);
      if (!v31)
      {
        goto LABEL_41;
      }

      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
      v29 = 8 * v31;
      v28 = v27 + 4;
      p_src = &__src;
      goto LABEL_34;
    }

    v12 = a1;
    v3 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a1;
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v16))
      {
        v17 = (v12 - v16 + v15);
        v18 = MEMORY[0x1DA6C8120]();
        if (!v17)
        {
          goto LABEL_41;
        }

        if (v18 >= v3)
        {
          v19 = v3;
        }

        else
        {
          v19 = v18;
        }

        goto LABEL_27;
      }

LABEL_58:
      __break(1u);
    }

    goto LABEL_56;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v13 = a1;
  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    goto LABEL_37;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v3, v23))
  {
    goto LABEL_57;
  }

  v17 = (v3 - v23 + v22);
  v24 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    goto LABEL_39;
  }

LABEL_23:
  v25 = MEMORY[0x1DA6C8120]();
  if (!v17)
  {
    goto LABEL_41;
  }

  v19 = v25 >= v24 ? v24 : v25;
LABEL_27:
  if ((v19 + 7) >= 0xF)
  {
    if (v19 >= 0)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19 + 7;
    }

    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v26 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
    v28 = v27 + 4;
    v29 = v26 & 0xFFFFFFFFFFFFFFF8;
    p_src = v17;
LABEL_34:
    memcpy(v28, p_src, v29);
    v32 = v27[2];
    if (v32)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    while (1)
    {
      v27 = MEMORY[0x1E69E7CC0];
      v32 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v32)
      {
        break;
      }

LABEL_42:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v4 = 32;
      v33 = __src;
      do
      {
        v35 = _OSSwapInt64(*(v27 + v4));
        __src = v33;
        v37 = v33[2];
        v36 = v33[3];
        v3 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v38 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v35 = v38;
          v33 = __src;
        }

        v33[2] = v3;
        v33[v37 + 4] = v35;
        v4 += 8;
        --v32;
      }

      while (v32);

      v34 = v33[2];
      if (v34)
      {
        goto LABEL_47;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v17 = 0;
      v24 = v4 - v3;
      if (!__OFSUB__(v4, v3))
      {
        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      MEMORY[0x1DA6C8120]();
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_36;
  }

LABEL_47:
  if (v34 == 1)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v34 < 3)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v34 == 3)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];

  result = outlined consume of Data._Representation(v13, a2);
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v41;
  *(a3 + 24) = v42;
  *(a3 + 32) = 0;
  return result;
}

uint64_t PKStrokeClipPlane.rawValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[1];
  v5[0] = _OSSwapInt64(*v0);
  v5[1] = _OSSwapInt64(v3);
  v5[2] = _OSSwapInt64(v1);
  v5[3] = _OSSwapInt64(v2);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v5, &v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PKStrokeClipPlane.CodingKeys()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PKStrokeClipPlane.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PKStrokeClipPlane.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PKStrokeClipPlane.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PKStrokeClipPlane.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v16 = v9;
  v14 = 0;
  type metadata accessor for CGPoint(0);
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = v10;
    v16 = v11;
    v14 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t PKStrokeClipPlane.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit17PKStrokeClipPlaneV10CodingKeys33_5B7CCBFC2727C29A123ED8C688AC82C7LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v13 = 0;
    _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, 255, type metadata accessor for CGPoint);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v12;
    v13 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PKStrokeClipPlane@<X0>(uint64_t *a1@<X8>)
{
  result = PKStrokeClipPlane.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PKStrokeClipPlane()
{
  Hasher.init(_seed:)();
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();
  outlined consume of Data._Representation(v0, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PKStrokeClipPlane()
{
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v0, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PKStrokeClipPlane()
{
  Hasher.init(_seed:)();
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  Data.hash(into:)();
  outlined consume of Data._Representation(v0, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance PKStrokeClipPlane()
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokeClipPlane()
{
  v0 = PKStrokeClipPlane.rawValue.getter();
  v2 = v1;
  v3 = PKStrokeClipPlane.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

uint64_t protocol witness for CRCodable.init(from:) in conformance PKStrokeClipPlane()
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance PKStrokeClipPlane()
{
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance PKStrokeClipPlane(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v3 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

uint64_t protocol witness for CRCodable.isDefaultState.getter in conformance PKStrokeClipPlane(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokeClipPlane and conformance PKStrokeClipPlane();
  v5 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF56A8](a1, a2, v4, v5);
}

uint64_t Quad.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_19;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v10)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (v11 != 64)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (!v7)
    {
      if (BYTE6(a2) != 64)
      {
        goto LABEL_19;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(a1) - a1 != 64)
    {
LABEL_19:
      result = outlined consume of Data._Representation(a1, a2);
      LOBYTE(__src) = 1;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 1;
      return result;
    }
  }

LABEL_8:
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      __src = a1;
      v13 = a1;
      v48 = a2;
      v49 = BYTE2(a2);
      v50 = BYTE3(a2);
      v51 = BYTE4(a2);
      v31 = (a2 >> 51) & 0x1F;
      v52 = BYTE5(a2);
      if (!v31)
      {
        goto LABEL_41;
      }

      v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
      v29 = 8 * v31;
      v28 = v27 + 4;
      p_src = &__src;
      goto LABEL_34;
    }

    v12 = a1;
    v3 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v13 = a1;
      v14 = __DataStorage._bytes.getter();
      if (!v14)
      {
        goto LABEL_40;
      }

      v15 = v14;
      v16 = __DataStorage._offset.getter();
      if (!__OFSUB__(v12, v16))
      {
        v17 = (v12 - v16 + v15);
        v18 = MEMORY[0x1DA6C8120]();
        if (!v17)
        {
          goto LABEL_41;
        }

        if (v18 >= v3)
        {
          v19 = v3;
        }

        else
        {
          v19 = v18;
        }

        goto LABEL_27;
      }

LABEL_66:
      __break(1u);
    }

    goto LABEL_64;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v13 = a1;
  v21 = __DataStorage._bytes.getter();
  if (!v21)
  {
    goto LABEL_37;
  }

  v22 = v21;
  v23 = __DataStorage._offset.getter();
  if (__OFSUB__(v3, v23))
  {
    goto LABEL_65;
  }

  v17 = (v3 - v23 + v22);
  v24 = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
    goto LABEL_39;
  }

LABEL_23:
  v25 = MEMORY[0x1DA6C8120]();
  if (!v17)
  {
    goto LABEL_41;
  }

  v19 = v25 >= v24 ? v24 : v25;
LABEL_27:
  if ((v19 + 7) >= 0xF)
  {
    if (v19 >= 0)
    {
      v26 = v19;
    }

    else
    {
      v26 = v19 + 7;
    }

    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v26 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
    v28 = v27 + 4;
    v29 = v26 & 0xFFFFFFFFFFFFFFF8;
    p_src = v17;
LABEL_34:
    memcpy(v28, p_src, v29);
    v32 = v27[2];
    if (v32)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_41:
    while (1)
    {
      v27 = MEMORY[0x1E69E7CC0];
      v32 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v32)
      {
        break;
      }

LABEL_42:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v4 = 32;
      v33 = __src;
      do
      {
        v35 = _OSSwapInt64(*(v27 + v4));
        __src = v33;
        v37 = v33[2];
        v36 = v33[3];
        v3 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          v38 = v35;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          v35 = v38;
          v33 = __src;
        }

        v33[2] = v3;
        v33[v37 + 4] = v35;
        v4 += 8;
        --v32;
      }

      while (v32);

      v34 = v33[2];
      if (v34)
      {
        goto LABEL_47;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      v17 = 0;
      v24 = v4 - v3;
      if (!__OFSUB__(v4, v3))
      {
        goto LABEL_23;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      MEMORY[0x1DA6C8120]();
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_36;
  }

LABEL_47:
  if (v34 == 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v34 < 3)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v34 == 3)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v34 < 5)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v34 == 5)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v34 < 7)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v34 == 7)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v39 = v33[4];
  v40 = v33[5];
  v41 = v33[6];
  v42 = v33[7];
  v43 = v33[8];
  v44 = v33[9];
  v45 = v33[10];
  v46 = v33[11];

  result = outlined consume of Data._Representation(v13, a2);
  LOBYTE(__src) = 0;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v41;
  *(a3 + 24) = v42;
  *(a3 + 32) = v43;
  *(a3 + 40) = v44;
  *(a3 + 48) = v45;
  *(a3 + 56) = v46;
  *(a3 + 64) = 0;
  return result;
}

uint64_t Quad.rawValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[1];
  v9[0] = _OSSwapInt64(*v0);
  v9[1] = _OSSwapInt64(v7);
  v9[2] = _OSSwapInt64(v1);
  v9[3] = _OSSwapInt64(v2);
  v9[4] = _OSSwapInt64(v3);
  v9[5] = _OSSwapInt64(v4);
  v9[6] = _OSSwapInt64(v5);
  v9[7] = _OSSwapInt64(v6);
  return _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v9, &v10);
}

uint64_t Quad.isDefaultState.getter()
{
  v0 = Quad.rawValue.getter();
  v2 = v1;
  v3 = Quad.rawValue.getter();
  v5 = v4;
  v6 = specialized static Data.== infix(_:_:)(v0, v2, v3, v4);
  outlined consume of Data._Representation(v3, v5);
  outlined consume of Data._Representation(v0, v2);
  return v6 & 1;
}

double Quad.init(defaultState:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Quad@<X0>(uint64_t *a1@<X8>)
{
  result = Quad.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 protocol witness for CRType.copy(renamingReferences:) in conformance Quad@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t protocol witness for CRType.observableDifference(from:with:) in conformance Quad()
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();

  return CRValue<>.observableDifference(from:with:)();
}

uint64_t protocol witness for CRCodable.init(from:) in conformance Quad()
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();
  return CRValue<>.init(from:)();
}

uint64_t protocol witness for CRCodable.encode(to:) in conformance Quad()
{
  lazy protocol witness table accessor for type Quad and conformance Quad();
  lazy protocol witness table accessor for type Quad and conformance Quad();
  return CRValue<>.encode(to:)();
}

uint64_t protocol witness for CRCodable.minEncodingVersion.getter in conformance Quad(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Quad and conformance Quad();
  v3 = lazy protocol witness table accessor for type Quad and conformance Quad();
  v4 = MEMORY[0x1E6995000];

  return MEMORY[0x1EEDF52E0](a1, v2, v3, v4);
}

double protocol witness for CRCodable.init(defaultState:) in conformance Quad@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9Coherence13WeakTagged_10Vy8PaperKit0J13CanvasElementVG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5Tm(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size_0(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 25;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit14ReflowTextLineV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8PaperKit14ReflowTextLineVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 168);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for Insecure.MD5();
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  type metadata accessor for Insecure.MD5();
  _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.append(contentsOf:)();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v3, v4);
  }

  return Data._Representation.append(contentsOf:)();
}

{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5);
  }

  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      type metadata accessor for Insecure.MD5();
      _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, 255, MEMORY[0x1E6966688]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      type metadata accessor for SHA256();
      _s10Foundation25NSFastEnumerationIteratorVACStAAWlTm_0(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1DA6C8120]();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  v10 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], &_sSays5UInt8VGMd);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  closure #1 in Data.init<A>(_:)(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t specialized PKStrokeMaskStruct.__allocating_init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = objc_allocWithZone(MEMORY[0x1E69784E0]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithRawValue_];

    outlined consume of Data._Representation(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v7)
    {
      type metadata accessor for PKStrokeMaskWrapper();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      type metadata accessor for PKStrokeMaskStruct();
      v3 = swift_allocObject();
      *(v3 + 16) = v8;
      __swift_destroy_boxed_opaque_existential_0(a1);
      return v3;
    }

    v3 = type metadata accessor for CRCodingError();
    _sSo7CGPointVABSE12CoreGraphicsWlTm_0(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, 255, MEMORY[0x1E6995198]);
    swift_allocError();
    *v9 = 0x2E6B73616D206F4ELL;
    v9[1] = 0xE800000000000000;
    (*(*(v3 - 8) + 104))(v9, *MEMORY[0x1E6995188], v3);
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t specialized CGRect.init(rawValue:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_16;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v7 != 32)
    {
      goto LABEL_16;
    }

LABEL_8:
    v8 = a3;
    if (v3 == 2)
    {
      v20 = *(result + 16);
      v21 = *(result + 24);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v22 = __DataStorage._offset.getter();
        if (__OFSUB__(v20, v22))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v14 += v20 - v22;
      }

      v6 = __OFSUB__(v21, v20);
      v10 = v21 - v20;
      if (v6)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      if (v3 != 1)
      {
        __src = result;
        v40 = a2;
        v41 = BYTE2(a2);
        v42 = BYTE3(a2);
        v43 = BYTE4(a2);
        v30 = (a2 >> 51) & 0x1F;
        v44 = BYTE5(a2);
        if (!v30)
        {
          goto LABEL_36;
        }

        v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
        v28 = 8 * v30;
        v27 = v26 + 4;
        p_src = &__src;
LABEL_32:
        memcpy(v27, p_src, v28);
        v31 = v26[2];
        if (v31)
        {
          goto LABEL_37;
        }

        while (1)
        {

          v32 = MEMORY[0x1E69E7CC0];
          v33 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v33)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_35:
            MEMORY[0x1DA6C8120]();
LABEL_36:
            v26 = MEMORY[0x1E69E7CC0];
            v31 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v31)
            {
              break;
            }

LABEL_37:
            __src = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
            v34 = 4;
            v32 = __src;
            do
            {
              v35 = _OSSwapInt64(v26[v34]);
              __src = v32;
              v37 = v32[2];
              v36 = v32[3];
              if (v37 >= v36 >> 1)
              {
                v38 = v35;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
                v35 = v38;
                v32 = __src;
              }

              v32[2] = v37 + 1;
              v32[v37 + 4] = v35;
              ++v34;
              --v31;
            }

            while (v31);

            v33 = v32[2];
            if (v33)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_42:
        if (v33 == 1)
        {
          __break(1u);
        }

        else if (v33 >= 3)
        {
          if (v33 != 3)
          {
            v15 = v32[4];
            v16 = v32[5];
            v17 = v32[6];
            v18 = v32[7];

            v19 = 0;
            a3 = v8;
            goto LABEL_46;
          }

          goto LABEL_49;
        }

        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = result;
      v10 = (result >> 32) - result;
      if (result >> 32 < result)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v13))
      {
LABEL_55:
        __break(1u);
      }

      v14 = v9 - v13 + v12;
    }

    v23 = MEMORY[0x1DA6C8120]();
    if (!v14)
    {
      goto LABEL_36;
    }

    v24 = v23 >= v10 ? v10 : v23;
    if ((v24 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v24 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 + 7;
    }

    v26 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v25 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
    v27 = v26 + 4;
    v28 = v25 & 0xFFFFFFFFFFFFFFF8;
    p_src = v14;
    goto LABEL_32;
  }

  if (!v3)
  {
    if (BYTE6(a2) != 32)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (HIDWORD(result) - result == 32)
  {
    goto LABEL_8;
  }

LABEL_16:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 1;
LABEL_46:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  return result;
}

uint64_t specialized CGPoint.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (v5)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v6 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 16)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (HIDWORD(a1) - a1 != 16)
    {
      return 0;
    }
  }

LABEL_8:
  if (v2 == 2)
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v12 = __DataStorage._bytes.getter();
    if (v12)
    {
      v16 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v16))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v12 += v14 - v16;
    }

    v5 = __OFSUB__(v15, v14);
    v8 = v15 - v14;
    if (v5)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_21:
    v17 = MEMORY[0x1DA6C8120]();
    if (!v12)
    {
      goto LABEL_36;
    }

    v18 = v17 >= v8 ? v8 : v17;
    if ((v18 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v18 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 + 7;
    }

    v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v19 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
    v21 = v20 + 4;
    v22 = v19 & 0xFFFFFFFFFFFFFFF8;
    p_src = v12;
    goto LABEL_32;
  }

  if (v2 == 1)
  {
    v7 = a1;
    v8 = (a1 >> 32) - a1;
    if (a1 >> 32 < a1)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      goto LABEL_35;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v11))
    {
LABEL_50:
      __break(1u);
    }

    v12 = v7 - v11 + v10;
    goto LABEL_21;
  }

  __src = a1;
  v35 = a2;
  v36 = BYTE2(a2);
  v37 = BYTE3(a2);
  v38 = BYTE4(a2);
  v24 = (a2 >> 51) & 0x1F;
  v39 = BYTE5(a2);
  if (!v24)
  {
    goto LABEL_36;
  }

  v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
  v22 = 8 * v24;
  v21 = v20 + 4;
  p_src = &__src;
LABEL_32:
  memcpy(v21, p_src, v22);
  v25 = v20[2];
  if (v25)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v26 = MEMORY[0x1E69E7CC0];
    v27 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v27)
    {
      break;
    }

    while (1)
    {
      __break(1u);
LABEL_35:
      MEMORY[0x1DA6C8120]();
LABEL_36:
      v20 = MEMORY[0x1E69E7CC0];
      v25 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v25)
      {
        break;
      }

LABEL_37:
      __src = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
      v28 = 4;
      v26 = __src;
      do
      {
        v29 = _OSSwapInt64(v20[v28]);
        __src = v26;
        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v32 = v29;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v29 = v32;
          v26 = __src;
        }

        v26[2] = v31 + 1;
        v26[v31 + 4] = v29;
        ++v28;
        --v25;
      }

      while (v25);

      v27 = v26[2];
      if (v27)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_42:
  if (v27 == 1)
  {
    __break(1u);
    goto LABEL_45;
  }

  v33 = v26[4];

  return v33;
}

uint64_t specialized CGAffineTransform.init(rawValue:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_16;
    }

    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    if (v7 != 48)
    {
      goto LABEL_16;
    }

LABEL_8:
    v8 = a3;
    if (v3 == 2)
    {
      v22 = *(result + 16);
      v23 = *(result + 24);
      v14 = __DataStorage._bytes.getter();
      if (v14)
      {
        v24 = __DataStorage._offset.getter();
        if (__OFSUB__(v22, v24))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v14 += v22 - v24;
      }

      v6 = __OFSUB__(v23, v22);
      v10 = v23 - v22;
      if (v6)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    else
    {
      if (v3 != 1)
      {
        __src = result;
        v42 = a2;
        v43 = BYTE2(a2);
        v44 = BYTE3(a2);
        v45 = BYTE4(a2);
        v32 = (a2 >> 51) & 0x1F;
        v46 = BYTE5(a2);
        if (!v32)
        {
          goto LABEL_36;
        }

        v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm((a2 >> 51) & 0x1F, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
        v30 = 8 * v32;
        v29 = v28 + 4;
        p_src = &__src;
LABEL_32:
        memcpy(v29, p_src, v30);
        v33 = v28[2];
        if (v33)
        {
          goto LABEL_37;
        }

        while (1)
        {

          v34 = MEMORY[0x1E69E7CC0];
          v35 = *(MEMORY[0x1E69E7CC0] + 16);
          if (v35)
          {
            break;
          }

          while (1)
          {
            __break(1u);
LABEL_35:
            MEMORY[0x1DA6C8120]();
LABEL_36:
            v28 = MEMORY[0x1E69E7CC0];
            v33 = *(MEMORY[0x1E69E7CC0] + 16);
            if (!v33)
            {
              break;
            }

LABEL_37:
            __src = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
            v36 = 4;
            v34 = __src;
            do
            {
              v37 = _OSSwapInt64(v28[v36]);
              __src = v34;
              v39 = v34[2];
              v38 = v34[3];
              if (v39 >= v38 >> 1)
              {
                v40 = v37;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
                v37 = v40;
                v34 = __src;
              }

              v34[2] = v39 + 1;
              v34[v39 + 4] = v37;
              ++v36;
              --v33;
            }

            while (v33);

            v35 = v34[2];
            if (v35)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_42:
        if (v35 == 1)
        {
          __break(1u);
        }

        else if (v35 >= 3)
        {
          if (v35 != 3)
          {
            if (v35 >= 5)
            {
              if (v35 != 5)
              {
                v15 = v34[4];
                v16 = v34[5];
                v17 = v34[6];
                v18 = v34[7];
                v19 = v34[8];
                v20 = v34[9];

                v21 = 0;
                a3 = v8;
                goto LABEL_48;
              }

              goto LABEL_53;
            }

LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_51;
      }

      v9 = result;
      v10 = (result >> 32) - result;
      if (result >> 32 < result)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v11 = __DataStorage._bytes.getter();
      if (!v11)
      {
        goto LABEL_35;
      }

      v12 = v11;
      v13 = __DataStorage._offset.getter();
      if (__OFSUB__(v9, v13))
      {
LABEL_59:
        __break(1u);
      }

      v14 = v9 - v13 + v12;
    }

    v25 = MEMORY[0x1DA6C8120]();
    if (!v14)
    {
      goto LABEL_36;
    }

    v26 = v25 >= v10 ? v10 : v25;
    if ((v26 + 7) < 0xF)
    {
      goto LABEL_36;
    }

    if (v26 >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 + 7;
    }

    v28 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v27 >> 3, 0, &_ss23_ContiguousArrayStorageCys6UInt64VGMd);
    v29 = v28 + 4;
    v30 = v27 & 0xFFFFFFFFFFFFFFF8;
    p_src = v14;
    goto LABEL_32;
  }

  if (!v3)
  {
    if (BYTE6(a2) != 48)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(result) - result == 48)
  {
    goto LABEL_8;
  }

LABEL_16:
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 1;
LABEL_48:
  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v21;
  return result;
}

unint64_t lazy protocol witness table accessor for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys;
  if (!lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PKStrokeClipPlane.CodingKeys and conformance PKStrokeClipPlane.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Quad and conformance Quad()
{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Quad and conformance Quad;
  if (!lazy protocol witness table cache variable for type Quad and conformance Quad)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Quad and conformance Quad);
  }

  return result;
}

uint64_t type metadata accessor for PKDrawingUUIDKeyPath()
{
  result = type metadata singleton initialization cache for PKDrawingUUIDKeyPath;
  if (!type metadata singleton initialization cache for PKDrawingUUIDKeyPath)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PKDrawingUUIDKeyPath()
{
  result = type metadata accessor for CRKeyPath();
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

uint64_t CanvasAttachment.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v10);
  if (!v11)
  {
    outlined destroy of Any?(v10);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_type) != *&v9[OBJC_IVAR____TtC8PaperKit16CanvasAttachment_type])
  {

    goto LABEL_7;
  }

  type metadata accessor for CGPathRef(0);
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath);
  v4 = *&v9[OBJC_IVAR____TtC8PaperKit16CanvasAttachment_boundingPath];
  lazy protocol witness table accessor for type CGPathRef and conformance CGPathRef();
  v5 = v3;
  v6 = v4;
  v7 = static _CFObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t CanvasAttachmentProvider.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  outlined init with copy of Any?(a1, v17);
  if (!v18)
  {
    outlined destroy of Any?(v17);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v14 = 0;
    return v14 & 1;
  }

  v4 = OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments;
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments);
  if (!(v5 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v6 = v5;
LABEL_5:
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHCanvasAttachment_pMd);
  v6 = _bridgeCocoaArray<A>(_:)();

  if (!(v6 >> 62))
  {
    goto LABEL_5;
  }

  v7 = __CocoaSet.count.getter();
LABEL_6:

  v8 = OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments;
  v9 = *&v16[OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments];
  if (!(v9 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v10 = v9;
LABEL_8:
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHCanvasAttachment_pMd);
  v10 = _bridgeCocoaArray<A>(_:)();

  if (!(v10 >> 62))
  {
    goto LABEL_8;
  }

  v11 = __CocoaSet.count.getter();
LABEL_9:

  if (v7 != v11)
  {

    goto LABEL_13;
  }

  v12 = *(v2 + v4);
  v13 = *&v16[v8];

  v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8PaperKit16CanvasAttachmentC_Tt1g5(v12, v13);

  return v14 & 1;
}

uint64_t @objc CanvasAttachment.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type CGPathRef and conformance CGPathRef()
{
  result = lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef;
  if (!lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef)
  {
    type metadata accessor for CGPathRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef);
  }

  return result;
}

char *PDFAnnotation.quadPoints.getter()
{
  if ([v0 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    outlined destroy of Any?(v17);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7NSValueCGMd);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!(v14 >> 62))
  {
    v1 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
LABEL_20:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_8:
  *&v17[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = *&v17[0];
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3);
      }

      else
      {
        v5 = *(v14 + 8 * v3 + 32);
      }

      v6 = v5;
      [v5 CGPointValue];
      v8 = v7;
      v10 = v9;

      *&v17[0] = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        v4 = *&v17[0];
      }

      ++v3;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v1 != v3);

    return v4;
  }

  __break(1u);
  return result;
}

void PDFAnnotation.quadPoints.setter(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v4 = objc_opt_self();
      v5 = (a1 + 40);
      do
      {
        v6 = [v4 valueWithCGPoint_];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 += 2;
        --v3;
      }

      while (v3);
    }

    type metadata accessor for NSValue();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setValue:isa forAnnotationKey:*MEMORY[0x1E6978070]];
  }

  else
  {
    v7 = *MEMORY[0x1E6978070];

    [v1 removeValueForAnnotationKey_];
  }
}

Swift::Bool __swiftcall PDFAnnotation.shouldMirrorAsPDFAnnotationElement()()
{
  if ([v0 valueForAnnotationKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (!*(&v40 + 1))
  {
    outlined destroy of Any?(v41);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  v1 = MEMORY[0x1DA6CCED0]();

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_16;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_11:

LABEL_17:
    v8 = 1;
    return v8 & 1;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
    goto LABEL_16;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_11;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_16;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_11;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_16;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_11;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_16;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_11;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
LABEL_16:

    goto LABEL_17;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_11;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t PKStrokePathStruct.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PKStrokePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PKStrokePathStruct.path.setter(uint64_t a1)
{
  v3 = type metadata accessor for PKStrokePath();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PKStrokePathStruct.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for PKStrokePath();
  v66 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v78 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = v63 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v63 - v23;
  v65 = a1;
  v25 = v82;
  dispatch thunk of CRDecoder.crdtContainer()();
  if (v25)
  {
  }

  v72 = v24;
  v75 = v12;
  v76 = v15;
  v81 = v9;
  v82 = v7;
  v26 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

  v74 = *(v26 + 16);
  if (!v74)
  {
    goto LABEL_21;
  }

  v28 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v64 = v26;
  v73 = v26 + v28;
  v29 = v18;
  outlined init with copy of (Data, CRVersion?)(v26 + v28, v18);
  v31 = *v18;
  v30 = *(v18 + 1);
  v32 = objc_allocWithZone(MEMORY[0x1E69784E8]);
  outlined copy of Data._Representation(v31, v30);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v34 = [v32 initWithRawValue_];

  v70 = v30;
  v71 = v31;
  outlined consume of Data._Representation(v31, v30);
  v35 = v82;
  v36 = v66;
  if (v34)
  {
    v37 = v34;
    v38 = v72;
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0;
    v40 = v81;
  }

  else
  {
    v39 = 1;
    v40 = v81;
    v38 = v72;
  }

  outlined consume of Data._Representation(v71, v70);
  v71 = v36[7];
  v72 = (v36 + 7);
  (v71)(v38, v39, 1, v3);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v29[*(v35 + 48)], &_s9Coherence9CRVersionVSgMd);
  v69 = v36[6];
  v70 = (v36 + 6);
  result = v69(v38, 1, v3);
  if (result != 1)
  {
    v41 = v79;
    result = v36[4](v79, v38, v3);
    if (*(v64 + 16) < v74)
    {
      goto LABEL_22;
    }

    v42 = v74;
    v43 = v78;
    v44 = v76;
    if (v74 == 1)
    {
LABEL_11:
    }

    v63[1] = 0;
    v45 = (v66 + 1);
    v67 = *(v35 + 48);
    v68 = (v66 + 2);
    v66 += 5;
    v46 = 1;
    while (v42 != v46)
    {
      outlined init with copy of (Data, CRVersion?)(v73 + *(v80 + 72) * v46, v44);
      v47 = *(v35 + 48);
      v48 = v75;
      *v75 = *v44;
      v49 = v44 + v67;
      v50 = v48;
      outlined init with take of Range<AttributedString.Index>(v49, v48 + v47, &_s9Coherence9CRVersionVSgMd);
      (*v68)(v43, v41, v3);
      outlined init with copy of (Data, CRVersion?)(v50, v40);
      v51 = *v40;
      v52 = v40[1];
      v53 = objc_allocWithZone(MEMORY[0x1E69784E8]);
      outlined copy of Data._Representation(v51, v52);
      v54 = Data._bridgeToObjectiveC()().super.isa;
      v55 = [v53 initWithRawValue_];

      outlined consume of Data._Representation(v51, v52);
      if (v55)
      {
        v56 = v55;
        static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      outlined consume of Data._Representation(v51, v52);
      (v71)(v21, v57, 1, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v81 + *(v82 + 48), &_s9Coherence9CRVersionVSgMd);
      result = v69(v21, 1, v3);
      if (result == 1)
      {
        goto LABEL_23;
      }

      ++v46;
      v43 = v78;
      v58 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v59 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v60 = [(objc_class *)v58 dataApplying:v59];

      v61 = v77;
      static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = *v45;
      (*v45)(v43, v3);
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_s10Foundation4DataV_9Coherence9CRVersionVSgtMd);
      v62(v21, v3);
      v41 = v79;
      result = (*v66)(v79, v61, v3);
      v42 = v74;
      v35 = v82;
      v40 = v81;
      v44 = v76;
      if (v74 == v46)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of (Data, CRVersion?)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t one-time initialization function for versionUUID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  __swift_allocate_value_buffer(v3, static PKStrokePathStruct.versionUUID);
  v4 = __swift_project_value_buffer(v3, static PKStrokePathStruct.versionUUID);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void PKStrokePathStruct.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = &v24 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRVersion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CRVersion.init()();
  if (one-time initialization token for versionUUID != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, static PKStrokePathStruct.versionUUID);
  (*(v6 + 16))(v8, v13, v5);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v15 = [(objc_class *)isa _immutablePointsCount];

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    IndexSet.init(integersIn:)();
    v16 = type metadata accessor for IndexSet();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    CRVersion.subscript.setter();
    v17 = v26;
    dispatch thunk of CREncoder.crdtContainer()();
    if (!v17)
    {
      v18 = PKStrokePath._bridgeToObjectiveC()().super.isa;
      v19 = [(objc_class *)v18 rawValue];

      v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v25;
      (*(v10 + 16))(v25, v12, v9);
      (*(v10 + 56))(v23, 0, 1, v9);
      dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
      outlined consume of Data._Representation(v20, v22);

      outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s9Coherence9CRVersionVSgMd);
    }

    (*(v10 + 8))(v12, v9);
  }
}

void PKStrokePathStruct.merge(_:)(uint64_t a1)
{
  v2 = v1;
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v5 = [(objc_class *)isa _immutablePointsCount];

  v6 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v7 = [(objc_class *)v6 _immutablePointsCount];

  if (v7 < v5 || (v10 = PKStrokePath._bridgeToObjectiveC()().super.isa, v11 = [(objc_class *)v10 _immutablePointsCount], v10, v12 = PKStrokePath._bridgeToObjectiveC()().super.isa, v13 = [(objc_class *)v12 _immutablePointsCount], v12, v11 == v13) && (v14 = PKStrokePath._bridgeToObjectiveC()().super.isa, v15 = [(objc_class *)v14 count], v14, v16 = PKStrokePath._bridgeToObjectiveC()().super.isa, v17 = [(objc_class *)v16 count], v16, v17 < v15))
  {
    v8 = type metadata accessor for PKStrokePath();
    v9 = *(*(v8 - 8) + 24);

    v9(v2, a1, v8);
  }
}

uint64_t PKStrokePathStruct.Partial.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v21 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  dispatch thunk of CRDecoder.crdtContainer()();
  if (v1)
  {
  }

  v10 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

  v22 = a1;
  if (*(v10 + 16) == 1)
  {
    outlined init with copy of (Data, CRVersion?)(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6);

    v12 = *v6;
    v13 = v6[1];
    v14 = objc_allocWithZone(MEMORY[0x1E69784E8]);
    outlined copy of Data._Representation(v12, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = [v14 initWithRawValue_];

    outlined consume of Data._Representation(v12, v13);
    if (v16)
    {
      v17 = v16;
      static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    outlined consume of Data._Representation(v12, v13);
    v19 = type metadata accessor for PKStrokePath();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v9, v18, 1, v19);
    outlined destroy of StocksKitCurrencyCache.Provider?(v6 + *(v3 + 48), &_s9Coherence9CRVersionVSgMd);
    result = (*(v20 + 48))(v9, 1, v19);
    if (result != 1)
    {

      return (*(v20 + 32))(v22, v9, v19);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PKStrokePathStruct.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  result = dispatch thunk of CREncoder.crdtContainer()();
  if (!v0)
  {
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa rawValue];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    CRVersion.init()();
    v10 = type metadata accessor for CRVersion();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence9CRVersionVSgMd);
    outlined consume of Data._Representation(v7, v9);
  }

  return result;
}

uint64_t PKStrokePathStruct.partialCRDT(from:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = type metadata accessor for PKStrokePath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v13 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v14 = [(objc_class *)isa deltaTo:v13];

  if (v14)
  {
    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 56))(v4, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v4, 1, 1, v8);
  }

  outlined init with take of Range<AttributedString.Index>(v4, v7, &_s9PencilKit12PKStrokePathVSgMd);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9PencilKit12PKStrokePathVSgMd);
    v15 = 1;
  }

  else
  {
    v16 = *(v9 + 32);
    v16(v11, v7, v8);
    v16(a1, v11, v8);
    v15 = 0;
  }

  v17 = type metadata accessor for PKStrokePathStruct.Partial(0);
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

id PKStrokePathStruct.Partial.canMerge(delta:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v2 = [(objc_class *)isa canApplyDelta:v1];

  return v2;
}

id PKStrokePathStruct.Partial.merge(delta:)()
{
  v1 = v0;
  v2 = type metadata accessor for PKStrokePath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v7 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v8 = [(objc_class *)isa canApplyDelta:v7];

  if (v8)
  {
    v9 = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v10 = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v11 = [(objc_class *)v9 dataApplying:v10];

    static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v3 + 40))(v1, v5, v2);
  }

  return v8;
}

uint64_t static PKStrokePathStruct.initPartialCRDT(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_9Coherence9CRVersionVSgtMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v21 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit12PKStrokePathVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  result = dispatch thunk of CRDecoder.crdtContainer()();
  if (!v1)
  {
    v11 = dispatch thunk of CRDecoder.CRDTContainer.decodeCustomSiblings()();

    if (*(v11 + 16) == 1)
    {
      outlined init with copy of (Data, CRVersion?)(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v6);

      v12 = *v6;
      v13 = v6[1];
      v14 = objc_allocWithZone(MEMORY[0x1E69784E8]);
      outlined copy of Data._Representation(v12, v13);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v16 = [v14 initWithRawValue_];

      outlined consume of Data._Representation(v12, v13);
      if (v16)
      {
        v17 = v16;
        static PKStrokePath._unconditionallyBridgeFromObjectiveC(_:)();

        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      outlined consume of Data._Representation(v12, v13);
      v19 = type metadata accessor for PKStrokePath();
      v20 = *(v19 - 8);
      (*(v20 + 56))(v9, v18, 1, v19);
      outlined destroy of StocksKitCurrencyCache.Provider?(v6 + *(v3 + 48), &_s9Coherence9CRVersionVSgMd);
      result = (*(v20 + 48))(v9, 1, v19);
      if (result != 1)
      {
        return (*(v20 + 32))(a1, v9, v19);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t static PKStrokePathStruct.encode(partialCRDT:to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRVersionVSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  result = dispatch thunk of CREncoder.crdtContainer()();
  if (!v0)
  {
    isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa rawValue];

    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    CRVersion.init()();
    v10 = type metadata accessor for CRVersion();
    (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
    dispatch thunk of CREncoder.CRDTContainer.encodeCustom(_:version:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence9CRVersionVSgMd);
    outlined consume of Data._Representation(v7, v9);
  }

  return result;
}

uint64_t outlined init with copy of PKStrokePathStruct(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStrokePathStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static PKStrokePathStruct.== infix(_:_:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 == v3;
}

BOOL PKStrokePathStruct.hasDelta(from:)()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 < v3;
}

uint64_t protocol witness for CRDT.context.getter in conformance PKStrokePathStruct(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PKStrokePathStruct.Partial and conformance PKStrokePathStruct.Partial(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);

  return MEMORY[0x1EEDF5248](a1, v2);
}

BOOL protocol witness for CRDT.hasDelta(from:) in conformance PKStrokePathStruct()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 < v3;
}

uint64_t protocol witness for CRMergeable.merge(_:) in conformance PKStrokePathStruct(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type PKStrokePathStruct.Partial and conformance PKStrokePathStruct.Partial(&lazy protocol witness table cache variable for type PKStrokePathStruct and conformance PKStrokePathStruct, type metadata accessor for PKStrokePathStruct);

  return MEMORY[0x1EEDF5208](a1, a2, v4);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PKStrokePathStruct()
{
  isa = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v1 = [(objc_class *)isa _immutablePointsCount];

  v2 = PKStrokePath._bridgeToObjectiveC()().super.isa;
  v3 = [(objc_class *)v2 _immutablePointsCount];

  return v1 == v3;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PKStrokePath();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

char *UnknownPageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8PaperKit15UnknownPageView_textualContextProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView;
  *&v4[OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView] = v9;
  [v9 setContentMode_];
  [*&v4[v10] setClipsToBounds_];
  v11 = *&v4[v10];
  v12 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D4081FA0);
  v13 = [objc_opt_self() systemImageNamed_];

  [v11 setImage_];
  v14 = one-time initialization token for imageMissingIconColor;
  v15 = *&v4[v10];
  if (v14 != -1)
  {
    swift_once();
  }

  [v15 setTintColor_];

  v21.receiver = v4;
  v21.super_class = type metadata accessor for UnknownPageView();
  v16 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC8PaperKit15UnknownPageView_questionMarkView];
  v18 = v16;
  [v18 addSubview_];
  if (one-time initialization token for imageMissingBackgroundColor != -1)
  {
    swift_once();
  }

  [v18 setBackgroundColor_];
  v19 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4081FC0);
  [v18 setAccessibilityIdentifier_];

  return v18;
}

id UnknownPageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnknownPageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for PageOverlayView.textualContextProvider.setter in conformance UnknownPageView(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8PaperKit15UnknownPageView_textualContextProvider + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void protocol witness for PageOverlayView.viewControllerForPresentingUI.setter in conformance UnknownPageView(void *a1)
{
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall InlineDrawingTiledTextView.didMoveToWindow()()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for InlineDrawingTiledTextView();
  objc_msgSendSuper2(&v5, sel_didMoveToWindow);
  v2 = [v0 window];
  if (v2)
  {

    v3 = swift_unknownObjectRetain();
    InlineDrawingCanvasElementController.delegate.setter(v3, &protocol witness table for InlineDrawingTiledTextView);
  }

  else
  {
    InlineDrawingCanvasElementController.delegate.setter(0, 0);
    v0 = 0;
  }

  v4 = [v1 selectionInteraction];
  [v4 setDelegate_];
}

id InlineDrawingTiledTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InlineDrawingTiledTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized InlineDrawingTiledTextView.inlineDrawingCanvasElementControllerCurrentAttachment(_:)()
{
  v1 = v0;
  v2 = [v0 visibleAttachments];
  type metadata accessor for PKAttachmentView();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 standInAttachmentView];
  if (v4)
  {
    v5 = v4;
    MEMORY[0x1DA6CD190]();
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    v12 = 0.0;
    do
    {
      v29 = v12;
      v30 = width;
      v31 = y;
      v32 = x;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA6CE0C0](v8, v3);
      }

      else
      {
        v13 = *(v3 + 8 * v8 + 32);
      }

      v14 = v13;
      [v13 bounds];
      [v14 convertRect:v1 toCoordinateSpace:?];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [v1 bounds];
      v36.origin.x = v23;
      v36.origin.y = v24;
      v36.size.width = v25;
      v36.size.height = v26;
      v33.origin.x = v16;
      v33.origin.y = v18;
      v33.size.width = v20;
      v33.size.height = v22;
      v34 = CGRectIntersection(v33, v36);
      x = v34.origin.x;
      y = v34.origin.y;
      width = v34.size.width;
      height = v34.size.height;
      v27 = CGRectGetHeight(v34);
      v35.origin.x = v32;
      v35.origin.y = v31;
      v35.size.width = v30;
      v35.size.height = v29;
      if (CGRectGetHeight(v35) >= v27)
      {

        x = v32;
        y = v31;
        width = v30;
        v12 = v29;
      }

      else
      {

        type metadata accessor for InlineDrawingTextAttachmentView();
        v7 = swift_dynamicCastClass();
        if (!v7)
        {
        }

        v12 = height;
      }

      ++v8;
    }

    while (v6 != v8);
    goto LABEL_19;
  }

  __break(1u);
}

unint64_t type metadata accessor for PKAttachmentView()
{
  result = lazy cache variable for type metadata for PKAttachmentView[0];
  if (!lazy cache variable for type metadata for PKAttachmentView[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, lazy cache variable for type metadata for PKAttachmentView);
  }

  return result;
}

uint64_t AnalyticsEventEncoder.container<A>(keyedBy:)()
{
  v1 = *(v0 + 40);
  type metadata accessor for KeyedContainer();

  v2 = v1;
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t AnalyticsEventEncoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id protocol witness for Encoder.singleValueContainer() in conformance AnalyticsEventEncoder@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v7 = *(v3 + 40);
  v5 = *(v3 + 32);
  *(a1 + 24) = &unk_1F4F5BD98;
  *(a1 + 32) = lazy protocol witness table accessor for type SingleValueContainer and conformance SingleValueContainer();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;

  return v7;
}

unint64_t lazy protocol witness table accessor for type SingleValueContainer and conformance SingleValueContainer()
{
  result = lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer;
  if (!lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SingleValueContainer and conformance SingleValueContainer);
  }

  return result;
}

void KeyedContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = *(v7 + 16);
  v12(&v21 - v13, a1, v14, v11);
  type metadata accessor for NSObject();
  if (swift_dynamicCast())
  {
    v15 = v23;
    if (!v23)
    {
      goto LABEL_12;
    }

LABEL_9:
    v17 = *(v4 + 16);
    v18 = v15;
    v19 = dispatch thunk of CodingKey.stringValue.getter();
    v20 = MEMORY[0x1DA6CCED0](v19);

    [v17 setValue:v18 forKey:{v20, v21, v22}];

    return;
  }

  (v12)(v9, a1, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSY_pMd);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
    *(&v27 + 1) = swift_getAssociatedTypeWitness();
    __swift_allocate_boxed_opaque_existential_1(&v26);
    dispatch thunk of RawRepresentable.rawValue.getter();
    __swift_destroy_boxed_opaque_existential_0(&v23);
    if (*(&v27 + 1))
    {
      v16 = swift_dynamicCast();
      v15 = v28;
      if (!v16)
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    outlined destroy of StocksKitCurrencyCache.Provider?(&v23, &_sSY_pSgMd);
    v26 = 0u;
    v27 = 0u;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(&v26, &_sypSgMd);
LABEL_12:
  lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
  swift_allocError();
  swift_willThrow();
}

void KeyedContainer.encodeNil(forKey:)()
{
  if (*(v0 + 8) == 1)
  {
    v1 = *(v0 + 16);
    v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v3 = dispatch thunk of CodingKey.stringValue.getter();
    v4 = MEMORY[0x1DA6CCED0](v3);

    [v1 setValue:v2 forKey:v4];
  }
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(char a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6370]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7230]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7508]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a1;
  v4[1] = a2;
  KeyedContainer.encode<A>(_:forKey:)(v4, a3, a4, MEMORY[0x1E69E6158]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6530]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7360]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E6810]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E76D8]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(__int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7290]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E75F8]);
}

void protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>(int a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E72F0]);
}

{
  v3 = a1;
  KeyedContainer.encode<A>(_:forKey:)(&v3, a2, a3, MEMORY[0x1E69E7668]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedContainer<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

void SingleValueContainer.encodeNil()()
{
  if (v0[8] == 1)
  {
    v1 = *(*v0 + 16);
    if (v1)
    {
      outlined init with copy of FindResult(*v0 + 40 * v1 - 8, v9);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      v2 = v0;
      v3 = dispatch thunk of CodingKey.stringValue.getter();
      v5 = v4;
      __swift_destroy_boxed_opaque_existential_0(v9);
      v6 = *(v2 + 2);
      v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v8 = MEMORY[0x1DA6CCED0](v3, v5);

      [v6 setValue:v7 forKey:v8];
    }
  }
}

void specialized SingleValueContainer.encode<A>(_:)()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = v0;
    outlined init with copy of FindResult(*v0 + 40 * v1 - 8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v3 = dispatch thunk of CodingKey.stringValue.getter();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v10);
    v6.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v7 = *(v2 + 16);
    v8 = v6.super.super.isa;
    v9 = MEMORY[0x1DA6CCED0](v3, v5);

    [v7 setValue:v8 forKey:v9];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = v0;
    outlined init with copy of FindResult(*v0 + 40 * v1 - 8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v3 = dispatch thunk of CodingKey.stringValue.getter();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v10);
    v6.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    v7 = *(v2 + 16);
    v8 = v6.super.super.isa;
    v9 = MEMORY[0x1DA6CCED0](v3, v5);

    [v7 setValue:v8 forKey:v9];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = v0;
    outlined init with copy of FindResult(*v0 + 40 * v1 - 8, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v3 = dispatch thunk of CodingKey.stringValue.getter();
    v5 = v4;
    __swift_destroy_boxed_opaque_existential_0(v10);
    v6.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
    v7 = *(v2 + 16);
    v8 = v6.super.super.isa;
    v9 = MEMORY[0x1DA6CCED0](v3, v5);

    [v7 setValue:v8 forKey:v9];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void specialized SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v4 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = MEMORY[0x1DA6CCED0](a1, a2);
    v11 = *(v4 + 16);
    v12 = v10;
    v13 = MEMORY[0x1DA6CCED0](v7, v9);

    [v11 setValue:v12 forKey:v13];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void specialized SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = a2(a1);
    v11 = *(v5 + 16);
    v12 = v10;
    v13 = MEMORY[0x1DA6CCED0](v7, v9);

    [v11 setValue:v12 forKey:v13];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = a2(a1);
    v11 = *(v5 + 16);
    v12 = v10;
    v13 = MEMORY[0x1DA6CCED0](v7, v9);

    [v11 setValue:v12 forKey:v13];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = a2(a1);
    v11 = *(v5 + 16);
    v12 = v10;
    v13 = MEMORY[0x1DA6CCED0](v7, v9);

    [v11 setValue:v12 forKey:v13];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = v2;
    outlined init with copy of FindResult(*v2 + 40 * v3 - 8, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_0(v14);
    v10 = a2(a1);
    v11 = *(v5 + 16);
    v12 = v10;
    v13 = MEMORY[0x1DA6CCED0](v7, v9);

    [v11 setValue:v12 forKey:v13];
  }

  else
  {
    lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
    swift_allocError();
    swift_willThrow();
  }
}

void SingleValueContainer.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v2 + 16);
  if (v9)
  {
    outlined init with copy of FindResult(*v2 + 40 * v9 - 8, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v10 = dispatch thunk of CodingKey.stringValue.getter();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_0(v17);
    (*(v6 + 16))(v8, a1, a2);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v13 = *(v3 + 16);
      v14 = v17[0];
      v15 = MEMORY[0x1DA6CCED0](v10, v12);

      [v13 setValue:v14 forKey:v15];

      return;
    }
  }

  lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError();
  swift_allocError();
  swift_willThrow();
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueContainer()
{
  specialized SingleValueContainer.encode<A>(_:)();
}

{
  specialized SingleValueContainer.encode<A>(_:)();
}

{
  specialized SingleValueContainer.encode<A>(_:)();
}

void protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueContainer(uint64_t a1)
{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E6969E50]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0C0]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0C8]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A0D8]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A100]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A038]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A120]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A128]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A130]);
}

{
  specialized SingleValueContainer.encode<A>(_:)(a1, MEMORY[0x1E696A140]);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueContainer()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t specialized AnalyticsEventEncoder.encode<A>(_:)()
{
  v3[3] = type metadata accessor for AnalyticsEventEncoder();
  v3[4] = lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder();
  v3[0] = v0;

  dispatch thunk of Encodable.encode(to:)();
  result = __swift_destroy_boxed_opaque_existential_0(v3);
  if (!v1)
  {
    return ~(*(v0 + 40) >> 1) & 0x4000000000000000 | *(v0 + 40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder()
{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder)
  {
    type metadata accessor for AnalyticsEventEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder and conformance AnalyticsEventEncoder);
  }

  return result;
}

uint64_t type metadata instantiation function for KeyedContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for KeyedContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for KeyedContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError()
{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError;
  if (!lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnalyticsEventEncoder.EncodingError and conformance AnalyticsEventEncoder.EncodingError);
  }

  return result;
}

Swift::Void __swiftcall UIView.ppkSetGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v0 - 8);
  static _Glass._GlassVariant.regular.getter();
  v1[3] = type metadata accessor for _Glass();
  v1[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v1);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

void @objc UIView.ppkSetGlassBackground()(void *a1)
{
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = a1;
  static _Glass._GlassVariant.regular.getter();
  v4[3] = type metadata accessor for _Glass();
  v4[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v4);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

Swift::Void __swiftcall UIView.ppkSetCapsuleCornerMaskingConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - v1;
  static _UICornerMaskingConfiguration.capsule.getter();
  v3 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  UIView.cornerMaskingConfiguration.setter();
}

void @objc UIView.ppkSetCapsuleCornerMaskingConfiguration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = a1;
  static _UICornerMaskingConfiguration.capsule.getter();
  v6 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  UIView.cornerMaskingConfiguration.setter();
}

Swift::Void __swiftcall UIView.ppkSetContainerConcentricCornerMaskingConfiguration()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(v2);
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void @objc UIView.ppkSetContainerConcentricCornerMaskingConfiguration()(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = a1;
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  outlined destroy of _UICornerMaskingConfiguration.CornerStyle?(v4);
  v10 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t UIView.ppkSetFixedCornerMaskingConfiguration(radius:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  static _UICornerMaskingConfiguration.fixed(_:)();
  v3 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return UIView.cornerMaskingConfiguration.setter();
}

void @objc UIView.ppkSetFixedCornerMaskingConfiguration(radius:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = a1;
  static _UICornerMaskingConfiguration.fixed(_:)();
  v6 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  UIView.cornerMaskingConfiguration.setter();
}

uint64_t PrincipalLine.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMd);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v17 = a3;
  v18 = 0;
  type metadata accessor for CGPoint(0);
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = a4;
    v17 = a5;
    v18 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PrincipalLine.CodingKeys()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PrincipalLine.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PrincipalLine.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PrincipalLine.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance PrincipalLine(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = specialized PrincipalLine.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

double ReflowWord.baselineDelta.getter()
{
  [*(v0 + 280) _canvasBounds];
  CGRectGetWidth(v5);
  [*(v0 + 280) _canvasBounds];
  CGRectGetHeight(v6);

  return UnknownCanvasElementView.flags.modify(v1, v2);
}

void *ReflowWord.init(reflowableTextToken:drawing:scale:image:)(void *a1, void *a2, void *a3, CGFloat a4)
{
  v182 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v189 = &v175 - v9;
  v188 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v188);
  v201 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v221 = &v175 - v12;
  v13 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v210 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v199 = &v175 - v17;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  v191 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v198 = &v175 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v220 = &v175 - v20;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v190 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197);
  v187 = &v175 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v206 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v215 = &v175 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v205 = &v175 - v25;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v178 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v207 = &v175 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v180 = *(v27 - 8);
  v181 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v204 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v175 - v30;
  *&v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v219 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v186 = &v175 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  *&v222 = &v175 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v185 = &v175 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v196 = &v175 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v195 = &v175 - v39;
  v40 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v40 - 8);
  *&v212 = &v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd));
  v213 = *(*&v218 - 8);
  MEMORY[0x1EEE9AC00](*&v218);
  *&v211 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  *&v217 = &v175 - v44;
  *(v4 + 312) = 0;
  *(v4 + 344) = 1;
  *(v4 + 304) = a3;
  v177 = a3;
  v45 = [a1 string];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v4 + 320) = v46;
  *(v4 + 328) = v48;
  v184 = v4;
  objc_opt_self();
  v183 = a1;
  v49 = swift_dynamicCastObjCClass();
  v203 = v22;
  if (v49)
  {
    v50 = [v49 strokeIdentifiers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHStrokeIdentifier_pMd);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v51 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v53 = 0;
      v216 = v51 & 0xC000000000000001;
      v214 = v51 & 0xFFFFFFFFFFFFFF8;
      v54 = (v213 + 32);
      v55 = MEMORY[0x1E69E7CC0];
      while (v216)
      {
        MEMORY[0x1DA6CE0C0](v53, v51);
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_20;
        }

LABEL_10:
        type metadata accessor for PKStrokeProviderSliceIdentifierCoherence(0);
        v57 = swift_dynamicCastClass();
        if (v57)
        {
          v58 = [v57 strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
          v59 = v211;
          WeakRef.init(id:)();
          swift_unknownObjectRelease();
          v60 = *v54;
          (*v54)(COERCE_CGFLOAT(*&v217), v59, COERCE_CGFLOAT(*&v218));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
          }

          v62 = v55[2];
          v61 = v55[3];
          if (v62 >= v61 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v55);
          }

          v55[2] = v62 + 1;
          (v60)(v55 + ((v213[80] + 32) & ~v213[80]) + *(v213 + 9) * v62, *&v217, *&v218);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v53;
        if (v56 == i)
        {
          goto LABEL_24;
        }
      }

      if (v53 >= *(v214 + 16))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRetain();
      v56 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v55 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v22 = v203;
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
  }

  v184[36] = v55;
  v63 = v182;
  [v182 _canvasBounds];
  if (CGRectIsEmpty(v242) || ([v63 _canvasBounds], !CGRect.isFinite.getter(v64, v65, v66, v67)))
  {
    [v63 bounds];
    [v63 set_canvasBounds_];
  }

  [v63 _canvasBounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;
  if (fabs(a4 + -1.0) <= 0.01)
  {
    v76 = v63;
  }

  else
  {
    CGAffineTransformMakeScale(&v235, a4, a4);
    v76 = PKDrawingCoherence.applyTransform(_:transformInk:)(&v235, 0);
  }

  v77 = v184;
  v184[35] = v76;
  v78 = v76;
  [v78 _canvasBounds];
  v244 = CGRectIntegral(v243);
  [v78 set:v244.origin.x canvasBounds:{v244.origin.y, v244.size.width, v244.size.height}];

  v79 = v183;
  [v183 bounds];
  v224.a = v80;
  v224.b = 0.0;
  v224.c = 0.0;
  v224.d = v82;
  v224.tx = v81 - v80 * 0.0;
  v224.ty = v83 - v82 * 0.0;
  t2.a = 1.0 / v73;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.d = 1.0 / v75;
  t2.tx = 0.0 - v69 * (1.0 / v73);
  t2.ty = 0.0 - v71 * (1.0 / v75);
  CGAffineTransformConcat(&v233, &v224, &t2);
  a = v233.a;
  b = v233.b;
  c = v233.c;
  d = v233.d;
  tx = v233.tx;
  ty = v233.ty;
  [v79 principalLines];
  v217 = v229;
  v218 = v228;
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v90 = CGPointApplyAffineTransform(v227, &v224);
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v236.y = v217;
  v236.x = v218;
  v91 = CGPointApplyAffineTransform(v236, &v224);
  *(v77 + 19) = v90;
  *(v77 + 21) = v91;
  [v79 principalLines];
  v237.x = v224.a;
  v237.y = v224.b;
  v217 = v224.d;
  v218 = v224.c;
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v92 = CGPointApplyAffineTransform(v237, &v224);
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v238.y = v217;
  v238.x = v218;
  v93 = CGPointApplyAffineTransform(v238, &v224);
  *(v77 + 31) = v92;
  *(v77 + 33) = v93;
  [v79 principalLines];
  v239 = *&v224.tx;
  v217 = v226;
  v218 = v225;
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v94 = CGPointApplyAffineTransform(v239, &v224);
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v240.y = v217;
  v240.x = v218;
  v95 = CGPointApplyAffineTransform(v240, &v224);
  *(v77 + 23) = v94;
  *(v77 + 25) = v95;
  [v79 principalLines];
  v217 = v232;
  v218 = v231;
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v96 = CGPointApplyAffineTransform(v230, &v224);
  v224.a = a;
  v224.b = b;
  v224.c = c;
  v224.d = d;
  v224.tx = tx;
  v224.ty = ty;
  v241.y = v217;
  v241.x = v218;
  v97 = CGPointApplyAffineTransform(v241, &v224);
  *(v77 + 27) = v96;
  *(v77 + 29) = v97;
  v77[42] = [v79 textSize];
  v98 = *(v77 + 23);
  v99 = *(v77 + 25);
  if (v98 < 0.0)
  {
    v100 = 0.0 - v98 / (v99 - v98);
    v98 = v98 + (v99 - v98) * v100;
    v101 = *(v77 + 24) + v100 * (*(v77 + 26) - *(v77 + 24));
    *(v77 + 23) = v98;
    *(v77 + 24) = v101;
  }

  v102 = v205;
  if (v99 > 1.0)
  {
    v103 = v99 - v98;
    v104 = 1.0 - v98 / v103;
    v105 = v98 + v103 * v104;
    v106 = *(v77 + 24) + v104 * (*(v77 + 26) - *(v77 + 24));
    *(v77 + 25) = v105;
    *(v77 + 26) = v106;
  }

  v107 = *(v77 + 35);
  v108 = OBJC_IVAR___PKDrawingCoherence_model;
  swift_beginAccess();
  v109 = v219;
  v110 = *(v219 + 16);
  v216 = v219 + 16;
  v217 = *&v108;
  v111 = &v107[v108];
  v112 = v195;
  v113 = v223;
  v214 = v110;
  v110(v195, v111, v223);
  swift_getKeyPath();
  v218 = *&v107;
  v176 = v107;
  v114 = v179;
  Capsule.subscript.getter();

  v115 = *(v109 + 8);
  v219 = v109 + 8;
  v213 = v115;
  (v115)(v112, v113);
  (*(v180 + 16))(v204, v114, v181);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  dispatch thunk of Sequence.makeIterator()();
  v195 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  dispatch thunk of IteratorProtocol.next()();
  v116 = v206;
  v193 = *(v206 + 48);
  v194 = v206 + 48;
  if (v193(v102, 1, v22) == 1)
  {
    v204 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v135 = *(v116 + 32);
    v134 = v116 + 32;
    ++v191;
    v192 = v135;
    v136 = (v190 + 6);
    v137 = v190 + 1;
    v138 = (v190 + 4);
    v204 = MEMORY[0x1E69E7CC0];
    v190 = (v134 - 24);
    v139 = v202;
    v206 = v134;
    do
    {
      v192(v215, v102, v22);
      v141 = v196;
      v142 = v223;
      (v214)(v196, *&v218 + *&v217, v223);
      v143 = type metadata accessor for PKDrawingStruct(0);
      v144 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
      v145 = v198;
      *&v212 = v143;
      *&v211 = v144;
      Ref.subscript.getter();
      (v213)(v141, v142);
      v146 = v199;
      v147 = v209;
      CRRegister.value.getter();
      (*v191)(v145, v147);
      outlined init with take of TaggedStroke(v146, v139);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of TaggedStroke(v139, type metadata accessor for TaggedStroke);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        (*(*(v148 - 8) + 56))(v220, 1, 1, v148);
      }

      else
      {
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        v150 = v139;
        v151 = *(v149 - 8);
        v152 = v220;
        (*(v151 + 32))(v220, v150, v149);
        (*(v151 + 56))(v152, 0, 1, v149);
      }

      v153 = v197;
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v220, 1, v154) == 1)
      {
        v22 = v203;
        (*v190)(v215, v203);
        outlined destroy of StocksKitCurrencyCache.Provider?(v220, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
      }

      else
      {
        v156 = v185;
        v157 = v214;
        (v214)(v185, *&v218 + *&v217, v223);
        v158 = v220;
        Ref.subscript.getter();
        v159 = v156;
        v160 = v223;
        (v213)(v159, v223);
        (*(v155 + 8))(v158, v154);
        v157(v222, *&v218 + *&v217, v160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
        v161 = v187;
        CRRegister.wrappedValue.getter();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
        for (j = v189; ; (*v138)(v161, j, v153))
        {
          v163 = v221;
          Ref.subscript.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
          CRRegister.wrappedValue.getter();
          outlined destroy of TaggedStroke(v163, type metadata accessor for PKStrokeInheritedProperties);
          if ((*v136)(j, 1, v153) == 1)
          {
            break;
          }

          (*v137)(v161, v153);
        }

        outlined destroy of StocksKitCurrencyCache.Provider?(j, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
        outlined destroy of TaggedStroke(v210, type metadata accessor for PKStrokeStruct);
        v164 = v223;
        v165 = v213;
        (v213)(v222, v223);
        v166 = v186;
        (v214)(v186, *&v218 + *&v217, v164);
        Ref.subscript.getter();
        v165(v166, v164);
        (*v137)(v161, v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
        v167 = v201;
        CRRegister.wrappedValue.getter();
        outlined destroy of TaggedStroke(v167, type metadata accessor for PKStrokeInheritedProperties);
        v22 = v203;
        (*v190)(v215, v203);
        v211 = *&v224.c;
        v212 = *&v224.a;
        v168 = v224.tx;
        v169 = v224.ty;
        v170 = v204;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v170 + 2) + 1, 1, v170);
        }

        v172 = *(v170 + 2);
        v171 = *(v170 + 3);
        if (v172 >= v171 >> 1)
        {
          v170 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v171 > 1), v172 + 1, 1, v170);
        }

        *(v170 + 2) = v172 + 1;
        v204 = v170;
        v173 = &v170[48 * v172];
        v174 = v211;
        *(v173 + 2) = v212;
        *(v173 + 3) = v174;
        *(v173 + 8) = v168;
        *(v173 + 9) = v169;
      }

      v102 = v205;
      dispatch thunk of IteratorProtocol.next()();
      v140 = v193(v102, 1, v22);
      v139 = v202;
    }

    while (v140 != 1);
  }

  (*(v178 + 8))(v207, v208);
  v117 = (*(v180 + 8))(v179, v181);
  v118 = v184;
  v184[37] = v204;
  v120 = UnknownCanvasElementView.flags.modify(v117, v119);
  *(v118 + 1) = 0u;
  *(v118 + 2) = 0u;
  *(v118 + 3) = 0u;
  *(v118 + 4) = 0u;
  *(v118 + 5) = 0u;
  v118[12] = 0;
  *(v118 + 13) = v120;
  v118[14] = v121;
  v118[15] = -1;
  v118[16] = 0;
  *(v118 + 136) = 0;
  v118[18] = 0;
  swift_retain_n();
  v122 = v176;
  [v176 _canvasBounds];
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;

  v118[2] = v124;
  v118[3] = v126;
  v118[4] = v128;
  v118[5] = v130;
  v118[6] = v124;
  v118[7] = v126;
  v118[8] = v128;
  v118[9] = v130;
  v131 = *(v118 + 23);
  v222 = *(v118 + 25);
  v223 = v131;

  v132 = v223;
  *(v118 + 13) = v222;
  *(v118 + 11) = v132;

  return v118;
}

unint64_t ReflowWord.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7265646E65637361;
    v7 = 0x65646E6563736564;
    if (a1 != 10)
    {
      v7 = 0x694C657669746361;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0xD000000000000015;
    if (a1 != 7)
    {
      v9 = 0x74686769654878;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656E696C65736162;
    v2 = 0x694C6E616964656DLL;
    v3 = 0x676E6977617264;
    if (a1 != 4)
    {
      v3 = 0x6F72745374786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656E694C706F74;
    if (a1 != 1)
    {
      v4 = 0x65646E6563736564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ReflowWord.CodingKeys@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ReflowWord.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ReflowWord.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ReflowWord.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance ReflowWord.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ReflowWord.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ReflowWord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ReflowWord.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReflowWord.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v158 = v131 - v4;
  v157 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v157);
  v163 = v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v180 = v131 - v7;
  v8 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v169 = v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v162);
  v161 = v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v164 = v131 - v12;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
  *&v148 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v171 = v131 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v159 = v131 - v15;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd);
  v147 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = v131 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v173 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v170 = v131 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v165 = v131 - v19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
  v150 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v167 = v131 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  *&v149 = v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v151 = v131 - v23;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v174 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v154 = v131 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v131 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v131 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v131 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v131 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMd);
  v172 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = v131 - v40;
  *(v1 + 304) = 0;
  *(v1 + 312) = 0;
  *(v1 + 344) = 1;
  v42 = a1[3];
  v178 = a1;
  v179 = v1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();
  v43 = v177;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v43)
  {
    v48 = v179;
    __swift_destroy_boxed_opaque_existential_0(v178);

    outlined consume of PaperKitPDFDocument??(*(v48 + 344));
    type metadata accessor for ReflowWord();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v144 = v35;
    v177 = v32;
    v145 = v38;
    v146 = v29;
    v44 = v174;
    v45 = v173;
    v187 = 0;
    v46 = lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine();
    v47 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v182;
    v51 = v179;
    *(v179 + 184) = v181;
    *(v51 + 200) = v50;
    v187 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = v182;
    *(v51 + 216) = v181;
    *(v51 + 232) = v52;
    v187 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v182;
    *(v51 + 248) = v181;
    *(v51 + 264) = v53;
    v187 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v182;
    *(v51 + 152) = v181;
    *(v51 + 168) = v54;
    v55 = type metadata accessor for PKDrawingCoherence(0);
    v187 = 4;
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingCoherence and conformance PKDrawingCoherence, type metadata accessor for PKDrawingCoherence);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v132 = v39;
    v131[1] = v46;
    v133 = v47;
    v56 = v181;
    v143 = v181;
    v57 = OBJC_IVAR___PKDrawingCoherence_model;
    v140 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v139 = v55;
    v142 = *(v44 + 16);
    v58 = v56 + v57;
    v59 = v144;
    v60 = v176;
    v142(v144, v58, v176);
    v61 = v145;
    Capsule.copy()();
    v141 = *(v44 + 8);
    v141(v59, v60);
    v62 = v139;
    v63 = objc_allocWithZone(v139);
    v142(&v63[OBJC_IVAR___PKDrawingCoherence_model], v61, v60);
    v186.receiver = v63;
    v186.super_class = v62;
    v64 = objc_msgSendSuper2(&v186, sel_init);
    v141(v61, v60);
    *(v51 + 280) = v64;
    v65 = v177;
    v144 = (v44 + 16);
    v142(v177, &v143[v140], v60);
    v66 = v44 + 8;
    swift_getKeyPath();
    v67 = v151;
    Capsule.subscript.getter();

    v141(v65, v60);
    (*(v152 + 16))(v149, v67, v153);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    dispatch thunk of Sequence.makeIterator()();
    v68 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd);
    v69 = v165;
    v139 = v68;
    dispatch thunk of IteratorProtocol.next()();
    v70 = v45;
    v71 = v45 + 48;
    v72 = *(v45 + 48);
    v73 = v166;
    v138 = v71;
    v137 = v72;
    if (v72(v69, 1, v166) == 1)
    {
      v147 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v174 = v66;
      v76 = *(v70 + 32);
      v75 = v70 + 32;
      v136 = v76;
      v135 = (v148 + 8);
      v77 = v147 + 48;
      v78 = v147 + 8;
      v177 = v147 + 32;
      v147 = MEMORY[0x1E69E7CC0];
      v134 = (v75 - 24);
      v79 = v164;
      v173 = v75;
      v76(v170, v69, v73);
      while (1)
      {
        v84 = v146;
        v85 = v176;
        v142(v146, &v143[v140], v176);
        v86 = type metadata accessor for PKDrawingStruct(0);
        v87 = _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
        *&v149 = v86;
        *&v148 = v87;
        Ref.subscript.getter();
        v141(v84, v85);
        v88 = v160;
        CRRegister.value.getter();
        (*v135)(v171, v88);
        v89 = v161;
        outlined init with take of TaggedStroke(v79, v161);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of TaggedStroke(v89, type metadata accessor for TaggedStroke);
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v91 = v159;
          (*(*(v90 - 8) + 56))(v159, 1, 1, v90);
        }

        else
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
          v93 = *(v92 - 8);
          v94 = v89;
          v91 = v159;
          (*(v93 + 32))(v159, v94, v92);
          (*(v93 + 56))(v91, 0, 1, v92);
        }

        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd);
        v96 = *(v95 - 8);
        if ((*(v96 + 48))(v91, 1, v95) == 1)
        {
          v80 = v170;
          v81 = v166;
          (*v134)(v170, v166);
          outlined destroy of StocksKitCurrencyCache.Provider?(v91, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd);
        }

        else
        {
          v97 = v154;
          v142(v154, &v143[v140], v176);
          Ref.subscript.getter();
          v98 = v97;
          v99 = v176;
          v141(v98, v176);
          (*(v96 + 8))(v91, v95);
          v142(v175, &v143[v140], v99);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd);
          v100 = v155;
          CRRegister.wrappedValue.getter();
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<PKDrawingStruct> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
          v101 = v158;
          for (i = v156; ; (*v177)(v100, v101, i))
          {
            Ref.subscript.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd);
            CRRegister.wrappedValue.getter();
            outlined destroy of TaggedStroke(v180, type metadata accessor for PKStrokeInheritedProperties);
            if ((*v77)(v101, 1, i) == 1)
            {
              break;
            }

            (*v78)(v100, i);
          }

          outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd);
          outlined destroy of TaggedStroke(v169, type metadata accessor for PKStrokeStruct);
          v103 = v176;
          v141(v175, v176);
          v104 = v145;
          v142(v145, &v143[v140], v103);
          Ref.subscript.getter();
          v141(v104, v103);
          (*v78)(v100, i);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo17CGAffineTransformVAeA7CRValue8PaperKityHCg_GMd);
          v105 = v163;
          CRRegister.wrappedValue.getter();
          outlined destroy of TaggedStroke(v105, type metadata accessor for PKStrokeInheritedProperties);
          v80 = v170;
          v81 = v166;
          (*v134)(v170, v166);
          v148 = v182;
          v149 = v181;
          v106 = v183;
          v107 = v184;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v147 + 2) + 1, 1, v147);
          }

          v109 = *(v147 + 2);
          v108 = *(v147 + 3);
          if (v109 >= v108 >> 1)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v147);
          }

          v110 = v147;
          *(v147 + 2) = v109 + 1;
          v111 = &v110[48 * v109];
          v112 = v148;
          *(v111 + 2) = v149;
          *(v111 + 3) = v112;
          *(v111 + 8) = v106;
          *(v111 + 9) = v107;
        }

        v82 = v165;
        dispatch thunk of IteratorProtocol.next()();
        v83 = v137(v82, 1, v81);
        v79 = v164;
        if (v83 == 1)
        {
          break;
        }

        v136(v80, v82, v81);
      }
    }

    (*(v150 + 8))(v167, v168);
    (*(v152 + 8))(v151, v153);
    *(v51 + 296) = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    v185 = 5;
    lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](&lazy protocol witness table cache variable for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A], &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>);
    v74 = v132;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v51 + 288) = v181;
    *(v51 + 320) = 0;
    *(v51 + 328) = 0;
    v185 = 8;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v113 = *&v181;
    v185 = 9;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v114 = *&v181;
    v185 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v115 = *&v181;
    LOBYTE(v181) = 11;
    v116 = [objc_allocWithZone(MEMORY[0x1E6997BD8]) initWithXHeight:KeyedDecodingContainer.decode(_:forKey:)() ascenderHeight:v113 descenderHeight:v114 activeLines:v115];
    v117 = v179;
    *(v179 + 336) = v116;
    v119 = UnknownCanvasElementView.flags.modify(v116, v118);
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0u;
    *(v117 + 48) = 0u;
    *(v117 + 64) = 0u;
    *(v117 + 80) = 0u;
    *(v117 + 96) = 0;
    *(v117 + 104) = v119;
    *(v117 + 112) = v120;
    *(v117 + 120) = -1;
    *(v117 + 128) = 0;
    *(v117 + 136) = 0;
    *(v117 + 144) = 0;
    v185 = 6;

    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v121 = v182;
    v122 = v179;
    *(v179 + 88) = v181;
    *(v122 + 104) = v121;

    v123 = v143;
    [v143 _canvasBounds];
    *(v122 + 16) = v124;
    *(v122 + 24) = v125;
    *(v122 + 32) = v126;
    *(v122 + 40) = v127;
    LOBYTE(v181) = 7;
    v128 = v133;
    v129 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v172 + 8))(v128, v74);

    v130 = v178;
    v48 = v179;
    *(v179 + 136) = v129 & 1;
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  return v48;
}

uint64_t ReflowWord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit10ReflowWordC10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 200);
  v20 = *(v3 + 184);
  v21 = v9;
  v19 = 0;
  lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 232);
    v20 = *(v3 + 216);
    v21 = v10;
    v19 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + 264);
    v20 = *(v3 + 248);
    v21 = v11;
    v19 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 168);
    v20 = *(v3 + 152);
    v21 = v12;
    v19 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + 280);
    v19 = 4;
    type metadata accessor for PKDrawingCoherence(0);
    _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PKDrawingCoherence and conformance PKDrawingCoherence, type metadata accessor for PKDrawingCoherence);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v20 = *(v3 + 288);
    v19 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](&lazy protocol witness table cache variable for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A], &lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 104);
    v20 = *(v3 + 88);
    v21 = v13;
    v19 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    [*(v3 + 336) xHeight];
    *&v20 = v14;
    v19 = 8;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) ascenderHeight];
    *&v20 = v15;
    v19 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) descenderHeight];
    *&v20 = v16;
    v19 = 10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    [*(v3 + 336) activeLines];
    LOBYTE(v20) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

id ReflowWord._layer.getter()
{
  v1 = *(v0 + 344);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in ReflowWord._layer.getter(v0);
    v3 = *(v0 + 344);
    *(v0 + 344) = v2;
    v4 = v2;
    outlined consume of PaperKitPDFDocument??(v3);
  }

  outlined copy of CALayer??(v1);
  return v2;
}

id closure #1 in ReflowWord._layer.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v3 = *(a1 + 304);
  if (v3 && (v4 = [v3 CGImage]) != 0)
  {
    v7 = v4;
    type metadata accessor for CGImageRef(0);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  }

  else
  {
    v5 = 0;
  }

  [v2 setContents_];
  swift_unknownObjectRelease();
  return v2;
}

Swift::Void __swiftcall ReflowWord.generateImage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = *(v0 + 280);
  [v5 _canvasBounds];
  v6 = [v5 imageFromRect_scale_];

  v7 = *(v1 + 304);
  *(v1 + 304) = v6;

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ReflowWord.generateImage(), v10);
}

uint64_t closure #1 in ReflowWord.generateImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ReflowWord.generateImage(), v6, v5);
}

uint64_t closure #1 in ReflowWord.generateImage()()
{

  v1 = ReflowWord._layer.getter();
  if (v1)
  {
    v2 = *(*(v0 + 32) + 304);
    if (v2 && (v3 = [v2 CGImage]) != 0)
    {
      *(v0 + 16) = v3;
      type metadata accessor for CGImageRef(0);
      v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    }

    else
    {
      v4 = 0;
    }

    [v1 setContents_];
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = v1 == 0;
  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall ReflowWord.updateLayer()()
{
  v1 = ReflowWord._layer.getter();
  if (v1)
  {
    if (one-time initialization token for showDebugUI != -1)
    {
      v18 = v1;
      swift_once();
      v1 = v18;
    }

    if (static ReflowTextView.showDebugUI == 1)
    {
      v17 = v1;
      v2 = objc_opt_self();
      v3 = [v2 redColor];
      v4 = [v3 colorWithAlphaComponent_];

      v5 = [v4 CGColor];
      [v17 setBorderColor_];

      type metadata accessor for CALayer();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v17 setSublayers_];

      v7 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
      [v7 setLineWidth_];
      v8 = [v2 redColor];
      v9 = [v8 colorWithAlphaComponent_];

      v10 = [v9 CGColor];
      [v7 setStrokeColor_];

      [v7 setFillColor_];
      v11 = closure #1 in ReflowWord.updateLayer()(v0, 0.0, 0.0, *(v0 + 64), *(v0 + 72));
      [v7 setPath_];

      [v17 addSublayer_];
      if (*(v0 + 136) == 1)
      {
        v12 = [objc_allocWithZone(MEMORY[0x1E6979508]) init];
        v13 = MEMORY[0x1DA6CCED0](46786, 0xA200000000000000);
        [v12 setString_];

        [v12 setFontSize_];
        v14 = v12;
        [v17 frame];
        [v14 setFrame_];

        v15 = [v2 systemBlueColor];
        v16 = [v15 CGColor];

        [v14 setForegroundColor_];
        [v17 addSublayer_];
      }

      v1 = v17;
    }
  }
}

CGMutablePathRef closure #1 in ReflowWord.updateLayer()(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D405C990;
  v12 = a1[23];
  v13 = a1[24];
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v15 = MinX + v12 * CGRectGetWidth(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  MinY = CGRectGetMinY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  *(v11 + 32) = v15;
  *(v11 + 40) = MinY + v13 * Height;
  v18 = a1[25];
  v19 = a1[26];
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  v20 = CGRectGetMinX(v30);
  v31.origin.x = a2;
  v31.origin.y = a3;
  v31.size.width = a4;
  v31.size.height = a5;
  v21 = v20 + v18 * CGRectGetWidth(v31);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  v22 = CGRectGetMinY(v32);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  v23 = CGRectGetHeight(v33);
  *(v11 + 48) = v21;
  *(v11 + 56) = v22 + v19 * v23;
  v25.a = 1.0;
  v25.b = 0.0;
  v25.c = 0.0;
  v25.d = 1.0;
  v25.tx = 0.0;
  v25.ty = 0.0;
  CGMutablePathRef.addLines(between:transform:)(v11, &v25);

  return Mutable;
}

uint64_t ReflowWord.debugDescription.getter()
{
  _StringGuts.grow(_:)(19);
  MEMORY[0x1DA6CD010](0x57776F6C6665523CLL, 0xED0000203A64726FLL);
  if (*(v0 + 328))
  {
    v1 = *(v0 + 320);
    v2 = *(v0 + 328);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 4079420;
  }

  MEMORY[0x1DA6CD010](v1, v2);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

void ReflowWord.__ivar_destroyer()
{

  v1 = *(v0 + 344);

  outlined consume of PaperKitPDFDocument??(v1);
}

id *ReflowWord.deinit()
{

  outlined consume of PaperKitPDFDocument??(v0[43]);
  return v0;
}

uint64_t ReflowWord.__deallocating_deinit()
{
  ReflowWord.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Decodable.init(from:) in conformance ReflowWord@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ReflowWord();
  v5 = swift_allocObject();
  result = ReflowWord.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t outlined init with take of TaggedStroke(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaggedStroke(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaggedStroke(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys;
  if (!lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReflowWord.CodingKeys and conformance ReflowWord.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrincipalLine and conformance PrincipalLine()
{
  result = lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine;
  if (!lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine;
  if (!lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine and conformance PrincipalLine);
  }

  return result;
}

double specialized PrincipalLine.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit13PrincipalLineV10CodingKeys33_FA3BC07C6EE4164F2F803048E50D677ELLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for CGPoint(0);
  v9 = 0;
  _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type CGPoint and conformance CGPoint, type metadata accessor for CGPoint);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v6 = v10;
  v9 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t lazy protocol witness table accessor for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys;
  if (!lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrincipalLine.CodingKeys and conformance PrincipalLine.CodingKeys);
  }

  return result;
}

unint64_t type metadata accessor for CALayer()
{
  result = lazy cache variable for type metadata for CALayer;
  if (!lazy cache variable for type metadata for CALayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CALayer);
  }

  return result;
}

id outlined copy of CALayer??(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t _s8PaperKit15PKDrawingStructVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [WeakRef<CRRegister<TaggedStroke>>] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(a2, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReflowWord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReflowWord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized ReflowWord.CodingKeys.init(rawValue:)(unint64_t result)
{
  if (result >= 0xC)
  {
    return 12;
  }

  return result;
}

uint64_t specialized ReflowWord.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E696C65736162 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E694C706F74 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65646E6563736564 && a2 == 0xED0000656E694C72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694C6E616964656DLL && a2 == 0xEA0000000000656ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E6977617264 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F72745374786574 && a2 == 0xEB0000000073656BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D4088AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D4088AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74686769654878 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7265646E65637361 && a2 == 0xEE00746867696548 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x65646E6563736564 && a2 == 0xEF74686769654872 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x694C657669746361 && a2 == 0xEB0000000073656ELL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
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
  v15 = thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?);
  v16 = &block_descriptor_4;
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
  v16 = &block_descriptor_28;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a4);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

UIMenu closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)(uint64_t a1, UIMenuElementSize a2)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3, 0, v6, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v5);
}

id protocol witness for PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:) in conformance PaperDocumentViewDelegate_Checker(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v5 = swift_allocObject();
  *(v5 + 16) = a4;

  return UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, partial apply for closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:), v5);
}

BOOL protocol witness for PaperDocumentViewDelegate.documentViewShouldAllowEditing(_:) in conformance PaperDocumentViewDelegate_Checker(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(a1 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode) != 0;
}

id thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?)(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIViewController?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id specialized PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = objc_opt_self();
  v8[4] = closure #1 in PaperDocumentViewDelegate.documentView(_:contextMenuConfigurationFor:on:suggestedActions:)partial apply;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
  v8[3] = &block_descriptor_11_0;
  v5 = _Block_copy(v8);

  v6 = [v4 configurationWithIdentifier:0 previewProvider:0 actionProvider:v5];

  _Block_release(v5);
  return v6;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentView and conformance PaperDocumentView()
{
  result = lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView;
  if (!lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView)
  {
    type metadata accessor for PaperDocumentView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView;
  if (!lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView)
  {
    type metadata accessor for PaperDocumentView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView);
  }

  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id PasswordViewController.textField.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit22PasswordViewController____lazy_storage___textField);
  }

  else
  {
    v4 = closure #1 in PasswordViewController.textField.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

Swift::Bool __swiftcall PasswordViewController.textFieldShouldReturn(_:)(UITextField *a1)
{
  v2 = v1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = [(UITextField *)a1 text];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:)(v1, v6, v8);

    swift_unknownObjectRelease();
    if (v9)
    {
      return 1;
    }
  }

  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  isa = paperKitBundle.super.isa;
  v34._object = 0x80000001D4088C90;
  v12._object = 0x80000001D4088C70;
  v34._countAndFlagsBits = 0xD00000000000001CLL;
  v12._countAndFlagsBits = 0xD000000000000010;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, paperKitBundle, v14, v34);
  v35._object = 0x80000001D4088CE0;
  v16._countAndFlagsBits = 0xD000000000000020;
  v16._object = 0x80000001D4088CB0;
  v35._countAndFlagsBits = 0xD00000000000001ELL;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, isa, v18, v35);
  v20 = MEMORY[0x1DA6CCED0](v15._countAndFlagsBits, v15._object);

  v21 = MEMORY[0x1DA6CCED0](v19._countAndFlagsBits, v19._object);

  v22 = [objc_opt_self() alertControllerWithTitle:v20 message:v21 preferredStyle:1];

  v36._object = 0x80000001D4088D00;
  v36._countAndFlagsBits = 0xD000000000000027;
  v23._countAndFlagsBits = 19279;
  v23._object = 0xE200000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, isa, v25, v36);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a1;

  v29 = a1;
  v30 = MEMORY[0x1DA6CCED0](v26._countAndFlagsBits, v26._object);

  aBlock[4] = partial apply for closure #1 in PasswordViewController.textFieldShouldReturn(_:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  aBlock[3] = &block_descriptor_29;
  v31 = _Block_copy(aBlock);

  v32 = [objc_opt_self() actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v22 addAction_];
  [v2 presentViewController:v22 animated:1 completion:0];

  return 0;
}

id closure #1 in PasswordViewController.textField.getter(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD0B0]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setSecureTextEntry_];
  v2 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v2 setAlignment_];
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v24._object = 0x80000001D4088D30;
  v3._countAndFlagsBits = 0x64726F7773736150;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v3._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000023;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, paperKitBundle, v5, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405C990;
  v8 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v9 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  *(inited + 40) = v2;
  v10 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v2;
  v14 = v10;
  v15 = [v11 placeholderTextColor];
  *(inited + 104) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 80) = v15;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v17 = MEMORY[0x1DA6CCED0](v6._countAndFlagsBits, v6._object);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = [v16 initWithString:v17 attributes:isa];

  [v1 setAttributedPlaceholder_];
  v20 = [v11 systemBackgroundColor];
  [v1 setBackgroundColor_];

  v21 = [v11 secondaryLabelColor];
  [v1 setTextColor_];

  [v1 setTextAlignment_];
  [v1 setDelegate_];
  [v1 setReturnKeyType_];

  return v1;
}