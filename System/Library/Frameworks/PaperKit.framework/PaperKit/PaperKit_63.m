void specialized PaperTextAttachmentCanvasView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView) = 0;
  v1 = v0 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s8PaperKit0A0VWOhTm_7(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of (key: UUID, value: SortableCalculateExpression)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV5valuetMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for specialized closure #1 in Canvas.liveStreamMessenger.didset(uint64_t a1)
{
  specialized closure #1 in Canvas.liveStreamMessenger.didset(a1);
}

{
  specialized closure #1 in Canvas.liveStreamMessenger.didset(a1);
}

uint64_t partial apply for closure #1 in closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay8PaperKit17DrawingFindResultCGs5NeverOGMd) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for PKDrawing();
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(a1, v6, v1 + v4, v7, v8);
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MiniLineEndsButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MiniLineEndsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MiniLineEndsButton.allLineEndBindings.getter()
{
  v1 = v0[3];
  v32 = v0[2];
  v33 = v1;
  v34 = *(v0 + 8);
  v2 = v0[1];
  v30 = *v0;
  v31 = v2;
  v29 = MEMORY[0x1E69E7CC0];
  v3 = 3;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v4 = v29;
  type metadata accessor for MainActor();
  v5 = &byte_1F4F53980;
  do
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 16);
    v8 = *(v5 - 1);
    v9 = *v5;
    outlined init with copy of MiniLineEndsButton(&v30, v27);
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = MEMORY[0x1E69E85E0];
    v12 = v33;
    *(v11 + 64) = v32;
    *(v11 + 80) = v12;
    v13 = v34;
    v14 = v31;
    *(v11 + 32) = v30;
    *(v11 + 48) = v14;
    *(v11 + 96) = v13;
    *(v11 + 104) = v6;
    *(v11 + 112) = v7;
    *(v11 + 120) = v8;
    *(v11 + 128) = v9;
    outlined init with copy of MiniLineEndsButton(&v30, v27);
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = MEMORY[0x1E69E85E0];
    v17 = v33;
    *(v16 + 64) = v32;
    *(v16 + 80) = v17;
    v18 = v34;
    v19 = v31;
    *(v16 + 32) = v30;
    *(v16 + 48) = v19;
    *(v16 + 96) = v18;
    *(v16 + 104) = v6;
    *(v16 + 112) = v7;
    *(v16 + 120) = v8;
    *(v16 + 128) = v9;
    Binding.init(get:set:)();
    v20 = v27[0];
    v21 = v27[1];
    v22 = v28;
    v29 = v4;
    v24 = *(v4 + 16);
    v23 = *(v4 + 24);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v4 = v29;
    }

    *(v4 + 16) = v24 + 1;
    v25 = v4 + 24 * v24;
    *(v25 + 32) = v20;
    *(v25 + 40) = v21;
    *(v25 + 48) = v22;
    v5 += 32;
    --v3;
  }

  while (v3);
  return v4;
}

uint64_t closure #1 in closure #1 in MiniLineEndsButton.allLineEndBindings.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
  MEMORY[0x1DA6CA790](&v4, v2);
  result = specialized == infix<A, B>(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t specialized == infix<A, B>(_:_:)()
{
  lazy protocol witness table accessor for type LineEnd and conformance LineEnd();
  if (static CRExtensible.== infix(_:_:)())
  {
    v0 = static CRExtensible.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

_BYTE *closure #2 in closure #1 in MiniLineEndsButton.allLineEndBindings.getter(_BYTE *result, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (*result == 1)
  {
    v26 = v8;
    v27 = v9;
    v14 = a4[2];
    v24 = a4[1];
    v25[0] = v14;
    *(v25 + 10) = *(a4 + 42);
    v15 = a4[2];
    v17[2] = a4[1];
    v18[0] = v15;
    *(v18 + 10) = *(a4 + 42);
    outlined init with copy of Date?(&v24, &v16, &_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
    MEMORY[0x1DA6CA790](&v19);
    v19 = a5;
    v20 = a6 & 1;
    v21 = a7;
    v22 = a8 & 1;
    v23 = 1;
    v16 = v24;
    v17[0] = v25[0];
    *(v17 + 10) = *(v25 + 10);
    Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #1 in MiniLineEndsButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26[-v3];
  v5 = Image.init(systemName:)();
  v6 = [objc_opt_self() labelColor];
  v7 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Font.Design();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI4FontV6DesignOSgMd);
  v11 = swift_getKeyPath();
  v12 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v27 = 0;
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.interaction.getter();
  *&v28 = v5;
  *(&v28 + 1) = KeyPath;
  *&v29 = v7;
  *(&v29 + 1) = v11;
  *&v30 = v10;
  BYTE8(v30) = v12;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  *&v32 = v18;
  *(&v32 + 1) = v20;
  v22 = v27;
  v33 = v27;
  *v21 = 0;
  *(a1 + 80) = v22;
  v23 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v23;
  *(a1 + 64) = v32;
  v24 = v29;
  *a1 = v28;
  *(a1 + 16) = v24;
  v34[0] = v5;
  v34[1] = KeyPath;
  v34[2] = v7;
  v34[3] = v11;
  v34[4] = v10;
  v35 = v12;
  v36 = v14;
  v37 = v16;
  v38 = v18;
  v39 = v20;
  v40 = v22;
  outlined init with copy of Date?(&v28, v26, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd);
}

uint64_t closure #2 in MiniLineEndsButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for PresentationAdaptation();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA6VStackVyAA05TupleC0VyAA4TextV_8PaperKit14SegmentedGroupVyAKyAN20ToggleLineEndsButtonVSg_A2StGGtGG_AA8SolariumVAcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAwA14_PaddingLayoutVG_AA5ColorVQo_A4_Qo_Md);
  v5 = *(v4 - 8);
  v21 = v4;
  v22 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = static HorizontalAlignment.leading.getter();
  v28 = 0;
  closure #1 in closure #2 in MiniLineEndsButton.body.getter(a1, v31);
  memcpy(v29, v31, sizeof(v29));
  memcpy(v30, v31, sizeof(v30));
  outlined init with copy of Date?(v29, v26, &_s7SwiftUI9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyACyAF20ToggleLineEndsButtonVSg_A2KtGGtGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s7SwiftUI9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyACyAF20ToggleLineEndsButtonVSg_A2KtGGtGMd);
  memcpy(&v27[7], v29, 0x160uLL);
  v26[0] = v8;
  v26[1] = 0x4020000000000000;
  LOBYTE(v26[2]) = v28;
  memcpy(&v26[2] + 1, v27, 0x167uLL);
  Solarium.init()();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAA6VStackVyAA05TupleC0VyAA4TextV_8PaperKit14SegmentedGroupVyAKyAN20ToggleLineEndsButtonVSg_A2StGGtGGAA14_PaddingLayoutVG_AA5ColorVQo_Md);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAGyAJ20ToggleLineEndsButtonVSg_A2OtGGtGGAA14_PaddingLayoutVGMd);
  v12 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
  v13 = lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v31[0] = v11;
  v31[1] = MEMORY[0x1E69815C0];
  v31[2] = v13;
  v31[3] = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x1E6981CD8];
  View.staticIf<A, B, C>(_:then:else:)();
  memcpy(v31, v26, 0x178uLL);
  outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
  v16 = v20;
  static PresentationAdaptation.popover.getter();
  v26[0] = v9;
  v26[1] = v15;
  v26[2] = v10;
  v26[3] = v11;
  v26[4] = v12;
  v26[5] = MEMORY[0x1E6981CD0];
  v26[6] = OpaqueTypeConformance2;
  v26[7] = v13;
  swift_getOpaqueTypeConformance2();
  v17 = v21;
  View.presentationCompactAdaptation(_:)();
  (*(v23 + 8))(v16, v25);
  return (*(v22 + 8))(v7, v17);
}

uint64_t closure #1 in closure #2 in MiniLineEndsButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v25._object = 0x80000001D4092B80;
  v4._countAndFlagsBits = 0x646E4520656E694CLL;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v4._object = 0xE900000000000073;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, paperKitBundle, v6, v25);
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  static Color.secondary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v20 = v15;
  v17 = v16;

  outlined consume of Text.Storage(v7, v9, v11 & 1);

  v18 = MiniLineEndsButton.allLineEndBindings.getter();
  __src[36] = 0x4000000000000000;
  __dst[0] = 0;
  State.init(wrappedValue:)();
  __src[38] = v24[0];
  __src[39] = v24[1];
  closure #1 in closure #1 in closure #2 in MiniLineEndsButton.body.getter(a1, __src);
  __src[37] = v18;
  v21[320] = v20 & 1;
  memcpy(__dst, __src, sizeof(__dst));
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v17;
  memcpy((a2 + 32), __src, 0x140uLL);
  memcpy(v24, __src, 0x140uLL);
  outlined copy of Text.Storage(v12, v14, v20 & 1);

  outlined init with copy of Date?(__dst, v21, &_s8PaperKit14SegmentedGroupVy7SwiftUI9TupleViewVyAA20ToggleLineEndsButtonVSg_A2ItGGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s8PaperKit14SegmentedGroupVy7SwiftUI9TupleViewVyAA20ToggleLineEndsButtonVSg_A2ItGGMd);
  outlined consume of Text.Storage(v12, v14, v20 & 1);
}

uint64_t closure #1 in closure #1 in closure #2 in MiniLineEndsButton.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    v40 = Image.init(systemName:)();
    v4 = *(a1 + 32);
    v53 = *(a1 + 16);
    *v54 = v4;
    *&v54[10] = *(a1 + 42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
    Binding.projectedValue.getter();
    v38 = v62;
    v39 = v61;
    v36 = v65;
    v37 = v63;
    LOBYTE(v53) = 0;
    LOBYTE(v51[0]) = 0;
    LOBYTE(v48[0]) = v64;
    LOBYTE(v45[0]) = v66;
    v35 = v64;
    if (BYTE1(v66))
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    v34 = v5 | v66;
    v33 = 5;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v33 = 0;
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
  }

  if ((v3 & 2) != 0)
  {
    v32 = Image.init(systemName:)();
    v19 = *(a1 + 32);
    v53 = *(a1 + 16);
    *v54 = v19;
    *&v54[10] = *(a1 + 42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
    Binding.projectedValue.getter();
    v30 = v61;
    v28 = v62;
    v7 = v63;
    v31 = v65;
    LOBYTE(v53) = 0;
    LOBYTE(v51[0]) = 0;
    LOBYTE(v48[0]) = v64;
    LOBYTE(v45[0]) = v66;
    v8 = v64;
    if (BYTE1(v66))
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v29 = v20 | v66;
    v6 = 1;
    if ((v3 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v27 = 0;
    v18 = 0;
    v17 = 0;
    v11 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    v16 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v31 = 0;
  v32 = 0;
  v6 = 0;
  v30 = 0;
  v28 = 0;
  v7 = 0;
  v29 = 0;
  v8 = 0;
  if ((v3 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v27 = Image.init(systemName:)();
  v9 = *(a1 + 32);
  v53 = *(a1 + 16);
  *v54 = v9;
  *&v54[10] = *(a1 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
  Binding.projectedValue.getter();
  v11 = v61;
  v10 = v62;
  v12 = v63;
  v13 = v65;
  LOBYTE(v53) = 0;
  LOBYTE(v51[0]) = 0;
  LOBYTE(v48[0]) = v64;
  LOBYTE(v45[0]) = v66;
  v14 = v64;
  if (BYTE1(v66))
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 | v66;
  v17 = 1;
  v18 = 10;
LABEL_18:
  *(&v42[0] + 1) = v33;
  memset(&v42[1], 0, 32);
  *&v43 = v39;
  *(&v43 + 1) = v38;
  *v44 = v37;
  *&v44[8] = v35;
  *&v44[16] = v36;
  *&v44[24] = v34;
  v45[1] = 0uLL;
  v45[2] = v6;
  v25 = v8;
  *&v46 = v30;
  *(&v46 + 1) = v28;
  *v47 = v7;
  *&v47[8] = v8;
  *&v47[16] = v31;
  *&v47[24] = v29;
  *(&v48[0] + 1) = v18;
  v48[1] = v17;
  v48[2] = v17;
  *&v49 = v11;
  *(&v49 + 1) = v10;
  *v50 = v12;
  *&v50[8] = v14;
  *&v50[16] = v13;
  *&v50[24] = v16;
  *(&__src[16] + 10) = *&v50[10];
  *&v42[0] = v40;
  v45[0] = v32;
  *&v48[0] = v27;
  __src[0] = v42[0];
  memset(&__src[1], 0, 32);
  *(&__src[4] + 10) = *&v44[10];
  __src[3] = v43;
  __src[4] = *v44;
  __src[6] = v32;
  __src[7] = 0uLL;
  *(&__src[10] + 10) = *&v47[10];
  __src[9] = v46;
  __src[10] = *v47;
  __src[8] = v6;
  __src[12] = v48[0];
  __src[13] = v17;
  __src[15] = v49;
  __src[16] = *v50;
  __src[14] = v17;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  memcpy(a2, __src, 0x11AuLL);
  v51[0] = v27;
  v51[1] = v18;
  v51[2] = v17;
  v51[3] = 0;
  v51[4] = v17;
  v51[5] = 0;
  v51[6] = v11;
  v51[7] = v21;
  v51[8] = v22;
  v51[9] = v23;
  v51[10] = v13;
  v52 = v16;
  outlined init with copy of Date?(v42, &v61, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
  outlined init with copy of Date?(v45, &v61, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
  outlined init with copy of Date?(v48, &v61, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v51, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
  v53 = v32;
  *v54 = 0uLL;
  *&v54[16] = v6;
  *&v54[24] = 0;
  v55 = v30;
  v56 = v28;
  v57 = v7;
  v58 = v25;
  v59 = v31;
  v60 = v29;
  outlined destroy of StocksKitCurrencyCache.Provider?(&v53, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
  v61 = v40;
  v62 = v33;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = v39;
  v68 = v38;
  v69 = v37;
  v70 = v35;
  v71 = v36;
  v72 = v34;
  return outlined destroy of StocksKitCurrencyCache.Provider?(&v61, &_s8PaperKit20ToggleLineEndsButtonVSgMd);
}

uint64_t closure #2 in closure #2 in MiniLineEndsButton.body.getter(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  memcpy(__srca, __src, 0x178uLL);
  v13 = 0;
  LOBYTE(__srca[47]) = v2;
  __srca[48] = v4;
  __srca[49] = v6;
  __srca[50] = v8;
  __srca[51] = v10;
  LOBYTE(__srca[52]) = 0;
  outlined init with copy of Date?(__dst, v15, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
  static Color.clear.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAGyAJ20ToggleLineEndsButtonVSg_A2OtGGtGGAA14_PaddingLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.presentationBackground<A>(_:)();

  memcpy(v15, __srca, 0x1A1uLL);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAGyAJ20ToggleLineEndsButtonVSg_A2OtGGtGGAA14_PaddingLayoutVGMd);
}

uint64_t closure #3 in closure #2 in MiniLineEndsButton.body.getter@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14[0] = 0;
  memcpy(a2, __src, 0x178uLL);
  *(a2 + 376) = v4;
  *(a2 + 384) = v6;
  *(a2 + 392) = v8;
  *(a2 + 400) = v10;
  *(a2 + 408) = v12;
  *(a2 + 416) = 0;
  return outlined init with copy of Date?(__dst, v14, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
}

double protocol witness for View.body.getter in conformance MiniLineEndsButton@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v19 = v1[2];
  v20 = v3;
  v21 = *(v1 + 8);
  v4 = v1[1];
  v17 = *v1;
  v18 = v4;
  v16 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.projectedValue.getter();
  v5 = v22;
  v6 = v23;
  v7 = swift_allocObject();
  v8 = v20;
  *(v7 + 48) = v19;
  *(v7 + 64) = v8;
  *(v7 + 80) = v21;
  v9 = v18;
  *(v7 + 16) = v17;
  *(v7 + 32) = v9;
  outlined init with copy of MiniLineEndsButton(&v17, &v22);
  _s8PaperKit17MiniPopoverButtonV02isD7Visible17useHeightTracking5label7popoverACyxq_G7SwiftUI7BindingVySbG_Sbxycq_yctcfCAI15ModifiedContentVyANyANyANyANyAI5ImageVAI30_EnvironmentKeyWritingModifierVyAI5ColorVSgGGARyAI4FontVSgGGAI023AccessibilityAttachmentV0VGAI14_PaddingLayoutVGAI01_q9ShapeKindV0VyAI6CircleVGG_AI4ViewPAIE29presentationCompactAdaptationyQrAI22PresentationAdaptationVFQOyA14_AIE8staticIf_4thenQrqd___qd_0_xXEtAI18ViewInputPredicateRd__AIA13_Rd_0_r0_lFQOyA14_AIE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AI8SolariumVA14_AIE22presentationBackgroundyQrqd__AI10ShapeStyleRd__lFQOyANyA27_A5_G_ATQo_Qo__Qo_Tt3g5(&v22, v5, *(&v5 + 1), v6, 1, closure #1 in MiniLineEndsButton.body.getter, 0, partial apply for closure #2 in MiniLineEndsButton.body.getter, v7, v16, *(&v16 + 1));
  v10 = static VerticalAlignment.firstTextBaseline.getter();
  v11 = v27;
  *(a1 + 64) = v26;
  *(a1 + 80) = v11;
  v12 = v29;
  *(a1 + 96) = v28;
  *(a1 + 112) = v12;
  v13 = v23;
  *a1 = v22;
  *(a1 + 16) = v13;
  result = *&v24;
  v15 = v25;
  *(a1 + 32) = v24;
  *(a1 + 48) = v15;
  *(a1 + 128) = v10;
  *(a1 + 136) = closure #4 in MiniColorButton.body.getter;
  *(a1 + 144) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAGyAJ20ToggleLineEndsButtonVSg_A2OtGGtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_8PaperKit14SegmentedGroupVyAEyAH20ToggleLineEndsButtonVSg_A2MtGGtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(Text, SegmentedGroup<TupleView<(ToggleLineEndsButton?, ToggleLineEndsButton?, ToggleLineEndsButton?)>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t closure #1 in ToggleLineEndsButton.body.getter(_OWORD *a1)
{
  v2 = a1[4];
  v10 = a1[3];
  v11[0] = v2;
  *(v11 + 10) = *(a1 + 74);
  v3 = a1[4];
  v6[2] = a1[3];
  v7[0] = v3;
  *(v7 + 10) = *(a1 + 74);
  outlined init with copy of Date?(&v10, &v5, &_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
  MEMORY[0x1DA6CA790](v8);
  *v8 = a1[1];
  *&v8[9] = *(a1 + 25);
  v9 = 0;
  v5 = v10;
  v6[0] = v11[0];
  *(v6 + 10) = *(v11 + 10);
  Binding.wrappedValue.setter();
}

double closure #2 in ToggleLineEndsButton.body.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v18 = static Alignment.center.getter();
  v19 = v5;
  LOBYTE(v17) = 0;
  LOBYTE(v16) = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v20 = *(a1 + 3);
  *v21 = *(a1 + 4);
  *&v21[10] = *(a1 + 74);

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy9Coherence12CRExtensibleOyAD7LineEndOG_ALtGGMd);
  MEMORY[0x1DA6CA790](&v22, v6);
  if (specialized == infix<A, B>(_:_:)())
  {
    v7 = static Color.accentColor.getter();
  }

  else
  {
    v8 = [objc_opt_self() secondarySystemBackgroundColor];
    v7 = Color.init(uiColor:)();
  }

  v9 = v7;
  v10 = static Edge.Set.all.getter();
  v11 = v25;
  *(a2 + 56) = v26;
  v12 = v28;
  *(a2 + 72) = v27;
  *(a2 + 88) = v12;
  *(a2 + 104) = v29;
  result = *&v23;
  v14 = v24;
  *(a2 + 8) = v23;
  *(a2 + 24) = v14;
  v15 = a1[1];
  *a2 = v4;
  *(a2 + 40) = v11;
  *(a2 + 120) = v9;
  *(a2 + 128) = v10;
  *(a2 + 136) = 0x4014000000000000;
  *(a2 + 144) = v15;
  *(a2 + 152) = 256;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance ToggleLineEndsButton()
{
  v1 = type metadata accessor for PlainButtonStyle();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  v9 = v0[3];
  v18[2] = v0[2];
  v18[3] = v9;
  v19[0] = v0[4];
  *(v19 + 10) = *(v0 + 74);
  v10 = v0[1];
  v18[0] = *v0;
  v18[1] = v10;
  v11 = swift_allocObject();
  v12 = v0[3];
  v11[3] = v0[2];
  v11[4] = v12;
  v11[5] = v0[4];
  *(v11 + 90) = *(v0 + 74);
  v13 = v0[1];
  v11[1] = *v0;
  v11[2] = v13;
  v16 = v18;
  outlined init with copy of ToggleLineEndsButton(v18, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _FlexFrameLayout>, _BackgroundStyleModifier<Color>>, _ClipEffect<RoundedCorner>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA5ColorVGGAA11_ClipEffectVy8PaperKit13RoundedCornerVGGGMd);
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle();
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 129, 7);
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToggleLineEndsButton(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 90))
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

uint64_t storeEnumTagSinglePayload for ToggleLineEndsButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA012PresentationY0VFQOyA3_AAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0V14InputPredicateRd__AAA2_Rd_0_AAA2_Rd_1_r1_lFQOyAA6VStackVyAA05TupleV0VyAA4TextV_AD14SegmentedGroupVyA14_yAD014ToggleLineEndsI0VSg_A21_A21_tGGtGG_AA8SolariumVA3_AAE0W10BackgroundyQrqd__AA0S5StyleRd__lFQOyACyA25_AVG_ALQo_A30_Qo__Qo_GAA010_AlignmentmN0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0> and conformance MiniPopoverButton<A, B>, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD012PresentationY0VFQOyA3_ADE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAD0V14InputPredicateRd__ADA2_Rd_0_ADA2_Rd_1_r1_lFQOyAD6VStackVyAD05TupleV0VyAD4TextV_AA14SegmentedGroupVyA14_yAA014ToggleLineEndsE0VSg_A21_A21_tGGtGG_AD8SolariumVA3_ADE0W10BackgroundyQrqd__AD0S5StyleRd__lFQOyAFyA25_AVG_ALQo_A30_Qo__Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

_BYTE *MarkupEditViewController.init(supportedFeatureSet:additionalActions:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerPickerVC] = 0;
  v9 = OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stackView;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_minimumItemHeight] = 0x4046000000000000;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_minimumPreferredContentSizeWidth] = 0x406F400000000000;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_verticalMargins] = 0x4028000000000000;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_autoFillFormListItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addStickerListItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addTextBoxListItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addLoupeListItemVisible] = 1;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addSignaturesItemVisible] = 1;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible] = 0;
  v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_graphItemVisible] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___listItemViews] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addTextBoxListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___autoFillFormListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addSignatureListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addStickerListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___opacityListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___descriptionListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addShapeListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addLoupeListItemView] = 0;
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___additionalListItemView] = 0;
  v10 = &v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_supportedFeatureSet];
  *v10 = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v8;
  type metadata accessor for ShapeListViewController();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v12 = [v11 &selRef_name];
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController] = v12;
  v13 = &v12[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_supportedFeatureSet];
  *v13 = v3;
  *(v13 + 1) = v4;
  *(v13 + 2) = v5;
  *(v13 + 3) = v6;
  *(v13 + 4) = v7;
  *(v13 + 5) = v8;

  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerDelegate] = [objc_allocWithZone(type metadata accessor for MarkupEditViewController.StickerDelegate()) init];
  *&v2[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_additionalActions] = a2;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for MarkupEditViewController();
  v14 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v14[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible] = *(v3 + 16) != 0;
  v14[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addStickerListItemVisible] = specialized Set.contains(_:)(1, v4) & 1;
  v14[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addTextBoxListItemVisible] = specialized Set.contains(_:)(7, v4) & 1;
  v14[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addLoupeListItemVisible] = specialized Set.contains(_:)(2, v4) & 1;
  LOBYTE(v7) = specialized Set.contains(_:)(1, v5);
  v15 = v14;

  v15[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addSignaturesItemVisible] = v7 & 1;
  swift_unknownObjectWeakAssign();
  v16 = OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController;
  v17 = *&v15[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController];
  v18 = *(v17 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController);
  *(v17 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_temporaryMarkupEditViewController) = v15;

  v19 = *&v15[v16];
  v20 = &v15[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate];
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v21 = *(v20 + 1);
  v22 = v19;

  *&v22[OBJC_IVAR____TtC8PaperKit23ShapeListViewController_editDelegate + 8] = v21;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v15;
}

