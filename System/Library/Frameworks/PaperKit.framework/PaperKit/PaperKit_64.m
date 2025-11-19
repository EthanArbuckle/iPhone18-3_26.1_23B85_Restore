uint64_t ImageRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ImageRenderer.RendererOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t storeEnumTagSinglePayload for ImageRenderer.RendererOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for RendererOutput()
{
  result = type metadata singleton initialization cache for RendererOutput;
  if (!type metadata singleton initialization cache for RendererOutput)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for RendererOutput()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for NSMutableData();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PaperAttachmentTextualContext.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PaperAttachmentTextualContext.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void __swiftcall PaperAttachmentTextualContext.init(title:precedingParagraphs:followingParagraphs:)(PaperKit::PaperAttachmentTextualContext *__return_ptr retstr, Swift::String title, Swift::OpaquePointer precedingParagraphs, Swift::OpaquePointer followingParagraphs)
{
  retstr->precedingParagraph._countAndFlagsBits = 0;
  retstr->precedingParagraph._object = 0xE000000000000000;
  retstr->followingParagraph._countAndFlagsBits = 0;
  retstr->followingParagraph._object = 0xE000000000000000;
  retstr->title = title;
  retstr->precedingParagraphs = precedingParagraphs;
  retstr->followingParagraphs = followingParagraphs;
}

void __swiftcall PaperAttachmentTextualContext.init(title:precedingParagraph:followingParagraph:)(PaperKit::PaperAttachmentTextualContext *__return_ptr retstr, Swift::String title, Swift::String precedingParagraph, Swift::String followingParagraph)
{
  object = followingParagraph._object;
  countAndFlagsBits = followingParagraph._countAndFlagsBits;
  v6 = precedingParagraph._object;
  v7 = precedingParagraph._countAndFlagsBits;
  retstr->precedingParagraph._countAndFlagsBits = 0;
  retstr->precedingParagraph._object = 0xE000000000000000;
  retstr->followingParagraph._countAndFlagsBits = 0;
  retstr->followingParagraph._object = 0xE000000000000000;
  retstr->title = title;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D4058CF0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  retstr->precedingParagraphs._rawValue = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D4058CF0;
  *(v10 + 32) = countAndFlagsBits;
  *(v10 + 40) = object;
  retstr->followingParagraphs._rawValue = v10;
}

uint64_t PaperAttachmentTextualContext.precedingParagraph.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PaperAttachmentTextualContext.precedingParagraph.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PaperAttachmentTextualContext.followingParagraph.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PaperAttachmentTextualContext.followingParagraph.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PaperAttachmentTextualContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PaperAttachmentTextualContext(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void closure #1 in variable initialization expression of TextBoxViewAttributes.fontButtonImage()
{
  v0 = *MEMORY[0x1E69DDCF8];
  v1 = *MEMORY[0x1E69DB980];
  v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v3 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection_];

  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = [objc_opt_self() configurationWithFont:v5 scale:2];

  v7 = v6;
  v8 = MEMORY[0x1DA6CCED0](0x6D726F6674786574, 0xEA00000000007461);
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    [v9 imageWithRenderingMode_];

    return;
  }

LABEL_7:
  __break(1u);
}

void Array<A>.displayAttributes()(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV9SubstringVy8PaperKit18TextAttributeScopeV_GMd);
  v4 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v72 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v83 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v7 = &v72 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd);
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v72 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v72 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v84 = &v72 - v11;
  v74 = 0x63697465766C6548;
  *a2 = 0x63697465766C6548;
  a2[1] = 0xE900000000000061;
  v75 = 0xE900000000000061;
  a2[2] = 5;
  *(a2 + 24) = 0;
  v12 = type metadata accessor for TextBoxViewAttributes();
  v13 = v12[7];
  v14 = type metadata accessor for Color(0);
  v15 = *(*(v14 - 8) + 56);
  v79 = v13;
  (v15)(a2 + v13, 1, 1, v14);
  v16 = (a2 + v12[8]);
  *v16 = 0;
  v80 = v16;
  *(v16 + 8) = 1;
  v81 = v12[9];
  *(a2 + v81) = 0;
  v17 = v12[10];
  *(v17 + a2) = 0;
  v18 = v12[11];
  closure #1 in variable initialization expression of TextBoxViewAttributes.fontButtonImage();
  *(a2 + v18) = v19;
  v20 = a1 >> 62;
  v92 = a1;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v71)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_25:
      *a2 = Array<A>.fontName.getter(v22);
      a2[1] = v38;
      a2[2] = Array<A>.fontSize.getter(v22);
      *(a2 + 24) = Array<A>.hasMultipleFontSizes.getter(v22);
      v39 = Array<A>.fontColors.getter(v22);
      v40 = v82;
      specialized Collection.first.getter(v39, v82);

      outlined assign with take of Color?(v40, a2 + v79);
      v41 = Array<A>.textAlignment.getter(v22);
      v42 = v80;
      *v80 = v41;
      *(v42 + 8) = v43 & 1;
      v44 = Array<A>.textStyles.getter(v22);
      *(a2 + v81) = v44;
      v45 = Array<A>.allowedTextStyles.getter(v22);

      *(v17 + a2) = v45;
      return;
    }

    v90 = i;
    v77 = a2;
    v78 = v17;
    if (i != 1)
    {
      goto LABEL_14;
    }

    if (v20)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:
    v93 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (v90 < 0)
    {
      __break(1u);
LABEL_48:
      v24 = MEMORY[0x1DA6CE0C0](0, a1);
      goto LABEL_12;
    }

    v15 = 0;
    v26 = v92;
    v22 = v93;
    v17 = (v83 + 8);
    a2 = v4 + 1;
    v83 = v91 + 32;
    v84 = v92 & 0xC000000000000001;
    v14 = v85;
    while (1)
    {
      v27 = v84 ? MEMORY[0x1DA6CE0C0](v15) : *(v26 + 8 * v15 + 32);
      v28 = v27;
      v4 = MEMORY[0x1E69E7D40];
      v29 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x88))();
      v30 = (*((*v4 & *v28) + 0x90))(v29);
      v20 = v31;
      if (v30 == NSNotFound.getter())
      {
        break;
      }

      if (__OFADD__(v30, v20))
      {
        goto LABEL_45;
      }

      v32 = v88;
      CRAttributedString.subscript.getter();
      v33 = v7;
      (*v17)(v7, v32);
      v34 = v86;
      v35 = v89;
      CRAttributedString.Substring.runs.getter();

      (*a2)(v14, v35);
      v93 = v22;
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1);
        v22 = v93;
      }

      ++v15;
      *(v22 + 16) = v37 + 1;
      (*(v91 + 32))(v22 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v37, v34, v87);
      v26 = v92;
      v7 = v33;
      if (v90 == v15)
      {
        a2 = v77;
        v17 = v78;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v71 = __CocoaSet.count.getter();
    a1 = v92;
  }

  v23 = __CocoaSet.count.getter();
  i = v90;
  a1 = v92;
  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_48;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v24 = *(a1 + 32);
LABEL_12:
  v72 = v24;
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x90))();
  if (v25)
  {

    i = v90;
    goto LABEL_14;
  }

  v46 = v72;
  v47 = *&v72[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  if (v47)
  {
    v48 = v14;
    v92 = v47;
    v49 = [v92 typingAttributes];
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
    v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    CRAttributedString.Attributes<>.init(nsAttributes:darkMode:)(v50, 0, v84);
    swift_getKeyPath();
    lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
    v51 = v76;
    CRAttributedString.Attributes.subscript.getter();

    v52 = v94;
    if (v94 != 1)
    {
      v53 = v93;
      v55 = v95;
      v54 = v96;
      if (v96)
      {

        v74 = v55;
        v75 = v54;
      }

      outlined consume of Font?(v53, v52);
      a2 = v77;
      v51 = v76;
    }

    v56 = v75;
    *a2 = v74;
    a2[1] = v56;
    a2[2] = CRAttributedString.Attributes<>.fontSize.getter();
    *(a2 + 24) = 0;
    v57 = v82;
    CRAttributedString.Attributes<>.fontColor.getter(v82);
    (v15)(v57, 0, 1, v48);
    outlined assign with take of Color?(v57, a2 + v79);
    swift_getKeyPath();
    lazy protocol witness table accessor for type TextAttributeScope.AlignmentAttribute and conformance TextAttributeScope.AlignmentAttribute();
    CRAttributedString.Attributes.subscript.getter();

    v58 = v93;
    if (v94)
    {
      v58 = 0;
    }

    v59 = v80;
    *v80 = v58;
    *(v59 + 8) = 0;
    *(a2 + v81) = CRAttributedString.Attributes<>.textStyles.getter();
    swift_getKeyPath();
    CRAttributedString.Attributes.subscript.getter();

    v60 = v94;
    if (v94 == 1)
    {

      v61 = 15;
    }

    else
    {
      v62 = a2;
      v64 = v97;
      v63 = v98;
      v66 = v95;
      v65 = v96;
      v67 = v93;
      Font.supportsBold.getter();
      v93 = v67;
      v94 = v60;
      if (v68)
      {
        v61 = 15;
      }

      else
      {
        v61 = 14;
      }

      v95 = v66;
      v96 = v65;
      LODWORD(v97) = v64;
      v98 = v63;
      Font.supportsItalic.getter();
      v70 = v69;
      a2 = v62;
      outlined consume of Font?(v67, v60);

      if ((v70 & 1) == 0)
      {
        v61 &= 0xDu;
      }
    }

    (*(v73 + 8))(v84, v51);
    *(v78 + a2) = v61;
  }

  else
  {
  }
}

uint64_t type metadata accessor for TextBoxViewAttributes()
{
  result = type metadata singleton initialization cache for TextBoxViewAttributes;
  if (!type metadata singleton initialization cache for TextBoxViewAttributes)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TextBoxViewAttributes()
{
  type metadata accessor for Color?(319, &lazy cache variable for type metadata for Color?, type metadata accessor for Color);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Color?(319, &lazy cache variable for type metadata for NSTextAlignment?, type metadata accessor for NSTextAlignment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UIImage();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Color?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id SynapseLinkView.linkPresentationView.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView);
  }

  else
  {
    v4 = *(*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink) + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
    v5 = [objc_alloc(MEMORY[0x1E696ECC8]) _initWithSynapseContentItem:v4];

    v6 = v5;
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t SynapseLinkView.analytics.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___analytics))
  {
    inited = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___analytics);
  }

  else
  {
    type metadata accessor for Analytics();
    inited = swift_initStaticObject();
    *(v0 + v1) = inited;
  }

  return inited;
}

char *SynapseLinkView.init(canvas:synapseItem:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  *&v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___analytics] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewModelSize] = xmmword_1D407B720;
  v12 = &v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewScaleTransform];
  CGAffineTransformMakeScale(&v47, 1.0, 1.0);
  v13 = *&v47.c;
  v14 = *&v47.tx;
  *v12 = *&v47.a;
  v12[1] = v13;
  v12[2] = v14;
  v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___hasUserActivityWithLinkContextInfo] = 2;
  v15 = objc_allocWithZone(type metadata accessor for SynapseLinkItem());
  v16 = a2;
  *&v3[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink] = SynapseLinkItem.init(synapseItem:)(v16);
  v17 = type metadata accessor for SynapseLinkView();
  v46.receiver = v3;
  v46.super_class = v17;
  v18 = objc_msgSendSuper2(&v46, sel_init);
  v19 = *&v18[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink] + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate;
  v20 = 1;
  swift_beginAccess();
  *(v19 + 8) = &protocol witness table for SynapseLinkView;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v21 = v18;
  v22 = [v16 itemURL];
  if (v22)
  {
    v23 = v22;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v8, v20, 1, v24);
  outlined init with take of URL?(v8, v11);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s10Foundation3URLVSgMd);
    v26 = 0;
  }

  else
  {
    v27 = URL.absoluteString.getter();
    v29 = v28;
    (*(v25 + 8))(v11, v24);
    v26 = MEMORY[0x1DA6CCED0](v27, v29);
  }

  [v21 setAccessibilityLabel_];

  v30 = v21;
  [v30 setClipsToBounds_];
  v31 = SynapseLinkView.linkPresentationView.getter();
  [v30 addSubview_];

  v32 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView;
  v33 = *&v30[OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView];
  [v30 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v48.origin.x = v35;
  v48.origin.y = v37;
  v48.size.width = v39;
  v48.size.height = v41;
  MidX = CGRectGetMidX(v48);
  v49.origin.x = v35;
  v49.origin.y = v37;
  v49.size.width = v39;
  v49.size.height = v41;
  [v33 setFrame_];

  v43 = *&v30[v32];
  if (SynapseLinkView.hasUserActivityWithLinkContextInfo.getter())
  {
    v44 = 9;
  }

  else
  {
    v44 = 8;
  }

  [v43 _setPreferredSizeClass_];

  [*&v30[v32] setDelegate_];
  return v30;
}

Swift::Void __swiftcall SynapseLinkView.layoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for SynapseLinkView();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = SynapseLinkView.linkPresentationView.getter();
  v29.a = 1.0;
  v29.b = 0.0;
  v29.c = 0.0;
  v29.d = 1.0;
  v29.tx = 0.0;
  v29.ty = 0.0;
  [v1 setTransform_];

  v2 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView;
  v3 = *&v0[OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView];
  [v0 bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidY = CGRectGetMidY(v32);
  v10 = &v0[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewModelSize];
  [v3 setFrame_];

  v11 = *v10;
  v12 = v10[1];
  [v0 bounds];
  if (v11 != v14 || v12 != v13)
  {
    [v0 bounds];
    v16 = v10[1];
    v18 = v17 / *v10;
    v29.a = 1.0;
    v29.b = 0.0;
    v29.c = 0.0;
    v29.d = 1.0;
    v29.tx = 0.0;
    v29.ty = 0.0;
    CGAffineTransformScale(&v28, &v29, v18, v19 / v16);
    a = v28.a;
    b = v28.b;
    c = v28.c;
    d = v28.d;
    tx = v28.tx;
    ty = v28.ty;
    v26 = &v0[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewScaleTransform];
    *v26 = v28.a;
    v26[1] = b;
    v26[2] = c;
    v26[3] = d;
    v26[4] = tx;
    v26[5] = ty;
    v27 = *&v0[v2];
    v29.a = a;
    v29.b = b;
    v29.c = c;
    v29.d = d;
    v29.tx = tx;
    v29.ty = ty;
    [v27 setTransform_];
  }
}

Swift::Void __swiftcall SynapseLinkView.tapped(_:)(UITapGestureRecognizer_optional *a1)
{
  v87 = type metadata accessor for URL();
  v2 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v4 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v76 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v76 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, logger);
  v19 = v1;
  v82 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v80 = v4;
    v81 = v7;
    v86 = v2;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v88[0] = v78;
    *v22 = 138412803;
    *(v22 + 4) = v19;
    v77 = v23;
    *v23 = v19;
    *(v22 + 12) = 2081;
    v24 = *&v19[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink];
    v25 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem;
    v26 = *(v24 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
    v79 = v19;
    v27 = v19;
    v28 = [v26 itemURL];
    if (v28)
    {
      v29 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v86 + 56))(v13, 0, 1, v87);
    }

    else
    {
      (*(v86 + 56))(v13, 1, 1, v87);
    }

    outlined init with take of URL?(v13, v16);
    v33 = String.init<A>(describing:)();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v88);

    *(v22 + 14) = v35;
    *(v22 + 22) = 2081;
    v30 = &selRef_pointyBitPoint;
    v89 = [*(v24 + v25) userActivity];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSUserActivityCSgMd);
    v36 = String.init<A>(describing:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v88);

    *(v22 + 24) = v38;
    _os_log_impl(&dword_1D38C4000, v20, v21, "Tapped on link: %@, targetURL: %{private}s, userActivity: %{private}s", v22, 0x20u);
    v39 = v77;
    outlined destroy of StocksKitCurrencyCache.Provider?(v77, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v39, -1, -1);
    v40 = v78;
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v40, -1, -1);
    MEMORY[0x1DA6D0660](v22, -1, -1);

    v31 = v86;
    v32 = v87;
    v4 = v80;
    v7 = v81;
    v19 = v79;
  }

  else
  {

    v30 = &selRef_pointyBitPoint;
    v31 = v2;
    v32 = v87;
  }

  v41 = *&v19[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink];
  v42 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem;
  v43 = [*(v41 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) v30[75]];
  if (v43)
  {

    SynapseLinkView.openLink()();
    return;
  }

  v44 = [*(v41 + v42) itemURL];
  if (v44)
  {
    v45 = v83;
    v46 = v44;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = 0;
  }

  else
  {
    v47 = 1;
    v45 = v83;
  }

  (*(v31 + 56))(v45, v47, 1, v32);
  v48 = v84;
  outlined init with take of URL?(v45, v84);
  if ((*(v31 + 48))(v48, 1, v32) != 1)
  {
    (*(v31 + 32))(v7, v48, v32);
    v52 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView_canvas;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_23;
    }

    v54 = Strong;
    v87 = v52;
    v55 = v4;
    v56 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x90))();
    if (v56)
    {
      v57 = v56;
      swift_getKeyPath();
      v88[0] = v57;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v58 = &v57[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v58 + 1);
        ObjectType = swift_getObjectType();
        LOBYTE(v59) = (*(v59 + 48))(v57, v7, ObjectType, v59);
        swift_unknownObjectRelease();

        if ((v59 & 1) == 0)
        {

          v4 = v55;
LABEL_23:
          (*(v31 + 16))(v4, v7, v32);
          v61 = v19;
          v62 = Logger.logObject.getter();
          v63 = v4;
          v64 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v62, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v81 = v7;
            v86 = v66;
            v87 = swift_slowAlloc();
            v89 = v87;
            *v65 = 136380931;
            lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
            LODWORD(v85) = v64;
            v67 = dispatch thunk of CustomStringConvertible.description.getter();
            v69 = v68;
            v70 = *(v31 + 8);
            v70(v63, v32);
            v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v89);

            *(v65 + 4) = v71;
            *(v65 + 12) = 2112;
            v72 = swift_unknownObjectWeakLoadStrong();
            *(v65 + 14) = v72;
            v73 = v86;
            *v86 = v72;
            _os_log_impl(&dword_1D38C4000, v62, v85, "Refused to open link with targetURL: %{private}s, canvas: %@", v65, 0x16u);
            outlined destroy of StocksKitCurrencyCache.Provider?(v73, &_sSo8NSObjectCSgMd);
            MEMORY[0x1DA6D0660](v73, -1, -1);
            v74 = v87;
            __swift_destroy_boxed_opaque_existential_0(v87);
            MEMORY[0x1DA6D0660](v74, -1, -1);
            MEMORY[0x1DA6D0660](v65, -1, -1);

            v70(v81, v32);
          }

          else
          {

            v75 = *(v31 + 8);
            v75(v4, v32);
            v75(v7, v32);
          }

          return;
        }
      }

      else
      {
      }
    }

    SynapseLinkView.openLink()();

    (*(v31 + 8))(v7, v32);
    return;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s10Foundation3URLVSgMd);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_1D38C4000, v49, v50, "Unable to open link", v51, 2u);
    MEMORY[0x1DA6D0660](v51, -1, -1);
  }
}

void SynapseLinkView.openLink()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v11 = 138412803;
    *(v11 + 4) = v8;
    v33 = v12;
    *v12 = v8;
    *(v11 + 12) = 2081;
    v13 = *&v8[OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink];
    v14 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem;
    v15 = *(v13 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
    v16 = v8;
    v17 = [v15 itemURL];
    if (v17)
    {
      v18 = v17;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for URL();
      (*(*(v19 - 8) + 56))(v3, 0, 1, v19);
    }

    else
    {
      v20 = type metadata accessor for URL();
      (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
    }

    outlined init with take of URL?(v3, v6);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

    *(v11 + 14) = v23;
    *(v11 + 22) = 2081;
    v35 = [*(v13 + v14) userActivity];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSUserActivityCSgMd);
    v24 = String.init<A>(describing:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v11 + 24) = v26;
    _os_log_impl(&dword_1D38C4000, v9, v10, "Opening link: %@, targetURL: %{private}s, userActivity: %{private}s", v11, 0x20u);
    v27 = v33;
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_sSo8NSObjectCSgMd);
    MEMORY[0x1DA6D0660](v27, -1, -1);
    v28 = v34;
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v28, -1, -1);
    MEMORY[0x1DA6D0660](v11, -1, -1);
  }

  v29 = SynapseLinkView.linkPresentationView.getter();
  [v29 _openURL];

  SynapseLinkView.analytics.getter();

  v30 = MEMORY[0x1DA6CCED0](0xD00000000000001ELL, 0x80000001D4080790);
  aBlock[4] = specialized closure #1 in Analytics.sendEventLazy(key:payload:);
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  aBlock[3] = &block_descriptor_30_0;
  v31 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v31);
}

void SynapseLinkView.isSelected.setter(char a1)
{
  *(v1 + OBJC_IVAR____TtC8PaperKit8LinkView_isSelected) = a1;
  if (a1)
  {
    SynapseLinkView.analytics.getter();

    v2 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D40807C0);
    v4[4] = specialized closure #1 in Analytics.sendEventLazy(key:payload:);
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v4[3] = &block_descriptor_78;
    v3 = _Block_copy(v4);

    AnalyticsSendEventLazy();
    _Block_release(v3);
  }
}

Swift::OpaquePointer_optional __swiftcall SynapseLinkView.pasteboardRepresentation()()
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for UTType();
  v43 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink);
  v11 = OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem;
  v12 = *(v10 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem);
  *&v46 = 0;
  v13 = [v12 dataRepresentationWithError_];
  v14 = v46;
  if (v13)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v4;
    v40 = v8;
    v16 = v3;
    v18 = v17;

    v19 = v1;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    v47 = MEMORY[0x1E6969080];
    *&v46 = v15;
    *(&v46 + 1) = v18;
    outlined init with take of Any(&v46, v45);
    outlined copy of Data._Representation(v15, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    v24 = v20;
    v1 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v24, v22, isUniquelyReferenced_nonNull_native);
    v25 = v18;
    v3 = v16;
    v4 = v39;
    v8 = v40;
    outlined consume of Data._Representation(v15, v25);

    v9 = v44;
  }

  else
  {
    v26 = v14;
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v28 = [*(v10 + v11) itemURL];
  if (v28)
  {
    v30 = v41;
    v31 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v8, v30, v3);
    v32 = v42;
    static UTType.url.getter();
    v33 = UTType.identifier.getter();
    v35 = v34;
    (*(v43 + 8))(v32, v1);
    v47 = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    (*(v4 + 16))(boxed_opaque_existential_1, v8, v3);
    outlined init with take of Any(&v46, v45);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v33, v35, v37);

    (*(v4 + 8))(v8, v3);
    v9 = v44;
  }

  v38 = v9;
  result.value._rawValue = v38;
  result.is_nil = v29;
  return result;
}

uint64_t SynapseLinkView.hasUserActivityWithLinkContextInfo.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___hasUserActivityWithLinkContextInfo;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___hasUserActivityWithLinkContextInfo);
  if (v2 == 2)
  {
    v3 = [*(*(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_synapseLink) + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem) userActivity];
    if (v3 && (v4 = v3, v5 = [v3 _linkContextInfo], v4, v5))
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

Swift::Void __swiftcall SynapseLinkView.linkViewNeedsResize(_:)(LPLinkView *a1)
{
  [(LPLinkView *)a1 sizeThatFits:327.0, 400.0];
  v3 = fmax(v2, 72.0);
  v4 = v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewModelSize;
  *v4 = 0x4074700000000000;
  *(v4 + 8) = v3;
  v5 = v1 + OBJC_IVAR____TtC8PaperKit8LinkView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v1, ObjectType, v6, 327.0, v3);

    swift_unknownObjectRelease();
  }
}

void SynapseLinkView.__ivar_destroyer()
{

  JUMPOUT(0x1DA6D07B0);
}

id SynapseLinkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SynapseLinkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void protocol witness for LinkItemDelegate.linkItemDidUpdatePreview(_:) in conformance SynapseLinkView()
{
  type metadata accessor for SynapseLinkItem();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = SynapseLinkView.linkPresentationView.getter();
    v3 = LPLinkMetadataWithSynapseContentItem(*(v1 + OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem));
    [v2 setMetadata_];
    swift_unknownObjectRelease();
  }
}

id LPLinkMetadataWithSynapseContentItem(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696ECA0]) _initWithSynapseContentItem:v1];

  return v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized SynapseLinkView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView) = 0;
  *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___analytics) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewModelSize) = xmmword_1D407B720;
  v1 = (v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView_viewScaleTransform);
  CGAffineTransformMakeScale(&v4, 1.0, 1.0);
  v2 = *&v4.c;
  v3 = *&v4.tx;
  *v1 = *&v4.a;
  v1[1] = v2;
  v1[2] = v3;
  *(v0 + OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___hasUserActivityWithLinkContextInfo) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL specialized SynapseLinkView._wantsContextMenuPreview(for:)()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 != 1)
  {
    return 1;
  }

  v3 = [v0 window];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;

  return v8 >= 800.0 && v6 >= 300.0;
}

uint64_t CGPathRef.endPoints.getter()
{
  v8[0] = 0;
  v8[1] = 0;
  v9 = 1;
  v7[0] = 0;
  v7[1] = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = v8;
  *(v1 + 24) = v7;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in CGPathRef.endPoints.getter;
  *(v2 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_120_1;
  v3 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v0, v3);
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

CGPathRef __swiftcall CGPathRef.lineSubtractingFromStart(_:)(CGPathRef a1)
{
  v54 = a1;
  v2 = type metadata accessor for CGPathFillRule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  Mutable = CGPathCreateMutable();
  v63.a = 0.0;
  v63.b = 0.0;
  v12 = swift_allocObject();
  *(v12 + 16) = &v63;
  *(v12 + 24) = Mutable;
  v13 = swift_allocObject();
  *(v13 + 16) = closure #1 in CGPathRef.openPath()partial apply;
  *(v13 + 24) = v12;
  v68 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
  v69 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  v67 = &block_descriptor_77_0;
  v14 = _Block_copy(&aBlock);
  v15 = Mutable;

  CGPathApplyWithBlock(v1, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_36;
  }

  v12 = *(v3 + 13);
  LODWORD(v53) = *MEMORY[0x1E695EEB8];
  (v12)(v10);
  LODWORD(v47) = *MEMORY[0x1E695EEB0];
  (v12)(v7);
  v17 = lazy protocol witness table accessor for type CGPathFillRule and conformance CGPathFillRule();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v49 = v17;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v3 + 1);
  v3 += 8;
  isEscapingClosureAtFileLocation = v18;
  v18(v7, v2);
  v48 = v15;
  CopyOfLineBySubtractingPath = CGPathCreateCopyOfLineBySubtractingPath(v15, v54, aBlock == *&v63.a);
  if (!CopyOfLineBySubtractingPath)
  {
    __break(1u);
    goto LABEL_42;
  }

  v20 = CopyOfLineBySubtractingPath;
  v52 = v3;
  v51 = isEscapingClosureAtFileLocation;
  (isEscapingClosureAtFileLocation)(v10, v2);
  v63.a = 0.0;
  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = &v63;
  v21 = swift_allocObject();
  *(v21 + 16) = closure #1 in CGPathRef.subpathCount.getterpartial apply;
  *(v21 + 24) = isEscapingClosureAtFileLocation;
  v68 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
  v69 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v65 = 1107296256;
  v66 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  v67 = &block_descriptor_88;
  v22 = _Block_copy(&aBlock);

  CGPathApplyWithBlock(v20, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    goto LABEL_37;
  }

  a = v63.a;

  v24 = *&a <= 1;
  v25 = v48;
  v26 = v54;
  v27 = v51;
  if (!v24 || (CGPathRef.endPoints.getter(), (v12)(v7, v53, v2), aBlock = 0x3FF0000000000000, v65 = 0, v66 = 0, v67 = 0x3FF0000000000000, v68 = 0, v69 = 0, v28 = CGPathRef.contains(_:using:transform:)(), v27(v7, v2), (v28 & 1) != 0))
  {
    v3 = v50;
    (v12)(v50, v53, v2);
    (v12)(v7, v47, v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    isEscapingClosureAtFileLocation = v52;
    v27(v7, v2);
    CopyOfLineBySubtractingPath = CGPathCreateCopyOfLineByIntersectingPath(v25, v26, *&v63.a == *&transform.a);
    if (CopyOfLineBySubtractingPath)
    {
      v12 = CopyOfLineBySubtractingPath;
      v27(v3, v2);
      v2 = CGPathRef.subpaths.getter();
      v29 = CGPathRef.subpaths.getter();
      isEscapingClosureAtFileLocation = CGPathCreateMutable();
      v46 = v20;
      v47 = v12;
      v51 = v29;
      if (v2 >> 62)
      {
        goto LABEL_38;
      }

      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v12 = v51;
        if (v51 >> 62)
        {
LABEL_40:
          v49 = v12 & 0xFFFFFFFFFFFFFF8;
          v54 = __CocoaSet.count.getter();
        }

        else
        {
          v49 = v51 & 0xFFFFFFFFFFFFFF8;
          v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        v53 = &v57;
        v50 = (v12 & 0xC000000000000001);
        v52 = v3;
        while (1)
        {
          v31 = v30;
          if ((v2 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x1DA6CE0C0](v30, v2);
          }

          else
          {
            v32 = *(v2 + 8 * v30 + 32);
          }

          v33 = v32;
          if (CGPathIsEmpty(isEscapingClosureAtFileLocation))
          {
            v63.b = 0.0;
            v63.c = 0.0;
            v63.a = 1.0;
            v63.d = 1.0;
            v63.tx = 0.0;
            v63.ty = 0.0;
            CGMutablePathRef.addPath(_:transform:)(v33, &v63);

            goto LABEL_22;
          }

          v61 = 1;
          v34 = swift_allocObject();
          *(v34 + 16) = &v61;
          *(v34 + 24) = isEscapingClosureAtFileLocation;
          v35 = swift_allocObject();
          *(v35 + 16) = closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)partial apply;
          *(v35 + 24) = v34;
          v59 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
          v60 = v35;
          v55 = MEMORY[0x1E69E9820];
          v56 = 1107296256;
          v57 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
          v58 = &block_descriptor_99_2;
          v36 = _Block_copy(&v55);
          v3 = v60;
          v37 = isEscapingClosureAtFileLocation;

          CGPathApplyWithBlock(v33, v36);

          _Block_release(v36);
          v12 = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            break;
          }

          v3 = v52;
LABEL_22:
          v30 = v31 + 1;
          if ((v31 + 1) < v54)
          {
            if (v50)
            {
              v38 = MEMORY[0x1DA6CE0C0](v31 + 1, v51);
            }

            else
            {
              if ((v30 & 0x8000000000000000) != 0)
              {
                goto LABEL_33;
              }

              if (v30 >= *(v49 + 16))
              {
                goto LABEL_34;
              }

              v38 = *(v51 + 8 * v31 + 40);
            }

            v39 = v38;
            if (CGPathIsEmpty(isEscapingClosureAtFileLocation))
            {
              transform.b = 0.0;
              transform.c = 0.0;
              transform.a = 1.0;
              transform.d = 1.0;
              transform.tx = 0.0;
              transform.ty = 0.0;
              CGMutablePathRef.addPath(_:transform:)(v39, &transform);
            }

            else
            {
              v61 = 1;
              v40 = swift_allocObject();
              *(v40 + 16) = &v61;
              *(v40 + 24) = isEscapingClosureAtFileLocation;
              v41 = swift_allocObject();
              *(v41 + 16) = closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)partial apply;
              *(v41 + 24) = v40;
              v59 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
              v60 = v41;
              v55 = MEMORY[0x1E69E9820];
              v56 = 1107296256;
              v57 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
              v58 = &block_descriptor_110;
              v42 = _Block_copy(&v55);
              v3 = v60;
              v43 = isEscapingClosureAtFileLocation;

              CGPathApplyWithBlock(v39, v42);

              _Block_release(v42);
              v12 = swift_isEscapingClosureAtFileLocation();

              if (v12)
              {
                goto LABEL_35;
              }

              v3 = v52;
            }
          }

          if (v3 == v30)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        CopyOfLineBySubtractingPath = __CocoaSet.count.getter();
        if (CopyOfLineBySubtractingPath < 0)
        {
          __break(1u);
          goto LABEL_40;
        }

LABEL_43:
        v3 = CopyOfLineBySubtractingPath;
        if (!CopyOfLineBySubtractingPath)
        {
LABEL_44:

          v25 = v48;
          goto LABEL_45;
        }
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  isEscapingClosureAtFileLocation = v20;
LABEL_45:

  return isEscapingClosureAtFileLocation;
}

CGPathRef __swiftcall CGPathRef.lineSubtractingFromEnd(_:)(CGPathRef a1)
{
  v72 = a1;
  v2 = type metadata accessor for CGPathFillRule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v62 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v62 - v9;
  Mutable = CGPathCreateMutable();
  transform.a = 0.0;
  transform.b = 0.0;
  v11 = swift_allocObject();
  *(v11 + 16) = &transform;
  *(v11 + 24) = Mutable;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in CGPathRef.openPath();
  *(v12 + 24) = v11;
  v89 = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  v90 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  v88 = &block_descriptor_79;
  v13 = _Block_copy(&aBlock);
  v14 = Mutable;

  CGPathApplyWithBlock(v1, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_57;
  }

  v17 = *(v3 + 104);
  LODWORD(v71) = *MEMORY[0x1E695EEB8];
  (v17)(v73);
  LODWORD(v66) = *MEMORY[0x1E695EEB0];
  v69 = v17;
  (v17)(v7);
  v18 = lazy protocol witness table accessor for type CGPathFillRule and conformance CGPathFillRule();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v67 = v18;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v21 = *(v3 + 8);
  v20 = (v3 + 8);
  v19 = v21;
  v22 = v7;
  v21(v7, v2);
  v65 = v14;
  result = CGPathCreateCopyOfLineBySubtractingPath(v14, v72, aBlock == *&transform.a);
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v23 = result;
  v24 = v73;
  v73 = v20;
  v70 = v19;
  v19(v24, v2);
  transform.a = 0.0;
  v25 = swift_allocObject();
  *(v25 + 16) = &transform;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in CGPathRef.subpathCount.getter;
  *(v3 + 24) = v25;
  v89 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
  v90 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v86 = 1107296256;
  v87 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  v88 = &block_descriptor_13_1;
  v26 = _Block_copy(&aBlock);

  CGPathApplyWithBlock(v23, v26);
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    goto LABEL_58;
  }

  a = transform.a;

  v28 = *&a <= 1;
  v29 = v65;
  v30 = v72;
  v31 = v69;
  if (v28)
  {
    CGPathRef.endPoints.getter();
    v31(v22, v71, v2);
    aBlock = 0x3FF0000000000000;
    v86 = 0;
    v87 = 0;
    v88 = 0x3FF0000000000000;
    v89 = 0;
    v90 = 0;
    v32 = CGPathRef.contains(_:using:transform:)();
    v70(v22, v2);
    if ((v32 & 1) == 0)
    {
      v38 = v23;
LABEL_50:

      return v38;
    }
  }

  v33 = v68;
  v31(v68, v71, v2);
  v31(v22, v66, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = v22;
  v35 = v70;
  v70(v34, v2);
  result = CGPathCreateCopyOfLineByIntersectingPath(v29, v30, *&transform.a == v83[0]);
  if (result)
  {
    v3 = result;
    v35(v33, v2);
    v64 = v23;
    v14 = CGPathRef.subpaths.getter();
    result = CGPathRef.subpaths.getter();
    if (result >> 62)
    {
      goto LABEL_59;
    }

    v36 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {
      v63 = v3;
      v69 = result;
      if (!(v14 >> 62))
      {
        v37 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        result = CGPathCreateMutable();
LABEL_12:
        v38 = result;
        if (v37)
        {
          v70 = v37;
          v71 = &v76;
          v67 = v69 & 0xFFFFFFFFFFFFFF8;
          v68 = (v69 & 0xC000000000000001);
          v72 = -v37;
          v73 = (v14 & 0xC000000000000001);
          v39 = 4;
          v66 = v14;
          while (1)
          {
            v41 = v39 - 4;
            if (v37 < v36)
            {
              break;
            }

            if (v73)
            {
              v44 = MEMORY[0x1DA6CE0C0](v39 - 4, v14);
            }

            else
            {
              v44 = *(v14 + 8 * v39);
            }

            v3 = v44;
            if (CGPathIsEmpty(v38))
            {
              transform.b = 0.0;
              transform.c = 0.0;
              transform.a = 1.0;
              transform.d = 1.0;
              transform.tx = 0.0;
              transform.ty = 0.0;
              CGMutablePathRef.addPath(_:transform:)(v3, &transform);
            }

            else
            {
              v80 = 1;
              v45 = swift_allocObject();
              *(v45 + 16) = &v80;
              *(v45 + 24) = v38;
              v14 = swift_allocObject();
              *(v14 + 16) = partial apply for closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:);
              *(v14 + 24) = v45;
              v78 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
              v79 = v14;
              v74 = MEMORY[0x1E69E9820];
              v75 = 1107296256;
              v76 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
              v77 = &block_descriptor_23_0;
              v46 = _Block_copy(&v74);
              v47 = v38;

              CGPathApplyWithBlock(v3, v46);

              _Block_release(v46);
              v3 = swift_isEscapingClosureAtFileLocation();

              if (v3)
              {
                goto LABEL_52;
              }

              v14 = v66;
              v37 = v70;
            }

            if (v39 - 3 < v36)
            {
              if (v68)
              {
                v48 = MEMORY[0x1DA6CE0C0](v39 - 4, v69);
              }

              else
              {
                if (v41 >= *(v67 + 16))
                {
                  goto LABEL_55;
                }

                v48 = *(v69 + v39);
              }

              v3 = v48;
              if (!CGPathIsEmpty(v38))
              {
                v80 = 1;
                v57 = swift_allocObject();
                *(v57 + 16) = &v80;
                *(v57 + 24) = v38;
                v58 = swift_allocObject();
                *(v58 + 16) = closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)partial apply;
                *(v58 + 24) = v57;
                v78 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
                v79 = v58;
                v74 = MEMORY[0x1E69E9820];
                v75 = 1107296256;
                v76 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
                v77 = &block_descriptor_34_0;
                v59 = _Block_copy(&v74);
                v60 = v38;

                CGPathApplyWithBlock(v3, v59);

                _Block_release(v59);
                v3 = swift_isEscapingClosureAtFileLocation();

                if (v3)
                {
                  goto LABEL_56;
                }

LABEL_43:
                v37 = v70;
                goto LABEL_16;
              }

              v83[1] = 0;
              v83[2] = 0;
              v83[0] = 0x3FF0000000000000;
              v83[3] = 0x3FF0000000000000;
              v83[4] = 0;
              v83[5] = 0;
              v40 = v83;
              goto LABEL_15;
            }

LABEL_16:
            ++v39;
            if ((v72 + v39) == 4)
            {
              goto LABEL_48;
            }
          }

          if (v68)
          {
            v42 = MEMORY[0x1DA6CE0C0](v39 - 4, v69);
          }

          else
          {
            if (v41 >= *(v67 + 16))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              v61 = result;
              v36 = __CocoaSet.count.getter();
              result = v61;
              continue;
            }

            v42 = *(v69 + v39);
          }

          v43 = v42;
          if (CGPathIsEmpty(v38))
          {
            v82.b = 0.0;
            v82.c = 0.0;
            v82.a = 1.0;
            v82.d = 1.0;
            v82.tx = 0.0;
            v82.ty = 0.0;
            CGMutablePathRef.addPath(_:transform:)(v43, &v82);
          }

          else
          {
            v80 = 1;
            v49 = swift_allocObject();
            *(v49 + 16) = &v80;
            *(v49 + 24) = v38;
            v14 = swift_allocObject();
            *(v14 + 16) = closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)partial apply;
            *(v14 + 24) = v49;
            v78 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
            v79 = v14;
            v74 = MEMORY[0x1E69E9820];
            v75 = 1107296256;
            v76 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
            v77 = &block_descriptor_45;
            v50 = _Block_copy(&v74);
            v51 = v38;

            CGPathApplyWithBlock(v43, v50);

            _Block_release(v50);
            v3 = swift_isEscapingClosureAtFileLocation();

            if (v3)
            {
              goto LABEL_53;
            }

            v14 = v66;
            v37 = v70;
          }

          if (v73)
          {
            v52 = MEMORY[0x1DA6CE0C0](v39 - 4, v14);
          }

          else
          {
            v52 = *(v14 + 8 * v39);
          }

          v3 = v52;
          if (!CGPathIsEmpty(v38))
          {
            v80 = 1;
            v53 = swift_allocObject();
            *(v53 + 16) = &v80;
            *(v53 + 24) = v38;
            v54 = swift_allocObject();
            *(v54 + 16) = closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)partial apply;
            *(v54 + 24) = v53;
            v78 = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
            v79 = v54;
            v74 = MEMORY[0x1E69E9820];
            v75 = 1107296256;
            v76 = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
            v77 = &block_descriptor_56_1;
            v55 = _Block_copy(&v74);
            v56 = v38;

            CGPathApplyWithBlock(v3, v55);

            _Block_release(v55);
            v3 = swift_isEscapingClosureAtFileLocation();

            if (v3)
            {
              goto LABEL_54;
            }

            goto LABEL_43;
          }

          v81[1] = 0;
          v81[2] = 0;
          v81[0] = 0x3FF0000000000000;
          v81[3] = 0x3FF0000000000000;
          v81[4] = 0;
          v81[5] = 0;
          v40 = v81;
LABEL_15:
          CGMutablePathRef.addPath(_:transform:)(v3, v40);

          goto LABEL_16;
        }

LABEL_48:

        v29 = v64;
        goto LABEL_50;
      }

      break;
    }

    v37 = __CocoaSet.count.getter();
    result = CGPathCreateMutable();
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t closure #1 in CGPathRef.endPoints.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result > 1)
  {
    if (v3 == 2)
    {
      v4 = *(*(result + 8) + 16);
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v4 = *(*(result + 8) + 32);
    }

    goto LABEL_11;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v4 = **(result + 8);
LABEL_11:
    *a3 = v4;
    return result;
  }

  if (*(a2 + 16) == 1)
  {
    v5 = *(result + 8);
    v6 = *v5;
    v7 = v5[1];
    *a3 = *v5;
    *(a3 + 8) = v7;
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t CGPathRef.subpaths.getter()
{
  v9 = MEMORY[0x1E69E7CC0];
  v1 = swift_allocObject();
  *(v1 + 16) = &v9;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in CGPathRef.subpaths.getter;
  *(v2 + 24) = v1;
  aBlock[4] = thunk for @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ()partial apply;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_66;
  v3 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v0, v3);
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v9;
  if (v9 >> 62)
  {
LABEL_6:
    type metadata accessor for CGPathRef(0);

    v6 = _bridgeCocoaArray<A>(_:)();
    goto LABEL_4;
  }

  swift_bridgeObjectRetain_n();
  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for CGPathRef(0);
  v6 = v5;
LABEL_4:

  return v6;
}