uint64_t MarkupEditViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController);
  swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_editDelegate + 8) = v6;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MarkupEditViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return MarkupEditViewController.delegate.modify;
}

void MarkupEditViewController.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    v5 = v4 + v3[6];
    swift_endAccess();
    swift_unknownObjectRelease();
    v6 = *(v4 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController);
    swift_unknownObjectWeakLoadStrong();
    *(v6 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_editDelegate + 8) = *(v5 + 8);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MarkupEditViewController.listItemViews.getter()
{
  if (*(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___listItemViews))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___listItemViews);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___listItemViews) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

id MarkupEditViewController.addTextBoxListItemView.getter(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = *&v3[*a1];
  if (v5)
  {
    v6 = *&v3[*a1];
  }

  else
  {
    v15[3] = type metadata accessor for MarkupEditViewController();
    v15[0] = v3;
    v9 = *a2;
    v10 = v3;
    v11 = a3(v15, v9);
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_sypSgMd);
    v12 = *&v3[v4];
    *&v3[v4] = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

char *MarkupEditViewController.additionalListItemView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___additionalListItemView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___additionalListItemView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___additionalListItemView);
  }

  else
  {
    v4 = closure #1 in MarkupEditViewController.additionalListItemView.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t MarkupEditViewController.configuredMenuElements.getter()
{
  v1 = v0;
  v2 = MarkupEditViewController.configuredListItemViews()();
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v4 = v2;
  v27 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v26 = v4 & 0xC000000000000001;
    v2 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIAction);
    v6 = v4;
    v7 = 0;
    v25 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = v3;
    v9 = v6;
    while (1)
    {
      if (v26)
      {
        v16 = MEMORY[0x1DA6CE0C0](v7);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          v19 = v2;
          v3 = __CocoaSet.count.getter();
          v2 = v19;
          if (!v3)
          {
            goto LABEL_18;
          }

          goto LABEL_3;
        }

        if (v7 >= *(v25 + 16))
        {
          goto LABEL_16;
        }

        v16 = *(v6 + 8 * v7 + 32);
      }

      v17 = v16;
      v18 = [*&v16[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_titleLabel] text];
      if (v18)
      {
        v10 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      ++v7;
      v11 = [*&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_imageView] image];
      v12 = *&v17[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_actionIdentifier];
      v13 = swift_allocObject();
      *(v13 + 16) = v17;
      *(v13 + 24) = v1;
      v14 = v12;
      v15 = v1;
      v20 = 0;
      v21 = 0;
      v23 = partial apply for closure #1 in closure #1 in MarkupEditViewController.configuredMenuElements.getter;
      v24 = v13;
      v22 = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = specialized ContiguousArray._endMutation()();
      v6 = v9;
      if (v8 == v7)
      {

        return v27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t MarkupEditViewController.configuredListItemViews()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69E7CC0];
  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible) == 1)
  {
    MarkupEditViewController.descriptionListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addStickerListItemVisible) == 1)
  {
    v3 = MGCopyAnswer();
    v4 = [v3 BOOLValue];

    if ((v4 & 1) == 0)
    {
      MarkupEditViewController.addStickerListItemView.getter();
      MEMORY[0x1DA6CD190]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v7;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addTextBoxListItemVisible) == 1)
  {
    MarkupEditViewController.addTextBoxListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_autoFillFormListItemVisible) == 1)
  {
    MarkupEditViewController.autoFillFormListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addSignaturesItemVisible) == 1)
  {
    MarkupEditViewController.addSignatureListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible) == 1)
  {
    MarkupEditViewController.addShapeListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible) == 1)
  {
    MarkupEditViewController.opacityListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addLoupeListItemVisible) == 1)
  {
    MarkupEditViewController.addLoupeListItemView.getter();
    MEMORY[0x1DA6CD190]();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_additionalActions);
  if (v5 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      return v2;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v2;
  }

  MarkupEditViewController.additionalListItemView.getter();
  MEMORY[0x1DA6CD190]();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v7;
}

void MarkupEditViewController.addNewSignatureItem(_:)(void *a1)
{
  v59 = type metadata accessor for Signature(0);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v51 - v5;
  v6 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v56);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for PaperMarkup();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v54 = v4;
    v55 = v3;
    v52 = v22;
    v53 = a1;
    v23 = SignatureItem.size.getter();
    v25 = 400.0 / v23;
    if (400.0 / v23 > 1.0)
    {
      v25 = 1.0;
    }

    v26 = v23 * v25;
    v27 = v24 * v25;
    v28 = 72.0 / v27;
    if (72.0 / v27 > 1.0)
    {
      v28 = 1.0;
    }

    v29 = v26 * v28;
    v30 = v27 * v28;
    v64[0] = v26 * v28;
    v64[1] = v27 * v28;
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v62 = 0u;
    v63 = 0u;
    CRRegister.init(wrappedValue:)();
    v51 = *(v19 + 20);
    v62 = 0u;
    v63 = 0u;
    CRRegister.init(wrappedValue:)();
    *&v62 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    CRRegister.init(wrappedValue:)();
    LODWORD(v62) = 1;
    type metadata accessor for CGImagePropertyOrientation(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
    CRRegister.init(wrappedValue:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    outlined init with copy of Date?(v18, v15, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v32 = type metadata accessor for Color(0);
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    outlined init with copy of Date?(v12, v9, &_s8PaperKit5ColorVSgMd);
    lazy protocol witness table accessor for type Color? and conformance <A> A?();
    CRRegister.init(wrappedValue:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s8PaperKit5ColorVSgMd);
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    CRRegister.init(wrappedValue:)();
    *&v62 = 0;
    lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
    CRRegister.init(wrappedValue:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
    CROrderedSet.init()();
    UnknownProperties.init()();
    v62 = 0uLL;
    *&v63 = v29;
    *(&v63 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.setter();
    v62 = 0uLL;
    *&v63 = v29;
    *(&v63 + 1) = v30;
    CRRegister.wrappedValue.setter();
    static CRKeyPath.unique.getter();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
    v33 = v52;
    Capsule.init(_:id:)();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v34 = v53;
    v35 = SignatureItem.size.getter();
    v37 = 400.0 / v35;
    if (400.0 / v35 > 1.0)
    {
      v37 = 1.0;
    }

    v38 = v35 * v37;
    v39 = v36 * v37;
    v40 = 72.0 / v39;
    if (72.0 / v39 > 1.0)
    {
      v40 = 1.0;
    }

    *&v62 = v38 * v40;
    *(&v62 + 1) = v39 * v40;
    Signature.init()();
    static CRKeyPath.unique.getter();
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
    v41 = v60;
    v42 = Capsule.init(_:id:)();
    MEMORY[0x1EEE9AC00](v42);
    *(&v51 - 4) = v34;
    *(&v51 - 3) = 0;
    *(&v51 - 2) = 0;
    *(&v51 - 1) = &v62;
    v43 = v55;
    v44 = Capsule.callAsFunction<A>(_:)();
    MEMORY[0x1EEE9AC00](v44);
    *(&v51 - 2) = v64;
    v45 = Capsule.callAsFunction<A>(_:)();
    MEMORY[0x1EEE9AC00](v45);
    *(&v51 - 2) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
    Capsule.callAsFunction<A>(_:)();
    v46 = v61;
    v47 = v61 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v48 = *(v47 + 8);
      ObjectType = swift_getObjectType();
      (*(v48 + 32))(v46, v33, ObjectType, v48);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v50 = v54;
    _s8PaperKit0A6MarkupVWOhTm_2(v33, type metadata accessor for PaperMarkup);
    (*(v50 + 8))(v41, v43);
  }
}

uint64_t MarkupEditViewController.supportedFeatureSet.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_supportedFeatureSet);
  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_supportedFeatureSet);
  v4 = *(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_supportedFeatureSet + 8);
  v5 = *(v1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_supportedFeatureSet + 16);
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
}

uint64_t key path setter for MarkupEditViewController.delegate : MarkupEditViewController(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  v5 = *(v3 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_shapeButtonListViewController);
  swift_unknownObjectWeakLoadStrong();
  *(v5 + OBJC_IVAR____TtC8PaperKit23ShapeListViewController_editDelegate + 8) = *(v4 + 8);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall MarkupEditViewController.viewDidLoad()()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for MarkupEditViewController();
  objc_msgSendSuper2(&v34, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stackView];
  [v1 setAxis_];
  [v1 setDistribution_];
  [v1 setAlignment_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 addSubview_];

  v4 = [v1 bottomAnchor];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 safeAreaLayoutGuide];

  v8 = [v7 bottomAnchor];
  v9 = [v4 constraintEqualToAnchor:v8 constant:-12.0];

  LODWORD(v10) = 1144750080;
  [v9 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D405B630;
  v12 = [v1 topAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 topAnchor];
  v17 = [v12 constraintGreaterThanOrEqualToAnchor:v16 constant:12.0];

  *(v11 + 32) = v17;
  *(v11 + 40) = v9;
  v33 = v9;
  v18 = [v1 leadingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v18 constraintEqualToAnchor_];

  *(v11 + 48) = v23;
  v24 = [v1 trailingAnchor];
  v25 = [v0 view];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 safeAreaLayoutGuide];

    v29 = [v28 trailingAnchor];
    v30 = [v24 constraintEqualToAnchor_];

    *(v11 + 56) = v30;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints_];

    MarkupEditViewController.updateUI()();
    v32 = [objc_opt_self() defaultCenter];
    [v32 addObserver:v0 selector:sel_updatePreferredContentSize name:*MEMORY[0x1E69DDC48] object:0];

    return;
  }

LABEL_11:
  __break(1u);
}

char *closure #1 in MarkupEditViewController.additionalListItemView.getter(uint64_t a1)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v12._object = 0x80000001D4093050;
  v2._countAndFlagsBits = 0x726568744FLL;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v2._object = 0xE500000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000045;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, paperKitBundle, v4, v12);
  v6 = MEMORY[0x1DA6CCED0](0x73697370696C6C65, 0xE800000000000000);
  v7 = [objc_opt_self() systemImageNamed_];

  if (one-time initialization token for paperKitAdditionalAction != -1)
  {
    swift_once();
  }

  v8 = static UIActionIdentifier.paperKitAdditionalAction;
  v9 = objc_allocWithZone(type metadata accessor for TextToolListItemView());
  v10 = TextToolListItemView.init(title:image:actionIdentifier:)(v5._countAndFlagsBits, v5._object, v7, v8);
  [v10 setShowsMenuAsPrimaryAction_];
  [v10 setContextMenuInteractionEnabled_];

  *&v10[OBJC_IVAR____TtC8PaperKit20TextToolListItemView_additionalActions] = *(a1 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_additionalActions);

  return v10;
}

void closure #1 in closure #1 in MarkupEditViewController.configuredMenuElements.getter(void *a1, id a2, void *a3)
{
  v5 = [a2 actionsForTarget:a3 forControlEvent:64];
  if (v5)
  {
    v6 = v5;
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = 0;
      v10 = v7 + 40;
      while (v9 < *(v7 + 16))
      {
        ++v9;
        swift_bridgeObjectRetain_n();
        [a3 performSelector:Selector.init(_:)() withObject:objc_msgSend(a1 withObject:{sel_sender), 0}];
        swift_unknownObjectRelease();

        v10 += 16;
        if (v8 == v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

void closure #1 in static MarkupEditViewController.presentSignaturePicker(replacing:presentingViewController:from:completion:)(void *a1, id a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = [a2 traitCollection];
  v20 = [v19 userInterfaceStyle];

  [a1 setOverrideUserInterfaceStyle_];
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  v22 = one-time initialization token for SignatureLogger;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, SignatureLogger);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138477827;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_1D38C4000, v25, v26, "show signature panel on viewController: %{private}@", v27, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v28, -1, -1);
    MEMORY[0x1DA6D0660](v27, -1, -1);
  }

  v32 = specialized SignatureManager.signatureViewController(_:_:_:_:_:)(v24, a3, a4, _sSo30UIGraphicsImageRendererContextCIgg_ABIegg_TRTA_0, v21, a7, a8, a9, a10);
  v30 = [v24 traitCollection];
  v31 = [v30 userInterfaceStyle];

  [v32 setOverrideUserInterfaceStyle_];
  [v24 presentViewController:v32 animated:1 completion:0];
}

void closure #1 in MarkupEditViewController.didTapAddSignatureListItemView(_:forEvent:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    MarkupEditViewController.addNewSignatureItem(_:)(a1);
  }
}

uint64_t closure #2 in MarkupEditViewController.addNewSignatureItem(_:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  v3 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(v9 + 16);
  v13(&v17 - v11, a2, v8, v10);
  type metadata accessor for Signature(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
  Capsule.Ref.import<A>(_:)();
  v14 = *(v9 + 8);
  v14(v12, v8);
  swift_getKeyPath();
  v23 = 6;
  v24 = 0;
  (v13)(v12, v18, v8);
  Capsule.rootID.getter();
  v14(v12, v8);
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v15 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  (*(v21 + 8))(v7, v22);
  v15(&v23, 0);
}

id closure #1 in static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Class isa, uint64_t a6, char a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, void *a17)
{
  [a1 setModalPresentationStyle_];
  v33 = [a1 popoverPresentationController];
  [v33 setDelegate_];

  v34 = [a1 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    swift_beginAccess();
    v36 = *(a3 + 16);
    swift_unknownObjectRetain();
    [v35 setSourceItem_];
    swift_unknownObjectRelease();
  }

  v37 = [a1 popoverPresentationController];
  [v37 setSourceView_];

  v38 = [a1 popoverPresentationController];
  [v38 setSourceRect_];

  swift_beginAccess();
  if (!*(a3 + 16))
  {
    if (_UISolariumEnabled())
    {
      v39 = [a1 popoverPresentationController];
      if (v39)
      {
        v40 = v39;
        [v39 _setShouldHideArrow_];
      }
    }
  }

  v41 = [a1 popoverPresentationController];
  if (v41)
  {
    v42 = v41;
    if (isa)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v42 setPassthroughViews_];
  }

  v43 = [a1 popoverPresentationController];
  [v43 setPopoverLayoutMargins_];

  swift_beginAccess();
  if (*(a3 + 16) && (a7 & 1) == 0)
  {
    v44 = [a1 popoverPresentationController];
    [v44 setPermittedArrowDirections_];
  }

  result = [a1 isBeingPresented];
  if ((result & 1) == 0)
  {
    result = [a1 isBeingDismissed];
    if ((result & 1) == 0)
    {
      v46 = [a8 traitCollection];
      v47 = [v46 userInterfaceStyle];

      [a1 setOverrideUserInterfaceStyle_];
      return [a17 presentViewController:a1 animated:1 completion:0];
    }
  }

  return result;
}

uint64_t @objc MarkupEditViewController.didTapAutoFillFormListItemView(_:forEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sypSgMd);
}

void closure #1 in static MarkupEditViewController.presentStickerPicker(_:replacing:from:pickerDelegate:completion:)(void (*a1)(void), double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD758]) init];
  a1();
  [v19 setDelegate_];
  v17 = [v19 view];
  if (v17)
  {
    v18 = v17;
    [v17 setUserInteractionEnabled_];

    [v19 setSourceView_];
    [v19 setSourceRect_];
    [a9 presentViewController:v19 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in MarkupEditViewController.didTapAddStickerListItemView(_:forEvent:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerPickerVC);
    *(Strong + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerPickerVC) = a1;
    v4 = Strong;
    v5 = a1;
  }
}

uint64_t @objc MarkupEditViewController.didTapAddSignatureListItemView(_:forEvent:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(_OWORD *))
{
  if (a3)
  {
    v8 = a4;
    v9 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v10 = a4;
    v11 = a1;
  }

  a5(v13);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_sypSgMd);
}

uint64_t closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = v44 - v4;
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  v14 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v44 - v20;
  outlined init with copy of Date?(a1, v17, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v22 = v19;
  v23 = v19;
  v24 = v18;
  if ((*(v23 + 48))(v17, 1, v18) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  }

  v47 = v22;
  v26 = *(v22 + 32);
  v45 = v21;
  v26(v21, v17, v18);
  type metadata accessor for PaperMarkup();
  v46 = swift_allocBox();
  v44[1] = v27;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v28 = v58;
  v29 = v59;
  v30 = v60;
  v31 = v61;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v56 = 0u;
  v57 = 0u;
  CRRegister.init(wrappedValue:)();
  v56 = 0u;
  v57 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v56 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v56) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
  outlined init with copy of Date?(v13, v48, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v33 = type metadata accessor for Color(0);
  v34 = v50;
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  outlined init with copy of Date?(v34, v51, &_s8PaperKit5ColorVSgMd);
  lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s8PaperKit5ColorVSgMd);
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v56 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  UnknownProperties.init()();
  *&v56 = v28;
  *(&v56 + 1) = v29;
  *&v57 = v30;
  *(&v57 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  *&v56 = v28;
  *(&v56 + 1) = v29;
  *&v57 = v30;
  *(&v57 + 1) = v31;
  CRRegister.wrappedValue.setter();
  static CRKeyPath.unique.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v35 = Capsule.init(_:id:)();
  MEMORY[0x1EEE9AC00](v35);
  v36 = v45;
  v44[-2] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  Capsule.callAsFunction<A>(_:)();
  v37 = type metadata accessor for TaskPriority();
  v38 = v54;
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  type metadata accessor for MainActor();
  v39 = v55;

  v40 = v46;

  v41 = static MainActor.shared.getter();
  v42 = swift_allocObject();
  v43 = MEMORY[0x1E69E85E0];
  v42[2] = v41;
  v42[3] = v43;
  v42[4] = v39;
  v42[5] = v40;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v38, &async function pointer to partial apply for closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:), v42);

  return (*(v47 + 8))(v36, v24);
}

uint64_t closure #1 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  type metadata accessor for Image(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  Capsule.Ref.import<A>(_:)();
  swift_getKeyPath();
  v7 = 1;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  Capsule.rootID.getter();
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v5 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  (*(v2 + 8))(v4, v1);
  v5(&v7, 0);
}

uint64_t closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a1;
  v4[15] = a4;
  type metadata accessor for PaperMarkup();
  v4[16] = swift_task_alloc();
  v4[17] = swift_projectBox();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:), v6, v5);
}

uint64_t closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate, v3 = Strong, swift_beginAccess(), v4 = swift_unknownObjectWeakLoadStrong(), v5 = *(v2 + 8), v3, v4))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = *(v0 + 136);
    v9 = *(v0 + 128);
    ObjectType = swift_getObjectType();

    swift_beginAccess();
    _s8PaperKit0A6MarkupVWOcTm_2(v8, v9, type metadata accessor for PaperMarkup);
    (*(v5 + 32))(v7, v9, ObjectType, v5);

    swift_unknownObjectRelease();
    _s8PaperKit0A6MarkupVWOhTm_2(v9, type metadata accessor for PaperMarkup);
    v11 = 0;
  }

  else
  {

    v11 = 1;
  }

  **(v0 + 112) = v11;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in MarkupEditViewController.didTapAddLoupeListItemView(_:forEvent:)()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  type metadata accessor for LoupeElement(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  Capsule.Ref.import<A>(_:)();
  swift_getKeyPath();
  v7 = 9;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  Capsule.rootID.getter();
  lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
  SharedTagged_10.init(_:id:)();
  v5 = Capsule.Ref.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  CROrderedSet.append(_:)();
  (*(v2 + 8))(v4, v1);
  v5(&v7, 0);
}

id MarkupEditViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MarkupEditViewController.StickerDelegate.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized static MarkupEditViewController.presentSignaturePicker(replacing:presentingViewController:from:completion:)(id a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v10 = [a1 presentingViewController];
    if (!v10)
    {
      return;
    }

    v9 = v10;
    a2 = 0;
  }

  v11 = a2;
  v12 = [a1 popoverPresentationController];
  v13 = [v12 sourceItem];

  if (!v13)
  {
    outlined init with copy of Date?(a3, aBlock, &_sypSgMd);
    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo41UIPopoverPresentationControllerSourceItem_pMd);
      if (swift_dynamicCast())
      {
        v13 = v35;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(aBlock, &_sypSgMd);
      v13 = 0;
    }
  }

  v14 = [a1 popoverPresentationController];
  v15 = [v14 sourceView];

  v16 = [a1 popoverPresentationController];
  if (v16)
  {
    v17 = v16;
    [v16 sourceRect];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    if (v13)
    {
LABEL_16:
      v26 = swift_allocObject();
      v26[2] = v9;
      v26[3] = a1;
      v26[4] = v13;
      v26[5] = v15;
      v26[6] = v19;
      v26[7] = v21;
      v26[8] = v23;
      v26[9] = v25;
      v26[10] = a4;
      v26[11] = a5;
      v33 = closure #1 in static MarkupEditViewController.presentSignaturePicker(replacing:presentingViewController:from:completion:)partial apply;
      v34 = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v32 = &block_descriptor_120_0;
      v27 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v28 = v15;

      v29 = v9;
      v30 = a1;

      [v30 dismissViewControllerAnimated:0 completion:v27];
      _Block_release(v27);

      swift_unknownObjectRelease();
      v9 = v28;
      goto LABEL_17;
    }
  }

  if (v15)
  {
    goto LABEL_16;
  }

LABEL_17:
}

void specialized static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = [a2 presentingViewController];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = swift_allocObject();
  v11 = [a2 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 sourceItem];
  }

  else
  {
    v13 = 0;
  }

  *(v10 + 16) = v13;
  v14 = [a2 popoverPresentationController];
  v15 = [v14 sourceView];

  v16 = [a2 popoverPresentationController];
  if (!v16)
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v25 = 0;
    if (v13)
    {
      goto LABEL_16;
    }