void closure #1 in CGPathRef.subpaths.getter(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      v5 = *a2;
      if (*a2 >> 62)
      {
        v26 = __CocoaSet.count.getter();
        if (!v26)
        {
          return;
        }
      }

      else
      {
        v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          return;
        }
      }

      v7 = v26 - 1;
      if (!__OFSUB__(v26, 1))
      {
        if ((v5 & 0xC000000000000001) != 0)
        {

          v37 = MEMORY[0x1DA6CE0C0](v7, v5);

          v27 = v37;
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_66:
            __break(1u);
            return;
          }

          v27 = *(v5 + 8 * v7 + 32);
        }

        v28 = *(a1 + 8);
        v29 = v28[2];
        v30 = v28[3];
        v31 = *v28;
        v32 = v28[1];
        transform.a = 1.0;
        transform.b = 0.0;
        transform.c = 0.0;
        transform.d = 1.0;
        transform.tx = 0.0;
        transform.ty = 0.0;
        v33 = v27;
        CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v30, v29), __PAIR128__(v32, v31), &transform);
        goto LABEL_40;
      }

      goto LABEL_54;
    }

    if (v4 != 3)
    {
      return;
    }

    v5 = *a2;
    if (*a2 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    v7 = v12 - 1;
    if (!__OFSUB__(v12, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {

        v35 = MEMORY[0x1DA6CE0C0](v7, v5);

        v13 = v35;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v13 = *(v5 + 8 * v7 + 32);
      }

      v14 = *(a1 + 8);
      v15 = v14[4];
      v16 = v14[5];
      v17 = *v14;
      v18 = v14[1];
      v19 = v14[2];
      v20 = v14[3];
      transform.a = 1.0;
      transform.b = 0.0;
      transform.c = 0.0;
      transform.d = 1.0;
      transform.tx = 0.0;
      transform.ty = 0.0;
      v33 = v13;
      CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v16, v15), __PAIR128__(v18, v17), __PAIR128__(v20, v19), &transform);
      goto LABEL_40;
    }

    goto LABEL_52;
  }

  if (!v4)
  {
    CGPathCreateMutable();
    MEMORY[0x1DA6CD190]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = *a2;
    if (v5 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (!v21)
      {
        return;
      }
    }

    else
    {
      v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        return;
      }
    }

    v7 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      if ((v5 & 0xC000000000000001) != 0)
      {

        v36 = MEMORY[0x1DA6CE0C0](v7, v5);

        v22 = v36;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v22 = *(v5 + 8 * v7 + 32);
      }

      v23 = *(a1 + 8);
      v24 = *v23;
      v25 = v23[1];
      transform.a = 1.0;
      transform.b = 0.0;
      transform.c = 0.0;
      transform.d = 1.0;
      transform.tx = 0.0;
      transform.ty = 0.0;
      v33 = v22;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v25, v24), &transform);
      goto LABEL_40;
    }

    goto LABEL_53;
  }

  if (v4 != 1)
  {
    return;
  }

  v5 = *a2;
  if (*a2 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_55:

    v34 = MEMORY[0x1DA6CE0C0](v7, v5);

    v8 = v34;
    goto LABEL_11;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_11:
  v9 = *(a1 + 8);
  v10 = *v9;
  v11 = v9[1];
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v33 = v8;
  CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v11, v10), &transform);
LABEL_40:
}

_DWORD *closure #1 in CGPathRef.isClosed.getter(_DWORD *result, _BYTE *a2)
{
  if (*result == 4)
  {
    *a2 = 1;
  }

  return result;
}

void closure #1 in CGPathRef.openPath()(uint64_t a1, double *a2, CGPathRef path)
{
  v3 = *a1;
  if (*a1 <= 1)
  {
    if (!v3)
    {
      v21 = *(a1 + 8);
      v22 = *v21;
      v23 = *(v21 + 1);
      *a2 = *v21;
      *(a2 + 1) = v23;
      v24.a = 1.0;
      v24.b = 0.0;
      v24.c = 0.0;
      v24.d = 1.0;
      v24.tx = 0.0;
      v24.ty = 0.0;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v23, *&v22), &v24);
      return;
    }

    if (v3 != 1)
    {
      return;
    }

    v8 = *(a1 + 8);
    v6 = *v8;
    v7 = v8[1];
LABEL_11:
    v24.a = 1.0;
    v24.b = 0.0;
    v24.c = 0.0;
    v24.d = 1.0;
    v24.tx = 0.0;
    v24.ty = 0.0;
    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(*&v7, *&v6), &v24);
    return;
  }

  switch(v3)
  {
    case 2:
      v9 = *(a1 + 8);
      v10 = v9[2];
      v11 = v9[3];
      v12 = *v9;
      v13 = v9[1];
      v24.a = 1.0;
      v24.b = 0.0;
      v24.c = 0.0;
      v24.d = 1.0;
      v24.tx = 0.0;
      v24.ty = 0.0;
      CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v11, v10), __PAIR128__(v13, v12), &v24);
      return;
    case 3:
      v14 = *(a1 + 8);
      v15 = v14[4];
      v16 = v14[5];
      v17 = *v14;
      v18 = v14[1];
      v19 = v14[2];
      v20 = v14[3];
      v24.a = 1.0;
      v24.b = 0.0;
      v24.c = 0.0;
      v24.d = 1.0;
      v24.tx = 0.0;
      v24.ty = 0.0;
      CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v16, v15), __PAIR128__(v18, v17), __PAIR128__(v20, v19), &v24);
      return;
    case 4:
      CurrentPoint = CGPathGetCurrentPoint(path);
      v6 = *a2;
      v7 = a2[1];
      if (vabdd_f64(CurrentPoint.x, *a2) >= 0.001 || vabdd_f64(CurrentPoint.y, v7) >= 0.001)
      {
        goto LABEL_11;
      }

      break;
  }
}

void closure #1 in CGMutablePathRef.addPathJoiningIfPossible(_:)(uint64_t a1, _BYTE *a2, CGPathRef path)
{
  v3 = *a1;
  if (*a1 > 1)
  {
    if (v3 == 2)
    {
      v24 = *(a1 + 8);
      v25 = v24[2];
      v26 = v24[3];
      v27 = *v24;
      v28 = v24[1];
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v26, v25), __PAIR128__(v28, v27), &v29);
    }

    else if (v3 == 3)
    {
      v7 = *(a1 + 8);
      v8 = v7[4];
      v9 = v7[5];
      v10 = *v7;
      v11 = v7[1];
      v12 = v7[2];
      v13 = v7[3];
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v9, v8), __PAIR128__(v11, v10), __PAIR128__(v13, v12), &v29);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 8);
      v5 = *v4;
      v6 = v4[1];
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v6, v5), &v29);
    }
  }

  else
  {
    if (*a2 != 1 || ((v15 = *(a1 + 8), v16 = *v15, v17 = v15[1], v18 = a1, CurrentPoint = CGPathGetCurrentPoint(path), a1 = v18, v16 == CurrentPoint.x) ? (v20 = v17 == CurrentPoint.y) : (v20 = 0), !v20))
    {
      v21 = *(a1 + 8);
      v22 = *v21;
      v23 = v21[1];
      v29.a = 1.0;
      v29.b = 0.0;
      v29.c = 0.0;
      v29.d = 1.0;
      v29.tx = 0.0;
      v29.ty = 0.0;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v23, v22), &v29);
    }

    *a2 = 0;
  }
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CGPathFillRule and conformance CGPathFillRule()
{
  result = lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule;
  if (!lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule)
  {
    type metadata accessor for CGPathFillRule();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGPathFillRule and conformance CGPathFillRule);
  }

  return result;
}

_DWORD *partial apply for closure #1 in CGPathRef.subpathCount.getter(_DWORD *result)
{
  if (!*result)
  {
    v2 = *(v1 + 16);
    if (__OFADD__(*v2, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v2;
    }
  }

  return result;
}

void specialized CanvasElementView.updateFrame()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for Signature(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Signature and conformance Signature, type metadata accessor for Signature);
  *(&v35 - 2) = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12GraphElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for GraphElement(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type GraphElement and conformance GraphElement, type metadata accessor for GraphElement);
  *(&v35 - 2) = &protocol witness table for GraphElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit20UnknownCanvasElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for UnknownCanvasElement(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type UnknownCanvasElement and conformance UnknownCanvasElement, type metadata accessor for UnknownCanvasElement);
  *(&v35 - 2) = &protocol witness table for UnknownCanvasElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for Image(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  *(&v35 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for PaperDocumentPage(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  *(&v35 - 2) = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for LoupeElement(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  *(&v35 - 2) = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    AnyCanvasElementView.paperBoundsTransform()(&v38);
    v36 = *&v38.c;
    v35 = *&v38.a;
    tx = v38.tx;
    ty = v38.ty;
  }

  else
  {
    v36 = xmmword_1D4059310;
    v35 = xmmword_1D4059320;
    tx = 0.0;
    ty = 0.0;
  }

  v10 = [v1 window];
  v11 = 1.0;
  v12 = 1.0;
  if (v10)
  {
    v13 = v10;
    v14 = [v10 screen];

    [v14 scale];
    v12 = v15;
  }

  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x90))();
  if (v17)
  {
    v18 = v17;
    v19 = (*((*v16 & *v17) + 0x450))();

    if (v19)
    {
      [v19 zoomScale];
      v11 = v20;
    }
  }

  v21 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v22 = (*(v3 + 16))(v5, v1 + v21, v2);
  MEMORY[0x1EEE9AC00](v22);
  *(&v35 - 4) = type metadata accessor for Shape(0);
  *(&v35 - 3) = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  *(&v35 - 2) = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v3 + 8))(v5, v2);
  v39.origin.x = v37.a;
  v39.origin.y = v37.b;
  v39.size.width = v37.c;
  v39.size.height = v37.d;
  *&v37.c = v36;
  *&v37.a = v35;
  v37.tx = tx;
  v37.ty = ty;
  v40 = CGRectApplyAffineTransform(v39, &v37);
  v41.origin.x = CGRect.rounded(scale:)(v12 * v11, v40.origin.x, v40.origin.y, v40.size.width, v40.size.height);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  v29 = CGRectGetWidth(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v30 = CGRectGetHeight(v44);
  if (CGRect.isFinite.getter(MinX, MinY, v29, v30))
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

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D38C4000, v32, v33, "Shape has non finite frame.", v34, 2u);
      MEMORY[0x1DA6D0660](v34, -1, -1);
    }
  }
}

uint64_t specialized CanvasElementView.commit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C12DocumentPageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v5, &v0[v6], v2);
  v14 = type metadata accessor for PaperDocumentPage(0);
  v15 = v14;
  v7 = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  v16 = v7;
  v17 = &protocol witness table for PaperDocumentPage;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v8 = *(v3 + 8);
  v9 = v8(v5, v2);
  if ((v18[0] & 0x20) != 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasElementFlagsVSgMd);
    Capsule.callAsFunction<A>(_:)();
    v9 = swift_endAccess();
  }

  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v9);
  if (result)
  {
    v12 = result;
    v13(v5, &v1[v6], v2);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7D8))(v5, v18, v14, v7);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7B0))(v18);

    return v8(v5, v2);
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v5, &v0[v6], v2);
  v14 = type metadata accessor for Image(0);
  v15 = v14;
  v7 = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  v16 = v7;
  v17 = &protocol witness table for Image;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v8 = *(v3 + 8);
  v9 = v8(v5, v2);
  if ((v18[0] & 0x20) != 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasElementFlagsVSgMd);
    Capsule.callAsFunction<A>(_:)();
    v9 = swift_endAccess();
  }

  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v9);
  if (result)
  {
    v12 = result;
    v13(v5, &v1[v6], v2);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7D8))(v5, v18, v14, v7);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7B0))(v18);

    return v8(v5, v2);
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v5, &v0[v6], v2);
  v14 = type metadata accessor for LoupeElement(0);
  v15 = v14;
  v7 = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  v16 = v7;
  v17 = &protocol witness table for LoupeElement;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v8 = *(v3 + 8);
  v9 = v8(v5, v2);
  if ((v18[0] & 0x20) != 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasElementFlagsVSgMd);
    Capsule.callAsFunction<A>(_:)();
    v9 = swift_endAccess();
  }

  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v9);
  if (result)
  {
    v12 = result;
    v13(v5, &v1[v6], v2);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7D8))(v5, v18, v14, v7);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7B0))(v18);

    return v8(v5, v2);
  }

  return result;
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ShapeVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x3F0);
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v5, &v0[v6], v2);
  v14 = type metadata accessor for Shape(0);
  v15 = v14;
  v7 = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  v16 = v7;
  v17 = &protocol witness table for Shape;
  swift_getKeyPath();
  Capsule.subscript.getter();

  v8 = *(v3 + 8);
  v9 = v8(v5, v2);
  if ((v18[0] & 0x20) != 0)
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit18CanvasElementFlagsVSgMd);
    Capsule.callAsFunction<A>(_:)();
    v9 = swift_endAccess();
  }

  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(v9);
  if (result)
  {
    v12 = result;
    v13(v5, &v1[v6], v2);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7D8))(v5, v18, v14, v7);
    LOBYTE(v18[0]) = 4;
    (*((*v10 & *v12) + 0x7B0))(v18);

    return v8(v5, v2);
  }

  return result;
}

double key path getter for CanvasElement.coordinateSpace : <A>A@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  CanvasElement.coordinateSpace.getter(*(a1 + a2 - 24), *(a1 + a2 - 8), v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  result = *&v7;
  a3[2] = v7;
  return result;
}

void key path setter for CanvasElement.coordinateSpace : <A>A(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = a1[2];
  CanvasElement.coordinateSpace.setter(v7, v4, v5);
}

uint64_t specialized closure #1 in CanvasElementView.commit()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PaperDocumentPage(0);
  lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type PaperDocumentPage and conformance PaperDocumentPage, type metadata accessor for PaperDocumentPage);
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  v4 = *v2 & 0x20;
  if ((*v2 & 0x20) != 0)
  {
    *v2 &= ~0x20uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  v3(v6, 0);
}

{
  type metadata accessor for Image(0);
  lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  v4 = *v2 & 0x20;
  if ((*v2 & 0x20) != 0)
  {
    *v2 &= ~0x20uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  v3(v6, 0);
}

{
  type metadata accessor for LoupeElement(0);
  lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  v4 = *v2 & 0x20;
  if ((*v2 & 0x20) != 0)
  {
    *v2 &= ~0x20uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  v3(v6, 0);
}

{
  type metadata accessor for Shape(0);
  lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type Shape and conformance Shape, type metadata accessor for Shape);
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  v4 = *v2 & 0x20;
  if ((*v2 & 0x20) != 0)
  {
    *v2 &= ~0x20uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  v3(v6, 0);
}

void *key path getter for CanvasElement.flags : <A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t key path setter for CanvasElement.flags : <A>A(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

uint64_t LoupeView.hasLiveEditModification.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = MEMORY[0x1E69E7D40];
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F8);
  swift_beginAccess();
  v40 = v17;
  outlined init with copy of Capsule<LoupeElement>?(&v1[v17], v15);
  v41 = *(v3 + 48);
  LODWORD(v45) = v41(v15, 1, v2);
  v43 = v10;
  if (v45)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGSgMd);
    v18 = 0.0;
  }

  else
  {
    (*(v3 + 16))(v10, v15, v2);
    outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGSgMd);
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v3 + 8))(v10, v2);
    v18 = *&v52;
  }

  v19 = *((*v16 & *v1) + 0x3F0);
  swift_beginAccess();
  v20 = *(v3 + 16);
  v20(v7, &v1[v19], v2);
  swift_getKeyPath();
  v21 = v3;
  Capsule.subscript.getter();

  v22 = *(v3 + 8);
  v22(v7, v2);
  if (v45 || (v39 = v20, v38 = v21 + 8, v45 = v19, v24 = v44, v18 != *&v52))
  {
    v23 = 1;
  }

  else
  {
    v25 = v42;
    outlined init with copy of Capsule<LoupeElement>?(&v1[v40], v42);
    v26 = v41;
    v27 = v41(v25, 1, v2);
    v37 = v22;
    if (v27 == 1)
    {
      v39(v24, &v1[v45], v2);
      v28 = v26(v25, 1, v2);
      v29 = v24;
      if (v28 != 1)
      {
        v28 = outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGSgMd);
      }
    }

    else
    {
      v28 = (*(v21 + 32))(v24, v25, v2);
      v29 = v24;
    }

    MEMORY[0x1EEE9AC00](v28);
    v30 = type metadata accessor for LoupeElement(0);
    *(&v36 - 4) = v30;
    v31 = lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type LoupeElement and conformance LoupeElement, type metadata accessor for LoupeElement);
    *(&v36 - 3) = v31;
    *(&v36 - 2) = &protocol witness table for LoupeElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v32 = v37;
    v37(v29, v2);
    v49 = v52;
    v50 = v53;
    v51 = v54;
    v33 = v43;
    v34 = (v39)(v43, &v1[v45], v2);
    MEMORY[0x1EEE9AC00](v34);
    *(&v36 - 4) = v30;
    *(&v36 - 3) = v31;
    *(&v36 - 2) = &protocol witness table for LoupeElement;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v32(v33, v2);
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v23 = static CGAffineTransform.== infix(_:_:)() ^ 1;
  }

  return v23 & 1;
}

int64x2_t one-time initialization function for sizeControlPosition()
{
  result = vdupq_n_s64(0x3FEB504F333F9DE6uLL);
  static LoupeView.sizeControlPosition = result;
  return result;
}

void LoupeView.subscript.getter(unsigned __int8 *a1, CGFloat *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *a1;
  if (v15 == 10)
  {
    v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3F0);
    v19 = v12;
    swift_beginAccess();
    (*(v11 + 16))(v14, &v2[v18], v19);
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v11 + 8))(v14, v19);
    v20 = (5.0 - v23.a) / -3.5 * 1.57079633;
    if (v20 == 0.0)
    {
      v17 = 0.5;
      v16 = 1.0;
    }

    else
    {
      v21 = __sincos_stret(v20);
      v16 = v21.__cosval * 0.5 + 0.5;
      v17 = v21.__sinval * 0.5 + 0.5;
    }
  }

  else
  {
    if (v15 != 11)
    {
      return;
    }

    if (one-time initialization token for sizeControlPosition != -1)
    {
      swift_once();
    }

    v17 = *(&static LoupeView.sizeControlPosition + 1);
    v16 = *&static LoupeView.sizeControlPosition;
  }

  v23.a = v5;
  v23.b = v4;
  v23.c = v7;
  v23.d = v6;
  v23.tx = v9;
  v23.ty = v8;
  CGPointApplyAffineTransform(*&v16, &v23);
}

id LoupeView.subscript.setter(unsigned __int8 *a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = *a1;
  v17 = *(a2 + 16);
  *&v34.a = *a2;
  *&v34.c = v17;
  v34.tx = v10;
  v34.ty = v11;
  CGAffineTransformInvert(&v33, &v34);
  v34 = v33;
  v35.x = a3;
  v35.y = a4;
  v21 = CGPointApplyAffineTransform(v35, &v34);
  *&v20 = v21.y;
  *&v19 = v21.x;
  if (v16 == 10)
  {
    v29 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
    *&v32[-2] = v5;
    *(&v32[-2] + 1) = v29;
    *&v32[-1] = v30;
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();
  }

  else if (v16 == 11)
  {
    v22 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x3F0);
    v32[0] = v19;
    v32[1] = v20;
    swift_beginAccess();
    (*(v13 + 16))(v15, &v5[v22], v12);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v23 = (*(v13 + 8))(v15, v12);
    __asm { FMOV            V0.2D, #-0.5 }

    v32[-1] = MEMORY[0x1EEE9AC00](v23);
    swift_beginAccess();
    Capsule.callAsFunction<A>(_:)();
    swift_endAccess();
    specialized CanvasElementView.updateFrame()();
  }

  specialized CanvasElementView.commit()();
  return [v5 setNeedsLayout];
}

uint64_t closure #1 in LoupeView.subscript.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  Capsule.Ref.subscript.getter();

  CGRectGetMidX(v1);
  CGRectGetMidY(v1);
  return Capsule.Ref.subscript.setter();
}

uint64_t closure #2 in LoupeView.subscript.setter(double a1, double a2)
{
  swift_getKeyPath();
  atan2(a2 + -0.5, a1 + -0.5);
  return Capsule.Ref.subscript.setter();
}

uint64_t closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:), v6, v5);
}

uint64_t closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:)()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB10);
    v7 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:);

    return v7();
  }

  else
  {

    v5 = v0[2] + direct field offset for LoupeView.maxKnownHeadroom;
    *v5 = 0;
    *(v5 + 8) = 1;
    v6 = v0[1];

    return v6();
  }
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 16) + direct field offset for LoupeView.maxKnownHeadroom;
  *v2 = *(v0 + 64);
  *(v2 + 8) = v1 & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:)(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 48);
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;

  v6 = *(v3 + 40);
  v7 = *(v3 + 32);

  return MEMORY[0x1EEE6DFA0](closure #1 in LoupeView.init(frame:canvasElement:canvas:parentCanvasElement:), v7, v6);
}

void @objc LoupeView.init(coder:)(uint64_t a1)
{
  UUID.init()();
  *(a1 + direct field offset for LoupeView.imageRenderer) = 0;
  Date.init()();
  v2 = a1 + direct field offset for LoupeView.maxKnownHeadroom;
  *v2 = 0;
  *(v2 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall LoupeView.setupMagnifiedView()()
{
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v2 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor_];

  [v0 setClipsToBounds_];
  v3 = direct field offset for LoupeView.magnifiedImageView;
  v4 = *&v0[direct field offset for LoupeView.magnifiedImageView];
  [v0 bounds];
  [v4 setFrame_];

  LoupeView.updateBorder()();
  v5 = *&v0[v3];

  [v0 addSubview_];
}

Swift::Void __swiftcall LoupeView.updateBorder()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for LoupeElement(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Color(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v29 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v18 = *(v9 + 16);
  v31 = v9 + 16;
  v32 = v17;
  v30 = v18;
  v18(v13, &v1[v17], v8);
  Capsule.root.getter();
  v19 = *(v9 + 8);
  v19(v13, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit5ColorVSgGMd);
  CRRegister.wrappedValue.getter();
  outlined destroy of LoupeElement(v7, type metadata accessor for LoupeElement);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s8PaperKit5ColorVSgMd);
  }

  else
  {
    v20 = v29;
    outlined init with take of Color(v4, v29);
    v21 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    v22 = [v1 traitCollection];
    [v22 userInterfaceStyle];

    v23 = static PKInkingTool.convertColor(_:from:to:)();
    v24 = [*&v1[direct field offset for LoupeView.magnifiedImageView] layer];
    v25 = [v23 CGColor];
    [v24 setBorderColor_];

    outlined destroy of LoupeElement(v20, type metadata accessor for Color);
  }

  v26 = [*&v1[direct field offset for LoupeView.magnifiedImageView] layer];
  v27 = v33;
  v30(v33, &v1[v32], v8);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v19(v27, v8);
  [v26 setBorderWidth_];
}

Swift::Void __swiftcall LoupeView.layoutSubviews()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for LoupeView();
  v19.receiver = v0;
  v19.super_class = v5;
  objc_msgSendSuper2(&v19, sel_layoutSubviews);
  v6 = [v0 layer];
  [v1 bounds];
  [v6 setCornerRadius_];

  v7 = direct field offset for LoupeView.magnifiedImageView;
  v8 = *&v1[direct field offset for LoupeView.magnifiedImageView];
  [v1 bounds];
  [v8 setFrame_];

  v9 = [*&v1[v7] layer];
  [*&v1[v7] frame];
  [v9 setCornerRadius_];

  LoupeView.updateBorder()();
  v10 = LoupeView.updateImageRenderer()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v1;

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v11;
  v17[5] = v13;
  v17[6] = v15;
  v17[7] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LoupeView.render(using:), v17);
}

void @objc LoupeView.layoutSubviews()(void *a1)
{
  v1 = a1;
  LoupeView.layoutSubviews()();
}

uint64_t closure #1 in LoupeView.render(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v7[15] = v8;
  v7[16] = *(v8 - 8);
  v7[17] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v7[18] = v9;
  v7[19] = *(v9 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[22] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[23] = v11;
  v7[24] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in LoupeView.render(using:), v11, v10);
}

uint64_t closure #1 in LoupeView.render(using:)()
{
  v1 = v0[12];
  v2 = v0[11];
  Date.init()();
  specialized static PPKSignpost.emit(_:message:)("LoupeRenderRequested", 20, 2, v2, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[15];
    v8 = v0[13];
    v9 = MEMORY[0x1E69E7D40];
    v10 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x3F0);
    swift_beginAccess();
    (*(v6 + 16))(v5, &v8[v10], v7);
    v11 = direct field offset for LoupeView.renderTaskId;
    v12 = *((*v9 & *v4) + 0xB18);
    v19 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[26] = v13;
    *v13 = v0;
    v13[1] = closure #1 in LoupeView.render(using:);
    v14 = v0[17];
    v15 = v0[14];

    return v19(v14, v15, &v8[v11]);
  }

  else
  {

    v17 = v0[19];
    specialized static PPKSignpost.emit(_:message:)("LoupeRenderFailed", 17, 2, v0[11], v0[12]);
    (*(v17 + 8))(v0[21], v0[18]);

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = v0[27];

  if (v1)
  {
    v20 = v0[27];
    v2 = v0[20];
    v3 = v0[18];
    v4 = v0[19];
    v5 = v0[13];
    v6 = direct field offset for LoupeView.lastUpdated;
    swift_beginAccess();
    v7 = *(v4 + 16);
    v7(v2, v5 + v6, v3);
    v8 = Date.compare(_:)();
    v9 = v3;
    v10 = *(v4 + 8);
    v10(v2, v9);
    if (v8 == 1)
    {
      v11 = v0[20];
      v12 = v0[18];
      v13 = v0[19];
      v19 = v0[12];
      v17 = v0[13];
      v18 = v0[11];
      v7(v11, v0[21], v12);
      swift_beginAccess();
      (*(v13 + 40))(v5 + v6, v11, v12);
      swift_endAccess();
      [*(v17 + direct field offset for LoupeView.magnifiedImageView) setImage_];
      specialized static PPKSignpost.emit(_:message:)("LoupeRenderResolved", 19, 2, v18, v19);
    }

    else
    {
      specialized static PPKSignpost.emit(_:message:)("LoupeRenderStale", 16, 2, v0[11], v0[12]);
    }
  }

  else
  {
    v14 = v0[19];
    specialized static PPKSignpost.emit(_:message:)("LoupeRenderFailed", 17, 2, v0[11], v0[12]);
    v10 = *(v14 + 8);
  }

  v10(v0[21], v0[18]);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in LoupeView.render(using:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  *(*v1 + 216) = a1;

  (*(v5 + 8))(v4, v6);
  v7 = *(v2 + 192);
  v8 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](closure #1 in LoupeView.render(using:), v8, v7);
}

uint64_t LoupeView.updateImageRenderer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v70 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = 1.0;
  if (Strong)
  {
    v11 = Strong;
    if (AnyCanvas.isHDRActive.getter())
    {
      swift_getKeyPath();
      *&v82.a = v11;
      lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v11[OBJC_IVAR____TtC8PaperKit9AnyCanvas___allowHDR])
      {
        v10 = *&v11[OBJC_IVAR____TtC8PaperKit9AnyCanvas_supportedFeatureSet + 40];
      }
    }
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (v0[direct field offset for LoupeView.maxKnownHeadroom + 8])
  {
    v13 = v10;
  }

  else
  {
    v13 = *&v0[direct field offset for LoupeView.maxKnownHeadroom];
  }

  if (v13 > 1.0 && (v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8])) != 0)
  {
    v15 = v14;

    v76 = v15;
  }

  else
  {
    v76 = DeviceRGB;
  }

  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x3F0);
  swift_beginAccess();
  v17 = *(v3 + 16);
  v17(v8, &v1[v16], v2);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v19 = *(v3 + 8);
  v18 = v3 + 8;
  v75 = v19;
  (v19)(v8, v2);
  v20 = v78;
  v21 = v79;
  v22 = v80;
  v23 = v81;
  AnyCanvasElementView.paperBoundsTransform()(&v82);
  v77 = v82;
  v83.origin.x = v20;
  v83.origin.y = v21;
  v83.size.width = v22;
  v83.size.height = v23;
  v84 = CGRectApplyAffineTransform(v83, &v77);
  x = v84.origin.x;
  y = v84.origin.y;
  width = v84.size.width;
  height = v84.size.height;
  v28 = [v1 window];
  v74 = v16;
  if (v28 && (v29 = v28, v30 = [v28 screen], v29, v30))
  {
    [objc_msgSend(v30 coordinateSpace)];
    c = v31;
    d = v33;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v35 = &v1[v16];
    v36 = v17;
    v17(v8, v35, v2);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v37 = v75;
    v38 = v18;
    (v75)(v8, v2);
    a = v77.a;
  }

  else
  {
    v17(v8, &v1[v16], v2);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v40 = v17;
    v41 = v75;
    (v75)(v8, v2);
    c = v77.c;
    d = v77.d;
    v42 = &v1[v16];
    v36 = v40;
    v40(v5, v42, v2);
    swift_getKeyPath();
    Capsule.subscript.getter();
    v37 = v41;

    v38 = v18;
    v41(v5, v2);
    a = v78;
  }

  v43 = c / a;
  v44 = d / a;
  if (one-time initialization token for loupeDefaultBackgroundColor != -1)
  {
    swift_once();
  }

  v73 = static UIConstants.loupeDefaultBackgroundColor;
  v75 = direct field offset for LoupeView.imageRenderer;
  v45 = *&v1[direct field offset for LoupeView.imageRenderer];
  v46 = v36;
  v47 = v74;
  if (!v45)
  {
    goto LABEL_26;
  }

  outlined init with copy of FindResult(v45 + 16, &v77);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit8Renderer_pMd);
  v72 = type metadata accessor for ImageRenderer();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_26:
    v46(v8, &v1[v47], v2);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v37(v8, v2);
    v51 = v77.a;
    v52 = v76;
    v53 = v76;
    v54 = 1;
    if (!CGColorSpaceUsesExtendedRange(v53))
    {
      v54 = MEMORY[0x1DA6CEC30](v53);
    }

    type metadata accessor for ImageRenderer();
    v55 = swift_allocObject();
    *(v55 + 16) = 1;
    *(v55 + 24) = v43;
    *(v55 + 32) = v44;
    *(v55 + 40) = v51;
    *(v55 + 48) = 1;
    *(v55 + 49) = v54;
    *(v55 + 56) = v13;
    *(v55 + 64) = 0;
    *(v55 + 72) = v52;
    *(v55 + 80) = 1;
    type metadata accessor for CanvasElementImageRenderer();
    v56 = swift_allocObject();
    v50 = specialized CanvasElementImageRenderer.init(renderer:)(v55, v56);

    *(v50 + 74) = 1;
    swift_beginAccess();
    v57 = *(v50 + 56);
    v58 = v73;
    *(v50 + 56) = v73;
    v59 = v58;
    goto LABEL_32;
  }

  v49 = *(*&v78 + 24);
  v48 = *(*&v78 + 32);
  v71 = v78;
  v46(v8, &v1[v47], v2);
  swift_getKeyPath();
  v70[1] = v38;
  Capsule.subscript.getter();

  v37(v8, v2);
  if (vabdd_f64(v49, v77.c) >= 0.001 || vabdd_f64(v48, v77.d) >= 0.001 || (v46(v8, &v1[v47], v2), swift_getKeyPath(), Capsule.subscript.getter(), , v37(v8, v2), vabdd_f64(v77.a, *(*&v71 + 40)) >= 0.01))
  {
    v46(v8, &v1[v47], v2);
    swift_getKeyPath();
    Capsule.subscript.getter();

    v37(v8, v2);
    v60 = v77.a;
    v61 = v76;
    v62 = v76;
    v63 = 1;
    if (!CGColorSpaceUsesExtendedRange(v62))
    {
      v63 = MEMORY[0x1DA6CEC30](v62);
    }

    v64 = swift_allocObject();
    *(v64 + 16) = 1;
    *(v64 + 24) = v43;
    *(v64 + 32) = v44;
    *(v64 + 40) = v60;
    *(v64 + 48) = 1;
    *(v64 + 49) = v63;
    *(v64 + 56) = v13;
    *(v64 + 64) = 0;
    *(v64 + 72) = v61;
    *(v64 + 80) = 1;
    type metadata accessor for CanvasElementImageRenderer();
    v65 = swift_allocObject();

    v50 = specialized CanvasElementImageRenderer.init(renderer:)(v66, v65);

    *(v50 + 74) = 1;
    swift_beginAccess();
    v57 = *(v50 + 56);
    v67 = v73;
    *(v50 + 56) = v73;

    v68 = v67;

LABEL_32:

    *&v75[v1] = v50;

    return v50;
  }

  return v45;
}

uint64_t LoupeView.__ivar_destroyer()
{
  v1 = direct field offset for LoupeView.renderTaskId;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = direct field offset for LoupeView.lastUpdated;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id LoupeView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LoupeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc LoupeView.__ivar_destroyer(uint64_t a1)
{
  v2 = direct field offset for LoupeView.renderTaskId;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = direct field offset for LoupeView.lastUpdated;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t type metadata accessor for LoupeView()
{
  result = type metadata singleton initialization cache for LoupeView;
  if (!type metadata singleton initialization cache for LoupeView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LoupeView()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Date();
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

uint64_t outlined init with copy of Capsule<LoupeElement>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit12LoupeElementVGSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LoupeElement(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in LoupeView.render(using:)(uint64_t a1)
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
  v10[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in LoupeView.render(using:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t lazy protocol witness table accessor for type LoupeElement and conformance LoupeElement(unint64_t *a1, void (*a2)(uint64_t))
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

char *PaperDocumentFindResult.frames(in:)(void *a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (*(v1 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo6CGRectVGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D4058CF0;
    v9 = v7;
    [v9 boundsForBox_];
    v11 = v10;
    v12 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    result = *(a1 + v12);
    if (result)
    {
      [result convertRect:v9 fromPage:{*&v4, v11 - *&v5 - v3, *&v6}];
      [a1 convertRect:*(a1 + v12) fromView:?];
      *(v8 + 32) = v14;
      *(v8 + 40) = v15;
      *(v8 + 48) = v16;
      *(v8 + 56) = v17;
      v18 = v4;
      v19 = *&v3;
      v20 = v6;
      v21 = v5;
      v22 = v7;
      v23 = 1;
LABEL_18:
      outlined consume of PaperDocumentFindResult.Content(v18, v19, v20, v21, v22, v23);
      return v8;
    }
  }

  else
  {
    v44 = *v1;
    v45 = *(v1 + 8);
    v46 = v4;
    v24 = [v46 pages];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFPage);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      goto LABEL_22;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_23:

      outlined consume of PaperDocumentFindResult.Content(v44, v45, v6, v5, v7, 0);
      return MEMORY[0x1E69E7CC0];
    }

    while (1)
    {
      v47 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
      if (v26 < 0)
      {
        break;
      }

      v41 = v6;
      v42 = v5;
      v43 = v7;
      v8 = v47;
      v7 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
      v5 = v25 & 0xC000000000000001;
      swift_beginAccess();
      v27 = 0;
      while (1)
      {
        v6 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (*&v5 == 0.0)
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        else
        {
          v28 = MEMORY[0x1DA6CE0C0](v27, v25);
        }

        v29 = v28;
        [v46 boundsForPage_];
        result = *&v7[a1];
        if (!result)
        {
          goto LABEL_25;
        }

        [result convertRect:v29 fromPage:?];
        [a1 convertRect:*&v7[a1] fromView:?];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v39 = *(v47 + 16);
        v38 = *(v47 + 24);
        if (v39 >= v38 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        }

        *(v47 + 16) = v39 + 1;
        v40 = (v47 + 32 * v39);
        v40[4] = v31;
        v40[5] = v33;
        v40[6] = v35;
        v40[7] = v37;
        ++v27;
        if (v6 == v26)
        {

          v18 = v44;
          v19 = v45;
          v20 = v41;
          v21 = v42;
          v22 = v43;
          v23 = 0;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v26 = __CocoaSet.count.getter();
      if (!v26)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void PaperDocumentFindResult.scrollToVisible(in:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  if (*(v1 + 40))
  {
    v8 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v9 = *(a1 + v8);
    if (v9)
    {
      [v9 goToRect:v7 onPage:{*&v4, *&v3, *&v5, *&v6}];
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v10 = v4;
  v11 = [v10 firstPage];
  if (v11)
  {
    v12 = v11;
    [v10 boundsForPage_];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
    swift_beginAccess();
    v22 = *(a1 + v21);
    if (v22)
    {
      if (![v22 isRectVisible:v12 onPage:{v14, v16, v18, v20}])
      {
        v23 = *(a1 + v21);
        if (!v23)
        {
LABEL_15:
          __break(1u);
          return;
        }

        [v23 goToRect:v12 onPage:{v14, v16, v18, v20}];
      }

      outlined consume of PaperDocumentFindResult.Content(v4, v3, v5, v6, v7, 0);
      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  outlined consume of PaperDocumentFindResult.Content(v4, v3, v5, v6, v7, 0);
}

id PaperDocumentFindResult.draw(for:)(uint64_t a1)
{
  if (*(v1 + 40))
  {
    return 0;
  }

  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *v1;
  v9 = [v8 pages];
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFPage);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
LABEL_11:
    outlined consume of PaperDocumentFindResult.Content(v3, v4, v5, v6, v7, 0);

    return 0;
  }

LABEL_4:
  v28 = v6;
  v29 = v7;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA6CE0C0](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  [v8 boundsForPage_];
  v32 = CGRectInset(v31, -4.0, -2.0);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  v18 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  result = *(a1 + v18);
  if (result)
  {
    [result convertRect:v13 fromPage:{x, y, width, height}];
    v20 = v19 / width;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    *(v22 + 24) = x;
    *(v22 + 32) = y;
    *(v22 + 40) = width;
    *(v22 + 48) = height;
    *(v22 + 56) = v20;
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in PaperDocumentFindResult.draw(for:);
    *(v23 + 24) = v22;
    aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    aBlock[3] = &block_descriptor_80;
    v24 = _Block_copy(aBlock);
    v25 = v13;

    v26 = [v21 imageWithActions_];

    outlined consume of PaperDocumentFindResult.Content(v3, v4, v5, v28, v29, 0);
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v26;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance PaperDocumentFindResult.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v13 = v2;
  v14 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = v4;
  v11 = v5;
  return (specialized static PaperDocumentFindResult.Content.< infix(_:_:)(v9, v12) & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance PaperDocumentFindResult.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v13 = v2;
  v14 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = v4;
  v11 = v5;
  return (specialized static PaperDocumentFindResult.Content.< infix(_:_:)(v12, v9) & 1) == 0;
}

unint64_t protocol witness for static Comparable.> infix(_:_:) in conformance PaperDocumentFindResult.Content(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v13 = v2;
  v14 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = v4;
  v11 = v5;
  return specialized static PaperDocumentFindResult.Content.< infix(_:_:)(v9, v12) & 1;
}

void closure #1 in PaperDocumentFindResult.draw(for:)(void *a1, id a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  [a2 boundsForBox_];
  CGAffineTransformMakeTranslation(&t1, v13 - a3, v14 - a4);
  tx = t1.tx;
  ty = t1.ty;
  v29 = *&t1.c;
  v32 = *&t1.a;
  CGAffineTransformMake(&t1, 1.0, 0.0, 0.0, -1.0, 0.0, a6);
  v17 = *&t1.a;
  v18 = *&t1.c;
  v19 = *&t1.tx;
  *&t1.a = v32;
  *&t1.c = v29;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v17;
  *&t2.c = v18;
  *&t2.tx = v19;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v20 = v35.tx;
  v21 = v35.ty;
  v30 = *&v35.c;
  v33 = *&v35.a;
  CGAffineTransformMakeScale(&t1, a7, a7);
  v22 = *&t1.a;
  v23 = *&t1.c;
  v24 = *&t1.tx;
  *&t1.a = v33;
  *&t1.c = v30;
  t1.tx = v20;
  t1.ty = v21;
  *&t2.a = v22;
  *&t2.c = v23;
  *&t2.tx = v24;
  CGAffineTransformConcat(&v35, &t1, &t2);
  v25 = v35.tx;
  v26 = v35.ty;
  v31 = *&v35.c;
  v34 = *&v35.a;
  v27 = [a1 CGContext];
  *&t1.a = v34;
  *&t1.c = v31;
  t1.tx = v25;
  t1.ty = v26;
  CGContextConcatCTM(v27, &t1);

  v28 = [a1 CGContext];
  [a2 drawWithBox:0 toContext:v28];
}

uint64_t static PaperDocumentFindResult.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void **, void **))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v22 = *a1;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  outlined copy of PaperDocumentFindResult.Content(v22, v4, v5, v6, v7, v8);
  outlined copy of PaperDocumentFindResult.Content(v9, v10, v11, v12, v13, v14);
  LOBYTE(a3) = a3(&v22, &v16);
  outlined consume of PaperDocumentFindResult.Content(v16, v17, v18, v19, v20, v21);
  outlined consume of PaperDocumentFindResult.Content(v22, v23, v24, v25, v26, v27);
  return a3 & 1;
}

uint64_t PaperDocumentFindResult.debugDescription.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x1DA6CD010](0xD000000000000014, 0x80000001D4093840);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PaperDocumentFindResult()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x1DA6CD010](0xD000000000000014, 0x80000001D4093840);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1DA6CD010](62, 0xE100000000000000);
  return 0;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance PaperDocumentFindResult(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v20 = *a2;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  outlined copy of PaperDocumentFindResult.Content(v20, v8, v9, v10, v11, v12);
  outlined copy of PaperDocumentFindResult.Content(v2, v3, v4, v5, v6, v7);
  LOBYTE(v2) = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v20, &v14);
  outlined consume of PaperDocumentFindResult.Content(v14, v15, v16, v17, v18, v19);
  outlined consume of PaperDocumentFindResult.Content(v20, v21, v22, v23, v24, v25);
  return (v2 & 1) == 0;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance PaperDocumentFindResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  outlined copy of PaperDocumentFindResult.Content(v20, v2, v3, v4, v5, v6);
  outlined copy of PaperDocumentFindResult.Content(v7, v8, v9, v10, v11, v12);
  LOBYTE(v7) = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v20, &v14);
  outlined consume of PaperDocumentFindResult.Content(v14, v15, v16, v17, v18, v19);
  outlined consume of PaperDocumentFindResult.Content(v20, v21, v22, v23, v24, v25);
  return (v7 & 1) == 0;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance PaperDocumentFindResult(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v20 = *a2;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  outlined copy of PaperDocumentFindResult.Content(v20, v8, v9, v10, v11, v12);
  outlined copy of PaperDocumentFindResult.Content(v2, v3, v4, v5, v6, v7);
  LOBYTE(v2) = specialized static PaperDocumentFindResult.Content.< infix(_:_:)(&v20, &v14);
  outlined consume of PaperDocumentFindResult.Content(v14, v15, v16, v17, v18, v19);
  outlined consume of PaperDocumentFindResult.Content(v20, v21, v22, v23, v24, v25);
  return v2 & 1;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance PaperDocumentFindResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void **, void **))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v24 = *a1;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  outlined copy of PaperDocumentFindResult.Content(v24, v6, v7, v8, v9, v10);
  outlined copy of PaperDocumentFindResult.Content(v11, v12, v13, v14, v15, v16);
  LOBYTE(a5) = a5(&v24, &v18);
  outlined consume of PaperDocumentFindResult.Content(v18, v19, v20, v21, v22, v23);
  outlined consume of PaperDocumentFindResult.Content(v24, v25, v26, v27, v28, v29);
  return a5 & 1;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized static PaperDocumentFindResult.Content.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v41 = *(a2 + 16);
  v8 = *(a2 + 32);
  v43 = *(a2 + 40);
  v40 = *(a1 + 40);
  v38 = *(a1 + 16);
  rect1 = *(a1 + 8);
  v37 = *a1;
  if (v40)
  {
    result = [v4 document];
    if (result)
    {
      v10 = result;
      v11 = [result indexForPage_];
      goto LABEL_6;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(a2 + 32);
  v13 = [v2 document];
  result = [v2 firstPage];
  if (!result)
  {
    goto LABEL_28;
  }

  v10 = result;
  v11 = [v13 indexForPage_];

  v8 = v12;
LABEL_6:

  v42 = v7;
  if ((v43 & 1) == 0)
  {
    v16 = v8;
    v17 = [v5 document];
    result = [v5 firstPage];
    if (result)
    {
      v14 = result;
      v15 = [v17 indexForPage_];

      v8 = v16;
      goto LABEL_11;
    }

LABEL_30:
    __break(1u);
    return result;
  }

  result = [v8 document];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = result;
  v15 = [result indexForPage_];
LABEL_11:

  if (v11 == v15)
  {
    return 1;
  }

  if (v40)
  {
    v18 = *&v42;
    v19 = *&v38;
    v20 = *&rect1;
    v21 = v43;
    if (v43)
    {
      outlined copy of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
      outlined copy of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v4, 1);
      outlined copy of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
      outlined copy of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v4, 1);
      v22 = [v4 document];
      v23 = *&v3;
      if (v22)
      {
        v24 = v22;
        v25 = [v8 &selRef_actionButton + 7];
        if (v25)
        {
          v26 = v25;
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
          if (static NSObject.== infix(_:_:)())
          {
            *&v44.origin.x = v37;
            v44.origin.y = rect1;
            v44.size.width = v38;
            v44.size.height = v23;
            *&v45.origin.x = v5;
            v45.origin.y = v6;
            v45.size.width = v41;
            v45.size.height = v42;
            v36 = CGRectEqualToRect(v44, v45);

            outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
            outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
            outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
            outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
            return v36;
          }

          outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
          outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
          outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
          outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
        }

        else
        {
          outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
          outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
          outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, *&v23, v4, 1);
          outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
        }

        return 0;
      }

      outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 1);
      outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v4, 1);
      outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v4, 1);
      v27 = v5;
      v28 = *&v6;
      v29 = *&v41;
      v30 = *&v42;
      v31 = v8;
      v32 = 1;
LABEL_21:
      outlined consume of PaperDocumentFindResult.Content(v27, v28, v29, v30, v31, v32);
      return 0;
    }

LABEL_20:
    outlined copy of PaperDocumentFindResult.Content(v5, *&v6, *&v41, v18, v8, v21);
    outlined copy of PaperDocumentFindResult.Content(v37, v20, v19, v3, v4, v40);
    outlined consume of PaperDocumentFindResult.Content(v37, v20, v19, v3, v4, v40);
    v27 = v5;
    v28 = *&v6;
    v29 = *&v41;
    v30 = *&v42;
    v31 = v8;
    v32 = v21;
    goto LABEL_21;
  }

  v18 = *&v42;
  v19 = *&v38;
  v20 = *&rect1;
  v21 = v43;
  if (v43)
  {
    goto LABEL_20;
  }

  outlined copy of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 0);
  outlined copy of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v4, 0);
  v33 = [v37 compare_];
  v34 = v4;
  v35 = v33;
  outlined consume of PaperDocumentFindResult.Content(v37, *&rect1, *&v38, v3, v34, 0);
  outlined consume of PaperDocumentFindResult.Content(v5, *&v6, *&v41, *&v42, v8, 0);
  return v35 == 0;
}