LABEL_9:
    if (!v15)
    {
      outlined init with copy of Date?(a3, aBlock, &_sypSgMd);
      if (v53)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo41UIPopoverPresentationControllerSourceItem_pMd);
        v26 = swift_dynamicCast();
        v27 = v51;
        if (!v26)
        {
          v27 = 0;
        }
      }

      else
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(aBlock, &_sypSgMd);
        v27 = 0;
      }

      *(v10 + 16) = v27;
      swift_unknownObjectRelease();
      if (!*(v10 + 16))
      {

        return;
      }
    }

    goto LABEL_16;
  }

  v17 = v16;
  [v16 sourceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_16:
  v28 = [a2 popoverPresentationController];
  if (v28 && (v29 = v28, v30 = [v28 passthroughViews], v29, v30))
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v31 = 0;
  }

  v32 = [a2 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 popoverLayoutMargins];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
  }

  else
  {
    v35 = *MEMORY[0x1E69DDCE0];
    v37 = *(MEMORY[0x1E69DDCE0] + 8);
    v39 = *(MEMORY[0x1E69DDCE0] + 16);
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v42 = [a2 popoverPresentationController];
  v43 = v42;
  if (v42)
  {
    v44 = [v42 permittedArrowDirections];
  }

  else
  {
    v44 = 0;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a4;
  *(v45 + 32) = v10;
  *(v45 + 40) = v15;
  *(v45 + 48) = v19;
  *(v45 + 56) = v21;
  *(v45 + 64) = v23;
  *(v45 + 72) = v25;
  *(v45 + 80) = v31;
  *(v45 + 88) = v35;
  *(v45 + 96) = v37;
  *(v45 + 104) = v39;
  *(v45 + 112) = v41;
  *(v45 + 120) = v44;
  *(v45 + 128) = v43 == 0;
  *(v45 + 136) = a2;
  *(v45 + 144) = v9;
  v54 = partial apply for closure #1 in static MarkupEditViewController.presentShapePicker(_:replacing:from:popoverDelegate:);
  v55 = v45;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v53 = &block_descriptor_99_1;
  v46 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v47 = v15;
  v48 = a2;
  v49 = v9;
  v50 = a1;

  [v48 dismissViewControllerAnimated:1 completion:v46];
  _Block_release(v46);
}

void specialized MarkupEditViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerPickerVC) = 0;
  v1 = OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_minimumItemHeight) = 0x4046000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_minimumPreferredContentSizeWidth) = 0x406F400000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_verticalMargins) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_autoFillFormListItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addStickerListItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addShapeListItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addTextBoxListItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addLoupeListItemVisible) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_addSignaturesItemVisible) = 1;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_opacityItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_descriptionItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_graphItemVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___listItemViews) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addTextBoxListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___autoFillFormListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addSignatureListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addStickerListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___opacityListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___descriptionListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addShapeListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___addLoupeListItemView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController____lazy_storage___additionalListItemView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized MarkupEditViewController.didTapAddSignatureListItemView(_:forEvent:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = [v1 presentingViewController];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = [v1 popoverPresentationController];
  v7 = [v6 sourceItem];

  if (!v7)
  {
    outlined init with copy of Date?(a1, aBlock, &_sypSgMd);
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo41UIPopoverPresentationControllerSourceItem_pMd);
      if (swift_dynamicCast())
      {
        v7 = v29;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(aBlock, &_sypSgMd);
      v7 = 0;
    }
  }

  v8 = [v1 popoverPresentationController];
  v9 = [v8 sourceView];

  v10 = [v1 popoverPresentationController];
  if (v10)
  {
    v11 = v10;
    [v10 sourceRect];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v17 = 0;
    v19 = 0;
    if (v7)
    {
      goto LABEL_15;
    }
  }

  if (!v9)
  {

LABEL_14:

    return;
  }

LABEL_15:
  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = v1;
  v20[4] = v7;
  v20[5] = v9;
  v20[6] = v13;
  v20[7] = v15;
  v20[8] = v17;
  v20[9] = v19;
  v20[10] = partial apply for closure #1 in MarkupEditViewController.didTapAddSignatureListItemView(_:forEvent:);
  v20[11] = v3;
  v27 = partial apply for closure #1 in static MarkupEditViewController.presentSignaturePicker(replacing:presentingViewController:from:completion:);
  v28 = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v26 = &block_descriptor_106_0;
  v21 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v22 = v9;

  v23 = v5;
  v24 = v1;

  [v24 dismissViewControllerAnimated:0 completion:v21];

  _Block_release(v21);

  swift_unknownObjectRelease();
}

void specialized MarkupEditViewController.StickerDelegate.insertSticker(from:completionHandler:)(void *a1)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v28 = 1;
    if (one-time initialization token for publicCRContext != -1)
    {
      swift_once();
    }

    v8 = CRContext.assetManager.getter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    static UTType.image.getter();
    v10 = UTType.identifier.getter();
    v12 = v11;
    v13 = *(v3 + 8);
    v13(v5, v2);
    v14 = MEMORY[0x1DA6CCED0](v10, v12);

    LODWORD(v12) = [a1 hasRepresentationConformingToTypeIdentifier:v14 fileOptions:0];

    if (v12)
    {
      v15 = *MEMORY[0x1E695F050];
      v25 = *(MEMORY[0x1E695F050] + 16);
      v26 = v15;
      static UTType.image.getter();
      v16 = UTType.identifier.getter();
      v18 = v17;
      v13(v5, v2);
      v19 = MEMORY[0x1DA6CCED0](v16, v18);

      v20 = swift_allocObject();
      *(v20 + 16) = v8;
      v21 = v26;
      *(v20 + 40) = v25;
      *(v20 + 24) = v21;
      *(v20 + 56) = 0u;
      *(v20 + 72) = 0u;
      *(v20 + 88) = v28;
      *(v20 + 96) = 0;
      *(v20 + 104) = 9;
      *(v20 + 112) = 0;
      *(v20 + 120) = 0;
      *(v20 + 128) = 1;
      *(v20 + 136) = a1;
      *(v20 + 144) = partial apply for closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:);
      *(v20 + 152) = v9;
      aBlock[4] = partial apply for closure #1 in static ImageLayout.loadItemProvider(_:canvasFrame:frame:rotation:anchor:offset:assetManager:dragItem:completion:);
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_75;
      v22 = _Block_copy(aBlock);

      v23 = a1;

      v24 = [v23 loadDataRepresentationForTypeIdentifier:v19 completionHandler:v22];

      _Block_release(v22);

      v7 = v19;
    }

    else
    {
    }
  }
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #2 in closure #1 in MarkupEditViewController.insertSticker(from:completionHandler:)(a1, v4, v5, v6);
}

uint64_t specialized MarkupEditViewController.didTapAddStickerListItemView(_:forEvent:)()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerPickerVC];
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_stickerDelegate];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v1;
  v5 = v2;

  v6 = [v0 presentingViewController];
  if (!v6)
  {
  }

  v7 = v6;
  [v4 dismissCard];
  v8 = [v0 popoverPresentationController];
  v9 = [v8 sourceItem];

  if (!v9)
  {
    v22 = [v0 popoverPresentationController];
    v13 = [v22 sourceView];

    v23 = v13;
    v24 = [v0 popoverPresentationController];
    if (v24)
    {
      v25 = v24;
      [v24 sourceRect];
      v11 = v26;
      v16 = v27;
      v18 = v28;
      v20 = v29;

      goto LABEL_12;
    }

    v11 = 0;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();
  v10 = [v0 popoverPresentationController];
  v11 = 0;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v12 = v10;
  v13 = [v10 _realSourceView];

  if (!v13)
  {
LABEL_11:
    v16 = 0;
    v18 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  [v13 bounds];
  v11 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
LABEL_12:
  v30 = swift_allocObject();
  v30[2] = partial apply for closure #1 in MarkupEditViewController.didTapAddStickerListItemView(_:forEvent:);
  v30[3] = v3;
  v30[4] = v2;
  v30[5] = v13;
  v30[6] = v11;
  v30[7] = v16;
  v30[8] = v18;
  v30[9] = v20;
  v30[10] = v7;
  v34[4] = partial apply for closure #1 in static MarkupEditViewController.presentStickerPicker(_:replacing:from:pickerDelegate:completion:);
  v34[5] = v30;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v34[3] = &block_descriptor_90;
  v31 = _Block_copy(v34);
  v32 = v5;

  v33 = v7;

  [v0 dismissViewControllerAnimated:1 completion:v31];

  _Block_release(v31);
}

uint64_t specialized MarkupEditViewController.didTapAddLoupeListItemView(_:forEvent:)()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = v47 - v0;
  v1 = type metadata accessor for Color(0);
  v2 = *(v1 - 8);
  v68 = v1;
  v69 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v63 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UnknownProperties();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v65 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LoupeElement(0);
  MEMORY[0x1EEE9AC00](v62);
  v51 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v47 - v7;
  v9 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v64);
  v49 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v58.i64[0] = v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v57);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v47 - v20;
  v22 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v22);
  v23 = type metadata accessor for PaperMarkup();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v66 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGRect(0);
  v61 = v25;
  v60 = _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v70 = 0u;
  v71 = 0u;
  CRRegister.init(wrappedValue:)();
  v59 = *(v22 + 20);
  v70 = 0u;
  v71 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v70 = 0;
  v26 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  LODWORD(v70) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  outlined init with copy of Date?(v21, v18, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v21, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  v28 = *(v69 + 56);
  v69 += 56;
  v48 = v28;
  v28(v16, 1, 1, v68);
  outlined init with copy of Date?(v16, v58.i64[0], &_s8PaperKit5ColorVSgMd);
  v47[1] = lazy protocol witness table accessor for type Color? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  v57 = v16;
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s8PaperKit5ColorVSgMd);
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  CRRegister.init(wrappedValue:)();
  *&v70 = 0;
  lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v29 = v62;
  CROrderedSet.init()();
  UnknownProperties.init()();
  v70 = 0uLL;
  v58 = vdupq_n_s64(0x405E000000000000uLL);
  v71 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  v70 = 0uLL;
  v71 = v58;
  CRRegister.wrappedValue.setter();
  static CRKeyPath.unique.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Capsule.init(_:id:)();
  UnknownProperties.init()();
  v70 = 0u;
  v71 = 0u;
  CRRegister.init(wrappedValue:)();
  v70 = 0u;
  v71 = 0u;
  v30 = v68;
  CRRegister.init(wrappedValue:)();
  *&v70 = 0;
  CRRegister.init(wrappedValue:)();
  *&v70 = 0x3FF8000000000000;
  v61 = v26;
  CRRegister.init(wrappedValue:)();
  v31 = *(v30 + 20);
  v32 = type metadata accessor for UnknownValueProperties();
  v33 = v63;
  (*(*(v32 - 8) + 56))(&v63[v31], 1, 1, v32);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  result = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F510A0);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v35 = result;
  CGColorRef.calculateMinimumHeadroom.getter();
  result = CGColorCreateWithContentHeadroom();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = result;

  v37 = v33;
  *v33 = v36;
  v38 = v49;
  Color.withAlphaComponent(_:)(v49, 0.5);
  _s8PaperKit0A6MarkupVWOhTm_2(v37, type metadata accessor for Color);
  v48(v38, 0, 1, v30);
  outlined init with copy of Date?(v38, v57, &_s8PaperKit5ColorVSgMd);
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s8PaperKit5ColorVSgMd);
  *&v70 = 0x4004000000000000;
  CRRegister.init(wrappedValue:)();
  v39 = *(v29 + 40);
  UnknownProperties.init()();
  v70 = 0u;
  v71 = 0u;
  CRRegister.wrappedValue.setter();
  v70 = 0uLL;
  v71 = vdupq_n_s64(0x405E000000000000uLL);
  CRRegister.wrappedValue.setter();
  *&v70 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  (*(v50 + 40))(&v8[v39], v65, v52);
  _s8PaperKit0A6MarkupVWOcTm_2(v8, v51, type metadata accessor for LoupeElement);
  static CRKeyPath.unique.getter();
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_15(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  v40 = v54;
  v41 = Capsule.init(_:id:)();
  MEMORY[0x1EEE9AC00](v41);
  v47[-2] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v42 = v66;
  Capsule.callAsFunction<A>(_:)();
  v43 = v53;
  v44 = v53 + OBJC_IVAR____TtC8PaperKit24MarkupEditViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v44 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 32))(v43, v42, ObjectType, v45);
    swift_unknownObjectRelease();
  }

  _s8PaperKit0A6MarkupVWOhTm_2(v8, type metadata accessor for LoupeElement);
  _s8PaperKit0A6MarkupVWOhTm_2(v42, type metadata accessor for PaperMarkup);
  return (*(v55 + 8))(v40, v56);
}

uint64_t _s8PaperKit0A6MarkupVWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit0A6MarkupVWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_102Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t specialized Sequence.reversed()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = __CocoaSet.count.getter();
    if (v19)
    {
      v20 = v19;
      v1 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8PaperKit20AnyCanvasElementViewC_Tt1g5(v19, 0);
      specialized Array._copyContents(initializing:)(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = __CocoaSet.count.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6CE0C0]();
          v11 = MEMORY[0x1DA6CE0C0](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t specialized Sequence.reversed()(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 32 * v2; ; i -= 32)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 16);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_12;
    }

    v13 = *(v1 + v3 + 48);
    v14 = *(v1 + v3 + 32);
    v11 = *(v1 + i + 16);
    v12 = *(v1 + i);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
      v1 = result;
    }

    v8 = v1 + v3;
    *(v8 + 32) = v12;
    *(v8 + 48) = v11;
    v9 = (v1 + i);
    *v9 = v14;
    v9[1] = v13;
LABEL_5:
    ++v4;
    --v6;
    v3 += 32;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void specialized Sequence.reversed()(size_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t key path getter for AnyCanvas.isScribbling : AnyCanvas@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling);
  return result;
}

uint64_t @objc CanvasScribbleDelegate.scribbleInteraction(_:shouldBeginAt:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = specialized CanvasScribbleDelegate.scribbleInteraction(_:shouldBeginAt:)();

  return a1 & 1;
}

uint64_t CanvasScribbleDelegate.textBoxForScribble(elementIdentifier:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  CRKeyPath.init(_:)();
  v6 = CRKeyPath.rawValue.getter();
  v8 = v7;
  v9 = CRKeyPath.rawValue.getter();
  v11 = v10;
  v12 = specialized static Data.== infix(_:_:)(v6, v8, v9, v10);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v6, v8);
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = Canvas.editingView.getter();
    v17 = v16;

    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 40))(ObjectType, v17);

    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);

      v24 = (*((*MEMORY[0x1E69E7D40] & *v22) + 0x318))(v23);

      return v24;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id CanvasScribbleDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasScribbleDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc CanvasScribbleDelegate.__ivar_destroyer(uint64_t a1)
{
  MEMORY[0x1DA6D07B0](a1 + direct field offset for CanvasScribbleDelegate.canvas);

  JUMPOUT(0x1DA6D07B0);
}

uint64_t protocol witness for UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:requestElementsIn:) in conformance CanvasScribbleDelegate<A>(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CanvasScribbleDelegate();
  *v14 = v7;
  v14[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);
  v16.n128_f64[0] = a2;
  v17.n128_f64[0] = a3;
  v18.n128_f64[0] = a4;
  v19.n128_f64[0] = a5;

  return MEMORY[0x1EEE4D038](a1, v15, a7, v16, v17, v18, v19);
}

uint64_t protocol witness for UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:focusElementIfNeeded:referencePoint:) in conformance CanvasScribbleDelegate<A>(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CanvasScribbleDelegate();
  *v12 = v6;
  v12[1] = dispatch thunk of PaperRenderable.renderedImage(in:);
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;

  return MEMORY[0x1EEE4D040](a1, a2, v13, a6, v14, v15);
}

uint64_t protocol witness for UIIndirectScribbleInteractionDelegate.indirectScribbleInteraction(_:shouldDelayFocusForElement:) in conformance CanvasScribbleDelegate<A>()
{
  v0 = type metadata accessor for CRKeyPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  CRKeyPath.init(_:)();
  v4 = CRKeyPath.rawValue.getter();
  v6 = v5;
  v7 = CRKeyPath.rawValue.getter();
  v9 = v8;
  v10 = specialized static Data.== infix(_:_:)(v4, v6, v7, v8);
  outlined consume of Data._Representation(v7, v9);
  outlined consume of Data._Representation(v4, v6);
  (*(v1 + 8))(v3, v0);
  return v10 & 1;
}

id specialized CanvasScribbleDelegate.init(canvas:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasScribbleDelegate();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t specialized CanvasScribbleDelegate.scribbleInteraction(_:shouldBeginAt:)()
{
  v0 = type metadata accessor for PKInk();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 ink];

    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
    v9.super.isa = PKInk._bridgeToObjectiveC()().super.isa;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9.super.isa = 0;
  }

  v11 = v9.super.isa;
  v10 = [(objc_class *)v11 _isHandwritingInk];

  return v10;
}

char *specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:requestElementsIn:completion:)(void (*a1)(void), uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v105 - v13;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v15 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v105 - v16;
  v112 = type metadata accessor for CRKeyPath();
  v115 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v107 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v117 = &v105 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v105 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v105 - v27;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return (a1)(MEMORY[0x1E69E7CC0]);
  }

  v30 = result;
  v120 = v15;
  v116 = v14;
  v105 = a2;
  v106 = a1;
  v31 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  if (!*&result[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView])
  {
    __break(1u);
    goto LABEL_50;
  }

  v32 = &OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v33 = result;

  v35 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v34);

  v36 = *(v35 + 16);

  v111 = v33;
  if (v36 != 1)
  {

    goto LABEL_17;
  }

  if (!*&v30[v31])
  {
LABEL_50:
    __break(1u);
    return result;
  }

  v38 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v37);

  if (!*(v38 + 16))
  {

LABEL_17:
    v52 = Canvas.editingView.getter();
    v56 = v55;
    ObjectType = swift_getObjectType();
    v22 = (*(v56 + 72))(ObjectType, v56);

    if (v22 >> 62)
    {
      v28 = __CocoaSet.count.getter();
      if (v28)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v58 = v22 & 0xFFFFFFFFFFFFFF8;
      v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
LABEL_19:
        if (v28 >= 1)
        {
          v59 = 0;
          v60 = v22 & 0xC000000000000001;
          v114 = (v120 + 6);
          v109 = (v120 + 1);
          v110 = (v120 + 4);
          v108 = v115 + 32;
          v120 = MEMORY[0x1E69E7CC0];
          v61 = MEMORY[0x1E69E7D40];
          v62 = &selRef_PDFView;
          v113 = v22;
          while (1)
          {
            if (v60)
            {
              v63 = MEMORY[0x1DA6CE0C0](v59, v22);
            }

            else
            {
              v63 = *(v22 + 8 * v59 + 32);
            }

            v64 = v63;
            v65 = (*((*v61 & *v63) + 0x318))(v63);
            if (v65)
            {
              v66 = v65;
              [v65 v62[239]];
              v68 = v67;
              v70 = v69;
              v72 = v71;
              v74 = v73;
              v75 = Canvas.editingView.getter();
              [v66 convertRect:v75 toCoordinateSpace:{v68, v70, v72, v74}];
              v77 = v76;
              v79 = v78;
              v81 = v80;
              v83 = v82;

              v121.origin.x = v77;
              v121.origin.y = v79;
              v121.size.width = v81;
              v121.size.height = v83;
              v122.origin.x = a3;
              v122.origin.y = a4;
              v122.size.width = a5;
              v122.size.height = a6;
              if (CGRectIntersectsRect(v121, v122))
              {
                v84 = v28;
                v85 = v60;
                v86 = v62;
                v87 = v61;
                v88 = *((*v61 & *v64) + 0xF0);
                v89 = v116;
                v88();
                v90 = v119;
                if ((*v114)(v89, 1, v119) == 1)
                {

                  outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
                  v61 = v87;
                  v62 = v86;
                  v60 = v85;
                }

                else
                {
                  (*v110)(v118, v89, v90);
                  MEMORY[0x1DA6CB7A0](v90);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
                  }

                  v61 = v87;
                  v92 = v120[2];
                  v91 = v120[3];
                  v62 = v86;
                  if (v92 >= v91 >> 1)
                  {
                    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1, v120);
                  }

                  v60 = v85;

                  (*v109)(v118, v119);
                  v93 = v120;
                  v120[2] = v92 + 1;
                  (*(v115 + 32))(v93 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v92, v117, v112);
                  v33 = v111;
                }

                v28 = v84;
                v22 = v113;
                goto LABEL_23;
              }
            }

LABEL_23:
            if (v28 == ++v59)
            {

              goto LABEL_42;
            }
          }
        }

        __break(1u);
        goto LABEL_48;
      }
    }

    v120 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  v39 = v115;
  v40 = *(v115 + 16);
  v114 = ((*(v115 + 80) + 32) & ~*(v115 + 80));
  v41 = v112;
  v40(v25, v114 + v38, v112);

  v32 = *(v39 + 32);
  (v32)(v28, v25, v41);
  v42 = Canvas.editingView.getter();
  v44 = v43;
  v45 = swift_getObjectType();
  v46 = (*(v44 + 40))(v45, v44);

  if (!*(v46 + 16) || (v47 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v48 & 1) == 0))
  {

    goto LABEL_15;
  }

  v49 = *(*(v46 + 56) + 8 * v47);

  v51 = MEMORY[0x1E69E7D40];
  v52 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x318))(v50);

  if (!v52)
  {
LABEL_15:
    (*(v115 + 8))(v28, v112);
    v33 = v111;
    goto LABEL_17;
  }

  v54 = (*((*v51 & *v52) + 0x98))(v53);
  if (v54 & 1) == 0 || ((*((*v51 & *v52) + 0xA0))(v54))
  {
    (*(v115 + 8))(v28, v112);

    v33 = v111;
    goto LABEL_17;
  }

  v40(v22, v28, v112);
  v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v33 = v94[2];
  v58 = v94[3];
  v120 = v94;
  v56 = v33 + 1;
  if (v33 >= v58 >> 1)
  {
LABEL_48:
    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v56, 1, v120);
  }

  v95 = v115 + 8;
  v96 = v28;
  v97 = v112;
  (*(v115 + 8))(v96, v112);
  v98 = v120;
  v120[2] = v56;
  (v32)(v114 + v98 + *(v95 + 64) * v33, v22, v97);
  v33 = v111;
LABEL_42:
  v99 = v107;
  CRKeyPath.init(_:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v120[2] + 1, 1, v120);
  }

  v101 = v120[2];
  v100 = v120[3];
  if (v101 >= v100 >> 1)
  {
    v120 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v100 > 1, v101 + 1, 1, v120);
  }

  v102 = v120;
  v120[2] = v101 + 1;
  (*(v115 + 32))(v102 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v101, v99, v112);
  specialized Sequence.reversed()(v102);
  v104 = v103;

  v106(v104);
}

double specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:frameForElement:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = 0.0;
  if (!Strong)
  {
    return v7;
  }

  v8 = Strong;
  CRKeyPath.init(_:)();
  v9 = CRKeyPath.rawValue.getter();
  v11 = v10;
  v12 = CRKeyPath.rawValue.getter();
  v14 = v13;
  v15 = specialized static Data.== infix(_:_:)(v9, v11, v12, v13);
  outlined consume of Data._Representation(v12, v14);
  outlined consume of Data._Representation(v9, v11);
  (*(v3 + 8))(v5, v2);
  v16 = Canvas.editingView.getter();
  v18 = v16;
  if (v15)
  {
    [v16 bounds];
    v7 = v19;

LABEL_4:
    return v7;
  }

  v20 = v17;
  ObjectType = swift_getObjectType();
  v22 = (*(v20 + 40))(ObjectType, v20);

  if (!*(v22 + 16) || (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v24 & 1) == 0))
  {

LABEL_16:

    return v7;
  }

  v25 = *(*(v22 + 56) + 8 * v23);

  v27 = MEMORY[0x1E69E7D40];
  v28 = (*((*MEMORY[0x1E69E7D40] & *v25) + 0x318))(v26);
  if (!v28)
  {

    goto LABEL_16;
  }

  v29 = v28;
  if (((*((*v27 & *v28) + 0x98))() & 1) != 0 && ((*((*v27 & *v29) + 0xA0))() & 1) == 0)
  {
    v18 = Canvas.editingView.getter();
    [v18 bounds];
    v7 = v43;

    goto LABEL_4;
  }

  [v25 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v8 traitCollection];
  v39 = [v38 layoutDirection];

  if (v39 == 1)
  {
    v40 = -100.0;
  }

  else
  {
    v40 = 0.0;
  }

  [v8 convertRect:v25 fromCoordinateSpace:{UIEdgeInsetsInsetRect(v31, v33, v35, v37, 0.0, v40)}];
  v7 = v41;

  return v7;
}

uint64_t specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:isElementFocused:)(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  CRKeyPath.init(_:)();
  _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {

LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  v9 = Canvas.editingView.getter();
  v11 = v10;
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 40))(ObjectType, v11);

  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v15 & 1) == 0))
  {

    goto LABEL_8;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v18 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x108))(v17);

  return v18 & 1;
}

void specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:focusElementIfNeeded:referencePoint:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, CGFloat a4, CGFloat a5)
{
  v229 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v215 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v214 = &v165 - v11;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit31CanvasElementAutoresizeBehaviorVGMd);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v211 = &v165 - v12;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v165 - v13;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v165 - v14;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit9ShapeTypeOGMd);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v202 = &v165 - v15;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v198 = *(v200 - 8);
  MEMORY[0x1EEE9AC00](v200);
  v196 = &v165 - v16;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6ShadowVSgMd);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v193 = &v165 - v19;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11StrokeStyleOSgMd);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v190 = &v165 - v22;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v188);
  v187 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v186 = &v165 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v197 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v225 = &v165 - v29;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v220);
  v184 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v165 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v223 = &v165 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v228 = (&v165 - v36);
  v222 = type metadata accessor for ShapeType(0);
  MEMORY[0x1EEE9AC00](v222);
  v185 = &v165 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v189 = &v165 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v226 = &v165 - v41;
  v42 = type metadata accessor for Shape(0);
  MEMORY[0x1EEE9AC00](v42);
  v199 = &v165 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v165 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v201 = &v165 - v48;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v221 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v181 = &v165 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v227 = &v165 - v51;
  v52 = type metadata accessor for CRKeyPath();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v165 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v165 - v57;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v229();
    return;
  }

  v182 = v42;
  v59 = v229;
  v180 = v10;
  v183 = a3;
  v178 = v5;
  v60 = *(v53 + 16);
  v218 = v58;
  v60(v58, a1, v52);
  CRKeyPath.init(_:)();
  v61 = CRKeyPath.rawValue.getter();
  v63 = v62;
  v64 = CRKeyPath.rawValue.getter();
  v66 = v65;
  v67 = specialized static Data.== infix(_:_:)(v61, v63, v64, v65);
  outlined consume of Data._Representation(v64, v66);
  outlined consume of Data._Representation(v61, v63);
  v68 = *(v53 + 8);
  v217 = v53 + 8;
  v216 = v68;
  v68(v55, v52);
  v69 = v52;
  if ((v67 & 1) == 0)
  {
LABEL_22:
    v144 = Canvas.editingView.getter();
    v146 = v145;
    ObjectType = swift_getObjectType();
    v148 = (*(v146 + 40))(ObjectType, v146);

    v149 = v218;
    if (*(v148 + 16) && (v150 = specialized __RawDictionaryStorage.find<A>(_:)(v218), (v151 & 1) != 0))
    {
      v152 = *(*(v148 + 56) + 8 * v150);

      v154 = MEMORY[0x1E69E7D40];
      v155 = (*((*MEMORY[0x1E69E7D40] & *v152) + 0x318))(v153);
      if (v155)
      {
        v156 = v155;
        (*((*v154 & *v155) + 0x128))(0);
        (*((*v154 & *v156) + 0xC8))(1);
        swift_unknownObjectWeakAssign();
        v157 = *(v156 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
        v158 = Strong;
        v159 = v152;
        v160 = v157;
        v161 = specialized CanvasMembers.init(_:)(v159);
        AnyCanvas.selection.setter(v161, v163, v164, v162 & 1);

        v216(v149, v69);
LABEL_28:
        (v59)(v157);

        return;
      }

      v216(v149, v69);
    }

    else
    {

      v216(v149, v69);
    }

    v157 = 0;
    goto LABEL_28;
  }

  v175 = v55;
  v176 = v53;
  v177 = v52;
  v70 = MEMORY[0x1E69E7D40];
  v71 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x450);
  v72 = Strong;
  v73 = v71();
  v74 = 1.0;
  v75 = 1.0;
  if (v73)
  {
    v76 = v73;
    [v73 zoomScale];
    v75 = v77;
  }

  v78 = *((*v70 & *v72) + 0x858);
  v78(&v234);
  v79 = sqrt(vaddvq_f64(vmulq_f64(v234, v234)));
  if (v235)
  {
    v79 = 1.0;
  }

  CGAffineTransformMakeScale(&v236, 1.0 / (v75 * v79), 1.0 / (v75 * v79));
  v238.x = a4;
  v238.y = a5;
  v80 = CGPointApplyAffineTransform(v238, &v236);
  v81 = v182;
  if (one-time initialization token for defaultTextBoxAttributes != -1)
  {
    swift_once();
  }

  v82 = v71();
  v83 = 1.0;
  if (v82)
  {
    v84 = v82;
    [v82 zoomScale];
    v83 = v85;
  }

  v78(&v236);
  v86 = v237;

  if ((v86 & 1) == 0)
  {
    v74 = sqrt(vaddvq_f64(vmulq_f64(*&v236.a, *&v236.a)));
  }

  v87 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v88 = MEMORY[0x1DA6CCED0](32, 0xE100000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v87 initWithString:v88 attributes:isa];

  MEMORY[0x1EEE9AC00](v90);
  *(&v165 - 2) = 1.0 / (v83 * v74);
  v91 = lazy protocol witness table accessor for type TextAttributeScope and conformance TextAttributeScope();
  CRAttributedString.init(_:transformAttributes:)();
  swift_storeEnumTagMultiPayload();
  v92 = type metadata accessor for Color(0);
  v93 = *(v92 + 20);
  v94 = type metadata accessor for UnknownValueProperties();
  (*(*(v94 - 8) + 56))(v228 + v93, 1, 1, v94);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v95 = CGColorCreate(static Color.extendedSRGBColorSpace, dbl_1F4F51320);
  if (v95)
  {
    v96 = v95;
    v173 = v91;
    v174 = v72;
    CGColorRef.calculateMinimumHeadroom.getter();
    v97 = CGColorCreateWithContentHeadroom();
    if (v97)
    {
      v98 = v97;

      *v228 = v98;
      v99 = *(v92 - 8);
      v100 = *(v99 + 56);
      v101 = v99 + 56;
      v100();
      (v100)(v223, 1, 1, v92);
      v167 = v101;
      v102 = v100;
      v103 = v221;
      v104 = v225;
      v105 = v224;
      (*(v221 + 16))(v225, v227, v224);
      (*(v103 + 56))(v104, 0, 1, v105);
      type metadata accessor for CGRect(0);
      v166 = v92;
      v171 = v106;
      v170 = _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      v231 = 0u;
      v232 = 0u;
      CRRegister.init(wrappedValue:)();
      *&v231 = 0;
      v179 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      CRRegister.init(_:)();
      v172 = v81[6];
      v107 = v219;
      (v102)(v219, 1, 1, v92);
      v108 = v46;
      v109 = v184;
      outlined init with copy of Date?(v107, v184, &_s8PaperKit5ColorVSgMd);
      v168 = lazy protocol witness table accessor for type Color? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s8PaperKit5ColorVSgMd);
      v169 = v81[7];
      (v102)(v107, 1, 1, v166);
      outlined init with copy of Date?(v107, v109, &_s8PaperKit5ColorVSgMd);
      v110 = v108;
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v107, &_s8PaperKit5ColorVSgMd);
      v184 = v81[8];
      *&v231 = 0x4014000000000000;
      CRRegister.init(wrappedValue:)();
      v167 = v81[9];
      v111 = v189;
      swift_storeEnumTagMultiPayload();
      _s8PaperKit9ShapeTypeOWOcTm_0(v111, v185, type metadata accessor for ShapeType);
      v166 = _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type ShapeType and conformance ShapeType, type metadata accessor for ShapeType);
      CRRegister.init(wrappedValue:)();
      outlined destroy of ShapeType(v111, type metadata accessor for ShapeType);
      *&v231 = 0x3FF0000000000000;
      CRRegister.init(wrappedValue:)();
      *&v231 = 0;
      BYTE8(v231) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRExtensible<LineEnd> and conformance CRExtensible<A>, &_s9Coherence12CRExtensibleOy8PaperKit7LineEndOGMd);
      CRRegister.init(wrappedValue:)();
      *&v231 = 0;
      BYTE8(v231) = 0;
      CRRegister.init(wrappedValue:)();
      v185 = v81[13];
      CRAttributedString.init(_:)();
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
      v113 = v186;
      (*(*(v112 - 8) + 56))(v186, 1, 1, v112);
      outlined init with copy of Date?(v113, v187, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Attributes? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v113, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
      v114 = v81[15];
      *&v231 = 0;
      v115 = lazy protocol witness table accessor for type CanvasElementAutoresizeBehavior and conformance CanvasElementAutoresizeBehavior();
      v188 = v114;
      v187 = v115;
      CRRegister.init(wrappedValue:)();
      *&v231 = 0;
      lazy protocol witness table accessor for type CanvasElementFlags and conformance CanvasElementFlags();
      CRRegister.init(wrappedValue:)();
      v116 = type metadata accessor for StrokeStyle(0);
      v117 = v190;
      (*(*(v116 - 8) + 56))(v190, 1, 1, v116);
      outlined init with copy of Date?(v117, v191, &_s8PaperKit11StrokeStyleOSgMd);
      lazy protocol witness table accessor for type StrokeStyle? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v117, &_s8PaperKit11StrokeStyleOSgMd);
      v118 = type metadata accessor for Shadow();
      v119 = v193;
      (*(*(v118 - 8) + 56))(v193, 1, 1, v118);
      outlined init with copy of Date?(v119, v194, &_s8PaperKit6ShadowVSgMd);
      lazy protocol witness table accessor for type Shadow? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s8PaperKit6ShadowVSgMd);
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18ShapeAuxiliaryInfoVSgMd);
      lazy protocol witness table accessor for type ShapeAuxiliaryInfo? and conformance <A> A?();
      CRRegister.init(wrappedValue:)();
      UnknownProperties.init()();
      *&v231 = v80.x + -0.5;
      *(&v231 + 1) = v80.y + -0.5;
      __asm { FMOV            V0.2D, #1.0 }

      v232 = _Q0;
      v125 = v196;
      CRRegister.init(_:)();
      (*(v198 + 40))(v110, v125, v200);
      _s8PaperKit9ShapeTypeOWOcTm_0(v226, v111, type metadata accessor for ShapeType);
      v126 = v202;
      CRRegister.init(_:)();
      (*(v203 + 40))(v110 + v167, v126, v204);
      *&v231 = 0x4014000000000000;
      v127 = v205;
      CRRegister.init(_:)();
      (*(v206 + 40))(v110 + v184, v127, v207);
      v128 = v219;
      outlined init with copy of Date?(v228, v219, &_s8PaperKit5ColorVSgMd);
      v129 = v208;
      CRRegister.init(_:)();
      v130 = *(v209 + 40);
      v131 = v210;
      v130(v110 + v169, v129, v210);
      v132 = v221;
      outlined init with copy of Date?(v223, v128, &_s8PaperKit5ColorVSgMd);
      v133 = v224;
      CRRegister.init(_:)();
      v130(v110 + v172, v129, v131);
      v134 = v197;
      outlined init with copy of Date?(v225, v197, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      if ((*(v132 + 48))(v134, 1, v133) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v134, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      }

      else
      {
        v135 = v181;
        (*(v132 + 32))(v181, v134, v133);
        (*(v132 + 40))(v110 + v185, v135, v133);
      }

      v59 = v229;
      v136 = v180;
      *&v231 = 3;
      v137 = v211;
      CRRegister.init(_:)();
      outlined destroy of StocksKitCurrencyCache.Provider?(v225, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v223, &_s8PaperKit5ColorVSgMd);
      outlined destroy of StocksKitCurrencyCache.Provider?(v228, &_s8PaperKit5ColorVSgMd);
      outlined destroy of ShapeType(v226, type metadata accessor for ShapeType);
      (*(v212 + 40))(v110 + v188, v137, v213);
      v138 = v201;
      outlined init with take of Shape(v110, v201);
      _s8PaperKit9ShapeTypeOWOcTm_0(v138, v199, type metadata accessor for Shape);
      v139 = v175;
      static CRKeyPath.unique.getter();
      v140 = _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
      v141 = v214;
      v142 = v182;
      Capsule.init(_:id:)();
      Canvas.addCanvasElement<A>(_:setSelected:dragItem:harmonize:)(v141, 0, 0, 0, v142, v140, &protocol witness table for Shape);
      Capsule.rootID.getter();
      (*(v215 + 8))(v141, v136);
      outlined destroy of ShapeType(v138, type metadata accessor for Shape);
      (*(v132 + 8))(v227, v224);
      v143 = v218;
      v69 = v177;
      v216(v218, v177);
      (*(v176 + 32))(v143, v139, v69);
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:willBeginWritingInElement:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling] == 1)
    {
      Strong[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling] = 1;
    }

    else
    {
      v3 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v5 = CanvasScribbleDelegate.textBoxForScribble(elementIdentifier:)(a1);
  if (v5)
  {
    v6 = v5;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(1);
  }
}

void specialized CanvasScribbleDelegate.indirectScribbleInteraction(_:didFinishWritingInElement:)(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling))
    {
      v3 = Strong;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      _s9Coherence9CRKeyPathVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__isScribbling) = 0;
    }
  }

  v5 = CanvasScribbleDelegate.textBoxForScribble(elementIdentifier:)(a1);
  if (v5)
  {
    v6 = v5;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(0);
  }

  swift_unknownObjectWeakAssign();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v9)
    {
      v10 = v9;

      v11 = *&v10[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
      if (v11)
      {
        *(v11 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t _s9Coherence9CRKeyPathVACSHAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void specialized static UIImage.toolPickerPlus.getter()
{
  v0 = [objc_opt_self() defaultFontForTextStyle_];
  if (!v0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v1 = v0;
  [v0 pointSize];
  v3 = v2;

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 6)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = [objc_opt_self() configurationWithPointSize:6 weight:v6 scale:v3];
  v8 = MEMORY[0x1DA6CCED0](1937075312, 0xE400000000000000);
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (!v9)
  {
    goto LABEL_8;
  }
}

id StandinGraphView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8PaperKit16StandinGraphView_label] = 0;
  *&v4[OBJC_IVAR____TtC8PaperKit16StandinGraphView_expressions] = MEMORY[0x1E69E7CC0];
  v9 = &v4[OBJC_IVAR____TtC8PaperKit16StandinGraphView_range];
  *v9 = 0u;
  v9[1] = 0u;
  v4[OBJC_IVAR____TtC8PaperKit16StandinGraphView_isSelected] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for StandinGraphView();
  v10 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 redColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  return v12;
}

Swift::Void __swiftcall StandinGraphView.layoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for StandinGraphView();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit16StandinGraphView_label];
  if (v1)
  {
    v2 = v1;
    [v2 intrinsicContentSize];
    v4 = v3;
    v6 = v5;
    [v0 bounds];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    [v2 setFrame_];
  }
}

id StandinGraphView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandinGraphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PaperDocumentPageView.ScrollViewObserver._observeScrollViewDidScroll(_:)(UIScrollView *a1)
{
  [(UIScrollView *)a1 zoomScale];
  v4 = v3;
  v5 = *(v1 + direct field offset for PaperDocumentPageView.ScrollViewObserver.lastZoomScale);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v4 == v5)
  {
    if (Strong)
    {
      v8 = Strong;
      specialized PaperDocumentPageView.didScroll(in:)();
    }
  }

  else
  {
    if (Strong)
    {
      v9 = Strong;
      specialized PaperDocumentPageView.didZoom(in:)();
    }

    [(UIScrollView *)a1 zoomScale];
    *(v1 + direct field offset for PaperDocumentPageView.ScrollViewObserver.lastZoomScale) = v7;
  }
}

void @objc PaperDocumentPageView.ScrollViewObserver._observeScrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  PaperDocumentPageView.ScrollViewObserver._observeScrollViewDidScroll(_:)(v4);
}

id PaperDocumentPageView.ScrollViewObserver.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[direct field offset for PaperDocumentPageView.ScrollViewObserver.lastZoomScale] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentPageView.ScrollViewObserver();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PaperDocumentPageView.ScrollViewObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentPageView.ScrollViewObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PaperDocumentPageView.overlayView.didset(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *&v1[direct field offset for PaperDocumentPageView.overlayView];
  if (v2)
  {
    v3 = v2;
    [v1 addSubview_];
    [v1 setNeedsLayout];
  }
}

uint64_t PaperDocumentPageView.sharedPaperPage.getter()
{
  v0 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for Capsule();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6[-v3];
  type metadata accessor for Paper(0);
  if (swift_dynamicCastMetatype())
  {
    v6[13] = 0;
    Canvas.updatablePaper2.getter(v4);
    Capsule.rootID.getter();
    (*(v2 + 8))(v4, v1);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    return SharedTagged_3.init(_:id:)();
  }

  type metadata accessor for Image(0);
  if (swift_dynamicCastMetatype())
  {
    v6[14] = 1;
    Canvas.updatablePaper2.getter(v4);
    Capsule.rootID.getter();
    (*(v2 + 8))(v4, v1);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    return SharedTagged_3.init(_:id:)();
  }

  type metadata accessor for PaperDocumentPage(0);
  if (swift_dynamicCastMetatype())
  {
    v6[15] = 2;
    Canvas.updatablePaper2.getter(v4);
    Capsule.rootID.getter();
    (*(v2 + 8))(v4, v1);
    lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
    return SharedTagged_3.init(_:id:)();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PaperDocumentPageView.canvasUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v4 + 16);
  if (Strong)
  {
    v9 = Strong;
    v8(v6, Strong + OBJC_IVAR____TtC8PaperKit17PaperDocumentView_viewUUID, v3);

    return (*(v4 + 32))(a1, v6, v3);
  }

  else
  {
    v11 = v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__canvasUUID;

    return (v8)(a1, v11, v3);
  }
}

void PaperDocumentPageView.canvasStateLiveStreamMessenger.didset()
{
  v0 = Canvas.canvasStateLiveStreamMessenger.getter();
  if (v0)
  {
    swift_unknownObjectRelease();
  }

  AnyCanvas.liveStreamDrawings.setter(v0 != 0);
}

uint64_t PaperDocumentPageView.canvasStateLiveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  specialized PaperDocumentPageView.canvasStateLiveStreamMessenger.setter(a1, a2);

  return swift_unknownObjectRelease();
}

void PaperDocumentPageView.editingMode.setter(char *a1)
{
  v1 = *a1;
  Canvas.editingMode.setter(&v1);

  PaperDocumentPageView.updateToolPicker()();
}

void (*PaperDocumentPageView.editingMode.modify(uint64_t **a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = Canvas.editingMode.modify(v3);
  return PaperDocumentPageView.editingMode.modify;
}

void PaperDocumentPageView.editingMode.modify(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    PaperDocumentPageView.updateToolPicker()();
  }

  free(v3);
}

uint64_t PaperDocumentPageView.scrollViewForAvoidingKeyboard.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = PaperDocumentView.scrollViewForAvoidingKeyboard.getter();

    return v2;
  }

  return result;
}

unint64_t PaperDocumentPageView.pencilKitAttachmentViews()()
{
  v1 = *(v0 + direct field offset for PaperDocumentPageView.overlayView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 isHidden];
    v4 = MEMORY[0x1E69E7D40];
    if (v3)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for AnyCanvas();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = (*((*v4 & *v9) + 0x440))();
        v11 = *((*v4 & *v10) + 0x278);
        v12 = v2;
        v5 = v11();
      }

      else
      {
        v13 = [v2 subviews];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = specialized Sequence.flatMap<A>(_:)(v14);
      }
    }

    v15 = Canvas.editingView.getter();
    v16 = (*((*v4 & *v15) + 0x278))();

    specialized Array.append<A>(contentsOf:)(v16);
    return v5;
  }

  else
  {
    v6 = Canvas.editingView.getter();
    v7 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x278))();

    return v7;
  }
}

unint64_t PaperDocumentPageView.paperCanvases()()
{
  v1 = *&v0[direct field offset for PaperDocumentPageView.overlayView];
  if (v1)
  {
    v2 = v1;
    if ([v2 isHidden])
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      type metadata accessor for AnyCanvas();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D405CEB0;
        *(v3 + 32) = v8;
        v9 = v2;
      }

      else
      {
        v10 = [v2 subviews];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v3 = specialized Sequence.flatMap<A>(_:)(v11);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = v0;
    v13 = v0;
    specialized Array.append<A>(contentsOf:)(inited);

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D405CEB0;
    *(v4 + 32) = v0;
    v5 = v0;
    return v4;
  }
}

uint64_t PaperDocumentPageView.__allocating_init(context:frame:paper:documentView:)(void *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = type metadata accessor for Capsule();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v24 - v18);
  (*(v16 + 16))(&v24 - v18, a2, v15, v17);
  v20 = objc_allocWithZone(v7);
  PaperDocumentPageView.init(context:frame:paper:documentView:pdfPage:)(a1, v19, a3, 0, a4, a5, a6, a7);
  v22 = v21;
  (*(v16 + 8))(a2, v15);
  return v22;
}