id specialized static PaperDocumentFindResult.Content.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v65 = *(a1 + 8);
  v66 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *a2;
  v64 = *(a2 + 16);
  v67 = *(a2 + 24);
  v68 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = sel_document;
  if (v5)
  {
    v10 = [v4 document];
    if (v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v10 = [v2 v9];
LABEL_5:
  v63 = v3;
  v11 = sel_document;
  if (v8)
  {
    v12 = [v7 document];
    if (v12)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v12 = [v6 v11];
LABEL_9:
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject);
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    result = [v4 document];
    if (result)
    {
      v15 = result;
      v16 = [result indexForPage_];
      goto LABEL_16;
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v17 = [v2 document];
  result = [v2 firstPage];
  if (!result)
  {
    goto LABEL_66;
  }

  v15 = result;
  v16 = [v17 indexForPage_];

LABEL_16:
  v61 = v8;
  if (v8)
  {
    v18 = v6;
    result = [v7 document];
    if (result)
    {
      v19 = result;
      v20 = v7;
      v21 = [result indexForPage_];
      goto LABEL_21;
    }

    goto LABEL_67;
  }

  v22 = v6;
  v20 = v7;
  v23 = [v22 document];
  v18 = v22;
  result = [v22 firstPage];
  if (!result)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v19 = result;
  v21 = [v23 indexForPage_];

LABEL_21:
  if (v16 != v21)
  {
    v30 = v20;
    if ((v5 & 1) == 0)
    {
      v39 = [v2 document];
      result = [v2 firstPage];
      if (result)
      {
        v31 = result;
        v32 = v18;
        v33 = [v39 indexForPage_];

        goto LABEL_36;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    result = [v4 document];
    if (result)
    {
      v31 = result;
      v32 = v18;
      v33 = [result indexForPage_];
LABEL_36:

      if ((v61 & 1) == 0)
      {
        v42 = [v32 document];
        result = [v32 firstPage];
        if (result)
        {
          v40 = result;
          v41 = [v42 indexForPage_];

          goto LABEL_41;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      result = [v30 document];
      if (result)
      {
        v40 = result;
        v41 = [result indexForPage_];
LABEL_41:

        return (v33 < v41);
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v5)
  {
    v24 = *&v67;
    outlined copy of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, v61);
    outlined copy of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 1);
    outlined consume of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 1);
    outlined consume of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, v61);
    v25 = *&v65;
    v26 = v61;
    v27 = *&v66;
    [v4 boundsForBox_];
    v29 = v28 - *&v66 - *&v65;
    if (v61)
    {
      goto LABEL_31;
    }

    result = [v18 firstPage];
    if (result)
    {
      v43 = result;
      [v18 boundsForPage_];
      v45 = v44;

      if (vabdd_f64(v29, v45) > 10.0)
      {
        v24 = *&v67;
        goto LABEL_45;
      }

      [v4 boundsForBox_];
      result = [v18 firstPage];
      if (!result)
      {
LABEL_78:
        __break(1u);
        return result;
      }

      v59 = result;
      v48 = *&v2;
      [v18 boundsForPage_];
      v55 = v60;

      return (v48 < v55);
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if ((v61 & 1) == 0)
  {
    outlined copy of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, 0);
    outlined copy of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 0);
    v62 = [v2 compare_];
    outlined consume of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 0);
    outlined consume of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, 0);
    return (v62 == -1);
  }

  outlined copy of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, 1);
  outlined copy of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 0);
  v24 = *&v67;
  outlined consume of PaperDocumentFindResult.Content(v2, v65, v63, v66, v4, 0);
  outlined consume of PaperDocumentFindResult.Content(v18, v68, v64, v67, v20, 1);
  result = [v2 firstPage];
  if (!result)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v34 = result;
  [v2 boundsForPage_];
  v29 = v35;

  v26 = v61;
LABEL_31:
  v36 = v24;
  v37 = *&v68;
  [v20 boundsForBox_];
  if (vabdd_f64(v29, v38 - v24 - *&v68) > 10.0)
  {
    if (v5)
    {
      v25 = *&v65;
      v27 = *&v66;
LABEL_45:
      [v4 boundsForBox_];
      v47 = v46 - v27 - v25;
      if (v26)
      {
        v37 = *&v68;
        v36 = v24;
LABEL_52:
        [v20 boundsForBox_];
        v52 = v51 - v36 - v37;
        return (v52 < v47);
      }

      result = [v18 firstPage];
      if (result)
      {
        v56 = result;
        [v18 boundsForPage_];
        v52 = v57;

        return (v52 < v47);
      }

      goto LABEL_77;
    }

    result = [v2 firstPage];
    if (result)
    {
      v49 = result;
      [v2 boundsForPage_];
      v47 = v50;

      goto LABEL_52;
    }

    goto LABEL_75;
  }

  if (v5)
  {
    v48 = *&v2;
    [v4 boundsForBox_];
  }

  else
  {
    result = [v2 firstPage];
    if (!result)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v53 = result;
    [v2 boundsForPage_];
    v48 = v54;
  }

  v55 = *&v18;
  [v20 boundsForBox_];
  return (v48 < v55);
}

unint64_t instantiation function for generic protocol witness table for PaperDocumentFindResult(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PaperDocumentFindResult and conformance PaperDocumentFindResult();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PaperDocumentFindResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PaperDocumentFindResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentFindResult.Content and conformance PaperDocumentFindResult.Content()
{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult.Content and conformance PaperDocumentFindResult.Content;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult.Content and conformance PaperDocumentFindResult.Content)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult.Content and conformance PaperDocumentFindResult.Content);
  }

  return result;
}

uint64_t PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v110 = a8;
  v99 = a6;
  v90 = a4;
  v104 = a3;
  v97 = a1;
  v111 = a5;
  v89 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v88 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v12;
  v87 = type metadata accessor for Ref();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v79 - v13;
  v14 = type metadata accessor for CRCodableVersion();
  v95 = *(v14 - 8);
  v96 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v79 - v17;
  v84 = type metadata accessor for CRKeyPath();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v103 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGGMd);
  v98 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v79 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit9SignatureVGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v100 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v79 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v102 = *(v114 - 1);
  MEMORY[0x1EEE9AC00](v114);
  v30 = &v79 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v79 - v37;
  v39 = *(v110 + 88);
  v92 = a2;
  v81 = v110 + 88;
  v80 = v39;
  (v39)(v111, v36);
  v109 = v32;
  v40 = *(v32 + 16);
  v101 = v38;
  v40(v34, v38, v31);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v82 = v34;
  v108 = v31;
  dispatch thunk of Sequence.makeIterator()();
  v112 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v113 = v30;
  dispatch thunk of IteratorProtocol.next()();
  v41 = v100;
  v42 = *(v100 + 48);
  if (v42(v28, 1, v23) == 1)
  {
LABEL_5:
    (*(v102 + 8))(v113, v114);
    v45 = v109 + 8;
    v114 = *(v109 + 8);
    v114(v101, v108);
    v46 = static CRKeyPath.unique.getter();
    MEMORY[0x1EEE9AC00](v46);
    v47 = v99;
    *(&v79 - 8) = v111;
    *(&v79 - 7) = v47;
    v48 = v110;
    *(&v79 - 6) = v105;
    *(&v79 - 5) = v48;
    *(&v79 - 4) = a9;
    *(&v79 - 3) = a10;
    v49 = v104;
    *(&v79 - 2) = v92;
    *(&v79 - 1) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0dE4PageVGGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SharedTagged_3<TaggedPaperPage>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0dE4PageVGGMd);
    Capsule.init(id:initClosure:)();
    v51 = v95;
    v50 = v96;
    v52 = *(v95 + 104);
    v53 = v93;
    v52(v93, *MEMORY[0x1E6995288], v96);
    if (Capsule.minAppFormatVersion.getter() >= 7)
    {
      (*(v51 + 8))(v53, v50);
      v52(v53, *MEMORY[0x1E6995290], v50);
    }

    v54 = v94;
    (*(v51 + 32))(v94, v53, v50);
    v55 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
    v56 = *(v51 + 8);
    v113 = v55;
    v58 = v57;
    v56(v54, v50);
    v59.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v109 = v45;
    isa = v59.super.isa;
    v61 = MEMORY[0x1DA6CCED0](4935760, 0xE300000000000000);
    v62 = v91;
    [v91 setApplicationData:isa withName:v61];

    (*(v83 + 16))(v103, v104, v84);
    v63 = v85;
    v64 = v111;
    Ref.init(id:)();
    v65 = v88;
    v66 = v90;
    v67 = v87;
    Ref.subscript.getter();
    (*(v86 + 8))(v63, v67);
    v68 = v82;
    v80(v64, v110);
    (*(v89 + 8))(v65, v64);
    v69 = type metadata accessor for Capsule();
    v70 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
    WitnessTable = swift_getWitnessTable();
    v72 = v108;
    v73 = PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:)(4u, v68, v66, v108, v69, v70, WitnessTable);
    v75 = v74;
    v114(v68, v72);
    v76 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data._Representation(v73, v75);
    v77 = MEMORY[0x1DA6CCED0](0x687361484B5050, 0xE700000000000000);
    [v62 setApplicationData:v76 withName:v77];
    outlined consume of Data._Representation(v113, v58);

    return (*(v98 + 8))(v106, v107);
  }

  else
  {
    v43 = *(v41 + 32);
    while (1)
    {
      v43(v25, v28, v23);
      SharedTagged_10.tagged7.getter();
      (*(v41 + 8))(v25, v23);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit9SignatureVGMd);
      if ((*(*(v44 - 8) + 48))(v22, 1, v44) != 1)
      {
        break;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence3RefVy8PaperKit9SignatureVGSgMd);
      dispatch thunk of IteratorProtocol.next()();
      if (v42(v28, 1, v23) == 1)
      {
        goto LABEL_5;
      }
    }

    (*(v102 + 8))(v113, v114);
    (*(v109 + 8))(v101, v108);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence3RefVy8PaperKit9SignatureVGSgMd);
  }
}

uint64_t PaperKitPDFPage.decodePaperPage<A>(pageID:in:assetManager:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a4;
  v126 = a1;
  v124 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit6PageIdVSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v114 = &v113 - v8;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0dE4PageVGGMd);
  v118 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v117 = &v113 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  v116 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v113 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v113 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVyAA10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0eF4PageVGGGMd);
  v115 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v123 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v133 = &v113 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v132 = &v113 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v138 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v113 - v25;
  v137 = type metadata accessor for AnnotationImporter.ImportedElement();
  v26 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v28 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x1EEE9AC00](v29).n128_u64[0];
  v136 = &v113 - v31;
  [v4 boundsForBox_];
  v127 = v4;
  v128 = a3;
  v130 = a2;
  static AnnotationImporter._importAnnotations<A>(from:in:assetManager:scale:mediaBox:)(v4, a2, a3, 1.0, v32, v33, v34, v35);
  v37 = *(v36 + 16);
  v139 = v22;
  v129 = v36;
  if (v37)
  {
    v38 = v36 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v39 = *(v26 + 72);
    v40 = (v22 + 32);
    v134 = (v22 + 56);
    v135 = v39;
    v41 = (v22 + 48);
    v42 = MEMORY[0x1E69E7CC0];
    v43 = v132;
    do
    {
      v44 = v136;
      _s8PaperKit18AnnotationImporterV15ImportedElementOWOcTm_0(v38, v136, type metadata accessor for AnnotationImporter.ImportedElement);
      outlined init with take of AnnotationImporter.ImportedElement(v44, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v134)(v18, 1, 1, v21);
        outlined destroy of AnnotationImporter.ImportedElement(v28);
      }

      else
      {
        (*v40)(v18, v28, v21);
        (*v134)(v18, 0, 1, v21);
      }

      outlined init with take of SharedTagged_10<TaggedCanvasElement>?(v18, v43);
      if ((*v41)(v43, 1, v21) == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
      }

      else
      {
        v45 = v18;
        v46 = *v40;
        (*v40)(v138, v43, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v48 = v42[2];
        v47 = v42[3];
        v49 = v42;
        if (v48 >= v47 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v42);
        }

        *(v49 + 16) = v48 + 1;
        v42 = v49;
        v46((v49 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + v139[9] * v48), v138, v21);
        v18 = v45;
        v43 = v132;
      }

      v38 += v135;
      --v37;
    }

    while (v37);
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v50 = v42;
  v51 = v42[2];
  if (v51)
  {
    v52 = 0;
    v53 = v139 + 2;
    v54 = (v139 + 1);
    v55 = &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMR;
    while (v52 < v50[2])
    {
      v56 = v139;
      v57 = v131;
      (v139[2])(v131, v50 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v139[9] * v52, v21);
      SharedTagged_10.unknown.getter();
      v58 = v133;
      (*(v56 + 8))(v57, v21);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGMd);
      if ((*(*(v59 - 8) + 48))(v58, 1, v59) != 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGSgMd);
        v85 = v125;
        v53 = v127;
        goto LABEL_35;
      }

      ++v52;
      outlined destroy of StocksKitCurrencyCache.Provider?(v58, &_s9Coherence3RefVy8PaperKit20UnknownCanvasElementVGSgMd);
      if (v51 == v52)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_20:
  v60 = MEMORY[0x1DA6CCED0](4935760, 0xE300000000000000);
  v53 = v127;
  v61 = [v127 applicationDataWithName_];

  if (!v61)
  {

    goto LABEL_34;
  }

  v55 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v62;

  v63 = MEMORY[0x1DA6CCED0](0x687361484B5050, 0xE700000000000000);
  v64 = [v53 applicationDataWithName_];

  if (!v64)
  {

    goto LABEL_30;
  }

  v65 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;

  v68 = Data.paperKitHashVersion.getter(v65, v67);
  if ((v68 & 0x100) != 0)
  {

    outlined consume of Data._Representation(v65, v67);
    goto LABEL_30;
  }

  v139 = v55;
  v140[0] = v50;
  v141 = v130;
  v69 = v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
  v71 = (v124 + *MEMORY[0x1E6995440]);
  v72 = v71[1];
  v137 = *v71;
  v73 = type metadata accessor for Capsule.Ref();
  v138 = v65;
  v74 = v73;
  v75 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [SharedTagged_10<TaggedCanvasElement>] and conformance [A], &_sSay9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGGMd);
  WitnessTable = swift_getWitnessTable();
  v77 = v74;
  v78 = v138;
  v79 = PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:)(v69, v140, &v141, v70, v77, v75, WitnessTable);
  v81 = v80;

  v82 = v67;
  v83 = specialized static Data.== infix(_:_:)(v78, v67, v79, v81);
  outlined consume of Data._Representation(v79, v81);
  if ((v83 & 1) == 0)
  {
    outlined consume of Data._Representation(v78, v82);
    v55 = v139;
LABEL_30:
    if (one-time initialization token for logger == -1)
    {
LABEL_31:
      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, logger);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_1D38C4000, v87, v88, "Importing PaperKit page skipped due to hash difference.", v89, 2u);
        MEMORY[0x1DA6D0660](v89, -1, -1);
      }

      outlined consume of Data._Representation(v55, v54);

LABEL_34:
      v85 = v125;
LABEL_35:
      v90 = v126;
      goto LABEL_36;
    }

LABEL_41:
    swift_once();
    goto LABEL_31;
  }

  v136 = v82;
  outlined copy of Data._Representation(v139, v54);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<SharedTagged_3<TaggedPaperPage>> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA14SharedTagged_3Vy8PaperKit0dE4PageVGGMd);
  v84 = v122;
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  v135 = v54;
  v92 = v130;
  Capsule.Ref.import<A>(_:)();
  v93 = v117;
  Capsule.root.getter();
  v94 = v119;
  CRRegister.value.getter();
  (*(v118 + 8))(v93, v84);
  v95 = v120;
  v96 = SharedTagged_3.subscript.modify();
  v98 = *(v97 + 24);
  v99 = *(v97 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
  (*(v99 + 128))(v129, v92, v137, v72, v98, v99);
  v96(v140, 0);
  v100 = SharedTagged_3.subscript.modify();
  v102 = *(v101 + 24);
  v103 = *(v101 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
  v104 = v126;
  v105 = (*(v103 + 192))(v53, v126, v128, v102, v103);
  v100(v140, 0);
  if ((v105 & 1) == 0)
  {
    outlined consume of Data._Representation(v138, v136);
    outlined consume of Data._Representation(v139, v135);
    (*(v116 + 8))(v94, v95);
    (*(v115 + 8))(v123, v121);
    v85 = v125;
    v90 = v104;
LABEL_36:
    static PaperDocumentPage.create<A>(pdfPage:pageID:in:assetManager:importedElements:)(v53, v90, v130, v129, v85);
  }

  v106 = v114;
  _s8PaperKit18AnnotationImporterV15ImportedElementOWOcTm_0(v104, v114, type metadata accessor for PDFPageID);
  v107 = type metadata accessor for PDFPageID();
  (*(*(v107 - 8) + 56))(v106, 0, 1, v107);
  v108 = type metadata accessor for PageId(0);
  v109 = *(v108 + 20);
  v110 = v116;
  (*(v116 + 16))(v113, v94, v95);
  lazy protocol witness table accessor for type TaggedPaperPage and conformance TaggedPaperPage();
  WeakTagged_3.init(_:)();
  outlined consume of Data._Representation(v138, v136);
  outlined consume of Data._Representation(v139, v135);
  (*(v115 + 8))(v123, v121);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd);
  (*(*(v111 - 8) + 56))(v106 + v109, 0, 1, v111);
  (*(*(v108 - 8) + 56))(v106, 0, 1, v108);
  v112 = OBJC_IVAR____TtC8PaperKit15PaperKitPDFPage_pageId;
  swift_beginAccess();
  outlined assign with take of PageId?(v106, v53 + v112);
  swift_endAccess();
  return (*(v110 + 32))(v125, v94, v95);
}

uint64_t PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v127 = a5;
  v128 = a7;
  v126 = a3;
  v124 = a2;
  v12 = a1;
  v116 = type metadata accessor for SHA256Digest();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CRKeyPath();
  v108 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v131 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v101 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v101 - v19;
  v123 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v119 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = *(a6 + 8);
  AssociatedConformanceWitness = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v107 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v129 = &v101 - v23;
  v114 = type metadata accessor for SHA256();
  v111 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v109 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v101 - v26;
  SHA256.init()();
  [v8 boundsForBox_];
  v117 = v27;
  v118 = a1;
  if (v12 == 1)
  {
    v32 = CGRect.rawValue.getter(v28, v29, v30, v31);
    v34 = v33;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v32, v33);
    outlined consume of Data._Representation(v32, v34);
    [v8 boundsForBox_];
    v39 = CGRect.rawValue.getter(v35, v36, v37, v38);
    v41 = v40;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v39, v40);
    outlined consume of Data._Representation(v39, v41);
  }

  else
  {
    CGRect.roundedHash(into:version:)(v27, a1);
  }

  v42 = MEMORY[0x1E69E7CC0];
  v137 = MEMORY[0x1E69E7CC0];
  v43 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
  v44 = CGDisplayListCreateWithRect();
  v45 = CGDisplayListContextCreate();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24PDFPageDrawWithBoxOptiona_ypTt0g5Tf4g_n(v42);
  type metadata accessor for PDFPageDrawWithBoxOption(0);
  lazy protocol witness table accessor for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption(&lazy protocol witness table cache variable for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption, type metadata accessor for PDFPageDrawWithBoxOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v113 = v8;
  [v8 drawWithBox:0 inContext:v45 withOptions:isa];

  v47 = swift_allocObject();
  *(v47 + 16) = &v137;
  v48 = swift_allocObject();
  *(v48 + 16) = partial apply for closure #1 in PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:);
  *(v48 + 24) = v47;
  v135 = partial apply for thunk for @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<Bool>) -> ();
  v136 = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UnsafeMutablePointer<Bool>) -> ();
  v134 = &block_descriptor_81;
  v49 = _Block_copy(aBlock);

  v110 = v44;
  CGDisplayListEnumerateEntriesWithOptions();
  _Block_release(v49);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if (v49)
  {
    __break(1u);
  }

  else
  {
    v51 = v137;
    v52 = *(v137 + 16);
    if (!(v52 >> 61))
    {
      v53 = v137 + 32 + 4 * v52;

      v54 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v51 + 32, v53);
      v56 = v55;

      outlined copy of Data._Representation(v54, v56);
      v57 = v117;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v54, v56);
      outlined consume of Data._Representation(v54, v56);
      outlined consume of Data._Representation(v54, v56);
      if (v118 < 3u)
      {
LABEL_9:
        v60 = v115;
        SHA256.finalize()();
        lazy protocol witness table accessor for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
        v61 = v116;
        v62 = Digest.makeIterator()();
        v64 = v63;
        (*(v112 + 8))(v60, v61);
        v65 = specialized _copySequenceToContiguousArray<A>(_:)(v62, v64);

        v66 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v65);
        v68 = v67;

        v69 = specialized Data.init(paperKitHash:version:)(v66, v68, v118);

        (*(v111 + 8))(v57, v114);

        return v69;
      }

      v102 = v47;
      (*(v123 + 16))(v119, v124, AssociatedConformanceWitness);
      dispatch thunk of Sequence.makeIterator()();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      dispatch thunk of IteratorProtocol.next()();
      v123 = *(v131 + 48);
      v124 = v131 + 48;
      v58 = (v123)(v20, 1, v15);
      v59 = v113;
      if (v58 == 1)
      {
LABEL_8:
        (*(v107 + 8))(v129, AssociatedTypeWitness);
        v57 = v117;
        goto LABEL_9;
      }

      v122 = *(v131 + 32);
      v119 = v108 + 8;
      v105 = (v112 + 8);
      v104 = (v111 + 8);
      v131 += 32;
      v70 = (v131 - 24);
      v101 = xmmword_1D4058CF0;
      v106 = v20;
      v103 = v17;
      v122(v17, v20, v15);
      while (1)
      {
        SharedTagged_10.subscript.getter();
        v71 = v134;
        v72 = v135;
        __swift_project_boxed_opaque_existential_1(aBlock, v134);
        (*(v72 + 11))(&v132, v71, v72);
        v73 = v132;
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if ((v73 & 0x80) == 0)
        {
          goto LABEL_12;
        }

        v74 = v120;
        MEMORY[0x1DA6CB7A0](v15);
        v75 = [v59 annotations];
        type metadata accessor for PDFAnnotation();
        v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v77);
        *(&v101 - 2) = v74;
        v78 = specialized Sequence.first(where:)(partial apply for closure #1 in PaperKitPDFPage.annotationFor(id:), (&v101 - 2), v76);

        (*v119)(v74, v121);
        if (!v78)
        {
          goto LABEL_12;
        }

        v79 = [v78 dictionaryRef];
        if (v79)
        {
          v80 = v79;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {

LABEL_12:
            (*v70)(v17, v15);
            goto LABEL_13;
          }

          v108 = v80;
          v81 = v118;
          v82 = v118;
          v83 = v109;
          SHA256.init()();
          aBlock[0] = MEMORY[0x1E69E7CD0];
          NSDictionary.paperKitHashInto(_:version:includeAPPL:visited:)(v83, v81, 0, aBlock);

          if (v82 >= 5)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd);
            v84 = swift_allocObject();
            *(v84 + 16) = v101;
            *(v84 + 32) = v81;
            v85 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v84);
            v87 = v86;

            specialized Data._Representation.withUnsafeBytes<A>(_:)(v85, v87);
            outlined consume of Data._Representation(v85, v87);
          }

          v88 = v83;
          v89 = v115;
          SHA256.finalize()();
          lazy protocol witness table accessor for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
          v90 = v116;
          v91 = Digest.makeIterator()();
          v93 = v92;
          (*v105)(v89, v90);
          v94 = specialized _copySequenceToContiguousArray<A>(_:)(v91, v93);

          v95 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v94);
          v97 = v96;

          v98 = specialized Data.init(paperKitHash:version:)(v95, v97, v81);
          v100 = v99;
          (*v104)(v88, v114);
          outlined copy of Data._Representation(v98, v100);
          specialized Data._Representation.withUnsafeBytes<A>(_:)(v98, v100);
          outlined consume of Data._Representation(v98, v100);

          outlined consume of Data._Representation(v98, v100);
          v17 = v103;
          (*v70)(v103, v15);
          v59 = v113;
          v20 = v106;
        }

        else
        {
          (*v70)(v17, v15);
        }

LABEL_13:
        dispatch thunk of IteratorProtocol.next()();
        if ((v123)(v20, 1, v15) == 1)
        {
          goto LABEL_8;
        }

        v122(v17, v20, v15);
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in PaperKitPDFPage.encodePaperPage<A, B>(_:_:id:capsule:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v41 = a6;
  v39 = a5;
  v43 = a7;
  v44 = a2;
  v36[1] = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = v36 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v36 - v17;
  v19 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Ref();
  v37 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = v36 - v25;
  (*(v19 + 16))(v22, a1, a3, v24);
  v27 = type metadata accessor for CRKeyPath();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v18, v44, v27);
  (*(v28 + 56))(v18, 0, 1, v27);

  MEMORY[0x1DA6CC020](v29, v22, v18, a3, a4);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  v31 = Ref.subscript.modify();
  v32 = v39;
  (*(v39 + 72))(v15, a3, v39);
  v31(v45, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v33 = v38;
  CROrderedSet.init()();
  v34 = Ref.subscript.modify();
  (*(v32 + 96))(v33, a3, v32);
  v34(v45, 0);
  (*(v41 + 184))(v44, a3);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_3<TaggedPaperPage> and conformance SharedTagged_3<A>, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd);
  CRRegister.init(_:)();
  return (*(v37 + 8))(v26, v23);
}

uint64_t closure #1 in PaperKitPDFPage.paperKitHash<A, B>(version:elements:in:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  Type = CGDisplayListEntryGetType();
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + 4 * v8 + 32) = Type;
  return result;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type PDFPageDrawWithBoxOption and conformance PDFPageDrawWithBoxOption(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of AnnotationImporter.ImportedElement(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationImporter.ImportedElement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnnotationImporter.ImportedElement(uint64_t a1)
{
  v2 = type metadata accessor for AnnotationImporter.ImportedElement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SharedTagged_10<TaggedCanvasElement>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s8PaperKit18AnnotationImporterV15ImportedElementOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void OpacitySliderView.Coordinator.didChange(_:)(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = *(v1 + OBJC_IVAR____TtCV8PaperKit17OpacitySliderView11Coordinator__opacity);
  v6 = *(v1 + OBJC_IVAR____TtCV8PaperKit17OpacitySliderView11Coordinator__opacity + 8);
  v7 = *(v1 + OBJC_IVAR____TtCV8PaperKit17OpacitySliderView11Coordinator__opacity + 16);
  v8 = *(v1 + OBJC_IVAR____TtCV8PaperKit17OpacitySliderView11Coordinator__opacity + 24);
  LOBYTE(v12) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x1DA6CA790](&v13);
  LOBYTE(v11) = v8;
  LOBYTE(v10) = 0;
  Binding.wrappedValue.setter();

  v9 = ShapeOpacitySliderView.thumbImage(multiSelect:)(0);
  [a1 setThumbImage:v9 forState:{0, *&v4, v10, v5, v6, v7, v11, v5, v6, v7, v12}];
}

id OpacitySliderView.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OpacitySliderView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MiniObjectPropertiesButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for MiniObjectPropertiesButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id OpacitySliderView.makeUIView(context:)(double a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v5 = a5;
  v9 = (a5 >> 8) & 1;
  v10 = objc_allocWithZone(type metadata accessor for ShapeOpacitySliderView());
  v11 = ShapeOpacitySliderView.init(axis:)(0);
  v21 = a3;
  v22 = a4;
  v23 = a1;
  v24 = v5 & 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy12CoreGraphics7CGFloatVGGMd);
  MEMORY[0x1DA6CA790](&v20, v12);
  HIDWORD(v13) = HIDWORD(v20);
  *&v13 = v20;
  [v11 setValue_];
  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 systemGray4Color];
  [v15 setTintColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI26UIViewRepresentableContextVy8PaperKit17OpacitySliderViewVGMd);
  UIViewRepresentableContext.coordinator.getter();
  v17 = v21;
  [v15 addTarget:v21 action:sel_didChange_ forControlEvents:4096];

  v18 = ShapeOpacitySliderView.thumbImage(multiSelect:)(v9);
  [v15 setThumbImage:v18 forState:0];

  return v15;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance OpacitySliderView(uint64_t a1)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return OpacitySliderView.makeUIView(context:)(*(v1 + 16), a1, *v1, *(v1 + 8), v2 | *(v1 + 24));
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance OpacitySliderView@<X0>(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 24);
  v18 = *v1;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy12CoreGraphics7CGFloatVGGMd);
  Binding.projectedValue.getter();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = type metadata accessor for OpacitySliderView.Coordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV8PaperKit17OpacitySliderView11Coordinator__opacity];
  *v11 = v14;
  *(v11 + 1) = v6;
  *(v11 + 2) = v7;
  v11[24] = v8;
  v13.receiver = v10;
  v13.super_class = v9;
  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance OpacitySliderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type OpacitySliderView and conformance OpacitySliderView();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance OpacitySliderView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type OpacitySliderView and conformance OpacitySliderView();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance OpacitySliderView()
{
  lazy protocol witness table accessor for type OpacitySliderView and conformance OpacitySliderView();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t closure #1 in MiniObjectPropertiesButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v32 - v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v32 - v7;
  v8 = Image.init(systemName:)();
  v9 = [objc_opt_self() labelColor];
  v10 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s7SwiftUI4FontV6DesignOSgMd);
  v14 = swift_getKeyPath();
  v36 = v8;
  v37 = KeyPath;
  v38 = v10;
  v39 = v14;
  v40 = v13;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v41._object = 0x80000001D4093890;
  v15._countAndFlagsBits = 0x7974696361704FLL;
  v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v16.value._object = 0xEB00000000656C62;
  v15._object = 0xE700000000000000;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v41._countAndFlagsBits = 0xD000000000000041;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, paperKitBundle, v17, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v18 = v32;
  ModifiedContent<>.accessibilityIdentifier(_:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  v19 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v34;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v18, v34);
  v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd) + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  v30 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd);
  *v30 = 0;
  return result;
}

uint64_t closure #2 in MiniObjectPropertiesButton.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for PresentationAdaptation();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0C14InputPredicateRd__AaBRd_0_AaBRd_1_r1_lFQOyAA6VStackVyAcAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderC0VAA12_FrameLayoutVG_Qo_G_AA8SolariumVAcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyALyAtA08_PaddingU0VG_AA5ColorVQo_A_Qo_Md);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA0D0PAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA06_FrameG0VG_Qo_GMd);
  closure #1 in closure #2 in MiniObjectPropertiesButton.body.getter(a1);
  Solarium.init()();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAA6VStackVyAcAE19allowsSecureDrawingQryFQOyAGy8PaperKit013OpacitySliderC0VAA12_FrameLayoutVG_Qo_GAA08_PaddingS0VG_AA5ColorVQo_Md);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyACy8PaperKit013OpacitySliderF0VAA12_FrameLayoutVG_Qo_GAA08_PaddingO0VGMd);
  v12 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<<<opaque return type of View.allowsSecureDrawing()>>.0> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd);
  v13 = lazy protocol witness table accessor for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v29 = v11;
  v30 = MEMORY[0x1E69815C0];
  v31 = v13;
  v32 = MEMORY[0x1E6981568];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = MEMORY[0x1E6981CD0];
  v16 = MEMORY[0x1E6981CD8];
  v17 = v22;
  View.staticIf<A, B, C>(_:then:else:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd);
  v18 = v23;
  static PresentationAdaptation.popover.getter();
  v29 = v17;
  v30 = v16;
  v31 = v10;
  v32 = v11;
  v33 = v12;
  v34 = v15;
  v35 = OpaqueTypeConformance2;
  v36 = v13;
  swift_getOpaqueTypeConformance2();
  v19 = v24;
  View.presentationCompactAdaptation(_:)();
  (*(v26 + 8))(v18, v28);
  return (*(v25 + 8))(v9, v19);
}

uint64_t closure #1 in closure #2 in MiniObjectPropertiesButton.body.getter(_OWORD *a1)
{
  v1 = a1;
  v9[0] = *a1;
  *(v9 + 9) = *(a1 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit9InspectedVy12CoreGraphics7CGFloatVGGMd);
  Binding.projectedValue.getter();
  LOBYTE(v1) = *(v1 + 25);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v5[22] = v7;
  *&v5[38] = v8;
  *&v5[6] = v6;
  v4[9] = v1;
  *&v4[10] = *v5;
  *&v4[26] = *&v5[16];
  *&v4[42] = *&v5[32];
  *&v4[56] = *(&v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17OpacitySliderViewVAA12_FrameLayoutVGMd);
  lazy protocol witness table accessor for type ModifiedContent<OpacitySliderView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  View.allowsSecureDrawing()();
  v9[1] = *v4;
  v9[2] = *&v4[16];
  v9[3] = *&v4[32];
  v9[4] = *&v4[48];
  v9[0] = v3;
  return outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s7SwiftUI15ModifiedContentVy8PaperKit17OpacitySliderViewVAA12_FrameLayoutVGMd);
}

uint64_t closure #2 in closure #2 in MiniObjectPropertiesButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyACy8PaperKit013OpacitySliderF0VAA12_FrameLayoutVG_Qo_GAA08_PaddingO0VGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - v3;
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_1D38FADA0(a1, v4);
  v14 = &v4[*(v2 + 36)];
  *v14 = v5;
  *(v14 + 1) = v7;
  *(v14 + 2) = v9;
  *(v14 + 3) = v11;
  *(v14 + 4) = v13;
  v14[40] = 0;
  v16[1] = static Color.clear.getter();
  lazy protocol witness table accessor for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.presentationBackground<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyACy8PaperKit013OpacitySliderF0VAA12_FrameLayoutVG_Qo_GAA08_PaddingO0VGMd);
}

uint64_t closure #3 in closure #2 in MiniObjectPropertiesButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1D38FADA0(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyACy8PaperKit013OpacitySliderF0VAA12_FrameLayoutVG_Qo_GAA08_PaddingO0VGMd);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

double protocol witness for View.body.getter in conformance MiniObjectPropertiesButton@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v18 = v1[2];
  v19 = *(v1 + 48);
  v20 = v1[2];
  LOBYTE(v21) = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd);
  Binding.projectedValue.getter();
  v4 = swift_allocObject();
  v5 = v17;
  *(v4 + 16) = v16;
  *(v4 + 32) = v5;
  *(v4 + 48) = v18;
  *(v4 + 64) = v19;
  outlined init with copy of MiniObjectPropertiesButton(&v16, &v20);
  _s8PaperKit17MiniPopoverButtonV02isD7Visible17useHeightTracking5label7popoverACyxq_G7SwiftUI7BindingVySbG_Sbxycq_yctcfCAI15ModifiedContentVyANyANyANyANyAI5ImageVAI30_EnvironmentKeyWritingModifierVyAI5ColorVSgGGARyAI4FontVSgGGAI023AccessibilityAttachmentV0VGAI14_PaddingLayoutVGAI01_q9ShapeKindV0VyAI6CircleVGG_AI4ViewPAIE29presentationCompactAdaptationyQrAI22PresentationAdaptationVFQOyA14_AIE8staticIf_4thenQrqd___qd_0_xXEtAI18ViewInputPredicateRd__AIA13_Rd_0_r0_lFQOyA14_AIE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AI8SolariumVA14_AIE22presentationBackgroundyQrqd__AI10ShapeStyleRd__lFQOyANyA27_A5_G_ATQo_Qo__Qo_Tt3g5(&v20, v13, v14, v15, 1, closure #1 in MiniObjectPropertiesButton.body.getter, 0);
  v6 = static VerticalAlignment.firstTextBaseline.getter();
  v7 = v25;
  v8 = v26;
  v9 = v23;
  *(a1 + 64) = v24;
  *(a1 + 80) = v7;
  v10 = v27;
  *(a1 + 96) = v8;
  *(a1 + 112) = v10;
  v11 = v21;
  *a1 = v20;
  *(a1 + 16) = v11;
  result = *&v22;
  *(a1 + 32) = v22;
  *(a1 + 48) = v9;
  *(a1 + 128) = v6;
  *(a1 + 136) = closure #4 in MiniColorButton.body.getter;
  *(a1 + 144) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyACy8PaperKit013OpacitySliderF0VAA12_FrameLayoutVG_Qo_GAA08_PaddingO0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type VStack<<<opaque return type of View.allowsSecureDrawing()>>.0> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA4ViewPAAE19allowsSecureDrawingQryFQOyAA15ModifiedContentVy8PaperKit013OpacitySliderD0VAA12_FrameLayoutVG_Qo_GMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<<<opaque return type of View.allowsSecureDrawing()>>.0>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<OpacitySliderView, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<OpacitySliderView, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<OpacitySliderView, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17OpacitySliderViewVAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type OpacitySliderView and conformance OpacitySliderView();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<OpacitySliderView, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OpacitySliderView and conformance OpacitySliderView()
{
  result = lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView;
  if (!lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView;
  if (!lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpacitySliderView and conformance OpacitySliderView);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OpacitySliderView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for OpacitySliderView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id TextBoxTextView.init(textBoxView:frame:textContainer:)(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  swift_unknownObjectWeakInit();
  v13 = &v6[OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  swift_unknownObjectWeakAssign();
  v39.receiver = v6;
  v39.super_class = type metadata accessor for TextBoxTextView();
  v14 = objc_msgSendSuper2(&v39, sel_initWithFrame_textContainer_, a2, a3, a4, a5, a6);
  if ((*((*MEMORY[0x1E69E7D40] & *a1) + 0x108))())
  {
    v15 = objc_opt_self();
    v16 = MEMORY[0x1DA6CCED0](0x2E6E6F7276656863, 0xEA00000000007075);
    v38 = v14;
    v17 = [v15 __systemImageNamedSwift_];

    v18 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v19 = v14;
    v37 = a2;
    v20 = [v18 initWithImage:v17 style:0 target:v19 action:sel_handleBackTabWithSender_];

    v21 = MEMORY[0x1DA6CCED0](0x2E6E6F7276656863, 0xEC0000006E776F64);
    v22 = [v15 __systemImageNamedSwift_];

    v23 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithImage:v22 style:0 target:v19 action:sel_handleTabWithSender_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D40664F0;
    *(v25 + 32) = v20;
    *(v25 + 40) = v23;
    *(v25 + 48) = v24;
    v26 = objc_allocWithZone(MEMORY[0x1E69DC720]);
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItem);
    v27 = v20;
    v28 = v23;
    v29 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v26 initWithBarButtonItems:isa representativeItem:0];

    v32 = [v19 inputAssistantItem];
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D405CEB0;
    *(v33 + 32) = v31;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
    v34 = v31;
    v35 = Array._bridgeToObjectiveC()().super.isa;
    v14 = v38;

    [v32 setLeadingBarButtonGroups_];

    a2 = v37;
  }

  return v14;
}

Swift::Void __swiftcall TextBoxTextView.insertText(_:)(Swift::String a1)
{
  v2 = MEMORY[0x1DA6CCED0](a1._countAndFlagsBits, a1._object);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TextBoxTextView();
  objc_msgSendSuper2(&v9, sel_insertText_, v2);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
    v5 = Strong;

    *(v4 + 18) = 15;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
    v8 = v6;

    *(v7 + 64) = 1;
  }
}

void TextBoxTextView.insert(_:)(void *a1)
{
  if (a1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
      swift_beginAccess();
      outlined init with copy of Date?(&v1[v5], v43, &_s8PaperKit20FormAutofillDelegate_pSgMd);
      if (v44)
      {
        outlined init with copy of FindResult(v43, v42);
        v6 = a1;
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit20FormAutofillDelegate_pSgMd);
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        v7 = [v4 contents];
        type metadata accessor for UITextContentType(0);
        _sSo21NSAttributedStringKeyaABSHSCWlTm_2(&lazy protocol witness table cache variable for type UITextContentType and conformance UITextContentType, type metadata accessor for UITextContentType);
        v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v9 = v1;
        v10 = FormFillingView.populateTextFields(with:currentField:)(v8, v1);

        __swift_destroy_boxed_opaque_existential_0(v42);
        if ((v10 & 1) == 0)
        {
          v11 = [v4 contents];
          v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v12 + 16) && (v13 = *MEMORY[0x1E69DE510], v14 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69DE510]), (v15 & 1) != 0))
          {
            v16 = (*(v12 + 56) + 16 * v14);
            v17 = *v16;
            v18 = v16[1];

            v19 = HIBYTE(v18) & 0xF;
            if ((v18 & 0x2000000000000000) == 0)
            {
              v19 = v17 & 0xFFFFFFFFFFFFLL;
            }

            v1 = v9;
            if (v19)
            {
              v20 = [v4 contents];
              v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              if (*(v21 + 16))
              {
                v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
                if (v23)
                {
                  v24 = (*(v21 + 56) + 16 * v22);
                  v25 = *v24;
                  v26 = v24[1];

                  v27 = MEMORY[0x1DA6CCED0](v25, v26);
                }

                else
                {

                  v27 = 0;
                }

                v1 = v9;
              }

              else
              {

                v27 = 0;
              }

              [v1 setText_];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v28 = a1;
        outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s8PaperKit20FormAutofillDelegate_pSgMd);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = *(Strong + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v31 = Strong;

        *(v30 + 18) = 14;
      }

      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = *(v32 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v34 = v32;

        *(v33 + 19) = 1;
      }

      v35 = swift_unknownObjectWeakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
        v37 = v35;

        v38 = [v1 textContentType];
        if (!v38)
        {
          __break(1u);
          return;
        }

        v39 = *(v36 + 32);
        *(v36 + 32) = v38;
      }

      v40 = swift_unknownObjectWeakLoadStrong();

      if (v40)
      {
        v41 = *&v40[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics];

        *(v41 + 64) = 3;
      }
    }
  }
}