void PaperDocumentPageView.init(context:frame:paper:documentView:pdfPage:)(void *a1, ValueMetadata *a2, _BYTE *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v41 = a4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v8 + direct field offset for PaperDocumentPageView.linedPaperView) = 0;
  *(v8 + direct field offset for PaperDocumentPageView.cancellables) = MEMORY[0x1E69E7CD0];
  *(v8 + direct field offset for PaperDocumentPageView.overlayView) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + direct field offset for PaperDocumentPageView.toolPicker) = 0;
  v15 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v16 = *&a3[v15];
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  v17 = [v16 documentScrollView];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = *&a3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView_tiledView];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v17;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v20 = type metadata accessor for PaperDocumentPageView.ScrollViewObserver();
  v40 = v18;
  v21 = [objc_allocWithZone(v20) init];
  *(v8 + direct field offset for PaperDocumentPageView.scrollViewObserver) = v21;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  v43[0] = a3;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  v22 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v43[0]) = a3[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__editingMode];
  v23 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v22, a2, v43, 1, 1, a5, a6, a7, a8);
  v24 = *&v23[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v25 = v23;
  [v19 addSubview_];
  v26 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v25, a5, a6, a7, a8);
  v27 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
  v28 = *&v25[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v25[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v29;

  if (!*&v25[v27])
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v19 addSubview_];
  v43[3] = &type metadata for PencilAndPaperFeatureFlags;
  v43[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v43[0]) = 1;
  v30 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v43);
  if (v30)
  {
    v31 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v32 = v25;
    v33 = HandwritingReflowView.init(frame:canvas:)(v32, a5, a6, a7, a8);
    [v19 addSubview_];
    v34 = *&v32[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v32[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v33;
  }

  v35 = direct field offset for PaperDocumentPageView.scrollViewObserver;
  swift_unknownObjectWeakAssign();
  [v19 _addScrollViewScrollObserver_];
  v36 = OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR;
  if (v25[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR])
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v43[0] = v25;
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v38 = type metadata accessor for Capsule();
    (*(*(v38 - 8) + 8))(a2, v38);
  }

  else
  {

    v39 = type metadata accessor for Capsule();
    (*(*(v39 - 8) + 8))(a2, v39);
    v25[v36] = 0;
  }
}

uint64_t @objc PaperDocumentPageView.isHidden.getter(void *a1)
{
  v1 = a1;
  v2 = PaperDocumentPageView.isHidden.getter();

  return v2 & 1;
}

id PaperDocumentPageView.isHidden.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentPageView();
  return objc_msgSendSuper2(&v2, sel_isHidden);
}

void @objc PaperDocumentPageView.isHidden.setter(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  PaperDocumentPageView.isHidden.setter(a3);
}

void PaperDocumentPageView.isHidden.setter(char a1)
{
  v3 = type metadata accessor for PaperDocumentPageView();
  v6.receiver = v1;
  v6.super_class = v3;
  v4 = objc_msgSendSuper2(&v6, sel_isHidden);
  v5.receiver = v1;
  v5.super_class = v3;
  objc_msgSendSuper2(&v5, sel_setHidden_, a1 & 1);
  PaperDocumentPageView.isHidden.didset(v4);
}

void PaperDocumentPageView.isHidden.didset(char a1)
{
  if ([v1 isHidden] != (a1 & 1))
  {
    AnyCanvas.overlays.getter();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = (v2 + 32);
      do
      {
        v5 = *v4;
        v4 += 2;
        v6 = v5;
        [v6 setHidden_];

        --v3;
      }

      while (v3);
    }

    if (([v1 isHidden] & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        [Strong layoutSubviews];
      }
    }
  }
}

Swift::Void __swiftcall PaperDocumentPageView.updateToolPicker()()
{
  v1 = [v0 pencilKitResponderState];
  v4 = [v1 _currentActiveToolPicker];

  if (v4)
  {
  }

  else
  {
    Canvas.editingMode.getter(&v5);
    v2 = v5 == 3;
    v3 = *&v0[direct field offset for PaperDocumentPageView.toolPicker];

    [v3 setVisible:v2 forFirstResponder:v0];
  }
}

Swift::Void __swiftcall PaperDocumentPageView.removeFromSuperview()()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PaperDocumentPageView();
  objc_msgSendSuper2(&v7, sel_removeFromSuperview);
  AnyCanvas.overlays.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v3 += 2;
      [v4 removeFromSuperview];
      --v2;
    }

    while (v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong _removeScrollViewScrollObserver_];
  }
}

void @objc PaperDocumentPageView.removeFromSuperview()(void *a1)
{
  v1 = a1;
  PaperDocumentPageView.removeFromSuperview()();
}

Swift::Void __swiftcall PaperDocumentPageView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for PaperDocumentPageView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = specialized Canvas.paperView.getter();
  [v0 bounds];
  [v1 setFrame_];

  v2 = *&v0[direct field offset for PaperDocumentPageView.overlayView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame_];
  }

  v4 = *&v0[direct field offset for PaperDocumentPageView.linedPaperView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    drawingTransform.a = 1.0;
    drawingTransform.b = 0.0;
    drawingTransform.c = 0.0;
    drawingTransform.d = 1.0;
    drawingTransform.tx = 0.0;
    drawingTransform.ty = 0.0;
    LinedPaperView.update(bounds:drawingTransform:shouldClip:)(v8, &drawingTransform, 1);
  }
}

void @objc PaperDocumentPageView.layoutSubviews()(void *a1)
{
  v1 = a1;
  PaperDocumentPageView.layoutSubviews()();
}

uint64_t PaperDocumentPageView.hitChromeForCanvasElementView(_:location:isStylus:event:)(double a1, double a2, uint64_t a3, char a4, void *a5)
{
  v6 = *(v5 + direct field offset for PaperDocumentPageView.overlayView);
  if (v6)
  {
    result = [v6 hitTest:0 withEvent:?];
    if (result)
    {

      return 1;
    }
  }

  else
  {

    return specialized Canvas.hitChromeForCanvasElementView(_:location:isStylus:event:)(a4 & 1, a5, a1, a2);
  }

  return result;
}

BOOL PaperDocumentPageView.allowsDropInteraction.getter()
{
  if (!Canvas.allowsDropInteraction.getter())
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = PaperDocumentView.canEditDocument()();

  return v2;
}

void __swiftcall PaperDocumentPageView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v8 = type metadata accessor for PKInk();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v23 = type metadata accessor for PaperDocumentPageView();
    v66.receiver = v3;
    v66.super_class = v23;
    v24 = [(UIView_optional *)&v66 hitTest:isa withEvent:x, y];
LABEL_22:
    v49 = v24;
    return;
  }

  v13 = *&v3[direct field offset for PaperDocumentPageView.overlayView];
  if (v13)
  {
    v14 = v13;
    [v14 convertPoint:v3 fromCoordinateSpace:{x, y}];
    v15 = [v14 hitTest:isa withEvent:?];

    if (v15)
    {
      return;
    }
  }

  LOBYTE(v16) = 0;
  if (PaperDocumentPageView.allowsDropInteraction.getter() && isa)
  {
    v17 = isa;
    v18 = MEMORY[0x1DA6CCED0](0x7645676172444955, 0xEB00000000746E65);
    v16 = NSClassFromString(v18);

    if (v16)
    {
      LOBYTE(v16) = [(objc_class *)v17 isKindOfClass:v16];
    }
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 ink];

    static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
    v22.super.isa = PKInk._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v22.super.isa = 0;
  }

  v25 = v22.super.isa;
  v26 = [(objc_class *)v25 _isHandwritingInk];

  if (v26)
  {
    v27 = Canvas.editingView.getter();
    v28 = Canvas.editingView.getter();
    [v28 convertPoint:v4 fromCoordinateSpace:{x, y}];
    v30 = v29;
    v32 = v31;

    v33 = [v27 hitTest:isa withEvent:{v30, v32}];
    if (v33)
    {
      return;
    }
  }

  v34 = Canvas.editingView.getter();
  v36 = v35;
  ObjectType = swift_getObjectType();
  v38 = (*(v36 + 168))(ObjectType, v36);

  if (v38)
  {
    v39 = Canvas.editingView.getter();
    [v39 convertPoint:v4 fromCoordinateSpace:{x, y}];
    v41 = v40;
    v43 = v42;

    v44 = [v38 hitTest:isa withEvent:{v41, v43}];
    if (v44)
    {
      return;
    }
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45 || (v46 = v45, swift_getKeyPath(), v65 = v46, _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v47 = v46[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__indirectPointerTouchMode], v46, v47) || (Canvas.editingMode.getter(&v65), (v65 == 1) | v16 & 1))
  {
    v48 = type metadata accessor for PaperDocumentPageView();
    v64.receiver = v4;
    v64.super_class = v48;
    v24 = [(UIView_optional *)&v64 hitTest:isa withEvent:x, y];
    goto LABEL_22;
  }

  v50 = Canvas.editingView.getter();
  v52 = v51;
  v53 = swift_getObjectType();
  v54 = (*(v52 + 64))(v53, v52);

  v63 = v54;
  if (v54 >> 62)
  {
LABEL_39:
    v55 = v63 & 0xFFFFFFFFFFFFFF8;
    v56 = __CocoaSet.count.getter();
  }

  else
  {
    v55 = v63 & 0xFFFFFFFFFFFFFF8;
    v56 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = v63 & 0xC000000000000001;
  v58 = v63 + 32;
  while (v56)
  {
    if (__OFSUB__(v56--, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v57)
    {
      v60 = MEMORY[0x1DA6CE0C0](v56, v63);
    }

    else
    {
      if ((v56 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v56 >= *(v55 + 16))
      {
        goto LABEL_38;
      }

      v60 = *(v58 + 8 * v56);
    }

    v61 = v60;
    [v60 convertPoint:v4 fromCoordinateSpace:{x, y, v63}];
    v62 = [v61 hitTest:isa withEvent:?];

    if (v62)
    {
      break;
    }
  }
}

id @objc PaperDocumentPageView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  PaperDocumentPageView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

UIContextMenuConfiguration_optional __swiftcall PaperDocumentPageView.customContextMenuInteraction(canvasElementViews:suggestedActions:)(Swift::OpaquePointer canvasElementViews, Swift::OpaquePointer suggestedActions)
{
  v3 = v2;
  v42._rawValue = canvasElementViews._rawValue;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v31 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return AnyCanvas.customContextMenuInteraction(canvasElementViews:suggestedActions:)(v42, suggestedActions);
  }

  v15 = Strong;
  swift_getKeyPath();
  v46 = v15;
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = v15 + OBJC_IVAR____TtC8PaperKit17PaperDocumentView__delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    return AnyCanvas.customContextMenuInteraction(canvasElementViews:suggestedActions:)(v42, suggestedActions);
  }

  v32 = *(v16 + 1);
  if (v42._rawValue >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v42._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v33 = v15;
    v34 = v8;
    v35 = v3;
    rawValue = suggestedActions._rawValue;
    v37 = v6;
    v38 = v5;
    if (!i)
    {
      break;
    }

    v8 = i;
    v18 = 0;
    v3 = v42._rawValue;
    v5 = v42._rawValue & 0xC000000000000001;
    v15 = (v41 + 48);
    v43 = (v41 + 32);
    v44 = v42._rawValue & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x1E69E7CC0];
    v40 = v42._rawValue & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v19 = MEMORY[0x1DA6CE0C0](v18, v3);
      }

      else
      {
        if (v18 >= *(v44 + 16))
        {
          goto LABEL_25;
        }

        v19 = v3[v18 + 4];
      }

      v20 = v19;
      suggestedActions._rawValue = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        break;
      }

      (*((*MEMORY[0x1E69E7D40] & *v19) + 0xF0))();

      if ((*v15)(v11, 1, v12) == 1)
      {
        outlined destroy of SharedTagged_10<TaggedCanvasElement>?(v11);
      }

      else
      {
        v21 = v12;
        v22 = v8;
        v23 = *v43;
        v24 = v21;
        (*v43)(v45, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
        }

        v26 = v6[2];
        v25 = v6[3];
        if (v26 >= v25 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v6);
        }

        v6[2] = v26 + 1;
        (v23)(v6 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v45, v24);
        v3 = v42._rawValue;
        v8 = v22;
        v12 = v24;
        v5 = v40;
      }

      ++v18;
      if (suggestedActions._rawValue == v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_23:
  ObjectType = swift_getObjectType();
  v28 = v34;
  PaperDocumentPageView.sharedPaperPage.getter();
  v29 = v33;
  v30 = (*(v32 + 8))(v33, v6, v28, rawValue, ObjectType);

  swift_unknownObjectRelease();

  (v37[1])(v28, v38);
  result.value.super.isa = v30;
  return result;
}

uint64_t PaperDocumentPageView.mergeToSelf<A>(_:from:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-v5];
  v7 = *a2;
  v12[15] = v7;
  v8 = Canvas.mergeToSelf<A>(_:from:)();
  if (((v8 & 1) != 0 || (v7 - 3) <= 1) && !AnyCanvas.isLiveEditing()())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      PaperDocumentPageView.sharedPaperPage.getter();
      PaperDocumentView.didChange(page:)(v6);

      (*(v4 + 8))(v6, v3);
    }
  }

  return v8 & 1;
}

uint64_t PaperDocumentPageView.canvasCalculateDocument.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_getKeyPath();
  _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = &v1[OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocument];
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();

  return v3;
}

void PaperDocumentPageView.canvasCalculateDocumentExpressionSolvingBehavior.getter(char *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    _s8PaperKit0A12DocumentViewCAC11Observation10ObservableAAWlTm_3(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__calculateDocumentExpressionSolvingBehavior;
    swift_beginAccess();
    v5 = v3[v4];
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
}

void PaperDocumentPageView.__ivar_destroyer()
{
  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperDocumentPageView._scrollView);
  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperDocumentPageView._tiledView);
  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperDocumentPageView._pdfPage);

  MEMORY[0x1DA6D07B0](v0 + direct field offset for PaperDocumentPageView.documentView);
  v1 = *(v0 + direct field offset for PaperDocumentPageView.toolPicker);
}

id PaperDocumentPageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaperDocumentPageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc PaperDocumentPageView.__ivar_destroyer(uint64_t a1)
{
  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperDocumentPageView._scrollView);
  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperDocumentPageView._tiledView);
  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperDocumentPageView._pdfPage);

  MEMORY[0x1DA6D07B0](a1 + direct field offset for PaperDocumentPageView.documentView);
  v2 = *(a1 + direct field offset for PaperDocumentPageView.toolPicker);
}

void *protocol witness for PageOverlayView.overlayView.getter in conformance PaperDocumentPageView<A>()
{
  v0 = specialized PaperDocumentPageView.overlayView.getter();
  v1 = v0;
  return v0;
}

void protocol witness for PageOverlayView.overlayView.setter in conformance PaperDocumentPageView<A>(void *a1)
{
  specialized PaperDocumentPageView.overlayView.setter(a1);
}

void protocol witness for PageOverlayView.toolPicker.setter in conformance PaperDocumentPageView<A>(void *a1)
{
  specialized PaperDocumentPageView.toolPicker.setter(a1);
}

void specialized PaperDocumentPageView.toolPicker.setter(void *a1)
{
  v2 = *(v1 + direct field offset for PaperDocumentPageView.toolPicker);
  *(v1 + direct field offset for PaperDocumentPageView.toolPicker) = a1;
  v3 = a1;

  PaperDocumentPageView.updateToolPicker()();
}

void specialized PaperDocumentPageView.overlayView.setter(void *a1)
{
  v3 = *(v1 + direct field offset for PaperDocumentPageView.overlayView);
  *(v1 + direct field offset for PaperDocumentPageView.overlayView) = a1;
  v2 = a1;
  PaperDocumentPageView.overlayView.didset(v3);
}

void specialized PaperDocumentPageView.canvasStateLiveStreamMessenger.setter(uint64_t a1, uint64_t a2)
{
  specialized Canvas.canvasStateLiveStreamMessenger.setter(a1, a2);

  PaperDocumentPageView.canvasStateLiveStreamMessenger.didset();
}

uint64_t specialized PaperDocumentPageView.didZoom(in:)()
{
  v1 = v0;
  v2 = specialized Canvas.paperView.getter();
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x260);
  v4 = v2;
  v3(v1);

  [v1 layoutSubviews];
  AnyCanvas.overlays.getter();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7;
      v7 += 2;
      [v8 layoutSubviews];
      --v6;
    }

    while (v6);
  }
}

uint64_t specialized PaperDocumentPageView.didScroll(in:)()
{
  v1 = v0;
  v2 = specialized Canvas.paperView.getter();
  ContainerCanvasElementView.didScroll(in:)(v1);

  [v1 layoutSubviews];
  AnyCanvas.overlays.getter();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5;
      v5 += 2;
      [v6 layoutSubviews];
      --v4;
    }

    while (v4);
  }
}

uint64_t outlined destroy of SharedTagged_10<TaggedCanvasElement>?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized PaperDocumentPageView.init(coder:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PaperDocumentPageView.linedPaperView) = 0;
  *(v0 + direct field offset for PaperDocumentPageView.cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + direct field offset for PaperDocumentPageView.overlayView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + direct field offset for PaperDocumentPageView.toolPicker) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for PaperDocumentPageLayout()
{
  result = type metadata singleton initialization cache for PaperDocumentPageLayout;
  if (!type metadata singleton initialization cache for PaperDocumentPageLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *specialized ContainerCanvasElementView.init(canvasElement:canvas:parentCanvasElement:)(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x558)) = 0;
  *(v3 + *((*v10 & *v3) + 0x560)) = 0;
  *(v3 + *((*v10 & *v3) + 0x568)) = 0;
  *(v3 + *((*v10 & *v3) + 0x570)) = MEMORY[0x1E69E7CC8];
  *(v3 + *((*v10 & *v3) + 0x578)) = 0;
  *(v3 + *((*v10 & *v3) + 0x580)) = 0;
  *(v3 + *((*v10 & *v3) + 0x588)) = 0;
  *(v3 + *((*v10 & *v3) + 0x590)) = 0;
  v24 = type metadata accessor for Image(0);
  v25 = _s8PaperKit5ShapeVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v26 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = *(v7 + 16);
  v22 = a1;
  v15(v9, a1, v6);
  (*(v7 + 56))(v3 + *((*v10 & *v3) + 0x3F8), 1, 1, v6);
  *(v3 + *((*v10 & *v3) + 0x400)) = 0;
  *(v3 + *((*v10 & *v3) + 0x408)) = 0;
  *(v3 + *((*v10 & *v3) + 0x410)) = 0;
  *(v3 + *((*v10 & *v3) + 0x418)) = 0;
  *(v3 + *((*v10 & *v3) + 0x420)) = 0;
  v15(v3 + *((*v10 & *v3) + 0x3F0), v9, v6);
  v16 = a3;
  v17 = v23;
  v18 = v23;
  v19 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v17, a3, v11, v12, v13, v14);
  specialized CanvasElementView.setupAccessibility()();
  if (v17)
  {
    (*((*v10 & *v19) + 0x520))();
  }

  v20 = *(v7 + 8);
  v20(v22, v6);
  v20(v9, v6);
  return v19;
}

{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x558)) = 0;
  *(v3 + *((*v10 & *v3) + 0x560)) = 0;
  *(v3 + *((*v10 & *v3) + 0x568)) = 0;
  *(v3 + *((*v10 & *v3) + 0x570)) = MEMORY[0x1E69E7CC8];
  *(v3 + *((*v10 & *v3) + 0x578)) = 0;
  *(v3 + *((*v10 & *v3) + 0x580)) = 0;
  *(v3 + *((*v10 & *v3) + 0x588)) = 0;
  *(v3 + *((*v10 & *v3) + 0x590)) = 0;
  v24 = type metadata accessor for Paper(0);
  v25 = _s8PaperKit5ShapeVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  v26 = &protocol witness table for Paper;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = *(v7 + 16);
  v22 = a1;
  v15(v9, a1, v6);
  (*(v7 + 56))(v3 + *((*v10 & *v3) + 0x3F8), 1, 1, v6);
  *(v3 + *((*v10 & *v3) + 0x400)) = 0;
  *(v3 + *((*v10 & *v3) + 0x408)) = 0;
  *(v3 + *((*v10 & *v3) + 0x410)) = 0;
  *(v3 + *((*v10 & *v3) + 0x418)) = 0;
  *(v3 + *((*v10 & *v3) + 0x420)) = 0;
  v15(v3 + *((*v10 & *v3) + 0x3F0), v9, v6);
  v16 = a3;
  v17 = v23;
  v18 = v23;
  v19 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v17, a3, v11, v12, v13, v14);
  specialized CanvasElementView.setupAccessibility()();
  if (v17)
  {
    (*((*v10 & *v19) + 0x520))();
  }

  v20 = *(v7 + 8);
  v20(v22, v6);
  v20(v9, v6);
  return v19;
}

{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x558)) = 0;
  *(v3 + *((*v10 & *v3) + 0x560)) = 0;
  *(v3 + *((*v10 & *v3) + 0x568)) = 0;
  *(v3 + *((*v10 & *v3) + 0x570)) = MEMORY[0x1E69E7CC8];
  *(v3 + *((*v10 & *v3) + 0x578)) = 0;
  *(v3 + *((*v10 & *v3) + 0x580)) = 0;
  *(v3 + *((*v10 & *v3) + 0x588)) = 0;
  *(v3 + *((*v10 & *v3) + 0x590)) = 0;
  v24 = type metadata accessor for PaperDocumentPage(0);
  v25 = _s8PaperKit5ShapeVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  v26 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v11 = v27;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = *(v7 + 16);
  v22 = a1;
  v15(v9, a1, v6);
  (*(v7 + 56))(v3 + *((*v10 & *v3) + 0x3F8), 1, 1, v6);
  *(v3 + *((*v10 & *v3) + 0x400)) = 0;
  *(v3 + *((*v10 & *v3) + 0x408)) = 0;
  *(v3 + *((*v10 & *v3) + 0x410)) = 0;
  *(v3 + *((*v10 & *v3) + 0x418)) = 0;
  *(v3 + *((*v10 & *v3) + 0x420)) = 0;
  v15(v3 + *((*v10 & *v3) + 0x3F0), v9, v6);
  v16 = a3;
  v17 = v23;
  v18 = v23;
  v19 = AnyCanvasElementView.init(frame:canvas:parentCanvasElement:)(v17, a3, v11, v12, v13, v14);
  specialized CanvasElementView.setupAccessibility()();
  if (v17)
  {
    (*((*v10 & *v19) + 0x520))();
  }

  v20 = *(v7 + 8);
  v20(v22, v6);
  v20(v9, v6);
  return v19;
}

void *PaperDocumentPageLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28[1] = a4;
  v28[2] = a5;
  v28[3] = a1;
  v29 = a3;
  v30 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v28 - v19;
  (*(v6 + 16))(v8, v28[0], v5, v18);
  type metadata accessor for PaperDocumentPage(0);
  _s8PaperKit5ShapeVAC9Coherence4CRDTAAWlTm_0(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<PaperDocumentPage> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  (*(v10 + 8))(v12, v9);
  v21 = objc_allocWithZone(type metadata accessor for PaperDocumentPageElementView());
  (*(v14 + 16))(v16, v20, v13);
  v22 = v29;
  v23 = v29;
  v24 = v30;
  v25 = v30;
  v26 = specialized ContainerCanvasElementView.init(canvasElement:canvas:parentCanvasElement:)(v16, v24, v22);
  (*(v14 + 8))(v20, v13);
  return v26;
}

unint64_t lazy protocol witness table accessor for type Ref<PaperDocumentPage> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<PaperDocumentPage> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<PaperDocumentPage> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit0C12DocumentPageVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<PaperDocumentPage> and conformance Ref<A>);
  }

  return result;
}

uint64_t _s8PaperKit5ShapeVAC9Coherence4CRDTAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

void one-time initialization function for isMacIdiom()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static UIConstants.isMacIdiom = v1 == 5;
}

void one-time initialization function for isIPhoneIdiom()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static UIConstants.isIPhoneIdiom = v1 == 0;
}

void one-time initialization function for supportsPencil()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 _supportsPencil];

  static UIConstants.supportsPencil = v1;
}

uint64_t one-time initialization function for backboardColor()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v4[4] = closure #1 in closure #1 in variable initialization expression of static UIConstants.backboardColor;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v4[3] = &block_descriptor_76;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider_];
  _Block_release(v1);

  static UIConstants.backboardColor = v2;
  return result;
}

id closure #1 in closure #1 in variable initialization expression of static UIConstants.backboardColor(void *a1)
{
  v1 = dbl_1D407B2F0[[a1 userInterfaceStyle] == 2];
  v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v2 initWithWhite:v1 alpha:1.0];
}

uint64_t one-time initialization function for resizeHandleSize()
{
  if (one-time initialization token for isMacIdiom != -1)
  {
    result = swift_once();
  }

  v0 = 16.0;
  if (static UIConstants.isMacIdiom)
  {
    v0 = 10.0;
  }

  static UIConstants.resizeHandleSize = *&v0;
  return result;
}

uint64_t one-time initialization function for resizeHandleInset()
{
  if (one-time initialization token for isMacIdiom != -1)
  {
    result = swift_once();
  }

  v0 = 3.0;
  if (static UIConstants.isMacIdiom)
  {
    v0 = 1.0;
  }

  static UIConstants.resizeHandleInset = *&v0;
  return result;
}

uint64_t one-time initialization function for resizeHandleEdgeWidth()
{
  if (one-time initialization token for isMacIdiom != -1)
  {
    result = swift_once();
  }

  v0 = 2.0;
  if (static UIConstants.isMacIdiom)
  {
    v0 = 1.0;
  }

  static UIConstants.resizeHandleEdgeWidth = *&v0;
  return result;
}

id one-time initialization function for resizeHandleColorDisabled()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.9 alpha:1.0];
  static UIConstants.resizeHandleColorDisabled = result;
  return result;
}

id one-time initialization function for marchingAntsColorA()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.4];
  static UIConstants.marchingAntsColorA = result;
  return result;
}

id one-time initialization function for marchingAntsColorB()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.8];
  static UIConstants.marchingAntsColorB = result;
  return result;
}

CGColorRef one-time initialization function for resizeInvisibleShapeBorderColor()
{
  result = CGColorCreateGenericGray(0.8, 1.0);
  static UIConstants.resizeInvisibleShapeBorderColor = result;
  return result;
}

uint64_t one-time initialization function for textBoxDefaultPointSize()
{
  if (one-time initialization token for isIPhoneIdiom != -1)
  {
    result = swift_once();
  }

  v0 = 60.0;
  if (!static UIConstants.isIPhoneIdiom)
  {
    v0 = 24.0;
  }

  static UIConstants.textBoxDefaultPointSize = *&v0;
  return result;
}

uint64_t one-time initialization function for textBoxFontUnitString()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v5._object = 0x80000001D4093230;
  v0._countAndFlagsBits = 0x746E6F4628207470;
  v0._object = 0xEE0029657A695320;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 29808;
  v2._object = 0xE200000000000000;
  v5._countAndFlagsBits = 0xD000000000000031;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v5);
  result = v4._countAndFlagsBits;
  static UIConstants.textBoxFontUnitString = v4;
  return result;
}

void one-time initialization function for textBoxDefaultFont()
{
  if (one-time initialization token for textBoxDefaultPointSize != -1)
  {
    swift_once();
  }

  v0 = *&static UIConstants.textBoxDefaultPointSize;
  v1 = MEMORY[0x1DA6CCED0](0x63697465766C6548, 0xE900000000000061);
  v2 = [objc_opt_self() fontWithName:v1 size:v0];

  if (v2)
  {
    static UIConstants.textBoxDefaultFont = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for defaultTextBoxAttributes()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D405FD70;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = one-time initialization token for textBoxDefaultFont;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static UIConstants.textBoxDefaultFont;
  v5 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIFont);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB688];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v8 = v4;
  v9 = v6;
  v10 = [v7 init];
  [v10 setAlignment_];

  v11 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSMutableParagraphStyle);
  v12 = MEMORY[0x1E69DB650];
  *(inited + 80) = v10;
  v13 = *v12;
  *(inited + 104) = v11;
  *(inited + 112) = v13;
  v14 = one-time initialization token for textBoxDefaultTextColor;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = static UIConstants.textBoxDefaultTextColor;
  *(inited + 144) = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor);
  *(inited + 120) = v16;
  v17 = v16;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd);
  result = swift_arrayDestroy();
  static UIConstants.defaultTextBoxAttributes = v18;
  return result;
}

uint64_t one-time initialization function for signatureInstructionString()
{
  if (one-time initialization token for supportsPencil != -1)
  {
    swift_once();
  }

  v0 = 0xEB00000000656C62;
  v1 = 0x617A696C61636F4CLL;
  if (static UIConstants.supportsPencil == 1)
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
      v1 = 0x617A696C61636F4CLL;
      v0 = 0xEB00000000656C62;
    }

    isa = paperKitBundle.super.isa;
    v9 = 0x80000001D40932A0;
    v3 = 0x80000001D40932D0;
    v4 = 0xD00000000000002ALL;
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
      v1 = 0x617A696C61636F4CLL;
      v0 = 0xEB00000000656C62;
    }

    isa = paperKitBundle.super.isa;
    v4 = 0xD000000000000020;
    v9 = 0x80000001D40932A0;
    v3 = 0x80000001D4093270;
  }

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = 0xD00000000000002ALL;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, *&v1, isa, v5, *(&v9 - 1));
  result = v8._countAndFlagsBits;
  static UIConstants.signatureInstructionString = v8;
  return result;
}

double one-time initialization function for defaultLine()
{
  __asm { FMOV            V1.2D, #0.5 }

  static UIConstants.defaultLine = xmmword_1D4059310;
  *algn_1EC7C40D0 = _Q1;
  result = 1.0;
  xmmword_1EC7C40E0 = xmmword_1D4059320;
  return result;
}

double one-time initialization function for defaultStar()
{
  if (one-time initialization token for defaultInnerRadius != -1)
  {
    swift_once();
  }

  result = *&static StarPathSource.defaultInnerRadius;
  static UIConstants.defaultStar = 5;
  qword_1EC7C40F8 = static StarPathSource.defaultInnerRadius;
  return result;
}

double one-time initialization function for defaultCalloutBubble()
{
  result = 0.0;
  static UIConstants.defaultCalloutBubble = xmmword_1D407B300;
  qword_1EC7C4110 = 0x3FD0000000000000;
  return result;
}

void one-time initialization function for defaultShadowColor()
{
  v0 = type metadata accessor for Color(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_allocate_value_buffer(v3, static UIConstants.defaultShadowColor);
  v4 = __swift_project_value_buffer(v0, static UIConstants.defaultShadowColor);
  v5 = *(v0 + 20);
  v6 = type metadata accessor for UnknownValueProperties();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  if (one-time initialization token for extendedSRGBColorSpace != -1)
  {
    swift_once();
  }

  v7 = static Color.extendedSRGBColorSpace;
  v8 = CGColorCreate(v7, dbl_1F4F51928);

  if (v8)
  {
    CGColorRef.calculateMinimumHeadroom.getter();
    v9 = static Color.extendedSRGBColorSpace;
    v10 = CGColorCreateWithContentHeadroom();

    if (v10)
    {

      *v2 = v10;
      outlined init with take of Color(v2, v4);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id one-time initialization function for resizeHandleColor(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void one-time initialization function for formFieldFont()
{
  v0 = MEMORY[0x1DA6CCED0](0x63697465766C6548, 0xE900000000000061);
  v1 = [objc_opt_self() fontWithName:v0 size:14.0];

  if (v1)
  {
    static UIConstants.formFieldFont = v1;
  }

  else
  {
    __break(1u);
  }
}

void one-time initialization function for formFieldBackgroundColor()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [v0 colorWithAlphaComponent_];

  static UIConstants.formFieldBackgroundColor = v1;
}

uint64_t one-time initialization function for largeThumbnailViewWidth()
{
  result = _UISolariumEnabled();
  v1 = 160.0;
  if (result)
  {
    v1 = 135.0;
  }

  static UIConstants.largeThumbnailViewWidth = *&v1;
  return result;
}

uint64_t one-time initialization function for defaultThumbnailViewWidth()
{
  result = _UISolariumEnabled();
  v1 = 81.0;
  if (result)
  {
    v1 = 100.0;
  }

  static UIConstants.defaultThumbnailViewWidth = *&v1;
  return result;
}

id one-time initialization function for handwritingReflowNonActiveBorderColor()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.75 alpha:0.4];
  static UIConstants.handwritingReflowNonActiveBorderColor = result;
  return result;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata completion function for CanvasElementView()
{
  result = type metadata accessor for Capsule();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall CanvasElementView.updateUI()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *(v3 + 0x3D8);
  v5 = *(v4 - 8);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v17 - v6;
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = (*(v3 + 1304))(v10);
  v14 = (*((*v2 & *v0) + 0x268))(v13);
  v15 = (*((*v2 & *v0) + 0x90))(v14);
  if (v15)
  {
    v16 = v15;
    (*((*v2 & *v15) + 0x928))();
  }

  CanvasElementView.canvasElement.getter(v12);
  Capsule.root.getter();
  (*(v9 + 8))(v12, v8);
  (*(*(v3 + 1000) + 88))(&v18, v4);
  (*(v5 + 8))(v7, v4);
  if ((v18 & 2) != 0)
  {
    [v1 setUserInteractionEnabled_];
  }
}

uint64_t CanvasElementView.identity.getter()
{
  v0 = type metadata accessor for Capsule();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  CanvasElementView.canvasElement.getter(&v5 - v2);
  Capsule.rootID.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t CanvasElementView.isFixedWidth.getter(uint64_t (*a1)(uint64_t, void))
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  CanvasElementView.canvasElement.getter(&v10 - v7);
  LOBYTE(a1) = a1(v5, *((v4 & v3) + 0x3E8));
  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void CanvasElementView.merge<A>(_:)()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for Capsule();
  v3 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  if ((v3 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v2 & *v1) + 0x520))(Strong);
  }

  else
  {
  }
}

double CanvasElementView.uneditedModelFrame.getter(void (*a1)(__n128))
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3D8);
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3E0);
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v13 - v10;
  a1(v9);
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = *((v4 & v3) + 0x3E8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v8 + 8))(v11, v7);
  return *&v13[4];
}

uint64_t CanvasElementView.modelFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, double a4)
{
  v9 = *v4;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3D8);
  v13 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x3E0);
  v14 = type metadata accessor for Capsule();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  CanvasElementView.canvasElement.getter(v21 - v16);
  v21[0] = v12;
  v21[1] = v13;
  v18 = *((v11 & v9) + 0x3E8);
  v21[2] = v18;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v15 + 8))(v17, v14);
  result = CGRect.almostEqual(_:threshold:)(*&v21[4], *&v21[5], *&v21[6], *&v21[7], 0.1, a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    v21[-6] = v18;
    *&v21[-5] = a1;
    *&v21[-4] = a2;
    *&v21[-3] = a3;
    v20 = a4;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();
    CanvasElementView.commitWithoutStateChange()();
    return (*((*v10 & *v4) + 0x268))();
  }

  return result;
}

Swift::Void __swiftcall CanvasElementView.tapped(location:modifierFlags:allowShowingEditMenu:)(CGPoint location, __C::UIKeyModifierFlags_optional modifierFlags, Swift::Bool allowShowingEditMenu)
{
  is_nil = modifierFlags.is_nil;
  rawValue = modifierFlags.value.rawValue;
  y = location.y;
  x = location.x;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))();
  if (v10)
  {
    v12 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (Strong, (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0) || ((*((*v9 & *v3) + 0x1D8))(&v13 + 1), (v13 & 0x200) != 0))
    {
      [v12 convertPoint:v3 fromCoordinateSpace:{x, y}];
      (*((*v9 & *v12) + 0x750))(MEMORY[0x1E69E7CC0], 0, allowShowingEditMenu);
    }

    else
    {
      (*((*v9 & *v12) + 0x3C8))(&v13);
      if (v13)
      {
        (*((*v9 & *v12) + 0x760))(v3, rawValue, is_nil);
      }
    }
  }
}

CGPathRef CanvasElementView.modelHitTestPath.getter()
{
  v3 = *MEMORY[0x1E69E9840];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2A0))(&transform);
  v4.origin.x = 0.0;
  v4.origin.y = 0.0;
  v4.size.width = 1.0;
  v4.size.height = 1.0;
  return CGPathCreateWithRect(v4, &transform);
}

BOOL CanvasElementView.isInLiveEdit.getter()
{
  v0 = type metadata accessor for Capsule();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  CanvasElementView.snapshotCanvasElement.getter(&v7 - v3);
  v5 = (*(*(v0 - 8) + 48))(v4, 1, v0) != 1;
  (*(v2 + 8))(v4, v1);
  return v5;
}

Swift::Void __swiftcall CanvasElementView.beginLiveEdit()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for Capsule();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  CanvasElementView.snapshotCanvasElement.getter(&v18 - v9);
  v11 = *(v3 - 8);
  v12 = (*(v11 + 48))(v10, 1, v3);
  v13 = *(v5 + 8);
  v13(v10, v4);
  if (v12 == 1)
  {
    CanvasElementView.canvasElement.getter(v7);
    (*(v11 + 56))(v7, 0, 1, v3);
    specialized CanvasElementView.snapshotCanvasElement.setter(v7);
    v14 = (v13)(v7, v4);
    v15 = (*((*v2 & *v1) + 0x1A8))(v14);
    v16 = *((*v2 & *v1) + 0x418);
    v17 = *(v1 + v16);
    *(v1 + v16) = v15;

    if (os_variant_has_internal_ui())
    {
      type metadata accessor for PPKSignpost();
      swift_allocObject();
      *(v1 + *((*v2 & *v1) + 0x420)) = PPKSignpost.init(name:identifier:message:)("PPKCanvasElementLiveEdit", 24, 2u, 0, 1, 0, 0);
    }
  }
}

Swift::Void __swiftcall CanvasElementView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  v3 = v2;
  v56 = undoable;
  v57 = discard;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CapsuleUndoActionVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - v9;
  v10 = type metadata accessor for CapsuleUndoAction();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Capsule();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  CanvasElementView.snapshotCanvasElement.getter(v19);
  if ((*(v20 + 48))(v19, 1, v12) == 1)
  {
    (*(v14 + 8))(v19, v13);
  }

  else
  {
    v27 = *(v20 + 32);
    v54 = v26;
    v27(v26, v19, v12);
    (*(v20 + 56))(v16, 1, 1, v12);
    specialized CanvasElementView.snapshotCanvasElement.setter(v16);
    (*(v14 + 8))(v16, v13);
    v28 = MEMORY[0x1E69E7D40];
    v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x418);
    v30 = *(v2 + v29);
    *(v2 + v29) = 0;

    v32 = v57;
    if (v57 || v56)
    {
      v31 = (*((*v28 & *v2) + 0x90))();
      if (v31)
      {
        v33 = v31;
        CanvasElementView.canvasElement.getter(v23);
        v34 = v51;
        Capsule.actionUndoingDifference(from:)();
        v35 = v23;
        v36 = v34;
        (*(v20 + 8))(v35, v12);
        v37 = v52;
        v38 = v34;
        v39 = v53;
        if ((*(v52 + 48))(v38, 1, v53) == 1)
        {

          v31 = outlined destroy of StocksKitCurrencyCache.Provider?(v36, &_s9Coherence17CapsuleUndoActionVSgMd);
        }

        else
        {
          v40 = v50;
          (*(v37 + 32))(v50, v36, v39);
          if (v32)
          {
            v41 = v49;
            (*(v37 + 16))(v49, v40, v39);
            (*(v37 + 56))(v41, 0, 1, v39);
            swift_beginAccess();
            Capsule.apply(_:)();
            outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s9Coherence17CapsuleUndoActionVSgMd);
            swift_endAccess();

            v31 = (*(v37 + 8))(v50, v39);
          }

          else
          {
            (*((*v28 & *v33) + 0x6D8))(v40, 0, 0, 0, 0, MEMORY[0x1E69E7CC0]);

            v31 = (*(v37 + 8))(v40, v39);
          }
        }
      }
    }

    (*((*v28 & *v3) + 0x268))(v31);
    CanvasElementView.commitWithoutStateChange()();
    if (os_variant_has_internal_ui())
    {
      v42 = type metadata accessor for TaskPriority();
      v43 = v55;
      (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
      type metadata accessor for MainActor();
      v44 = v3;
      v45 = static MainActor.shared.getter();
      v46 = swift_allocObject();
      v47 = MEMORY[0x1E69E85E0];
      v46[2] = v45;
      v46[3] = v47;
      v46[4] = v44;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v46);
    }

    (*(v20 + 8))(v54, v12);
  }
}

uint64_t CanvasElementView.isReadOnly.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  CanvasElementView.canvasElement.getter(&v13 - v10);
  Capsule.root.getter();
  (*(v9 + 8))(v11, v8);
  (*(*((v3 & v2) + 0x3E8) + 88))(&v14, v4);
  (*(v5 + 8))(v7, v4);
  return (v14 >> 1) & 1;
}

Swift::Void __swiftcall CanvasElementView.updateFrame()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v35);
    v30 = *&v35.a;
    v32 = *&v35.c;
    tx = v35.tx;
    ty = v35.ty;
  }

  else
  {
    v32 = xmmword_1D4059310;
    v30 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v6 = [v1 window];
  v7 = 1.0;
  v8 = 1.0;
  if (v6)
  {
    v9 = v6;
    v10 = [v6 screen];

    [v10 scale];
    v8 = v11;
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v13)
  {
    v14 = *((*v12 & *v13) + 0x450);
    v15 = v13;
    v16 = v14();

    if (v16)
    {
      [v16 zoomScale];
      v7 = v17;
    }
  }

  v36.origin.x = CanvasElementView.modelFrame.getter();
  *&v34.a = v31;
  *&v34.c = v33;
  v34.tx = tx;
  v34.ty = ty;
  v37 = CGRectApplyAffineTransform(v36, &v34);
  v38.origin.x = CGRect.rounded(scale:)(v8 * v7, v37.origin.x, v37.origin.y, v37.size.width, v37.size.height);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v24 = CGRectGetWidth(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  v25 = CGRectGetHeight(v41);
  if (CGRect.isFinite.getter(MinX, MinY, v24, v25))
  {
    [v1 setFrame_];
    [v1 setNeedsLayout];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1D38C4000, v27, v28, "Shape has non finite frame.", v29, 2u);
      MEMORY[0x1DA6D0660](v29, -1, -1);
    }
  }
}

double CanvasElementView.modelBounds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3E0);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  CanvasElementView.canvasElement.getter(v10 - v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = *((v2 & v1) + 0x3E8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return 0.0;
}

double CanvasElementView.modelRotation.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3E0);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  CanvasElementView.canvasElement.getter(v10 - v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = *((v2 & v1) + 0x3E8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return *&v10[3];
}

double CanvasElementView.uneditedModelCoordinateSpace.getter@<D0>(void (*a1)(__n128)@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3D8);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3E0);
  v9 = type metadata accessor for Capsule();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  a1(v11);
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = *((v6 & v5) + 0x3E8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v10 + 8))(v13, v9);
  result = *&v18;
  v15 = v19;
  v16 = v20;
  *a2 = v18;
  a2[1] = v15;
  a2[2] = v16;
  return result;
}

id CanvasElementView.modelCoordinateSpace.setter()
{
  v1 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for Capsule();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  CanvasElementView.commitWithoutStateChange()();
  (*((*v1 & *v0) + 0x268))();
  return [v0 setNeedsLayout];
}

void (*CanvasElementView.modelCoordinateSpace.modify(uint64_t *a1))(_OWORD **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  *a1 = v3;
  *(v3 + 144) = v1;
  CanvasElementView.modelCoordinateSpace.getter((v3 + 96));
  return CanvasElementView.modelCoordinateSpace.modify;
}

void CanvasElementView.modelCoordinateSpace.modify(_OWORD **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 3;
  }

  v4 = v2[7];
  *v3 = v2[6];
  v3[1] = v4;
  v3[2] = v2[8];
  CanvasElementView.modelCoordinateSpace.setter();

  free(v2);
}

uint64_t CanvasElementView.orientation.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  CanvasElementView.canvasElement.getter(&v14 - v10);
  Capsule.root.getter();
  (*(v9 + 8))(v11, v8);
  v12 = (*(*((v3 & v2) + 0x3E8) + 56))(v4);
  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t CanvasElementView.canvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v4 = type metadata accessor for Capsule();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t CanvasElementView.snapshotCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

void CanvasElementView.tapGestureRecognizer.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x400);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void CanvasElementView.dragGestureRecognizer.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x408);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void CanvasElementView.contextMenuInteraction.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x410);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