Swift::Void __swiftcall TextBoxTextView.autoFillDidInsert(withExplicitInvocationMode:)(Swift::Bool withExplicitInvocationMode)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_analytics);
    v4 = Strong;

    if (withExplicitInvocationMode)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    *(v3 + 64) = v5;
  }
}

id TextBoxTextView.keyCommands.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x108))(), v3, (v4 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D405B640;
    v6 = MEMORY[0x1DA6CCED0](9, 0xE100000000000000);
    v7 = objc_opt_self();
    v8 = [v7 keyCommandWithInput:v6 modifierFlags:0 action:sel_handleTabWithSender_];

    *(v5 + 32) = v8;
    v9 = MEMORY[0x1DA6CCED0](9, 0xE100000000000000);
    v10 = [v7 keyCommandWithInput:v9 modifierFlags:0x20000 action:sel_handleBackTabWithSender_];

    result = v5;
    *(v5 + 40) = v10;
  }

  else
  {
    v14.receiver = v1;
    v14.super_class = type metadata accessor for TextBoxTextView();
    result = objc_msgSendSuper2(&v14, sel_keyCommands);
    if (result)
    {
      v12 = result;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIKeyCommand);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      return v13;
    }
  }

  return result;
}

void @objc TextBoxTextView.handleTab(sender:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x158);
    v9 = a1;
    v8(a4);
  }
}

uint64_t type metadata completion function for TextBoxUndoSnapshot()
{
  type metadata accessor for Capsule();
  result = type metadata accessor for Optional();
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

uint64_t TextBoxUndoSnapshot.deinit()
{
  v1 = *(*v0 + 104);
  type metadata accessor for Capsule();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TextBoxUndoSnapshot.__deallocating_deinit()
{
  TextBoxUndoSnapshot.deinit();

  return swift_deallocClassInstance();
}

uint64_t TextBoxUndoSnapshot.__allocating_init()()
{
  v0 = swift_allocObject();
  TextBoxUndoSnapshot.init()();
  return v0;
}

uint64_t TextBoxUndoSnapshot.init()()
{
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + *(*v0 + 112)) = MEMORY[0x1E69E7CC0];
  return v0;
}

id TextBoxTextView.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void TextBoxView.isScribbling.willset(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling) == 1 && (a1 & 1) == 0)
  {
    TextBoxView._updateFrames()();

    TextBoxView.updateFrameAfterScribbling()();
  }
}

uint64_t TextBoxView.isFormField.getter()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  v2 = type metadata accessor for Capsule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    CanvasElementView.canvasElement.getter(v5);

    (*(v3 + 32))(v8, v5, v2);
    LOBYTE(Strong) = Capsule<>.isFormField.getter(v2, *(*(v1 + 456) + 8));
    (*(v3 + 8))(v8, v2);
  }

  return Strong & 1;
}

void *key path getter for ShapeTextBox.textResizeBehavior : <A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t key path setter for ShapeTextBox.textResizeBehavior : <A>A(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 48))(&v7, v4);
}

uint64_t key path setter for ShapeTextBox.text : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return (*(v6 + 24))(v10, v5, v6);
}

void *key path getter for ShapeTextBox.formContentType : <A>A@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 88))(&v5, *(a1 + a2 - 24));
  *a3 = v5;
  return result;
}

uint64_t key path setter for ShapeTextBox.formContentType : <A>A(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 24);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;
  return (*(v5 + 96))(&v7, v4);
}

void *TextBoxView.canvas.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*((*MEMORY[0x1E69E7D40] & *result) + 0x90))();

    return v2;
  }

  return result;
}

uint64_t TextBoxView.liveAttributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + direct field offset for TextBoxView.textStorage);
  v4 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

Swift::Void __swiftcall TextBoxView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for TextBoxView();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  TextBoxView.updateTextStorageDarkMode()();
}

void @objc TextBoxView.didMoveToWindow()(void *a1)
{
  v1 = a1;
  TextBoxView.didMoveToWindow()();
}

Swift::Bool __swiftcall TextBoxView.becomeFirstResponder()()
{
  TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(1);
  v0 = TextBoxView.canvas.getter();
  if (!v0)
  {
    return 1;
  }

  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  v2 = v0;
  v3 = v1;

  if (v1)
  {
    [v3 setNeedsLayout];

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t @objc TextBoxView.becomeFirstResponder()(void *a1)
{
  v1 = a1;
  TextBoxView.becomeFirstResponder()();

  return 1;
}

Swift::Bool __swiftcall TextBoxView.resignFirstResponder()()
{
  v1 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
  v2 = *&v0[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  if (v2)
  {
    v3 = [v2 resignFirstResponder];
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = type metadata accessor for TextBoxView();
    v3 = objc_msgSendSuper2(&v12, sel_resignFirstResponder);
  }

  v4 = v3;
  TextBoxView.finalizeLastUndoActionIfPossible(closeUndoGroup:)(1);
  TextBoxView.unregisterForFirstResponderNotifications()();
  v5 = *&v0[v1];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v1];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v1] = 0;

  v0[direct field offset for TextBoxView.hideText] = 0;
  [v0 setNeedsDisplay];
  v7 = TextBoxView.canvas.getter();
  if (!v7)
  {
    return v4;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
  v9 = v7;
  v10 = v8;

  if (v8)
  {
    [v10 setNeedsLayout];

    return v4;
  }

  __break(1u);
  return result;
}

BOOL @objc TextBoxView.resignFirstResponder()(void *a1)
{
  v1 = a1;
  v2 = TextBoxView.resignFirstResponder()();

  return v2;
}

id TextBoxView.isElementFirstResponder.getter()
{
  result = *(v0 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
  if (result)
  {
    return [result isFirstResponder];
  }

  return result;
}

void __swiftcall TextBoxView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v8 = type metadata accessor for PKInk();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v3 bounds];
  v30.x = x;
  v30.y = y;
  if (CGRectContainsPoint(v31, v30))
  {
    v13 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView;
    v14 = *&v3[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    if (v14)
    {
      v15 = v14;
      if ([v15 isFirstResponder])
      {
        return;
      }
    }

    if (isa)
    {
      v16 = [(objc_class *)isa type]== 11;
    }

    else
    {
      v16 = 0;
    }

    v17 = TextBoxView.canvas.getter();
    if (v17)
    {
      v18 = v17;
      v19 = (*((*MEMORY[0x1E69E7D40] & *v17) + 0x468))();

      if (v19)
      {
        v20 = [(objc_class *)v19 ink];

        static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = PKInk._bridgeToObjectiveC()().super.isa;
        (*(v9 + 8))(v12, v8);
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = v19;
    v22 = [(objc_class *)v21 _isHandwritingInk];

    if (v22)
    {
      if (!isa)
      {
        return;
      }
    }

    else
    {
      v23 = TextBoxView.canvas.getter();
      if (!v23)
      {
        return;
      }

      v24 = v23;
      (*((*MEMORY[0x1E69E7D40] & *v23) + 0x3C8))(&v29);

      if (!isa || v29 != 1)
      {
        return;
      }
    }

    v25 = isa;
    if ([(objc_class *)v25 PK_isEventFromPencil]&& !v16)
    {
      TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(1);

      v26 = *&v4[v13];
      if (v26)
      {
        v27 = v26;
      }
    }

    else
    {
    }
  }
}

id @objc TextBoxView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  TextBoxView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

uint64_t TextBoxView.string.getter()
{
  v1 = [*(v0 + direct field offset for TextBoxView.textStorage) string];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

Swift::Void __swiftcall TextBoxView.setString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(0);
  v4 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0x1DA6CCED0](countAndFlagsBits, object);
    [v5 setText_];
  }

  [v1 resignFirstResponder];
}

id TextBoxView.isCursorWeak.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = [objc_opt_self() interactionForScene_];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 isCursorWeak];
      }

      else
      {
        v6 = 0;
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id TextBoxView.modificationRange.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  if (![v2 isFirstResponder] || (TextBoxView.isCursorWeak.getter() & 1) != 0)
  {

LABEL_5:
    v3 = TextBoxView.string.getter();
    MEMORY[0x1DA6CD060](v3);

    return 0;
  }

  v5 = [v2 selectedRange];

  return v5;
}

Swift::Void __swiftcall TextBoxView.layoutSubviews()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1B8);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1C0);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *((v3 & v2) + 0x1C8);
  v14 = type metadata accessor for TextBoxView();
  v31.receiver = v1;
  v31.super_class = v14;
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v29 = v9;
    TextBoxView._updateFrames()();
    TextBoxView._updateScaleFactor()();
    v17 = TextBoxView.canvas.getter();
    if (v17)
    {
      v18 = v17;
      CanvasElementView.canvasElement.getter(v12);
      v19 = Capsule<>.isFormField.getter(v6, *(v13 + 8));
      v28 = *(v7 + 8);
      v20 = v28(v12, v6);
      v21 = v18;
      if ((v19 & 1) != 0 && ((*((*MEMORY[0x1E69E7D40] & *v18) + 0x3C8))(&v30, v20), LOBYTE(v30) == 1) && !*&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView])
      {
        v23 = v29;
        if (one-time initialization token for formFieldBackgroundColor != -1)
        {
          swift_once();
        }

        v22 = static UIConstants.formFieldBackgroundColor;
      }

      else
      {
        v22 = [objc_opt_self() clearColor];
        v23 = v29;
      }

      [v1 setBackgroundColor_];

      v24 = [v1 layer];
      v25 = CanvasElementView.canvasElement.getter(v23);
      MEMORY[0x1EEE9AC00](v25);
      *(&v27 - 4) = v4;
      *(&v27 - 3) = v5;
      *(&v27 - 2) = v13;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v28(v23, v6);
      HIDWORD(v26) = HIDWORD(v30);
      *&v26 = v30;
      [v24 setOpacity_];

      v16 = v24;
    }
  }
}

void @objc TextBoxView.layoutSubviews()(void *a1)
{
  v1 = a1;
  TextBoxView.layoutSubviews()();
}

void TextBoxView.updateTextStorageDarkMode()()
{
  v4 = *&v0[direct field offset for TextBoxView.textStorage];
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v4[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode];
  v4[OBJC_IVAR____TtC8PaperKit13CRTextStorage_darkMode] = v2 == 2;
  CRTextStorage.darkMode.didset(v3);
}

Swift::Void __swiftcall TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)(Swift::Bool shouldRegisterUndo, Swift::Bool alwaysMerge)
{
  v3 = v2;
  v50 = shouldRegisterUndo;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v55 = *MEMORY[0x1E69E7D40] & *v3;
  v7 = type metadata accessor for MergeResult();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = *((v6 & v5) + 0x1B8);
  v53 = *((v6 & v5) + 0x1C0);
  v57 = type metadata accessor for Capsule();
  v16 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v47 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v48 = v16;
    v49 = v8;
    if (alwaysMerge || (v47 = v7, v20 = v54, v21 = CanvasElementView.canvasElement.getter(v54), MEMORY[0x1EEE9AC00](v21), v22 = v53, *(&v47 - 4) = v15, *(&v47 - 3) = v22, *(&v47 - 2) = *(v55 + 456), swift_getKeyPath(), v23 = v15, v24 = v57, Capsule.subscript.getter(), , v25 = v20, v7 = v47, v26 = v24, v15 = v23, (*(v48 + 8))(v25, v26), v27 = *(v3 + direct field offset for TextBoxView.textStorage), v28 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString, swift_beginAccess(), v30 = v51, v29 = v52, (*(v52 + 16))(v51, v27 + v28, v10), lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope> and conformance CRAttributedString<A>, &_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd), LOBYTE(v27) = dispatch thunk of static Equatable.== infix(_:_:)(), v31 = *(v29 + 8), v31(v30, v10), Strong = (v31)(v14, v10), (v27 & 1) == 0))
    {
      MEMORY[0x1EEE9AC00](Strong);
      *(&v47 - 2) = v3;
      v32 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      v33 = v56;
      Capsule.callAsFunction<A>(_:)();
      (*(v49 + 8))(v33, v7);
      v34 = swift_endAccess();
      if (((*((*v32 & *v19) + 0x1B8))(v34) & 1) == 0)
      {
        v35 = TextBoxView.canvas.getter();
        if (v35)
        {
          v36 = v35;
          v37 = (*((*v32 & *v35) + 0x440))();
          v39 = v38;

          v40 = v15;
          ObjectType = swift_getObjectType();
          v42 = v54;
          CanvasElementView.canvasElement.getter(v54);
          (*(v39 + 224))(v42, v50, v40, v53, *(*(v55 + 456) + 8), ObjectType, v39);

          (*(v48 + 8))(v42, v57);
        }
      }

      [v3 setNeedsLayout];
      v43 = TextBoxView.canvas.getter();
      if (v43)
      {
        v44 = *(v43 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        v45 = v43;
        v46 = v44;

        if (!v44)
        {
          __break(1u);
          return;
        }

        [v46 setNeedsLayout];
      }

      [v3 setNeedsDisplay];
    }
  }
}

uint64_t closure #1 in TextBoxView.updateCanvasElement(shouldRegisterUndo:alwaysMerge:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *a1;
  v17 = a3;
  v4 = *a2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringVy8PaperKit18TextAttributeScopeVGMd);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = *(a2 + direct field offset for TextBoxView.textStorage);
  v11 = OBJC_IVAR____TtC8PaperKit13CRTextStorage_mergeableString;
  swift_beginAccess();
  (*(v7 + 16))(v9, v10 + v11, v6);
  v12 = Capsule.Ref.root.modify();
  v13 = (*(*((v5 & v4) + 0x1C8) + 32))(v18, *(v16 + *MEMORY[0x1E6995440]));
  CRAttributedString.merge(_:)();
  (*(v7 + 8))(v9, v6);
  v13(v18, 0);
  return v12(v19, 0);
}

Swift::Void __swiftcall TextBoxView.addTextViewIfNeeded(shouldBecomeFirstResponder:)(Swift::Bool shouldBecomeFirstResponder)
{
  v2 = v1;
  v3 = shouldBecomeFirstResponder;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v134 = (*MEMORY[0x1E69E7D40] & v4);
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v137 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *&v135 = &v119 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd);
  v136 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v119 - v12;
  v13 = *((v5 & v4) + 0x1B8);
  v14 = *((v5 & v4) + 0x1C0);
  v15 = type metadata accessor for Capsule();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v119 - v19;
  v20 = &OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView;
  if (*&v2[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView] || (v130 = OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView, v129 = v18, (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_2:
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  if (v2[direct field offset for TextBoxView.shouldAddTextboxView] != 1)
  {

    goto LABEL_2;
  }

  v124 = v13;
  v128 = Strong;
  v132 = v15;
  v131 = v6;
  v119 = v7;
  [v2 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = *&v2[direct field offset for TextBoxView.textContainer];
  v56 = objc_allocWithZone(type metadata accessor for TextBoxTextView());
  v57 = v55;
  v58 = v2;
  v59 = TextBoxTextView.init(textBoxView:frame:textContainer:)(v58, v55, v48, v50, v52, v54);
  [v59 setDelegate_];
  v60 = TextBoxView.canvas.getter();
  v61 = MEMORY[0x1E69E7D40];
  if (v60)
  {
    v62 = v60;
    v63 = (*((*MEMORY[0x1E69E7D40] & *v60) + 0x440))();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA0A12DocumentPageVGMd);
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      v127 = v59;
      v65 = *(v64 + *((*v61 & *v64) + 0x568));
      if (v65)
      {
        v66 = type metadata accessor for FormFillingView();
        v67 = v65;

        v68 = &protocol witness table for FormFillingView;
      }

      else
      {

        v67 = 0;
        v66 = 0;
        v68 = 0;
        v141 = 0uLL;
      }

      v140 = v67;
      *&v142 = v66;
      *(&v142 + 1) = v68;
      v70 = OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
      v59 = v127;
      swift_beginAccess();
      outlined assign with take of FormAutofillDelegate?(&v140, v59 + v70);
      swift_endAccess();
      v61 = MEMORY[0x1E69E7D40];
    }

    else
    {
    }
  }

  v123 = v11;
  v126 = v14;
  v127 = v16;
  v71 = TextBoxView.canvas.getter();
  if (v71)
  {
    v72 = v71;
    v73 = (*((*v61 & *v71) + 0x440))();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit26ContainerCanvasElementViewCyAA5ImageVGMd);
    v74 = swift_dynamicCastClass();
    if (v74)
    {
      v75 = v59;
      v76 = *(v74 + *((*v61 & *v74) + 0x568));
      if (v76)
      {
        *&v142 = type metadata accessor for FormFillingView();
        *(&v142 + 1) = &protocol witness table for FormFillingView;
        v77 = v76;
      }

      else
      {

        v77 = 0;
        v141 = 0u;
        v142 = 0u;
      }

      v140 = v77;
      v78 = OBJC_IVAR____TtC8PaperKit15TextBoxTextView_formAutofillDelegate;
      v59 = v75;
      swift_beginAccess();
      outlined assign with take of FormAutofillDelegate?(&v140, v75 + v78);
      swift_endAccess();
    }

    else
    {
    }
  }

  v125 = v3;
  v79 = objc_opt_self();
  v80 = v59;
  v81 = [v79 clearColor];
  [v80 setBackgroundColor_];

  [v80 setTextContainerInset_];
  [v80 setAllowsEditingTextAttributes_];
  [v80 setScrollEnabled_];
  v82 = [*(v58 + direct field offset for TextBoxView.textStorage) string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v83 = String.count.getter();

  [v80 setSelectedRange_];
  [v80 setClipsToBounds_];

  v121 = v58;
  v84 = v138;
  v85 = CanvasElementView.canvasElement.getter(v138);
  MEMORY[0x1EEE9AC00](v85);
  v86 = v124;
  v87 = v126;
  *(&v119 - 4) = v124;
  *(&v119 - 3) = v87;
  v88 = v134[57];
  *(&v119 - 2) = v88;
  swift_getKeyPath();
  v89 = v132;
  Capsule.subscript.getter();

  v120 = v127[1];
  v120(v84, v89);
  v139 = v140;
  v90 = specialized FormContentType.uiTextContentType.getter();
  v134 = v80;
  [v80 setTextContentType_];
  v91 = v129;
  v92 = CanvasElementView.canvasElement.getter(v129);
  MEMORY[0x1EEE9AC00](v92);
  *(&v119 - 4) = v86;
  *(&v119 - 3) = v87;
  v122 = v88;
  *(&v119 - 2) = v88;
  swift_getKeyPath();
  v93 = v135;
  Capsule.subscript.getter();

  v120(v91, v89);
  v94 = v136;
  v95 = v123;
  if (v136[6](v93, 1, v123) == 1)
  {
    v96 = v134;

    outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
    v97 = v121;
  }

  else
  {
    v98 = v133;
    v94[4](v133, v93, v95);
    v97 = v121;
    v99 = [v121 traitCollection];
    v100 = [v99 userInterfaceStyle];

    CRAttributedString.Attributes<>.nsAttributes(darkMode:)(v100 == 2);
    type metadata accessor for NSAttributedStringKey(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_2(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v96 = v134;
    [v134 setTypingAttributes_];

    (v94[1])(v98, v95);
  }

  [v97 addSubview_];
  *(v97 + direct field offset for TextBoxView.hideText) = 1;
  [v97 setNeedsDisplay];
  v102 = *&v2[v130];
  *&v2[v130] = v96;
  v103 = v96;
  v136 = v103;

  v39 = [v103 inputAssistantItem];
  v104 = MEMORY[0x1DA6CCED0](0x6D726F6674786574, 0xEA00000000007461);
  v105 = [objc_opt_self() systemImageNamed_];

  v140 = v97;
  v106 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  type metadata accessor for TextBoxView();
  v107 = [v106 initWithImage:v105 style:0 target:_bridgeAnythingToObjectiveC<A>(_:)() action:sel_textFormat_];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v108 = swift_allocObject();
  v135 = xmmword_1D405CEB0;
  *(v108 + 16) = xmmword_1D405CEB0;
  v109 = swift_allocObject();
  *(v109 + 16) = v135;
  *(v109 + 32) = v107;
  v110 = v97;
  v111 = objc_allocWithZone(MEMORY[0x1E69DC720]);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v112 = v107;
  v113 = Array._bridgeToObjectiveC()().super.isa;

  v114 = v110;
  v115 = v136;
  v116 = [v111 initWithBarButtonItems:v113 representativeItem:0];

  *(v108 + 32) = v116;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  v117 = Array._bridgeToObjectiveC()().super.isa;

  [v39 setTrailingBarButtonGroups_];

  [v114 contentScaleFactor];
  specialized TextBoxView._applyScaleToView(scale:view:)(v115, v118);
  v16 = v127;
  if (!v125)
  {

    v22 = v112;
LABEL_41:

    goto LABEL_42;
  }

  TextBoxView.registerForFirstResponderNotifications()();

  v20 = &OBJC_IVAR____TtC8PaperKit15SynapseLinkView____lazy_storage___linkPresentationView;
  v7 = v119;
  v6 = v131;
  v15 = v132;
LABEL_3:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v132 = v15;
  v23 = TextBoxView.canvas.getter();
  if (v23)
  {
    v24 = v23;
    v131 = v6;
    if (!*(v23 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView))
    {
      __break(1u);
      return;
    }

    v25 = v16;

    v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9Coherence13WeakTagged_10Vy8PaperKit0f6CanvasB0VGG_AF9CRKeyPathVs5NeverOTg503_s8g7Kit9Anyi14C08selectedD10b17IdsSay9Coherence9jk9VGvgAgE13eF19_10VyAA0ldF0VGXEfU_Tf1cn_n(v26);

    v28 = v138;
    CanvasElementView.canvasElement.getter(v138);
    v29 = v137;
    v30 = v132;
    Capsule.rootID.getter();
    v31 = v25[1];
    v31(v28, v30);
    v32 = specialized Sequence<>.contains(_:)(v29, v27);

    (*(v7 + 8))(v29, v131);
    if (!v32)
    {
      v33 = TextBoxView.canvas.getter();
      if (v33)
      {
        v34 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1D4058CF0;
        v36 = v138;
        CanvasElementView.canvasElement.getter(v138);
        v37 = v132;
        Capsule.rootID.getter();
        v31(v36, v37);
        AnyCanvas.selectedCanvasElementIds.setter(v35);
      }
    }
  }

  v38 = TextBoxView.canvas.getter();
  if (v38)
  {
    v39 = v38;
    v40 = [v38 window];
    if (v40)
    {
      v41 = v40;
      v42 = [objc_opt_self() activeToolPickerForWindow_];
      if (v42)
      {
        v43 = v42;
        v44 = [v42 _visibilityUpdatesEnabled];
        [v43 _setVisibilityUpdatesEnabled_];
        v45 = *&v2[v20[69]];
        if (v45)
        {
          [v45 becomeFirstResponder];
        }

        [v43 _setVisibilityUpdatesEnabled_];

        goto LABEL_41;
      }
    }

    v69 = *&v2[v20[69]];
    if (v69)
    {
      [v69 becomeFirstResponder];
    }

    goto LABEL_41;
  }

LABEL_42:
}

uint64_t key path setter for ShapeTextBox.emptyStringAttributes : <A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of Date?(a1, &v11 - v8, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GSgMd);
  return (*(v6 + 120))(v9, v5, v6);
}

void TextBoxView.maxCanvasModelWidth.getter()
{
  v0 = TextBoxView.canvas.getter();
  if (v0)
  {
    v1 = MEMORY[0x1E69E7D40];
    v2 = v0;
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x440))();
    v4 = (*((*v1 & *v3) + 0x280))();
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetWidth(v11);
  }
}