Swift::Void __swiftcall CanvasElementView.tapped(_:)(UITapGestureRecognizer *a1)
{
  [(UITapGestureRecognizer *)a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7.value.rawValue = [(UITapGestureRecognizer *)a1 modifierFlags];
  v7.is_nil = 0;

  CanvasElementView.tapped(location:modifierFlags:allowShowingEditMenu:)(__PAIR128__(v6, v4), v7, 1);
}

Swift::Bool __swiftcall CanvasElementView.isScrollViewNavigationGestureRecognizer(_:)(UIGestureRecognizer *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v4)
  {
    v5 = *((*v3 & *v4) + 0x450);
    v6 = v4;
    v7 = v5();

    if (v7)
    {
      v8 = [v7 pinchGestureRecognizer];
      if (v8 && (v9 = v8, v8, v9 == a1))
      {

        LOBYTE(v4) = 1;
      }

      else
      {
        v10 = [v7 panGestureRecognizer];

        LOBYTE(v4) = v10 == a1;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

uint64_t CanvasElementView.uneditedCanvasElement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Capsule();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  CanvasElementView.snapshotCanvasElement.getter(&v10 - v5);
  v7 = *(v2 - 8);
  v8 = *(v7 + 48);
  if (v8(v6, 1, v2) != 1)
  {
    return (*(v7 + 32))(a1, v6, v2);
  }

  CanvasElementView.canvasElement.getter(a1);
  result = (v8)(v6, 1, v2);
  if (result != 1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void CanvasElementView._uneditedModelHitTestPath.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x418);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

Swift::Void __swiftcall CanvasElementView.commitWithoutStateChange()()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = *(v1 + 0x3D8);
  v3 = *(v1 + 0x3E0);
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = (*(v1 + 144))(v6);
  if (v9)
  {
    v10 = v9;
    CanvasElementView.canvasElement.getter(v8);
    v12 = 4;
    AnyCanvas.merge<A>(_:from:)(v8, &v12, v2, v3);

    (*(v5 + 8))(v8, v4);
  }
}

Swift::Void __swiftcall CanvasElementView.dragMoved(_:)(UIPanGestureRecognizer *a1)
{
  v2 = v1;
  v102 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v95 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v101 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v95 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v95 - v20;
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))(v19);
  if (!v23)
  {
    return;
  }

  v24 = *((*v22 & *v23) + 0x3C8);
  v103 = v23;
  v25 = v24(&v104);
  if (v104 == 3)
  {
    (*((*v22 & *v1) + 0x1D8))(&v104, v25);
    if ((v104 & 2) != 0 || [(UIPanGestureRecognizer *)v102 state]!= 1)
    {
      goto LABEL_54;
    }

    v99 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
    v26 = *&v103[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
    if (!v26)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v27 = (v26 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
    v28 = v27[1];
    v29 = *v27;

    v100 = v28;

    AnyCanvasElementView.weakCanvasElement.getter(v8);
    v30 = v101;
    v97 = *(v101 + 48);
    v98 = v101 + 48;
    if (v97(v8, 1, v9) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    }

    else
    {
      (*(v30 + 32))(v21, v8, v9);
      v32 = v30;
      v33 = specialized Set.contains(_:)(v21, v29);

      (*(v32 + 8))(v21, v9);
      if (v33)
      {
LABEL_54:
        v84 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
        v85 = *&v103[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
        if (v85)
        {
          v86 = v85;
          ResizeView.dragMoved(_:)(v102);

          v87 = v103;
          v88 = *&v103[v84];
          if (v88)
          {
            v89 = v88[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
            v88[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 0;
            if ((v89 & 1) != 0 && (v90 = *&v88[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController]) != 0)
            {
              v91 = v88;
              v92 = v90;
              specialized MiniMenuController.update()();
            }

            else
            {
            }

            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_68;
      }
    }

    v34 = v99;
    v35 = *&v103[v99];
    if (!v35)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v36 = v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
    v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 1;
    if ((v36 & 1) == 0)
    {
      v37 = *&v35[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
      if (v37)
      {
        v38 = v35;
        v39 = v37;
        specialized MiniMenuController.update()();
      }
    }

    if (([(UIPanGestureRecognizer *)v102 modifierFlags]& 0x20000) == 0)
    {
      v40 = specialized CanvasMembers.init(_:)(v2);
      AnyCanvas.selection.setter(v40, v42, v43, v41 & 1);
      goto LABEL_54;
    }

    v44 = *&v103[v34];
    if (!v44)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v45 = *&v44[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection];
    v46 = *&v44[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 8];
    v95 = *&v44[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 16];
    LODWORD(v100) = v44[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection + 24];
    v104 = v45;
    swift_bridgeObjectRetain_n();
    v96 = v46;
    swift_bridgeObjectRetain_n();
    v47 = v44;
    AnyCanvasElementView.weakCanvasElement.getter(v5);
    if (v97(v5, 1, v9) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      v48 = v45;
    }

    else
    {
      v49 = v101;
      (*(v101 + 32))(v17, v5, v9);
      (*(v49 + 16))(v11, v17, v9);
      specialized Set._Variant.insert(_:)(v14, v11);
      v50 = *(v49 + 8);
      v50(v14, v9);
      v50(v17, v9);
      v48 = v104;
    }

    v51 = v45;
    v52 = v95;
    v53 = v96;
    CanvasElementResizeView.selection.setter(v48, v96, v95, v100);

    v54 = *&v103[v34];
    if (!v54)
    {
      goto LABEL_71;
    }

    v55 = v34;
    v56 = v54 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    v60 = *(v56 + 24);

    if (_sSh2eeoiySbShyxG_ABtFZ9Coherence13WeakTagged_10Vy8PaperKit0D13CanvasElementVG_Tt1g5(v51, v57))
    {
      v9 = _sSh2eeoiySbShyxG_ABtFZ9Coherence7WeakRefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGG_Tt1g5(v53, v58);

      if (v9)
      {
        if (v100)
        {
          if (v60)
          {
LABEL_47:

            goto LABEL_54;
          }
        }

        else
        {
          if (v52 == v59)
          {
            v79 = v60;
          }

          else
          {
            v79 = 1;
          }

          if ((v79 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }
    }

    else
    {
    }

    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, miniMenuLogger);
    v9 = v103;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = MEMORY[0x1E69E7D40];
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      v67 = *&v103[v55];
      if (!v67)
      {
LABEL_73:

        __break(1u);
        goto LABEL_74;
      }

      *(v66 + 4) = *(*(v67 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16);
      v68 = v66;

      _os_log_impl(&dword_1D38C4000, v62, v63, "Changing selection to have %ld elements", v68, 0xCu);
      MEMORY[0x1DA6D0660](v68, -1, -1);
    }

    else
    {

      v62 = v9;
    }

    MEMORY[0x1EEE9AC00](v69);
    *(&v95 - 2) = v9;
    AnyCanvas.updateCanvasState(_:)();
    if ([v9 isFirstResponder])
    {

LABEL_50:
      v80 = *(v9 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView);
      if (v80)
      {
        v81 = v80;
        HandwritingReflowView.updateForNewSelection()();
      }

      (*((*v65 & *v9) + 0x520))();
      v82 = *&v103[v55];
      if (!v82)
      {
        goto LABEL_72;
      }

      v83 = v82 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
      if (!*(*v83 + 16) && !*(*(v83 + 8) + 16) && (*(v83 + 24) & 1) == 0)
      {
        v93 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x468))();
        [v93 _clearSelectionIfNecessary];
      }

      goto LABEL_54;
    }

    v70 = *&v103[v55];
    if (!v70)
    {
LABEL_74:
      __break(1u);
      return;
    }

    v71 = v70;

    v72 = CanvasElementResizeView.resizingCanvasElements.getter();

    if (v72 >> 62)
    {
      v94 = __CocoaSet.count.getter();

      if (!v94)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v73)
      {
        goto LABEL_50;
      }
    }

    v74 = [v9 window];
    if (v74)
    {
      v75 = v74;
      v76 = [objc_opt_self() activeToolPickerForWindow_];
      if (v76)
      {
        v77 = v76;
        v78 = [v76 _visibilityUpdatesEnabled];
        [v77 _setVisibilityUpdatesEnabled_];
        [v9 becomeFirstResponder];
        [v77 _setVisibilityUpdatesEnabled_];

        goto LABEL_50;
      }
    }

    [v9 becomeFirstResponder];
    goto LABEL_50;
  }

  v31 = v103;
}

Swift::Void __swiftcall CanvasElementView.updateGestures()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  if (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) != 0 || (v3 = swift_unknownObjectWeakLoadStrong()) != 0 && (v4 = v3, v5 = AnyCanvasElementView.isEditingCanvasElement.getter(), v4, (v5))
  {
    v6 = (*((*v2 & *v1) + 0x458))();
    v7 = *v1;
    v8 = *v2;
    if ((v6 & 1) != 0 && !*(v1 + *((v8 & v7) + 0x400)))
    {
      v51[0] = v1;
      v27 = objc_allocWithZone(MEMORY[0x1E69DD060]);
      type metadata accessor for CanvasElementView();
      v28 = [v27 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:sel_tapped_];
      swift_unknownObjectRelease();
      v29 = *((*v2 & *v1) + 0x400);
      v30 = *(v1 + v29);
      *(v1 + v29) = v28;

      v31 = *(v1 + *((*v2 & *v1) + 0x400));
      if (v31)
      {
        [v31 setDelegate_];
      }

      v51[3] = &type metadata for PencilAndPaperFeatureFlags;
      v51[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
      LOBYTE(v51[0]) = 0;
      v32 = isFeatureEnabled(_:)();
      v33 = __swift_destroy_boxed_opaque_existential_0(v51);
      if (v32)
      {
        if (!*(v1 + *((*v2 & *v1) + 0x400)))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        [v1 addGestureRecognizer_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
          {
            v35 = (*((*v2 & *v1) + 0x350))();
            v36 = type metadata accessor for PrecisePanGestureRecognizer();
            v37 = objc_allocWithZone(v36);
            *&v37[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_initialModifierFlags] = 0;
            v37[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = 1;
            swift_unknownObjectWeakInit();
            *&v37[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_touchesBeganTimestamp] = 0;
            *&v37[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_tapAndHoldTimeout] = 0x3FB999999999999ALL;
            v50.receiver = v37;
            v50.super_class = v36;
            v38 = objc_msgSendSuper2(&v50, sel_initWithTarget_action_, 0, 0);
            v38[OBJC_IVAR____TtC8PaperKit27PrecisePanGestureRecognizer_isPrecise] = v35 & 1;
            swift_unknownObjectWeakAssign();
            [v38 setMaximumNumberOfTouches_];
            v39 = *((*v2 & *v1) + 0x408);
            v40 = *(v1 + v39);
            *(v1 + v39) = v38;

            v41 = *v2 & *v1;
            v42 = *(v1 + *(v41 + 0x408));
            if (v42)
            {
              [v42 setDelegate_];
              v41 = *v2 & *v1;
            }

            v43 = *(v1 + *(v41 + 1032));
            if (v43)
            {
              [v43 addTarget:v1 action:sel_dragMoved_];
              v41 = *v2 & *v1;
            }

            if (!*(v1 + *(v41 + 1032)))
            {
              goto LABEL_43;
            }

            [v1 addGestureRecognizer_];
          }
        }
      }

      else
      {
        v44 = (*((*v2 & *v1) + 0x90))(v33);
        if (v44)
        {
          v45 = v44;
          v46 = (*((*v2 & *v44) + 0x468))();

          if (v46)
          {
            v47 = [v46 canvasView];

            if (v47)
            {
              v48 = [v47 drawingGestureRecognizer];

              v49 = [v48 view];
              if (v49)
              {
                if (!*(v1 + *((*v2 & *v1) + 0x400)))
                {
LABEL_44:
                  __break(1u);
                  return;
                }

                [v49 addGestureRecognizer_];
              }
            }
          }
        }
      }

      goto LABEL_15;
    }

    if ((*((v8 & v7) + 0x458))())
    {
      goto LABEL_15;
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *v2 & *v1;
  v11 = *(v1 + *(v10 + 0x400));
  if (v11)
  {
    v12 = v11;
    [v1 removeGestureRecognizer_];
    v13 = *((*v2 & *v1) + 0x400);
    v14 = *(v1 + v13);
    *(v1 + v13) = 0;

    v10 = *v2 & *v1;
  }

  v15 = *(v1 + *(v10 + 1032));
  if (!v15)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  v16 = v15;
  [v1 removeGestureRecognizer_];
  v17 = *((*v2 & *v1) + 0x408);
  v18 = *(v1 + v17);
  *(v1 + v17) = 0;

  if (v9)
  {
LABEL_15:
    v19 = *((*v2 & *v1) + 0x460);
    if ((v19() & 1) == 0 || *(v1 + *((*v2 & *v1) + 0x410)))
    {
      if (v19())
      {
        return;
      }

      goto LABEL_18;
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];
    v25 = *((*v2 & *v1) + 0x410);
    v26 = *(v1 + v25);
    *(v1 + v25) = v24;

    if (*(v1 + *((*v2 & *v1) + 0x410)))
    {
      [v1 addInteraction_];
      return;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_18:
  v20 = *(v1 + *((*v2 & *v1) + 0x410));
  if (v20)
  {
    v21 = v20;
    [v1 removeInteraction_];
    v22 = *((*v2 & *v1) + 0x410);
    v23 = *(v1 + v22);
    *(v1 + v22) = 0;
  }
}

uint64_t CanvasElementView.accessibilityDescriptionForAttribute(_:)(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v2._countAndFlagsBits = 0xD000000000000012;
      v38._object = 0x80000001D408B050;
      v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v3.value._object = 0xEB00000000656C62;
      v2._object = 0x80000001D408B030;
      v38._countAndFlagsBits = 0xD00000000000003CLL;
      v4._countAndFlagsBits = 0;
      v4._object = 0xE000000000000000;
      v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, paperKitBundle, v4, v38);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v37, v5._countAndFlagsBits, v5._object);
      CGAffineTransform.decompose(initialRotation:)(&v32, 0.0);
      v6 = v32;
      v7 = v33;
      v8 = v34;
      v9 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D405C990;
      v41.origin.x = v6;
      v41.origin.y = v7;
      v41.size.width = v8;
      v41.size.height = v9;
      Width = CGRectGetWidth(v41);
      v12 = MEMORY[0x1E69E7DE0];
      *(v10 + 56) = MEMORY[0x1E69E7DE0];
      v13 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v10 + 64) = v13;
      *(v10 + 32) = Width;
      v42.origin.x = v6;
      v42.origin.y = v7;
      v42.size.width = v8;
      v42.size.height = v9;
      Height = CGRectGetHeight(v42);
      *(v10 + 96) = v12;
      *(v10 + 104) = v13;
      *(v10 + 72) = Height;
    }

    else
    {
      if (one-time initialization token for paperKitBundle != -1)
      {
        swift_once();
      }

      v40._object = 0x80000001D408AFE0;
      v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v21.value._object = 0xEB00000000656C62;
      v22._object = 0x80000001D408AFC0;
      v40._countAndFlagsBits = 0xD000000000000040;
      v22._countAndFlagsBits = 0xD000000000000016;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, paperKitBundle, v23, v40);
      (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v37, v24._countAndFlagsBits, v24._object);
      CGAffineTransform.decompose(initialRotation:)(&v32, 0.0);
      v25 = v32;
      v26 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D405C990;
      v28 = MEMORY[0x1E69E7DE0];
      *(v27 + 56) = MEMORY[0x1E69E7DE0];
      v29 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
      *(v27 + 64) = v29;
      *(v27 + 32) = v25;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 72) = v26;
    }
  }

  else
  {
    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v39._object = 0x80000001D408B0B0;
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._object = 0x80000001D408B090;
    v39._countAndFlagsBits = 0xD000000000000040;
    v16._countAndFlagsBits = 0xD000000000000016;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, paperKitBundle, v17, v39);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2A0))(v37, v18._countAndFlagsBits, v18._object);
    CGAffineTransform.decompose(initialRotation:)(&v32, 0.0);
    v19 = v36 / 3.14159265 * 180.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D4058CF0;
    *(v20 + 56) = MEMORY[0x1E69E7DE0];
    *(v20 + 64) = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    *(v20 + 32) = v19;
  }

  v30 = static String.localizedStringWithFormat(_:_:)();

  return v30;
}

Swift::String_optional __swiftcall CanvasElementView.accessibilityDescription()()
{
  v0 = CanvasElementView.accessibilityDescriptionForAttribute(_:)(2);
  v2 = v1;
  v3 = CanvasElementView.accessibilityDescriptionForAttribute(_:)(1);
  v5 = v4;
  v6 = CanvasElementView.accessibilityDescriptionForAttribute(_:)(0);
  v8 = v7;
  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v3, v5);

  MEMORY[0x1DA6CD010](8236, 0xE200000000000000);
  MEMORY[0x1DA6CD010](v6, v8);

  v9 = v0;
  v10 = v2;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t CGColorRef.isHDR.getter()
{
  CGColorGetContentHeadroom();
  if (v0 > 1.0)
  {
    return 1;
  }

  v2 = CGColorRef.components.getter();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = 32;
  do
  {
    v5 = v3-- != 0;
    v1 = v5;
    if (!v5)
    {
      break;
    }

    v6 = *(v2 + v4);
    v4 += 8;
  }

  while (v6 <= 1.0);

  return v1;
}

uint64_t CanvasElementView.sharedCanvasElement.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for Capsule();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  CanvasElementView.canvasElement.getter(&v8 - v5);
  Capsule<>.sharedCanvasElement.getter(v3, *((v2 & v1) + 0x3E8));
  return (*(v4 + 8))(v6, v3);
}

uint64_t CanvasElementView.flags.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3D8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3E0);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  CanvasElementView.canvasElement.getter(v10 - v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = *((v2 & v1) + 0x3E8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  return (*(v6 + 8))(v8, v5);
}

uint64_t CanvasElementView.flags.setter()
{
  v1 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  type metadata accessor for Capsule();
  Capsule.callAsFunction<A>(_:)();
  swift_endAccess();
  CanvasElementView.commitWithoutStateChange()();
  return (*((*v1 & *v0) + 0x520))();
}

uint64_t (*CanvasElementView.flags.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  CanvasElementView.flags.getter();
  return CanvasElementView.flags.modify;
}

void CanvasElementView.snapshotCanvasElement.didset()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))();
  if (v1)
  {
    v2 = v1;
    v3 = off_1F4F60E88;
    type metadata accessor for AnyCanvas();
    v4 = v3();
    v5 = AnyCanvas.isLiveEditing()();
    if (v5 == v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing])
    {
      v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__isCurrentlyLiveEditing] = v5;
      if ((v4 & 1) == 0)
      {
LABEL_8:

        return;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type AnyCanvas and conformance AnyCanvas();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    if ((v3() & 1) == 0)
    {
      specialized LiveEditable.resumeLiveEditingContinuations()();
    }

    goto LABEL_8;
  }
}

void __swiftcall CanvasElementView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v62 = *MEMORY[0x1E69E9840];
  v8 = *v3;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40] & v8;
  v56 = type metadata accessor for CGPathFillRule();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v9 & v8) + 0x3D8);
  v14 = *((v9 & v8) + 0x3E0);
  v15 = type metadata accessor for Capsule();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - v17;
  if (((*(v10 + 200))(x, y) & 1) == 0 || (v19 = type metadata accessor for CanvasElementView(), v57.receiver = v4, v57.super_class = v19, ![(UIView_optional *)&v57 hitTest:isa withEvent:x, y]))
  {
    [v4 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = CanvasElementView.canvasElement.getter(v18);
    MEMORY[0x1EEE9AC00](v28);
    *(&v47 - 4) = v13;
    *(&v47 - 3) = v14;
    *(&v47 - 2) = *(v10 + 1000);
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v16 + 8))(v18, v15);
    v29 = v59;
    v52 = v21 - v25 * 0.0;
    v51 = v23 - v27 * 0.0;
    v63.origin.x = v21;
    v63.origin.y = v23;
    v63.size.width = v25;
    v49 = v25;
    v63.size.height = v27;
    v50 = v27;
    MidX = CGRectGetMidX(v63);
    v64.origin.x = v21;
    v64.origin.y = v23;
    v64.size.width = v25;
    v64.size.height = v27;
    MidY = CGRectGetMidY(v64);
    CGAffineTransformMakeRotation(&t1, v29);
    tx = t1.tx;
    ty = t1.ty;
    v48 = *&t1.a;
    v47 = *&t1.c;
    CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
    a = t1.a;
    b = t1.b;
    v54 = y;
    v53 = x;
    c = t1.c;
    d = t1.d;
    v38 = t1.tx;
    v39 = t1.ty;
    *&t2.c = v47;
    *&t2.a = v48;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v58, &t1, &t2);
    v40 = v58.tx;
    v41 = v58.ty;
    v48 = *&v58.a;
    v47 = *&v58.c;
    t1.a = a;
    t1.b = b;
    t1.c = c;
    t1.d = d;
    t1.tx = v38;
    t1.ty = v39;
    CGAffineTransformInvert(&t2, &t1);
    *&t1.a = v48;
    *&t1.c = v47;
    t1.tx = v40;
    t1.ty = v41;
    CGAffineTransformConcat(&v58, &t1, &t2);
    t1.a = v49;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = v50;
    t1.tx = v52;
    t1.ty = v51;
    t2 = v58;
    CGAffineTransformConcat(&v58, &t1, &t2);
    t2 = v58;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = 1.0;
    v65.size.height = 1.0;
    v42 = CGPathCreateWithRect(v65, &t2);
    v43 = v55;
    v44 = v56;
    (*(v55 + 104))(v12, *MEMORY[0x1E695EEB8], v56);
    t1.a = 1.0;
    t1.b = 0.0;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    v45 = CGPathRef.contains(_:using:transform:)();

    (*(v43 + 8))(v12, v44);
    if (v45)
    {
      v46 = v4;
    }
  }
}

id @objc CanvasElementView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  CanvasElementView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

void @objc CanvasElementView.tapped(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementView.tapped(_:)(v4);
}

Swift::Bool __swiftcall CanvasElementView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v4)
  {
    v5 = v4;
    (*((*v3 & *v4) + 0x3C8))(&v11);
    if (v11)
    {
      v6 = *(v1 + *((*v3 & *v1) + 0x408));
      if (v6)
      {
        v7 = v6 == a1;
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
        v8 = 1;
LABEL_12:

        return v8 & 1;
      }

      v9 = (*((*v3 & *v1) + 0x358))([(UIGestureRecognizer *)a1 locationInView:v1]);
    }

    else
    {
      v9 = CanvasElementView.isScrollViewNavigationGestureRecognizer(_:)(a1);
    }

    v8 = v9;
    goto LABEL_12;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t @objc CanvasElementView.gestureRecognizerShouldBegin(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = CanvasElementView.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v6, v5);
}

uint64_t closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0[2] + *((*MEMORY[0x1E69E7D40] & *v0[2]) + 0x420));
  v0[6] = v2;
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v2, 0);
  }

  else
  {

    *(v0[2] + *((*v1 & *v0[2]) + 0x420)) = 0;

    v3 = v0[1];

    return v3();
  }
}

{
  PPKSignpost.complete(message:)(0, 0, 256);

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementView.endLiveEdit(undoable:discard:), v1, v2);
}

{

  *(*(v0 + 16) + *((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x420)) = 0;

  v1 = *(v0 + 8);

  return v1();
}

void @objc CanvasElementView.dragMoved(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasElementView.dragMoved(_:)(v4);
}

UIContextMenuConfiguration_optional __swiftcall CanvasElementView.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  y = configurationForMenuAtLocation.y;
  x = configurationForMenuAtLocation.x;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))();
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = v7;
  v10 = (*((*v6 & *v7) + 0x3C8))(&v17);
  if (v17 != 3 || ((*((*v6 & *v2) + 0x200))(v10) & 1) == 0)
  {

LABEL_6:
    v16 = 0;
    goto LABEL_7;
  }

  v11 = specialized CanvasMembers.init(_:)(v2);
  v15 = AnyCanvas.contextMenuInteraction(_:members:configurationForMenuAtLocation:)(_.super.isa, v11, v13, v14, v12 & 1, x, y);

  v16 = v15;
LABEL_7:
  result.value.super.isa = v16;
  result.is_nil = v8;
  return result;
}

id @objc CanvasElementView.contextMenuInteraction(_:configurationForMenuAtLocation:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = CanvasElementView.contextMenuInteraction(_:configurationForMenuAtLocation:)(v8, __PAIR128__(*&a3, *&a2));

  return v10;
}

void CanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = type metadata accessor for CanvasElementView();
  v21.receiver = v3;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_, a1, a2, a3);
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x90))(v15);
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v18)
    {
      __break(1u);
      return;
    }

    v19 = *(v18 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);

    AnyCanvasElementView.weakCanvasElement.getter(v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      v20 = specialized Set.contains(_:)(v13, v19);

      (*(v11 + 8))(v13, v10);
      if (v20)
      {
LABEL_7:

        return;
      }
    }

    AnyCanvas.selectedCanvasElementIds.setter(MEMORY[0x1E69E7CC0]);
    goto LABEL_7;
  }
}

id CanvasElementView.contextMenuInteraction(_:willEndFor:animator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for CanvasElementView();
  return objc_msgSendSuper2(&v8, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
}

void @objc CanvasElementView.contextMenuInteraction(_:willDisplayMenuFor:animator:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = a3;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  a6(v10, v11, a5);

  swift_unknownObjectRelease();
}

id CanvasElementView.isSelected.didset()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x200))();
  v2 = *MEMORY[0x1E69DDA08];
  v3 = [v0 accessibilityTraits];
  if ((v3 & v2) == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 | v3;
  v6 = -1;
  if ((v3 & v2) != 0)
  {
    v6 = ~v2;
  }

  v7 = v6 & v3;
  if (v1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  return [v0 setAccessibilityTraits_];
}

uint64_t CanvasElementView.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  v3 = type metadata accessor for Capsule();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *((*v1 & *v0) + 0x3F8);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
}

id CanvasElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasElementView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc CanvasElementView.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x3F0);
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x3F8);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
}

void specialized CanvasElementView.snapshotCanvasElement.setter(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
  swift_beginAccess();
  type metadata accessor for Capsule();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 24))(&v1[v3], a1, v4);
  swift_endAccess();
  CanvasElementView.snapshotCanvasElement.didset();
}

void specialized CanvasElementView.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F8);
  v3 = type metadata accessor for Capsule();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[*((*v1 & *v0) + 0x400)] = 0;
  *&v0[*((*v1 & *v0) + 0x408)] = 0;
  *&v0[*((*v1 & *v0) + 0x410)] = 0;
  *&v0[*((*v1 & *v0) + 0x418)] = 0;
  *&v0[*((*v1 & *v0) + 0x420)] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasElementView.endLiveEdit(undoable:discard:)(a1, v4, v5, v6);
}

Swift::Void __swiftcall CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, generativeLogger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D38C4000, v6, v7, "miniMenuRegenerateMagicGenerativePlayground", v8, 2u);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v9 = [v1 window];
  if (!v9 || (v10 = v9, v11 = [objc_opt_self() sharedInstance], v12 = objc_msgSend(v11, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v10), v11, v10, (v12 & 1) == 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
      if (v15)
      {
        v16 = v15;
        type metadata accessor for TiledTextView();
        if (swift_dynamicCastClass())
        {
          v17 = TiledTextView.canvasGenerationToolOverlayController.getter();
          v18 = *&v17[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
          if (v18)
          {
            v19 = *(v18 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

            v20 = type metadata accessor for TaskPriority();
            (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
            type metadata accessor for MainActor();
            v21 = v19;
            v22 = v14;
            v23 = static MainActor.shared.getter();
            v24 = swift_allocObject();
            v25 = MEMORY[0x1E69E85E0];
            v24[2] = v23;
            v24[3] = v25;
            v24[4] = v21;
            v24[5] = v22;
            _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground(), v24);

            return;
          }

          v14 = v16;
        }

        else
        {
          v17 = v16;
        }

        v14 = v17;
      }
    }

    v30 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D38C4000, v30, v26, "miniMenuRegenerateMagicGenerativePlayground: (returning (canvas/tiledView not set)", v27, 2u);
      MEMORY[0x1DA6D0660](v27, -1, -1);
    }

    v28 = v30;
  }
}

Swift::Void __swiftcall CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, generativeLogger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D38C4000, v6, v7, "miniMenuGenerateMagicGenerativePlaygroundForSelection", v8, 2u);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v9 = [v1 window];
  if (!v9 || (v10 = v9, v11 = [objc_opt_self() sharedInstance], v12 = objc_msgSend(v11, sel_presentGreymatterAvailabilityAlertControllerInWindow_, v10), v11, v10, (v12 & 1) == 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
      if (v15)
      {
        v16 = v15;
        type metadata accessor for TiledTextView();
        if (swift_dynamicCastClass())
        {
          v17 = TiledTextView.canvasGenerationToolOverlayController.getter();
          v18 = *&v17[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
          if (v18)
          {
            v19 = *(v18 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

            v20 = type metadata accessor for TaskPriority();
            (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
            type metadata accessor for MainActor();
            v21 = v19;
            v22 = v1;
            v23 = v14;
            v24 = static MainActor.shared.getter();
            v25 = swift_allocObject();
            v26 = MEMORY[0x1E69E85E0];
            v25[2] = v24;
            v25[3] = v26;
            v25[4] = v21;
            v25[5] = v22;
            v25[6] = v23;
            _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection(), v25);

            return;
          }

          v14 = v16;
        }

        else
        {
          v17 = v16;
        }

        v14 = v17;
      }
    }

    v31 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D38C4000, v31, v27, "miniMenuGenerateMagicGenerativePlaygroundForSelection: (returning (canvas/tiledView not set)", v28, 2u);
      MEMORY[0x1DA6D0660](v28, -1, -1);
    }

    v29 = v31;
  }
}

void CanvasElementResizeView.miniMenuSendFeedback(action:)(uint64_t a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Action();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v40 - v7;
  if (one-time initialization token for generativeLogger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = __swift_project_value_buffer(v9, generativeLogger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = v10;
    v14 = v4;
    v15 = v8;
    v16 = v5;
    v17 = v2;
    v18 = v3;
    v19 = a1;
    v20 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1D38C4000, v11, v12, "miniMenuSendFeedback", v13, 2u);
    v21 = v20;
    a1 = v19;
    v3 = v18;
    v2 = v17;
    v5 = v16;
    v8 = v15;
    v4 = v14;
    MEMORY[0x1DA6D0660](v21, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x468))();
    if (v24)
    {
      v25 = v24;
      type metadata accessor for TiledTextView();
      if (swift_dynamicCastClass())
      {
        v26 = TiledTextView.canvasGenerationToolOverlayController.getter();
        v27 = *&v26[OBJC_IVAR____TtC8PaperKit37CanvasGenerationToolOverlayController_canvasGenerationToolController];
        if (v27)
        {
          v28 = *(v27 + OBJC_IVAR____TtC8PaperKit30CanvasGenerationToolController_canvasGenerationTool);

          v29 = type metadata accessor for TaskPriority();
          (*(*(v29 - 8) + 56))(v8, 1, 1, v29);
          (*(v3 + 16))(v5, a1, v2);
          type metadata accessor for MainActor();
          v41 = v28;
          v30 = v23;
          v31 = static MainActor.shared.getter();
          v32 = (*(v3 + 80) + 40) & ~*(v3 + 80);
          v33 = (v4 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
          v34 = swift_allocObject();
          v35 = MEMORY[0x1E69E85E0];
          *(v34 + 2) = v31;
          *(v34 + 3) = v35;
          v36 = v41;
          *(v34 + 4) = v41;
          (*(v3 + 32))(&v34[v32], v5, v2);
          *&v34[v33] = v30;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in CanvasElementResizeView.miniMenuSendFeedback(action:), v34);

          return;
        }

        v23 = v25;
      }

      else
      {
        v26 = v25;
      }

      v23 = v26;
    }
  }

  v41 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D38C4000, v41, v37, "miniMenuSendFeedback: (returning (canvas/tiledView not set)", v38, 2u);
    MEMORY[0x1DA6D0660](v38, -1, -1);
  }

  v39 = v41;
}

uint64_t CanvasElementResizeView.shouldShowMiniMenu.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(*(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection) + 16) || (v3 = Strong, v4 = *(CanvasElementResizeView.resizingStrokes.getter() + 16), , Strong = v3, v4)) && !*(v1 + OBJC_IVAR____TtC8PaperKit10ResizeView_currentActiveHandle))
    {
      v7 = Strong;
      v8 = AnyCanvas.isEditingTextBox.getter();

      if ((v8 & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu) & 1) == 0 && *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_wantsMiniMenuVisible) == 1)
      {
        v5 = *(v1 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_isSheetPresented) ^ 1;
        return v5 & 1;
      }
    }

    else
    {
    }
  }

  v5 = 0;
  return v5 & 1;
}

double ResizeView.miniMenuVisibleBounds.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, swift_beginAccess(), v4 = swift_unknownObjectWeakLoadStrong(), v3, v4))
  {
    v5 = [v4 viewForOverlay];
  }

  else
  {
    v5 = v1;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  v7 = MEMORY[0x1E69E7D40];
  if (v6 && (v8 = v6, v9 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x450))(), v8, v9))
  {
    v10 = v9;
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v10 superview];

    [v5 convertRect:v19 fromView:{v12, v14, v16, v18}];
    v21 = v20;
  }

  else
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22 && (v23 = v22, (*((*v7 & *v22) + 0x488))(&v36), v23, (v37 & 1) == 0))
    {
      v21 = v36;
    }

    else
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = (*((*v7 & *v24) + 0x498))();
        v28 = v27;
        v30 = v29;
        v32 = v31;

        ResizeView.modelToViewTransform.getter(&v38);
        v35 = v38;
        v39.origin.x = v26;
        v39.origin.y = v28;
        v39.size.width = v30;
        v39.size.height = v32;
        v40 = CGRectApplyAffineTransform(v39, &v35);
      }

      else
      {
        v40.size.width = 1.0;
        v40.origin.x = 0.0;
        v40.origin.y = 0.0;
        v40.size.height = 1.0;
      }

      [v5 convertRect:v1 fromCoordinateSpace:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];
      v21 = v33;
    }
  }

  return v21;
}

uint64_t closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground();

  return specialized CanvasGenerationTool.recreateMagicGenerativePlayground(invocation:canvas:)(a5);
}

uint64_t closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground()()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground();
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground();
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x1EEE6DFA0](closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection(), v8, v7);
}

uint64_t closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection()()
{
  v1 = v0[5];
  v2 = v0[4] + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
  v3 = *v2;
  v0[9] = *v2;
  v4 = *(v2 + 8);
  v0[10] = v4;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection();

  return CanvasGenerationTool.initiateMagicGenerativePlayground(for:canvas:invocation:)(v3, v4, v5, v6, v1, 2);
}

{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection();
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection();
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

{
  v1 = v0[12];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in CanvasElementResizeView.miniMenuSendFeedback(action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = closure #2 in PaperDocumentViewController.passwordViewController(_:shouldUnlockWithPassword:);

  return CanvasGenerationTool.sendFeedback(action:canvas:)(a5, a6);
}

uint64_t partial apply for closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementResizeView.miniMenuRegenerateMagicGenerativePlayground()(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in CanvasElementResizeView.miniMenuGenerateMagicGenerativePlaygroundForSelection()(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CanvasElementResizeView.miniMenuSendFeedback(action:)(uint64_t a1)
{
  v4 = *(type metadata accessor for FBKSEvaluation.Action() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in CanvasElementResizeView.miniMenuSendFeedback(action:)(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t SignatureTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentLeadingInset] = 0x403E000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentEditLeadingInset] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentTrailingInset] = 0x403E000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentVerticalInset] = 0x4024000000000000;
  v7 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint] = 0;
  if (a3)
  {

    v8 = MEMORY[0x1DA6CCED0](a2, a3);
  }

  else
  {
    v8 = 0;
  }

  v42.receiver = v3;
  v42.super_class = type metadata accessor for SignatureTableViewCell();
  v9 = objc_msgSendSuper2(&v42, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView;
  v11 = *&v9[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView];
  v12 = v9;
  [v11 setContentMode_];
  [*&v9[v10] setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 contentView];
  [v13 addSubview_];

  v14 = [*&v9[v10] leadingAnchor];
  v15 = [v12 contentView];
  v16 = [v15 leadingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:30.0];
  v18 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint;
  v19 = *&v12[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint];
  *&v12[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint] = v17;

  v20 = [*&v9[v10] trailingAnchor];
  v21 = [v12 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-30.0];
  v24 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint;
  v25 = *&v12[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint];
  *&v12[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D405B630;
  v27 = *&v12[v18];
  if (v27)
  {
    v28 = result;
    *(result + 32) = v27;
    v29 = *&v12[v24];
    if (v29)
    {
      v30 = objc_opt_self();
      v31 = v27;
      v32 = v29;

      v28[5] = v32;
      v33 = [*&v9[v10] topAnchor];
      v34 = [v12 contentView];
      v35 = [v34 topAnchor];

      v36 = [v33 constraintEqualToAnchor:v35 constant:10.0];
      v28[6] = v36;
      v37 = [*&v9[v10] bottomAnchor];
      v38 = [v12 contentView];

      v39 = [v38 bottomAnchor];
      v40 = [v37 constraintEqualToAnchor:v39 constant:-10.0];

      v28[7] = v40;
      type metadata accessor for NSLayoutConstraint();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v30 activateConstraints_];

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SignatureTableViewCell.layoutSubviews()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in SignatureTableViewCell.layoutSubviews();
  *(v3 + 24) = v2;
  v7[4] = partial apply for closure #2 in StickerDragPreviewContainerView._animateDrop(alongside:completion:);
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_77;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0xE8))(v6);
  }
}

void closure #1 in SignatureTableViewCell.layoutSubviews()(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for SignatureTableViewCell();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = [a1 contentView];
  [v2 layoutSubviews];
}

Swift::Void __swiftcall SignatureTableViewCell.updateSignature()()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView];
  [v1 bounds];
  if (!CGRectIsEmpty(v16))
  {
    v2 = *&v0[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature];
    if (v2)
    {
      v3 = v2;
      [v1 bounds];
      v5 = v4;
      v7 = v6;

      v8 = objc_opt_self();
      v9 = [v8 currentTraitCollection];
      v10 = [v9 userInterfaceStyle];

      v11 = [v8 currentTraitCollection];
      [v11 displayScale];
      v13 = v12;

      v14 = SignatureItem.image(withMaximumSize:color:lineWidth:darkMode:renderScale:)(0, 0, 1, v10 == 2, v5, v7, v13);
    }

    else
    {
      v14 = 0;
    }

    [v1 setImage_];
  }
}

char *SignatureAndDescriptionTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionFont;
  *&v3[v7] = [objc_opt_self() preferredFontForTextStyle_];
  v8 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionColor;
  *&v3[v8] = [objc_opt_self() secondaryLabelColor];
  *&v3[OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionFraction] = 0x3FD49BA5E353F7CFLL;
  v9 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  if (a3)
  {

    v10 = MEMORY[0x1DA6CCED0](a2, a3);
  }

  else
  {
    v10 = 0;
  }

  v51.receiver = v3;
  v51.super_class = type metadata accessor for SignatureAndDescriptionTableViewCell();
  v11 = objc_msgSendSuper2(&v51, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView;
  v13 = *&v11[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView];
  v14 = v11;
  v15 = v13;
  if ([v14 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v16 = 8;
  }

  else
  {
    v16 = 7;
  }

  [v15 setContentMode_];

  v17 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel;
  [*&v14[OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v14[v17] setFont_];
  [*&v14[v17] setTextColor_];
  v18 = *&v14[v17];
  [v18 setTextAlignment_];

  [*&v14[v17] setNumberOfLines_];
  v19 = v14;
  v20 = [v19 contentView];
  [v20 addSubview_];

  result = [v19 contentView];
  v22 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint;
  if (*&v19[OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint])
  {
    v23 = result;
    [result removeConstraint_];

    v24 = [*&v11[v12] trailingAnchor];
    v25 = [*&v14[v17] leadingAnchor];
    v26 = [v24 constraintEqualToAnchor_];

    v27 = *&v19[v22];
    *&v19[v22] = v26;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    result = swift_allocObject();
    *(result + 1) = xmmword_1D405CEB0;
    v28 = *&v19[v22];
    if (v28)
    {
      v29 = result;
      v50 = objc_opt_self();
      v30 = v28;

      *(v29 + 4) = v30;
      type metadata accessor for NSLayoutConstraint();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v50 activateConstraints_];

      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D405B630;
      v33 = [*&v14[v17] widthAnchor];
      v34 = [v19 contentView];
      v35 = [v34 widthAnchor];

      v36 = [v33 constraintEqualToAnchor:v35 multiplier:0.322];
      *(v32 + 32) = v36;
      v37 = [*&v14[v17] trailingAnchor];
      v38 = [v19 contentView];
      v39 = [v38 trailingAnchor];

      v40 = [v37 constraintEqualToAnchor:v39 constant:-30.0];
      *(v32 + 40) = v40;
      v41 = [*&v14[v17] topAnchor];
      v42 = [v19 &selRef_magicPaperViewControllerViewDidAppear_];
      v43 = [v42 topAnchor];

      v44 = [v41 constraintEqualToAnchor:v43 constant:10.0];
      *(v32 + 48) = v44;
      v45 = [*&v14[v17] bottomAnchor];
      v46 = [v19 &selRef_magicPaperViewControllerViewDidAppear_];

      v47 = [v46 bottomAnchor];
      v48 = [v45 constraintEqualToAnchor:v47 constant:-10.0];

      *(v32 + 56) = v48;
      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v50 activateConstraints_];

      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t @objc SignatureTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

Swift::Void __swiftcall SignatureAndDescriptionTableViewCell.updateSignature()()
{
  SignatureTableViewCell.updateSignature()();
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel);
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature);
  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC8PaperKit13SignatureItem_signatureDescription);
    v5 = *v3;
    countAndFlagsBits = v3[1];
    if ((countAndFlagsBits - 1) >= 5)
    {
      if (countAndFlagsBits)
      {
        object = v3[1];

        countAndFlagsBits = v5;
      }

      else
      {
        object = 0xE000000000000000;
      }
    }

    else
    {
      v6 = SignatureDescription.localizedTitle()();
      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
    }

    v8 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
  }

  else
  {
    v8 = 0;
  }

  [v1 setText_];
}

void SignatureAndDescriptionTableViewCell.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel);
}

id SignatureTableViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized SignatureTableViewCell.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentLeadingInset) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentEditLeadingInset) = 0x402E000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentTrailingInset) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_contentVerticalInset) = 0x4024000000000000;
  v1 = OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signature) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit22SignatureTableViewCell_signatureViewTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized SignatureAndDescriptionTableViewCell.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionFont;
  *(v0 + v1) = [objc_opt_self() preferredFontForTextStyle_];
  v2 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionColor;
  *(v0 + v2) = [objc_opt_self() secondaryLabelColor];
  *(v0 + OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionFraction) = 0x3FD49BA5E353F7CFLL;
  v3 = OBJC_IVAR____TtC8PaperKit36SignatureAndDescriptionTableViewCell_descriptionLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ImageRenderer.Context.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

CGContextRef_optional __swiftcall ImageRenderer.createCGContext()()
{
  result.value = 0;
  v2 = *(v0 + 24);
  v3 = (*&v2 >> 52) & 0x7FFLL;
  if (!v3)
  {
    return result;
  }

  if (v3 == 2047)
  {
    return result;
  }

  result.value = 0;
  v4 = *(v0 + 32);
  v5 = (*&v4 >> 52) & 0x7FFLL;
  if (!v5 || v5 == 2047)
  {
    return result;
  }

  v6 = *(v0 + 40);
  v7 = v2 * v6;
  if (v2 * v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = v4 * v6;
  v9 = COERCE__INT64(fabs(v4 * v6)) > 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(v2 * v6)) > 0x7FEFFFFFFFFFFFFFLL || v9)
  {
    goto LABEL_43;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v10 = v7;
  v11 = v8;
  if (v7 < 1 || v11 < 1)
  {
    return 0;
  }

  v13 = MEMORY[0x1E695F0D8];
  v14 = *(v0 + 49);
  if (!*(v0 + 49))
  {
    v13 = MEMORY[0x1E695F0B8];
  }

  result.value = CGColorSpaceCreateWithName(*v13);
  if (result.value)
  {
    if (v14)
    {
      v15 = 16;
    }

    else
    {
      v15 = 8;
    }

    if ((v10 * (v15 >> 1)) >> 64 == (v10 * (v15 >> 1)) >> 63)
    {
      v16 = result.value;
      AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
      if (*(v0 + 48))
      {
        v18 = 8198;
      }

      else
      {
        v18 = 8194;
      }

      if (*(v0 + 48))
      {
        v19 = 4357;
      }

      else
      {
        v19 = 4353;
      }

      if (v14)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = CGBitmapContextCreate(0, v10, v11, v15, AlignedBytesPerRow, v16, v20);
      if (v21)
      {
        v22 = v21;
        CGAffineTransformMakeScale(&transform, v6, v6);
        CGContextConcatCTM(v22, &transform);
        if (*(v0 + 80) == 1)
        {
          v28.origin.x = 0.0;
          v28.origin.y = 0.0;
          v28.size.width = v2;
          v28.size.height = v4;
          MinY = CGRectGetMinY(v28);
          v29.origin.x = 0.0;
          v29.origin.y = 0.0;
          v29.size.width = v2;
          v29.size.height = v4;
          MaxY = CGRectGetMaxY(v29);
          transform.a = 1.0;
          transform.b = 0.0;
          transform.c = 0.0;
          transform.d = 1.0;
          transform.tx = 0.0;
          transform.ty = 0.0;
          t2.b = 0.0;
          t2.c = 0.0;
          t2.a = 1.0;
          *&t2.d = xmmword_1D405A660;
          t2.ty = MinY + MaxY;
          CGAffineTransformConcat(&v25, &transform, &t2);
          transform = v25;
          CGContextConcatCTM(v22, &transform);
        }

        if ((*(v0 + 64) & 1) == 0)
        {
          CGContextSetEDRTargetHeadroom();
        }

        return v22;
      }

      return 0;
    }

LABEL_46:
    __break(1u);
  }

  return result;
}

CGContextRef_optional ImageRenderer.createContext(output:)@<X0>(uint64_t *a1@<X8>)
{
  result.value = ImageRenderer.createCGContext()().value;
  if (result.value)
  {
    value = result.value;
    v5 = *(v1 + 24);
    v6 = *(v1 + 32);
    v7 = *(v1 + 48);
    v8 = *(v1 + 49);
    v9 = *(v1 + 56);
    v10 = *(v1 + 64);
    v11 = *(v1 + 72);
    v12 = *(v1 + 80);
    v13 = type metadata accessor for ImageRenderer.Context();
    v14 = swift_allocObject();
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    *(v14 + 32) = value;
    *(v14 + 40) = v7;
    *(v14 + 41) = v8;
    *(v14 + 48) = v9;
    *(v14 + 56) = v10;
    *(v14 + 64) = v11;
    *(v14 + 72) = v12;
    result.value = v11;
    v15 = &protocol witness table for ImageRenderer.Context;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v14;
  a1[3] = v13;
  a1[4] = v15;
  return result;
}