double TextBoxView.canvasElementViewFrameInModelSpace.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v1 = Strong;
  [Strong frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    AnyCanvasElementView.paperBoundsTransform()(&v22);
    v18 = *&v22.c;
    v19 = *&v22.a;
    v17 = *&v22.tx;

    v13 = v17;
    v12 = v18;
    v14 = v19;
  }

  else
  {
    v12 = xmmword_1D4059310;
    v14 = xmmword_1D4059320;
    v13 = 0uLL;
  }

  *&v21.a = v14;
  *&v21.c = v12;
  *&v21.tx = v13;
  CGAffineTransformInvert(&v20, &v21);
  v21 = v20;
  v23.origin.x = v3;
  v23.origin.y = v5;
  v23.size.width = v7;
  v23.size.height = v9;
  *&v15 = CGRectApplyAffineTransform(v23, &v21);

  return v15;
}

void TextBoxView.selectionCoordinateSpace.getter(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  *&v105 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x1C0);
  *&v104 = *((v6 & v4) + 0x1B8);
  *&v103 = v7;
  v8 = type metadata accessor for Capsule();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v98 - v10;
  *&v12 = COERCE_DOUBLE(type metadata accessor for TextBoxViewAttributes());
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v19 = xmmword_1D4059310;
    v20 = xmmword_1D4059320;
    v21 = 0uLL;
LABEL_41:
    *a1 = v20;
    a1[1] = v19;
    a1[2] = v21;
    return;
  }

  v16 = Strong;
  v101 = *&v14;
  v17 = *&v2[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
  *&v100 = v9;
  v99 = *&v12;
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    [v2 bounds];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*&v2[direct field offset for TextBoxView.textContainer] textContainer:{v22, v23, v24, v25}];
    v17 = 0;
  }

  v26 = v17;
  v27 = [v18 setTextContainerInset_];
  v28 = *((*v5 & *v16) + 0x280);
  v29 = (v28)(v27);
  v31 = v30;
  v32 = (*((*v5 & *v16) + 0x118))(v29);
  v102 = v18;
  if ((v32 & 1) == 0)
  {
    TextBoxView.maxCanvasModelWidth.getter();
    [v18 sizeThatFits_];
    v44 = v43;
    v35 = v45;
    [*&v2[direct field offset for TextBoxView.textContainer] lineFragmentPadding];
    v31 = v44 + v46 + v46;
    goto LABEL_16;
  }

  v33 = [v18 sizeThatFits_];
  v35 = v34;
  if (((*((*v5 & *v16) + 0x128))(v33) & 1) == 0)
  {
LABEL_14:
    v18 = v102;
LABEL_16:
    v49 = CanvasElementView.modelFrame.getter();
    MinY = v50;
    v52 = v47;
    v53 = v48;
    v54 = v100;
    if (vabdd_f64(v47, v31) < 0.1 && vabdd_f64(v48, v35) < 0.1)
    {
      v31 = v47;
      v35 = v48;
LABEL_40:
      v99 = v31;
      v101 = v35;
      v83 = CanvasElementView.canvasElement.getter(v11);
      MEMORY[0x1EEE9AC00](v83);
      v84 = v103;
      *(&v98 - 4) = v104;
      *(&v98 - 3) = v84;
      *(&v98 - 2) = *(v105 + 456);
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v54 + 8))(v11, v8);
      v85 = v109;
      *&v105 = v49 - v31 * 0.0;
      *&v104 = MinY - v35 * 0.0;
      v117.origin.x = v49;
      v117.origin.y = MinY;
      v117.size.width = v31;
      v117.size.height = v35;
      MidX = CGRectGetMidX(v117);
      v118.origin.x = v49;
      v118.origin.y = MinY;
      v118.size.width = v31;
      v118.size.height = v35;
      MidY = CGRectGetMidY(v118);
      CGAffineTransformMakeRotation(&t1, v85);
      tx = t1.tx;
      ty = t1.ty;
      v103 = *&t1.a;
      v100 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      c = t1.c;
      d = t1.d;
      v94 = t1.tx;
      v95 = t1.ty;
      *&t2.c = v100;
      *&t2.a = v103;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v106, &t1, &t2);
      v96 = v106.tx;
      v97 = v106.ty;
      v103 = *&v106.a;
      v100 = *&v106.c;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v94;
      t1.ty = v95;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.c = v100;
      *&t1.a = v103;
      t1.tx = v96;
      t1.ty = v97;
      CGAffineTransformConcat(&v106, &t1, &t2);
      t1.a = v99;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = v101;
      *&t1.tx = v105;
      *&t1.ty = v104;
      t2 = v106;
      CGAffineTransformConcat(&v106, &t1, &t2);
      v105 = *&v106.a;
      v104 = *&v106.c;
      v103 = *&v106.tx;

      v21 = v103;
      v20 = v105;
      v19 = v104;
      goto LABEL_41;
    }

    v55 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D405CEB0;
    *(inited + 32) = v2;
    v57 = v2;
    v58 = *&v101;
    Array<A>.displayAttributes()(inited, *&v101);
    swift_setDeallocating();
    swift_arrayDestroy();
    v59 = CanvasElementView.canvasElement.getter(v11);
    MEMORY[0x1EEE9AC00](v59);
    v60 = v103;
    *(&v98 - 4) = v104;
    *(&v98 - 3) = v60;
    *(&v98 - 2) = *(v105 + 456);
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v54 + 8))(v11, v8);
    if (!*&t1.a)
    {
      v112.origin.x = v49;
      v112.origin.y = MinY;
      v112.size.width = v52;
      v112.size.height = v53;
      Width = CGRectGetWidth(v112);
      if (v31 >= Width)
      {
        v31 = Width;
      }

      v113.origin.x = v49;
      v113.origin.y = MinY;
      v113.size.width = v52;
      v113.size.height = v53;
      Height = CGRectGetHeight(v113);
      if (v35 >= Height)
      {
        v35 = Height;
      }

      v114.origin.x = v49;
      v114.origin.y = MinY;
      v114.size.width = v52;
      v114.size.height = v53;
      v71 = CGRectGetMidX(v114);
      v115.origin.x = v49;
      v115.origin.y = MinY;
      v115.size.width = v52;
      v115.size.height = v53;
      v72 = CGRectGetMidY(v115);
      outlined destroy of TextBoxViewAttributes(v58);
      v49 = v71 - v31 * 0.5;
      MinY = v72 - v35 * 0.5;
      a1 = v55;
      v18 = v102;
      goto LABEL_40;
    }

    a1 = v55;
    if (v57[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] != 1)
    {
      v68 = 0;
      v73 = *&v101;
      v18 = v102;
LABEL_34:
      v74 = v73 + *(*&v99 + 32);
      v75 = *v74;
      v76 = v74[8];
      if ((v76 & 1) != 0 || v75)
      {
        v77 = v49;
        v78 = MinY;
        v79 = v52;
        v80 = v53;
        if ((v68 | (v75 == 2) & ~v76) == 1)
        {
          v81 = CGRectGetWidth(*&v77);
          outlined destroy of TextBoxViewAttributes(v73);
          v49 = v49 - (v31 - v81);
        }

        else
        {
          v82 = CGRectGetMidX(*&v77) + v31 * -0.5;
          v116.origin.x = v49;
          v116.origin.y = MinY;
          v116.size.width = v52;
          v116.size.height = v53;
          MinY = CGRectGetMinY(v116);
          outlined destroy of TextBoxViewAttributes(v73);
          v49 = v82;
        }

        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v49 = TextBoxView.canvasElementViewFrameInModelSpace.getter();
    MinY = v61;
    v52 = v62;
    v53 = v63;
    v18 = v102;
    if (v57[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
    {
      v98 = a1;
      v64 = [v57 traitCollection];
      v65 = [v64 layoutDirection];

      if (v57[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_isScribbling] == 1)
      {
        v66 = [v57 traitCollection];
        v67 = [v66 layoutDirection];

        v68 = v67 == 1;
        if (v65)
        {
          a1 = v98;
          v54 = v100;
LABEL_33:
          v73 = *&v101;
          goto LABEL_34;
        }

        a1 = v98;
        v54 = v100;
LABEL_43:
        v73 = *&v101;
LABEL_36:
        outlined destroy of TextBoxViewAttributes(v73);
        goto LABEL_40;
      }

      a1 = v98;
      v54 = v100;
      if (!v65)
      {
        goto LABEL_43;
      }
    }

    v68 = 0;
    goto LABEL_33;
  }

  v110.origin.x = v28();
  if (v35 < CGRectGetHeight(v110))
  {
LABEL_13:
    v111.origin.x = (v28)(v36);
    v35 = CGRectGetHeight(v111);
    goto LABEL_14;
  }

  v98 = a1;
  v37 = [v102 text];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v42 = v39 & 0xFFFFFFFFFFFFLL;
    }

    a1 = v98;
    if (v42)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __break(1u);
}

Swift::Void __swiftcall TextBoxView.setFixedWidth()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*MEMORY[0x1E69E7D40] & *v0);
  v3 = v2[55];
  v4 = v2[56];
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *((*v1 & *Strong) + 0x118);
    v50 = Strong;
    if (v10())
    {
      v11 = v50;
    }

    else
    {
      v12 = *(v0 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
      if (v12)
      {
        v13 = *(v0 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView);
      }

      else
      {
        [v0 bounds];
        v13 = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame:*(v0 + direct field offset for TextBoxView.textContainer) textContainer:{v14, v15, v16, v17}];
        v12 = 0;
      }

      v18 = v12;
      [v13 setTextContainerInset_];
      TextBoxView.maxCanvasModelWidth.getter();
      [v13 sizeThatFits_];
      v20 = v19;
      v22 = v21;
      v56.origin.x = CanvasElementView.modelFrame.getter();
      v23 = CGRectGetMidX(v56) + v20 * -0.5;
      v57.origin.x = CanvasElementView.modelFrame.getter();
      MinY = CGRectGetMinY(v57);
      v25 = CanvasElementView.canvasElement.getter(v8);
      MEMORY[0x1EEE9AC00](v25);
      *(&v44 - 4) = v3;
      *(&v44 - 3) = v4;
      v26 = v2[57];
      *(&v44 - 2) = v26;
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v6 + 8))(v8, v5);
      v27 = v54;
      v49 = v23 - v20 * 0.0;
      v48 = MinY - v22 * 0.0;
      v58.origin.x = v23;
      v58.origin.y = MinY;
      v58.size.width = v20;
      v46 = v20;
      v58.size.height = v22;
      v47 = v22;
      MidX = CGRectGetMidX(v58);
      v59.origin.x = v23;
      v59.origin.y = MinY;
      v59.size.width = v20;
      v59.size.height = v22;
      MidY = CGRectGetMidY(v59);
      CGAffineTransformMakeRotation(&t1, v27);
      tx = t1.tx;
      ty = t1.ty;
      v45 = *&t1.a;
      v44 = *&t1.c;
      CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
      a = t1.a;
      b = t1.b;
      c = t1.c;
      d = t1.d;
      v36 = t1.tx;
      v37 = t1.ty;
      *&t2.a = v45;
      *&t2.c = v44;
      t2.tx = tx;
      t2.ty = ty;
      CGAffineTransformConcat(&v51, &t1, &t2);
      v38 = v51.tx;
      v39 = v51.ty;
      v45 = *&v51.a;
      v44 = *&v51.c;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = v36;
      t1.ty = v37;
      CGAffineTransformInvert(&t2, &t1);
      *&t1.a = v45;
      *&t1.c = v44;
      t1.tx = v38;
      t1.ty = v39;
      CGAffineTransformConcat(&v51, &t1, &t2);
      t1.a = v46;
      t1.b = 0.0;
      t1.c = 0.0;
      t1.d = v47;
      t1.tx = v49;
      t1.ty = v48;
      t2 = v51;
      v40 = CGAffineTransformConcat(&v51, &t1, &t2);
      v41 = *&v51.c;
      v42 = *&v51.tx;
      v43 = v0 + OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_liveUneditedModelCoordinateSpace;
      *v43 = *&v51.a;
      *(v43 + 1) = v41;
      *(v43 + 2) = v42;
      v43[48] = 0;
      MEMORY[0x1EEE9AC00](v40);
      *(&v44 - 2) = v26;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit31CanvasElementAutoresizeBehaviorVSgMd);
      Capsule.callAsFunction<A>(_:)();
      swift_endAccess();
    }
  }
}

uint64_t closure #1 in TextBoxView.setFixedWidth()@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v3 = Capsule.Ref.subscript.modify();
  v4 = *v2;
  if (*v2)
  {
    *v2 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  *(a1 + 8) = (v4 & 1) == 0;
  v3(v7, 0);
}

Swift::Void __swiftcall TextBoxView._updateFrames()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    TextBoxView.selectionCoordinateSpace.getter(v68);
    CGAffineTransform.decompose(initialRotation:)(&v69, 0.0);
    a = v69.a;
    c = v69.c;
    rect = v69.d;
    b = v69.b;
    angle = v69.tx;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      AnyCanvasElementView.paperBoundsTransform()(&v69);
      v7 = v69.a;
      v8 = v69.b;
      v9 = v69.c;
      d = v69.d;
      tx = v69.tx;
      ty = v69.ty;
    }

    else
    {
      v7 = 1.0;
      v8 = 0.0;
      v9 = 0.0;
      d = 1.0;
      tx = 0.0;
      ty = 0.0;
    }

    t1.a = v7;
    t1.b = v8;
    v55 = v8;
    v56 = v7;
    t1.c = v9;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    v70.origin.x = a;
    v70.origin.y = b;
    v70.size.width = c;
    v70.size.height = rect;
    v71 = CGRectApplyAffineTransform(v70, &t1);
    y = v71.origin.y;
    x = v71.origin.x;
    height = v71.size.height;
    width = v71.size.width;
    t1.a = v7;
    t1.b = v8;
    t1.c = v9;
    t1.d = d;
    t1.tx = tx;
    t1.ty = ty;
    v71.origin.x = a;
    v71.origin.y = b;
    v71.size.width = c;
    v71.size.height = rect;
    v72 = CGRectApplyAffineTransform(v71, &t1);
    v13 = v72.origin.x;
    v14 = v72.origin.y;
    [v3 frame];
    v16 = v13 - v15;
    t1.a = 1.0;
    t1.b = 0.0;
    v18 = v14 - v17;
    t1.c = 0.0;
    t1.d = 1.0;
    t1.tx = 0.0;
    t1.ty = 0.0;
    [v1 setTransform_];
    [v1 setFrame_];
    [v1 bounds];
    v19 = v73.origin.x;
    v20 = v73.origin.y;
    v21 = v73.size.width;
    v22 = v73.size.height;
    MidX = CGRectGetMidX(v73);
    v74.origin.x = v19;
    v74.origin.y = v20;
    v74.size.width = v21;
    v74.size.height = v22;
    MidY = CGRectGetMidY(v74);
    CGAffineTransformMakeRotation(&t1, angle);
    v25 = t1.tx;
    v26 = t1.ty;
    v58 = *&t1.c;
    recta = *&t1.a;
    CGAffineTransformMakeTranslation(&t1, -MidX, -MidY);
    v27 = t1.a;
    v28 = t1.b;
    v29 = t1.c;
    v30 = t1.d;
    v31 = t1.tx;
    v32 = t1.ty;
    *&t2.a = recta;
    *&t2.c = v58;
    t2.tx = v25;
    t2.ty = v26;
    CGAffineTransformConcat(&v65, &t1, &t2);
    v33 = v65.tx;
    v34 = v65.ty;
    v59 = *&v65.c;
    rectb = *&v65.a;
    t1.a = v27;
    t1.b = v28;
    t1.c = v29;
    t1.d = v30;
    t1.tx = v31;
    t1.ty = v32;
    CGAffineTransformInvert(&t2, &t1);
    *&t1.a = rectb;
    *&t1.c = v59;
    t1.tx = v33;
    t1.ty = v34;
    CGAffineTransformConcat(&v65, &t1, &t2);
    v35 = v65.tx;
    v36 = v65.ty;
    v60 = *&v65.c;
    rectc = *&v65.a;
    v37 = sqrt(v56 * v56 + v55 * v55);
    CGAffineTransformMakeScale(&t1, v37, v37);
    v38 = *&t1.a;
    v39 = *&t1.c;
    v40 = *&t1.tx;
    *&t1.a = rectc;
    *&t1.c = v60;
    t1.tx = v35;
    t1.ty = v36;
    *&t2.a = v38;
    *&t2.c = v39;
    *&t2.tx = v40;
    CGAffineTransformConcat(&v65, &t1, &t2);
    t1 = v65;
    [v1 setTransform_];
    v41 = &v1[direct field offset for TextBoxView.delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v42 = *(v41 + 1);
      ObjectType = swift_getObjectType();
      (*(v42 + 16))(v1, ObjectType, v42, x, y, width, height);
      swift_unknownObjectRelease();
    }

    v44 = *&v1[direct field offset for TextBoxView.textContainer];
    [v1 bounds];
    [v44 setSize_];

    v47 = *&v1[OBJC_IVAR____TtC8PaperKit14AnyTextBoxView_textView];
    if (v47)
    {
      v48 = v47;
      [v1 bounds];
      [v48 setFrame_];
    }
  }
}