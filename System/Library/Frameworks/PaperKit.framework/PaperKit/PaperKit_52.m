unint64_t lazy protocol witness table accessor for type Tips.Status and conformance Tips.Status()
{
  result = lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status;
  if (!lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status)
  {
    type metadata accessor for Tips.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Tips.Status and conformance Tips.Status);
  }

  return result;
}

uint64_t protocol witness for Tip.title.getter in conformance ImageWandTip()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408FFB0;
  v0._countAndFlagsBits = 0x6120657461657243;
  v0._object = 0xEF6567616D49206ELL;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, v1, paperKitBundle, v2, v4);
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t protocol witness for Tip.message.getter in conformance ImageWandTip()
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v4._object = 0x80000001D408FF80;
  v0.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v0.value._object = 0xEB00000000656C62;
  v1._countAndFlagsBits = 0xD00000000000004ALL;
  v1._object = 0x80000001D408FF30;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000020;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v0, paperKitBundle, v2, v4);
  lazy protocol witness table accessor for type String and conformance String();
  return Text.init<A>(_:)();
}

uint64_t protocol witness for Tip.image.getter in conformance ImageWandTip()
{
  v0 = MEMORY[0x1DA6CCED0](0xD000000000000012, 0x80000001D40813C0);
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return Image.init(_:bundle:)();
}

uint64_t protocol witness for Identifiable.id.getter in conformance ImageWandTip@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ImageWandTip and conformance ImageWandTip();
  result = MEMORY[0x1DA6C93A0](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t specialized ImageWandTip.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F8OptionalyQrAaH_pSgFZQOy__Qo_Qo_Md);
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v34 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV17buildPartialBlock5firstQrx_tAA0A6OptionRzlFZQOy__AE0F10ExpressionyQrxAaHRzlFZQOy__AC15MaxDisplayCountVQo_Qo_Md);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v34 - v5;
  v6 = type metadata accessor for Tips.MaxDisplayCount();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV15buildExpressionyQrxAA0A6OptionRzlFZQOy__AC15MaxDisplayCountVQo_Md);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO14OptionsBuilderV13buildOptionalyQrAA0A6Option_pSgFZQOy__Qo_Md);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v34 - v14;
  if (os_variant_has_internal_ui() && (v15 = [objc_opt_self() standardUserDefaults], v16 = MEMORY[0x1DA6CCED0](0xD000000000000018, 0x80000001D408FEF0), v34 = v4, v17 = v13, v18 = v3, v19 = v12, v20 = v2, v21 = v6, v22 = v16, v23 = objc_msgSend(v15, sel_BOOLForKey_, v16), v15, v22, v6 = v21, v2 = v20, v12 = v19, v3 = v18, v13 = v17, v4 = v34, (v23 & 1) != 0))
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v24 = v41;
    MEMORY[0x1DA6C9400](&v44);
  }

  else
  {
    Tips.MaxDisplayCount.init(_:)();
    v25 = MEMORY[0x1E6982A88];
    MEMORY[0x1DA6C9410](v8, v6, MEMORY[0x1E6982A88]);
    (*(v35 + 8))(v8, v6);
    *&v44 = v6;
    *(&v44 + 1) = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v27 = v37;
    v28 = v38;
    MEMORY[0x1DA6C9430](v11, v37, OpaqueTypeConformance2);
    *(&v45 + 1) = v3;
    v42 = v27;
    v43 = OpaqueTypeConformance2;
    v46 = swift_getOpaqueTypeConformance2();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
    (*(v4 + 16))(boxed_opaque_existential_1, v28, v3);
    v24 = v41;
    MEMORY[0x1DA6C9400](&v44);
    (*(v4 + 8))(v28, v3);
    (*(v36 + 8))(v11, v27);
  }

  outlined destroy of TipOption?(&v44);
  v30 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1DA6C9430](v24, v12, v30);
  *&v44 = v12;
  *(&v44 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v39 + 8))(v2, v31);
  (*(v13 + 8))(v24, v12);
  return v32;
}

uint64_t outlined destroy of TipOption?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A6Option_pSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GraphableExpressionView()
{
  result = type metadata singleton initialization cache for GraphableExpressionView;
  if (!type metadata singleton initialization cache for GraphableExpressionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GraphableExpressionView()
{
  type metadata accessor for Binding<GraphableExpressionState>(319, &lazy cache variable for type metadata for Binding<GraphableExpressionState>, type metadata accessor for GraphableExpressionState, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<GraphableExpressionState>(319, &lazy cache variable for type metadata for Environment<EnvironmentValues>, MEMORY[0x1E697F228], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Binding<GraphableExpressionState>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void GraphableExpressionView.expressionColorDescription.getter()
{
  v20 = *v0;
  v21 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v19, v1);
  v2 = v19;
  swift_getKeyPath();
  v20 = v2;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + 32);

  if (!v3)
  {
    static Color.clear.getter();
  }

  type metadata accessor for UIColor();
  v4 = UIColor.init(_:)();
  v5 = [objc_opt_self() clearColor];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    return;
  }

  v7 = [v4 accessibilityName];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v20 = v8;
  *&v21 = v10;
  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v22._object = 0x80000001D40900D0;
  v11._countAndFlagsBits = 0x207974696361704FLL;
  v11._object = 0xEE00296874614D28;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0x7974696361704FLL;
  v13._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0xD000000000000030;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, paperKitBundle, v13, v22)._countAndFlagsBits;
  MEMORY[0x1DA6CD010](countAndFlagsBits);

  MEMORY[0x1DA6CD010](32, 0xE100000000000000);
  v15 = [v4 CGColor];
  Alpha = CGColorGetAlpha(v15);

  v17 = Alpha * 100.0;
  if (COERCE__INT64(fabs(Alpha * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v17 < 9.22337204e18)
  {
    v19 = v17;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1DA6CD010](v18);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t closure #1 in GraphableExpressionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAGyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicjK0OFQOyAA5ImageV_Qo_AGyAqA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingV0VGAA01_dsQ0VyAA9RectangleVGGAA023AccessibilityAttachmentQ0VGAA6SpacerV_GMd);
  MEMORY[0x1EEE9AC00](v144);
  v147 = (&v126[0].super.isa - v3);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd);
  MEMORY[0x1EEE9AC00](v131);
  v132 = v126 - v4;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  MEMORY[0x1EEE9AC00](v142);
  v6 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v134 = v126 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v148 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v152 = v126 - v12;
  v13 = type metadata accessor for GraphableExpressionView();
  v137 = *(v13 - 8);
  v14 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v139 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEy09CalculateB00F21ExpressionTypesetViewVAA14_PaddingLayoutVGAJGAA31AccessibilityAttachmentModifierVGGMd);
  v145 = *(v15 - 8);
  v146 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v143 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v151 = v126 - v18;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x1EEE9AC00](v135);
  v20 = v126 - v19;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd);
  MEMORY[0x1EEE9AC00](v136);
  v150 = v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v153 = v126 - v23;
  v24 = *a1;
  v25 = a1[2];
  v129 = a1[1];
  v130 = v24;
  *&v162 = v24;
  *(&v162 + 1) = v129;
  v128 = v25;
  *&v163 = v25;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v157);
  v26 = v157;
  swift_getKeyPath();
  *&v162 = v26;
  v126[1].super.isa = _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = *(v26 + 32);

  if (!v27)
  {
    v28 = [objc_opt_self() clearColor];
    v27 = Color.init(uiColor:)();
  }

  v138 = v14;
  v140 = a1;
  v133 = v6;

  v29 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v162) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v161[39] = v171;
  *&v161[23] = v170;
  *&v161[7] = v169;
  v141 = v27;
  *&v157 = v27;
  WORD4(v157) = 256;
  LOBYTE(v158) = v29;
  *(&v158 + 1) = v31;
  *&v159 = v33;
  *(&v159 + 1) = v35;
  *&v160[0] = v37;
  BYTE8(v160[0]) = 0;
  *(v160 + 9) = *v161;
  *(&v160[1] + 9) = *&v161[16];
  *(&v160[2] + 9) = *&v161[32];
  *(&v160[3] + 1) = *(&v171 + 1);
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v38.value._object = 0xEB00000000656C62;
  v38.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v172._object = 0x80000001D408FFF0;
  v39._object = 0x80000001D408FFD0;
  v172._countAndFlagsBits = 0xD000000000000033;
  v39._countAndFlagsBits = 0xD000000000000017;
  v126[0] = paperKitBundle;
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v38, paperKitBundle, v40, v172);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v41 = lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  v165 = v160[0];
  v166 = v160[1];
  v167 = v160[2];
  v168 = v160[3];
  v162 = v157;
  v163 = v158;
  v164 = v159;
  outlined destroy of StocksKitCurrencyCache.Provider?(&v162, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMd);
  v42 = v140;
  GraphableExpressionView.expressionColorDescription.getter();
  *&v157 = v43;
  *(&v157 + 1) = v44;
  v45 = v153;
  v135 = v41;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v20, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGMd);
  v46 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGMd) + 36);
  *v55 = v46;
  *(v55 + 8) = v48;
  *(v55 + 16) = v50;
  *(v55 + 24) = v52;
  *(v55 + 32) = v54;
  *(v55 + 40) = 0;
  v56 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGMd) + 36);
  *v65 = v56;
  *(v65 + 8) = v58;
  *(v65 + 16) = v60;
  *(v65 + 24) = v62;
  *(v65 + 32) = v64;
  *(v65 + 40) = 0;
  v66 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGMd) + 36);
  *v75 = v66;
  *(v75 + 8) = v68;
  *(v75 + 16) = v70;
  *(v75 + 24) = v72;
  *(v75 + 32) = v74;
  *(v75 + 40) = 0;
  v76 = (v45 + *(v136 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA9RectangleVGMd);
  static ContentShapeKinds.interaction.getter();
  *v76 = 0;
  v77 = v139;
  outlined init with copy of GraphableExpressionView(v42, v139);
  v78 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v79 = swift_allocObject();
  v80 = outlined init with take of GraphableExpressionView(v77, v79 + v78);
  MEMORY[0x1EEE9AC00](v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v81 = *(v42 + 32);
  LOBYTE(v157) = *(v42 + 24);
  *(&v157 + 1) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  if (LOBYTE(v155._countAndFlagsBits) == 1)
  {
    outlined init with copy of GraphableExpressionView(v42, v77);
    v82 = swift_allocObject();
    v83 = outlined init with take of GraphableExpressionView(v77, v82 + v78);
    MEMORY[0x1EEE9AC00](v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAkA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGMd);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance <> _ConditionalContent<A, B>();
    v84 = v132;
    Button.init(action:label:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v85 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGMd) + 36));
    v86 = v158;
    *v85 = v157;
    v85[1] = v86;
    v85[2] = v159;
    v87 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGMd) + 36);
    *v96 = v87;
    *(v96 + 8) = v89;
    *(v96 + 16) = v91;
    *(v96 + 24) = v93;
    *(v96 + 32) = v95;
    *(v96 + 40) = 0;
    *(v84 + *(v131 + 36)) = 0;
    v173._object = 0x80000001D4090030;
    v97._countAndFlagsBits = 0x696C696269736956;
    v173._countAndFlagsBits = 0xD000000000000035;
    v97._object = 0xEA00000000007974;
    v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v98.value._object = 0xEB00000000656C62;
    isa = v126[0].super.isa;
    v100._countAndFlagsBits = 0;
    v100._object = 0xE000000000000000;
    v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v126[0], v100, v173);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    v101 = v133;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(v84, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGMd);
    v155._countAndFlagsBits = v130;
    v155._object = v129;
    v156 = v128;
    MEMORY[0x1DA6CA790](&v154, v127);
    v102 = v154;
    swift_getKeyPath();
    v155._countAndFlagsBits = v102;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v103 = *(v102 + 24);

    v104 = v152;
    if (v103 == 1)
    {
      v125 = 0x80000001D40900A0;
      v107 = 0x656C6269736956;
      v108 = 0xD000000000000029;
      v109 = 0xE700000000000000;
    }

    else
    {
      v125 = 0x80000001D4090070;
      v107 = 0x6E6564646948;
      v108 = 0xD000000000000028;
      v109 = 0xE600000000000000;
    }

    v110.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v110.value._object = 0xEB00000000656C62;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    v155 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v107, v110, isa, v111, *&v108);
    v112 = v134;
    ModifiedContent<>.accessibilityValue<A>(_:)();

    outlined destroy of StocksKitCurrencyCache.Provider?(v101, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
    outlined init with copy of Date?(v112, v147, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v106 = v104;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v112, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
  }

  else
  {
    v105 = v147;
    *v147 = 0x403E000000000000;
    *(v105 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    v106 = v152;
    _ConditionalContent<>.init(storage:)();
  }

  v113 = v150;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _ContentShapeKindModifier<Rectangle>>(v153, v150);
  v114 = v145;
  v115 = v146;
  v116 = *(v145 + 16);
  v117 = v143;
  v118 = v151;
  v116(v143, v151, v146);
  v119 = v148;
  outlined init with copy of Date?(v106, v148, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd);
  v120 = v149;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _ContentShapeKindModifier<Rectangle>>(v113, v149);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGG_AA6ButtonVyACyACyACy09CalculateB00r17ExpressionTypesetF0VALGALGARGGAA6SpacerVAA012_ConditionalD0VyACyACyACyACyA2_yA13_yAA0F0PAAE15dynamicTypeSizeyQrAA07DynamicxY0OFQOyAA5ImageV_Qo_ACyA21_AA022_EnvironmentKeyWritingN0VyAA03AnyE5StyleVSgGGGGAOGALGAA01_deN0VyAZGGARGA11_GtMd);
  v116((v120 + v121[12]), v117, v115);
  v122 = v120 + v121[16];
  *v122 = 0;
  *(v122 + 8) = 1;
  outlined init with copy of Date?(v119, v120 + v121[20], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd);

  outlined destroy of StocksKitCurrencyCache.Provider?(v152, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd);
  v123 = *(v114 + 8);
  v123(v118, v115);
  outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd);
  outlined destroy of StocksKitCurrencyCache.Provider?(v119, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAEyAA6ButtonVyACyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_AEyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGAA6SpacerVGMd);
  v123(v117, v115);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v150, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd);
}

uint64_t closure #2 in closure #1 in GraphableExpressionView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = type metadata accessor for AttributedString.CharacterView();
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v37 - v10;
  v12 = *a1;
  v13 = a1[2];
  v39 = a1[1];
  v40 = v12;
  v48._countAndFlagsBits = v12;
  v48._object = v39;
  v38 = v13;
  v49 = v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v47);
  v14 = v47;
  swift_getKeyPath();
  v48._countAndFlagsBits = v14;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpressionTypesetView.init(expression:result:showResult:)();
  v15 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGMd) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v26 = &v9[*(v7 + 36)];
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  v50._object = 0x80000001D4082FE0;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v32._countAndFlagsBits = 0x6E6F697461757145;
  v33._object = 0x80000001D4082FC0;
  v50._countAndFlagsBits = 0xD000000000000028;
  v33._countAndFlagsBits = 0xD000000000000018;
  v32._object = 0xE800000000000000;
  v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v31, paperKitBundle, v32, v50);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMR, lazy protocol witness table accessor for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v9, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd);
  v48._countAndFlagsBits = v40;
  v48._object = v39;
  v49 = v38;
  MEMORY[0x1DA6CA790](&v47, v37);
  v34 = v47;
  swift_getKeyPath();
  v48._countAndFlagsBits = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  CalculateExpression.accessibilityMathEquationDescription.getter();

  AttributedString.characters.getter();
  (*(v42 + 8))(v6, v43);
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678]);
  v48._countAndFlagsBits = String.init<A>(_:)();
  v48._object = v35;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd);
}

uint64_t closure #1 in closure #1 in GraphableExpressionView.body.getter(uint64_t *a1)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v4, v1);
  v2 = v4;
  swift_getKeyPath();
  v5 = v2;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + 24) = (*(v2 + 24) & 1) == 0;
  v5 = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t closure #4 in closure #1 in GraphableExpressionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  MEMORY[0x1EEE9AC00](v29);
  v4 = &v27 - v3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamichI0OFQOyAA5ImageV_Qo_AA08ModifiedD0VyAmA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGG_GMd);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v27 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrAA07DynamiceF0OFQOyAA5ImageV_Qo_Md);
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  v32 = *a1;
  v33 = *(a1 + 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8PaperKit24GraphableExpressionStateCGMd);
  MEMORY[0x1DA6CA790](&v31, v14);
  v15 = v31;
  swift_getKeyPath();
  v32 = v15;
  _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type GraphableExpressionState and conformance GraphableExpressionState, type metadata accessor for GraphableExpressionState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a1) = *(v15 + 24);

  v32 = Image.init(systemName:)();
  (*(v8 + 104))(v10, *MEMORY[0x1E697E708], v7);
  if (a1 == 1)
  {
    v16 = MEMORY[0x1E6981748];
    v17 = MEMORY[0x1E6981710];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    v18 = v28;
    (*(v11 + 16))(v6, v13, v28);
    swift_storeEnumTagMultiPayload();
    v32 = v16;
    *&v33 = v17;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return (*(v11 + 8))(v13, v18);
  }

  else
  {
    v20 = MEMORY[0x1E6981748];
    v21 = MEMORY[0x1E6981710];
    View.dynamicTypeSize(_:)();
    (*(v8 + 8))(v10, v7);

    v22 = [objc_opt_self() separatorColor];
    v23 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v32 = v23;
    v25 = AnyShapeStyle.init<A>(_:)();
    v26 = &v4[*(v29 + 36)];
    *v26 = KeyPath;
    v26[1] = v25;
    outlined init with copy of Date?(v4, v6, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
    swift_storeEnumTagMultiPayload();
    v32 = v20;
    *&v33 = v21;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamicgH0OFQOyAA5ImageV_Qo_AA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGMd);
  }
}

uint64_t protocol witness for View.body.getter in conformance GraphableExpressionView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKyAKyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA08_PaddingG0VGAA06_FrameG0VGAA31AccessibilityAttachmentModifierVGATGATGATGAA01_jk4KindR0VyAA9RectangleVGG_AA6ButtonVyAKyAKyAKy09CalculateB00v17ExpressionTypesetD0VATGATGAZGGAA6SpacerVAA012_ConditionalJ0VyAKyAKyAKyAKyA10_yA21_yAA0D0PAAE15dynamicTypeSizeyQrAA15DynamicTypeSizeOFQOyAA5ImageV_Qo_AKyA29_AA022_EnvironmentKeyWritingR0VyAA03AnyK5StyleVSgGGGGAWGATGAA01_jkR0VyA6_GGAZGA19_GtGGMd);
  return closure #1 in GraphableExpressionView.body.getter(v1, a1 + *(v3 + 44));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ShapeView<Circle, Color> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA6CircleVAA5ColorVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of GraphableExpressionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphableExpressionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GraphableExpressionView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphableExpressionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGAA31AccessibilityAttachmentModifierVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGAHGMR, lazy protocol witness table accessor for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout>, _PaddingLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09CalculateB00E21ExpressionTypesetViewVAA14_PaddingLayoutVGMd);
    _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type CalculateExpressionTypesetView and conformance CalculateExpressionTypesetView, MEMORY[0x1E69922D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<CalculateExpressionTypesetView, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6ButtonVyAA012_ConditionalD0VyAA4ViewPAAE15dynamicTypeSizeyQrAA07DynamiciJ0OFQOyAA5ImageV_Qo_ACyAoA30_EnvironmentKeyWritingModifierVyAA13AnyShapeStyleVSgGGGGAA12_FrameLayoutVGAA08_PaddingU0VGAA01_drP0VyAA9RectangleVGGAA023AccessibilityAttachmentP0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
    _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _PaddingLayout>, _FrameLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _ContentShapeKindModifier<Rectangle>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA14_PaddingLayoutVGAA06_FrameJ0VGAA31AccessibilityAttachmentModifierVGALGALGALGAA01_de4KindN0VyAA9RectangleVGGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for GraphableExpressionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0C6ValuesV_GMd);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for EnvironmentValues();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t key path getter for EnvironmentValues.tint : EnvironmentValues, serialized@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1DA6C9B90]();
  *a1 = result;
  return result;
}

uint64_t _s8PaperKit24GraphableExpressionStateCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for UIColor()
{
  result = lazy cache variable for type metadata for UIColor;
  if (!lazy cache variable for type metadata for UIColor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIColor);
  }

  return result;
}

unint64_t MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(char a1)
{
  result = 0x6C69636E65507369;
  switch(a1)
  {
    case 1:
      result = 0x79636E6574616CLL;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0x6874616D5F6D756ELL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x747865745F6D756ELL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6F7274735F6D756ELL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MagicPaperUsageAutoRefineEvent.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MagicPaperUsageAutoRefineEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MagicPaperUsageAutoRefineEvent.CodingKeys()
{
  MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MagicPaperUsageAutoRefineEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MagicPaperUsageAutoRefineEvent.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageAutoRefineEvent.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MagicPaperUsageAutoRefineEvent.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = MagicPaperUsageAutoRefineEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MagicPaperUsageAutoRefineEvent.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MagicPaperUsageAutoRefineEvent.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MagicPaperUsageAutoRefineEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MagicPaperUsageAutoRefineEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MagicPaperUsageAutoRefineEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit05MagicD20UsageAutoRefineEventV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[4] = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[3] = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent.CodingKeys and conformance MagicPaperUsageAutoRefineEvent.CodingKeys);
  }

  return result;
}

void protocol witness for AnalyticsEvent.finalize() in conformance MagicPaperUsageAutoRefineEvent()
{
  if ((*(v0 + 112) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    specialized MagicPaperUsageAnalyticsEvent.initMagicPaperUsageAnalyticsEvent(from:)(Strong);

    v2 = *(v0 + 32);
    if (v2)
    {
      v3 = *(v0 + 24);

      *(v0 + 8) = v3;
      *(v0 + 16) = v2;
    }

    *(v0 + 112) = 1;
  }
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageAutoRefineEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
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

uint64_t storeEnumTagSinglePayload for MagicPaperUsageAutoRefineEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MagicPaperUsageAutoRefineEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageAutoRefineEvent and conformance MagicPaperUsageAutoRefineEvent);
  }

  return result;
}

unint64_t specialized MagicPaperUsageAutoRefineEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageAutoRefineEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  ObjectType = swift_getObjectType();
  v17 = (*(a4 + 32) + **(a4 + 32));
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:);
  v14.n128_f64[0] = a1;
  v15.n128_f64[0] = a2;

  return v17(a5, a6, ObjectType, a4, v14, v15);
}

uint64_t closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(uint64_t a1)
{
  *(*v1 + 40) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:), v3, v2);
}

uint64_t closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Void __swiftcall CanvasCollaborationStateView.CollaborationCursor.position(for:)(CGAffineTransform *a1)
{
  v53 = a1;
  v54 = v4;
  v5 = v3;
  v59 = v2;
  v6 = v1;
  b = a1->b;
  a = a1->a;
  d = a1->d;
  c = a1->c;
  tx = a1->tx;
  ty = a1->ty;
  CGAffineTransform.decompose(initialRotation:)(&v67, 0.0);
  v10 = *(v5 + 2);
  if (v10)
  {
    v11 = v67.tx;
    if (v6 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      v14 = v5 + 6;
      v55 = vdupq_n_s64(0x3FDF5C28F5C28F5CuLL);
      while (v10 != v13)
      {
        if (i == v13)
        {
          goto LABEL_15;
        }

        v20 = *(v14 - 2);
        v19 = *(v14 - 1);
        v21 = *v14;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1DA6CE0C0](v13, v6);
        }

        else
        {
          if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v22 = *(v6 + 8 * v13 + 32);
        }

        v5 = v22;
        CGAffineTransformMakeRotation(&v67, v11 + v20);
        v62 = *&v67.c;
        v64 = *&v67.a;
        v23 = v67.tx;
        v24 = v67.ty;
        v67.a = a;
        v67.b = b;
        v67.c = c;
        v67.d = d;
        v67.tx = tx;
        v67.ty = ty;
        v68.x = v19;
        v68.y = v21;
        v25 = CGPointApplyAffineTransform(v68, &v67);
        v26 = [v59 window];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 screen];

          [v28 scale];
          v60 = v29;

          v15 = v60;
        }

        else
        {
          v15 = 1.0;
        }

        ++v13;
        v16 = vdupq_lane_s64(*&v15, 0);
        v17 = vmulq_n_f64(v25, v15);
        v18 = vrndmq_f64(v17);
        [(CGFloat *)v5 setPosition:vdivq_f64(vbslq_s8(vcgeq_f64(vsubq_f64(v17, v18), v55), vrndpq_f64(v17), v18), v16), v53];
        *&v67.a = v64;
        *&v67.c = v62;
        v67.tx = v23;
        v67.ty = v24;
        [(CGFloat *)v5 setAffineTransform:&v67];

        v14 += 3;
        if (v10 == v13)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }
  }

LABEL_15:
  CGAffineTransform.decompose(initialRotation:)(&v67, 0.0);
  CGAffineTransformMakeRotation(&v67, v67.tx);
  v30 = *(v54 + 16);
  if (v30)
  {
    v63 = *&v67.c;
    v65 = *&v67.a;
    v61 = *&v67.tx;
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
    v31 = v66;
    v32 = (v54 + 40);
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;
      *&v67.a = v65;
      *&v67.c = v63;
      *&v67.tx = v61;
      v69.x = v33;
      v69.y = v34;
      v37 = CGPointApplyAffineTransform(v69, &v67);
      y = v37.y;
      x = v37.x;
      v39 = *(v66 + 16);
      v38 = *(v66 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
        y = v37.y;
        x = v37.x;
      }

      *(v66 + 16) = v40;
      v41 = (v66 + 32 * v39);
      v41[4] = v33;
      v41[5] = v34;
      v41[6] = x;
      v41[7] = y;
      v32 += 2;
      --v30;
    }

    while (v30);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
    v40 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v40)
    {

      __break(1u);
      return;
    }
  }

  v42 = v31[4];
  v43 = v31[5];
  v44 = v40 - 1;
  if (v40 != 1)
  {
    v45 = v31[7];
    v46 = v31 + 11;
    do
    {
      v47 = *(v46 - 3);
      v48 = *(v46 - 2);
      v49 = *v46;
      v46 += 4;
      v50 = v49;
      if (v49 < v45)
      {
        v42 = v47;
        v43 = v48;
        v45 = v50;
      }

      --v44;
    }

    while (v44);
  }

  v67.a = a;
  v67.b = b;
  v67.c = c;
  v67.d = d;
  v67.tx = tx;
  v67.ty = ty;
  v70.x = v42;
  v70.y = v43;
  v51 = CGPointApplyAffineTransform(v70, &v67);
  v52 = &v59[OBJC_IVAR____TtC8PaperKit29CanvasCollaborationAvatarView_frameAnchorPoint];
  *v52 = v51.x;
  v52[1] = v51.y + -12.0;
  CanvasCollaborationAvatarView.update(animated:)(0);
  CanvasCollaborationAvatarView.resetAutohideTimer()();
}

void __swiftcall CanvasCollaborationStateView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = [v3 subviews];
  type metadata accessor for UIView();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_17:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 & 0xC000000000000001;
  v17 = v8;
  v12 = v8 + 32;
  v8 = &off_1E845F000;
  while (v10)
  {
    if (__OFSUB__(v10--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v11)
    {
      v14 = MEMORY[0x1DA6CE0C0](v10, v17);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v10 >= *(v9 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v12 + 8 * v10);
    }

    v15 = v14;
    [v14 convertPoint:v3 fromCoordinateSpace:{x, y}];
    v16 = [v15 hitTest:isa withEvent:?];

    if (v16)
    {
      break;
    }
  }
}

Swift::Void __swiftcall CanvasCollaborationStateView.removeAllHandles()()
{
  v56 = type metadata accessor for UUID();
  v1 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  swift_beginAccess();
  v44 = v8;
  v45 = v0;
  v9 = *(v0 + v8);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v48 = v1 + 16;
  v46 = (v11 + 63) >> 6;
  v47 = v1 + 32;
  v50 = v1;
  v51 = v9;
  v52 = (v1 + 8);

  v14 = 0;
  v55 = v7;
  v53 = v10;
  while (v13)
  {
    v15 = v14;
LABEL_15:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v15 << 6);
    v21 = v50;
    v20 = v51;
    v22 = v49;
    v23 = v56;
    (*(v50 + 16))(v49, *(v51 + 48) + *(v50 + 72) * v19, v56);
    v24 = (*(v20 + 56) + 32 * v19);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
    v26 = &v54[*(v25 + 48)];
    v27 = *(v21 + 32);
    v28 = v24[1];
    v57 = *v24;
    v58 = v28;
    v29 = v54;
    v27(v54, v22, v23);
    v30 = v58;
    *v26 = v57;
    *(v26 + 1) = v30;
    (*(*(v25 - 8) + 56))(v29, 0, 1, v25);

    v31 = *(&v57 + 1);

    v7 = v55;
LABEL_16:
    outlined init with take of Range<AttributedString.Index>(v29, v7, &_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetSgMd);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
    if ((*(*(v32 - 8) + 48))(v7, 1, v32) == 1)
    {

      v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit28CanvasCollaborationStateViewC0H6CursorVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(v45 + v44) = v42;

      return;
    }

    v33 = &v7[*(v32 + 48)];
    v34 = *v33;
    v35 = *(v33 + 1);
    *&v58 = *(v33 + 3);
    if (v34 >> 62)
    {
      v36 = __CocoaSet.count.getter();
      if (!v36)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_4;
      }
    }

    if (v36 < 1)
    {
      goto LABEL_30;
    }

    for (i = 0; i != v36; ++i)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1DA6CE0C0](i, v34);
      }

      else
      {
        v38 = *(v34 + 8 * i + 32);
      }

      v39 = v38;
      [v38 removeFromSuperlayer];
    }

LABEL_4:
    [v35 removeFromSuperview];

    v7 = v55;
    (*v52)(v55, v56);
    v10 = v53;
  }

  if (v46 <= v14 + 1)
  {
    v16 = v14 + 1;
  }

  else
  {
    v16 = v46;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v46)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
      v41 = v54;
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v13 = 0;
      v14 = v17;
      v29 = v41;
      goto LABEL_16;
    }

    v13 = *(v10 + 8 * v15);
    ++v14;
    if (v13)
    {
      v14 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

Swift::Void __swiftcall CanvasCollaborationStateView.removeOldHandles()()
{
  v1 = v0;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v2 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v73 - v3;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd);
  v4 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v73 - v5;
  v6 = type metadata accessor for UUID();
  v94 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v99 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v73 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v73 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v17 = Strong;
  v18 = Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

    return;
  }

  v93 = v15;
  v19 = *(v18 + 8);
  v20 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  v76 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  swift_beginAccess();
  v21 = *(v1 + v20);
  v22 = *(v21 + 64);
  v88 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasState;
  v78 = v21;

  v87 = v17;
  v86 = v26;
  swift_beginAccess();
  v27 = 0;
  v28 = (v23 + 63) >> 6;
  v77 = v94 + 16;
  v97 = (v94 + 32);
  v85 = (v4 + 16);
  v84 = (v4 + 8);
  v83 = (v2 + 8);
  v74 = v19;
  v73[1] = v19 + 40;
  v95 = (v94 + 8);
  v80 = v6;
  v81 = v28;
  v82 = v12;
  v96 = v1;
  while (v25)
  {
    v31 = v27;
LABEL_19:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v31 << 6);
    v37 = v78;
    v38 = v94;
    v39 = v79;
    (*(v94 + 16))(v79, *(v78 + 48) + *(v94 + 72) * v36, v6);
    v40 = (*(v37 + 56) + 32 * v36);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
    v42 = &v12[*(v41 + 48)];
    v43 = *(v38 + 32);
    v44 = v40[1];
    v100 = *v40;
    v101 = v44;
    v43(v12, v39, v6);
    v45 = v101;
    *v42 = v100;
    *(v42 + 1) = v45;
    (*(*(v41 - 8) + 56))(v12, 0, 1, v41);

    v46 = *(&v100 + 1);

    v34 = v93;
LABEL_20:
    outlined init with take of Range<AttributedString.Index>(v12, v34, &_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetSgMd);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
    if ((*(*(v47 - 8) + 48))(v34, 1, v47) == 1)
    {

      swift_unknownObjectRelease();

      return;
    }

    v48 = (v34 + *(v47 + 48));
    v49 = *v48;
    *&v101 = v48[1];
    v51 = v48[2];
    v50 = v48[3];
    *&v100 = v51;
    v98 = v50;
    (*v97)(v99, v34, v6);
    v52 = v89;
    v53 = v90;
    (*v85)(v89, &v87[v86], v90);
    swift_getKeyPath();
    v54 = v91;
    Capsule.subscript.getter();

    (*v84)(v52, v53);
    v55 = v92;
    CRDictionary.subscript.getter();
    (*v83)(v54, v55);
    v56 = v105;
    v57 = v96;
    if (v105)
    {
      v59 = v103;
      v58 = v104;
      if (*(v106 + 16) || *(v107 + 16))
      {
        ObjectType = swift_getObjectType();

        outlined consume of TimestampedSelection?(v59, v58, v56);
        v61 = (*(v74 + 40))(v58, v56, ObjectType);

        v57 = v96;
        v6 = v80;
        if (v61)
        {
          (*v95)(v99, v80);

          goto LABEL_8;
        }
      }

      else
      {
        outlined consume of TimestampedSelection?(v103, v104, v105);
        v57 = v96;
        v6 = v80;
      }
    }

    if (v49 >> 62)
    {
      v63 = __CocoaSet.count.getter();
    }

    else
    {
      v63 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v76;
    if (v63)
    {
      if (v63 < 1)
      {
        goto LABEL_45;
      }

      for (i = 0; i != v63; ++i)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x1DA6CE0C0](i, v49);
        }

        else
        {
          v66 = *(v49 + 8 * i + 32);
        }

        v67 = v66;
        [v66 removeFromSuperlayer];
      }
    }

    v30 = v101;
    [v101 removeFromSuperview];
    swift_beginAccess();
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v99);
    if (v69)
    {
      v70 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v57 + v64);
      v102 = v72;
      *(v57 + v64) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeDictionary.copy()();
        v72 = v102;
      }

      (*(v94 + 8))(*(v72 + 48) + *(v94 + 72) * v70, v6);
      v29 = *(*(v72 + 56) + 32 * v70 + 8);

      v6 = v80;

      specialized _NativeDictionary._delete(at:)(v70, v72);
      *(v57 + v64) = v72;
      v30 = v101;
    }

    swift_endAccess();

    (*v95)(v99, v6);
LABEL_8:
    v12 = v82;
    v28 = v81;
  }

  if (v28 <= v27 + 1)
  {
    v32 = v27 + 1;
  }

  else
  {
    v32 = v28;
  }

  v33 = v32 - 1;
  v34 = v93;
  while (1)
  {
    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit28CanvasCollaborationStateViewC0G6CursorV5valuetMd);
      (*(*(v62 - 8) + 56))(v12, 1, 1, v62);
      v25 = 0;
      v27 = v33;
      goto LABEL_20;
    }

    v25 = *(v88 + 8 * v31);
    ++v27;
    if (v25)
    {
      v27 = v31;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

Swift::Void __swiftcall CanvasCollaborationStateView.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v2 = *(v1 - 8);
  v217 = v1;
  v218 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v189 = &v178 - v3;
  v228 = type metadata accessor for CRKeyPath();
  v190 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v5 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for UUID();
  v191 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v216 = &v178 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v221 = &v178 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v210 = &v178 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit20TimestampedSelectionV5valuetSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v205 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v178 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryVy10Foundation4UUIDV8PaperKit20TimestampedSelectionVGMd);
  v224 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  *&v227 = &v178 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit11CanvasStateVGMd);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v178 - v20;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CRDictionaryV8IteratorVy10Foundation4UUIDV8PaperKit20TimestampedSelectionV_GMd);
  v22 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v207 = &v178 - v23;
  v24 = type metadata accessor for CanvasCollaborationStateView();
  v232.receiver = v0;
  v232.super_class = v24;
  objc_msgSendSuper2(&v232, sel_layoutSubviews);
  v208 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_107;
  }

  v26 = Strong;
  v226 = v5;
  swift_getKeyPath();
  *&v235[0].f64[0] = v26;
  _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC8PaperKit9AnyCanvas__showParticipantCursors;
  swift_beginAccess();
  if (v26[v27] != 1 || (v28 = &v26[OBJC_IVAR____TtC8PaperKit9AnyCanvas_participantDetailsDataSource], swift_beginAccess(), (v183 = swift_unknownObjectWeakLoadStrong()) == 0))
  {

LABEL_107:
    CanvasCollaborationStateView.removeAllHandles()();
    return;
  }

  v180 = v22;
  v182 = *(v28 + 1);
  v29 = objc_opt_self();
  [v29 begin];
  v179 = v29;
  [v29 setDisableActions_];
  v30 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasState;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v26[v30], v18);
  swift_getKeyPath();
  v31 = v227;
  Capsule.subscript.getter();

  (*(v19 + 8))(v21, v18);
  CRDictionary.makeIterator()();
  (v224[1])(v31, v16);
  v200 = OBJC_IVAR____TtC8PaperKit28CanvasCollaborationStateView_selectionCursors;
  swift_beginAccess();
  v201 = (v191 + 32);
  v223 = (v191 + 8);
  v181 = v182 + 40;
  v214 = v218 + 32;
  v215 = v191 + 16;
  v212 = (v190 + 8);
  v213 = v190 + 16;
  v32 = *MEMORY[0x1E695F050];
  v194 = *(MEMORY[0x1E695F050] + 8);
  v195 = v32;
  v33 = *(MEMORY[0x1E695F050] + 16);
  v192 = *(MEMORY[0x1E695F050] + 24);
  v193 = v33;
  v188 = xmmword_1D4059310;
  v187 = xmmword_1D4059320;
  v34 = v226;
  v224 = v26;
  v196 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v205;
      CRDictionary.Iterator.next()();
      outlined init with take of Range<AttributedString.Index>(v36, v15, &_s10Foundation4UUIDV3key_8PaperKit20TimestampedSelectionV5valuetSgMd);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_8PaperKit20TimestampedSelectionV5valuetMd);
      if ((*(*(v37 - 8) + 48))(v15, 1, v37) == 1)
      {
        (*(v180 + 8))(v207, v206);
        CanvasCollaborationStateView.removeOldHandles()();
        [v179 commit];

        swift_unknownObjectRelease();
        return;
      }

      v38 = &v15[*(v37 + 48)];
      v39 = *(v38 + 2);
      v204 = *(v38 + 1);
      v40 = v15;
      v42 = *(v38 + 3);
      v41 = *(v38 + 4);
      v43 = v40;
      v44 = v225;
      v45 = (*v201)(v210);
      v46 = v221;
      (*((*MEMORY[0x1E69E7D40] & *v224) + 0x560))(v45);
      _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *v223;
      (*v223)(v46, v44);
      if (v47)
      {
        v48(v210, v44);

        goto LABEL_10;
      }

      v202 = v39;
      v222 = v48;
      v209 = v42;
      if (*(v42 + 16))
      {
        break;
      }

      if (*(v41 + 16))
      {
        break;
      }

      ObjectType = swift_getObjectType();
      if (((*(v182 + 40))(v204, v202, ObjectType) & 1) == 0)
      {
        break;
      }

      v222(v210, v225);

LABEL_10:

      v15 = v43;
    }

    v50 = *&v208[v200];
    if (*(v50 + 16))
    {

      v51 = specialized __RawDictionaryStorage.find<A>(_:)(v210);
      if (v52)
      {
        v53 = (*(v50 + 56) + 32 * v51);
        v54 = v53[1];
        v55 = v53[2];
        v56 = v53[3];
        v211 = *v53;

        v203 = v54;
        v57 = v54;
      }

      else
      {
        v211 = 0;
        v203 = 0;
        v55 = 0;
        v56 = 0;
      }

      v197 = v56;
    }

    else
    {
      v211 = 0;
      v203 = 0;
      v55 = 0;
      v197 = 0;
    }

    v198 = v55;
    v58 = *(v41 + 16);
    v59 = MEMORY[0x1E69E7CC0];
    v199 = v41;
    if (v58)
    {
      *&v231.a = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
      a = v231.a;
      v61 = v41 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
      *&v220 = *(v191 + 72);
      *&v219 = *(v191 + 16);
      v62 = v189;
      v63 = v225;
      do
      {
        *&v227 = v58;
        v64 = v221;
        v65 = v219;
        (v219)(v221, v61, v63);
        v65(v216, v64, v63);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd);
        WeakRef.init(id:)();
        v222(v64, v63);
        v231.a = a;
        v67 = *(*&a + 16);
        v66 = *(*&a + 24);
        if (v67 >= v66 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1);
          a = v231.a;
        }

        *(*&a + 16) = v67 + 1;
        (*(v218 + 32))(*&a + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v67, v62, v217);
        v61 += v220;
        v58 = v227 - 1;
        v63 = v225;
      }

      while (v227 != 1);
      v34 = v226;
      v59 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      a = MEMORY[0x1E69E7CC0];
    }

    v231.a = a;
    v68 = v224;
    v69 = *((*MEMORY[0x1E69E7D40] & *v224) + 0x558);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    v71 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [WeakRef<CRRegister<TaggedStroke>>] and conformance [A], &_sSay9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    v72 = v69(&v231, v70, v71);
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v231.a = v59;
    v79 = *(v209 + 16);
    v80 = v59;
    if (v79)
    {
      v81 = *((*MEMORY[0x1E69E7D40] & *v68) + 0x440);
      v82 = v209 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
      v83 = *(v190 + 72);
      *&v227 = *(v190 + 16);
      *&v220 = v83;
      for (i = (v227)(v34, v82, v228); ; i = (v227)(v34, v82, v228))
      {
        v85 = v81(i);
        v87 = v86;
        v88 = swift_getObjectType();
        v89 = (*(v87 + 40))(v88, v87);

        v34 = v226;
        if (*(v89 + 16) && (v90 = specialized __RawDictionaryStorage.find<A>(_:)(v226), (v91 & 1) != 0))
        {
          v92 = v34;
          v93 = *v212;
          v94 = *(*(v89 + 56) + 8 * v90);
          v93(v92, v228);

          MEMORY[0x1DA6CD190](v95);
          if (*((*&v231.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v231.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v80 = v231.a;
          v34 = v226;
          v83 = v220;
        }

        else
        {

          (*v212)(v34, v228);
        }

        v82 += v83;
        if (!--v79)
        {
          break;
        }
      }
    }

    v96 = *(v199 + 16);
    if (*&v80 >> 62)
    {
      v97 = __CocoaSet.count.getter();
      v15 = v196;
      if (v97)
      {
        break;
      }
    }

    else
    {
      v97 = *((*&v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v196;
      if (v97)
      {
        break;
      }
    }

    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v74 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v78 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    v111 = 0uLL;
    v112 = v187;
    v113 = v188;
    v114 = v202;
LABEL_72:
    v219 = v113;
    v220 = v112;
    *&v231.a = v112;
    *&v231.c = v113;
    v227 = v111;
    *&v231.tx = v111;
    IsIdentity = CGAffineTransformIsIdentity(&v231);
    v127 = v222;
    if (IsIdentity)
    {

      if (!v211)
      {
        goto LABEL_99;
      }

      v128 = v211;
      if (v211 >> 62)
      {
        v168 = v211;
        v169 = __CocoaSet.count.getter();
        v128 = v168;
        v129 = v169;
        if (v169)
        {
LABEL_76:
          if (v129 < 1)
          {
            goto LABEL_111;
          }

          v130 = 0;
          v131 = v128 & 0xC000000000000001;
          do
          {
            if (v131)
            {
              v132 = MEMORY[0x1DA6CE0C0](v130);
            }

            else
            {
              v132 = *(v128 + 8 * v130 + 32);
            }

            v133 = v132;
            ++v130;
            [v132 removeFromSuperlayer];

            v128 = v211;
          }

          while (v129 != v130);
        }
      }

      else
      {
        v129 = *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v129)
        {
          goto LABEL_76;
        }
      }

      [v203 removeFromSuperview];
LABEL_99:
      swift_beginAccess();
      v170 = specialized __RawDictionaryStorage.find<A>(_:)(v210);
      if (v171)
      {
        v172 = v170;
        v173 = v200;
        v174 = v208;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v176 = *&v174[v173];
        v230.a = v176;
        *&v174[v173] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v176 = v230.a;
        }

        v222((*(*&v176 + 48) + *(v191 + 72) * v172), v225);
        v35 = *(*(*&v176 + 56) + 32 * v172 + 8);

        specialized _NativeDictionary._delete(at:)(v172, *&v176);
        *&v208[v173] = v176;
        v34 = v226;
      }

      swift_endAccess();
      outlined consume of CanvasCollaborationStateView.CollaborationCursor?(v211, v203);
      v222(v210, v225);
    }

    else
    {
      v134 = (*((*MEMORY[0x1E69E7D40] & *v224) + 0x450))();
      if (v134)
      {
        v135 = v134;
        [v134 zoomScale];
        v137 = v136;
      }

      else
      {
        v137 = 1.0;
      }

      (*((*MEMORY[0x1E69E7D40] & *v224) + 0x858))(v235);
      v138 = sqrt(vaddvq_f64(vmulq_f64(v235[0], v235[0])));
      if (v236)
      {
        v138 = 1.0;
      }

      CGAffineTransformMakeScale(&v231, v137 * v138, v137 * v138);
      v139 = *&v231.a;
      v140 = *&v231.c;
      v141 = *&v231.tx;
      *&v231.a = v220;
      *&v231.c = v219;
      *&v231.tx = v227;
      *&v230.a = v139;
      *&v230.c = v140;
      *&v230.tx = v141;
      CGAffineTransformConcat(&fora, &v231, &v230);
      if (v211)
      {
        v142 = v210;

        v143 = v203;
        v144 = v211;
        goto LABEL_104;
      }

      v145 = v114;
      v146 = v183;
      swift_unknownObjectRetain();
      v147 = v208;
      v148 = v208;
      v149 = specialized CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(v204, v145, v148, v146, v182);
      v151 = v150;
      v153 = v152;
      v155 = v154;

      swift_unknownObjectRelease();
      v156 = v200;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      v157 = v151;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v158 = v157;
      v159 = swift_isUniquelyReferenced_nonNull_native();
      v230.a = *&v147[v156];
      *&v147[v156] = 0x8000000000000000;
      *&v227 = v158;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v149, v158, v155, v153, v210, v159);
      *&v147[v156] = v230.a;
      swift_endAccess();
      v160 = v149;
      if (v149 >> 62)
      {
        v177 = __CocoaSet.count.getter();
        v160 = v149;
        v161 = v177;
        if (v177)
        {
LABEL_91:
          if (v161 < 1)
          {
            goto LABEL_112;
          }

          v162 = 0;
          v163 = v160 & 0xC000000000000001;
          v164 = v160;
          do
          {
            if (v163)
            {
              v165 = MEMORY[0x1DA6CE0C0](v162);
            }

            else
            {
              v165 = *(v160 + 8 * v162 + 32);
            }

            v166 = v165;
            ++v162;
            v167 = [v148 layer];
            [v167 addSublayer_];

            v160 = v164;
          }

          while (v161 != v162);
        }
      }

      else
      {
        v161 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v161)
        {
          goto LABEL_91;
        }
      }

      v142 = v210;
      v144 = v160;
      v143 = v227;
      [v148 addSubview_];

      outlined consume of CanvasCollaborationStateView.CollaborationCursor?(0, v203);
      v34 = v226;
      v127 = v222;
LABEL_104:
      CanvasCollaborationStateView.CollaborationCursor.position(for:)(&fora);
      outlined consume of CanvasCollaborationStateView.CollaborationCursor?(v144, v143);
      v127(v142, v225);
      v15 = v196;
    }
  }

  if (!v96)
  {
    if (*&v80 >> 62)
    {
      if (__CocoaSet.count.getter() != 1)
      {
        goto LABEL_50;
      }
    }

    else if (*((*&v80 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_50;
    }

    if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v99 = v194;
      v98 = v195;
      v101 = v192;
      v100 = v193;
      if (v97)
      {
        goto LABEL_62;
      }

      goto LABEL_59;
    }

    if ((*&v78 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 && v97)
    {
LABEL_62:
      if ((*&v80 & 0xC000000000000001) != 0)
      {
        v123 = MEMORY[0x1DA6CE0C0](0, *&v80);
      }

      else
      {
        if (!*((*&v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_113;
        }

        v123 = *(*&v80 + 32);
      }

      v124 = v123;
      v114 = v202;

      (*((*MEMORY[0x1E69E7D40] & *v124) + 0x290))(v234, v125);
      v219 = v234[1];
      v220 = v234[0];
      v227 = v234[2];

      v113 = v219;
      v112 = v220;
      v111 = v227;
      goto LABEL_72;
    }
  }

LABEL_50:
  v99 = v194;
  v98 = v195;
  v101 = v192;
  v100 = v193;
  if (!v97)
  {
LABEL_59:

    v241.origin.x = v98;
    v241.origin.y = v99;
    v241.size.width = v100;
    v241.size.height = v101;
    v246.origin.x = v72;
    v246.origin.y = v74;
    v246.size.width = v76;
    v246.size.height = v78;
    v242 = CGRectUnion(v241, v246);
    x = v242.origin.x;
    y = v242.origin.y;
    width = v242.size.width;
    height = v242.size.height;
    v247.origin.y = v194;
    v247.origin.x = v195;
    v247.size.height = v192;
    v247.size.width = v193;
    v110 = CGRectEqualToRect(v242, v247);
    v111 = 0uLL;
    v112 = v187;
    v113 = v188;
    v114 = v202;
    if (!v110)
    {
      *&v227 = x - width * 0.0;
      *&v220 = y - height * 0.0;
      v243.origin.x = x;
      v243.origin.y = y;
      v243.size.width = width;
      v243.size.height = height;
      MidX = CGRectGetMidX(v243);
      v244.origin.x = x;
      v244.origin.y = y;
      v244.size.width = width;
      v244.size.height = height;
      MidY = CGRectGetMidY(v244);
      CGAffineTransformMakeRotation(&v231, 0.0);
      *&v219 = v231.tx;
      ty = v231.ty;
      v184 = *&v231.c;
      v185 = *&v231.a;
      CGAffineTransformMakeTranslation(&v231, -MidX, -MidY);
      v117 = v231.a;
      b = v231.b;
      c = v231.c;
      d = v231.d;
      tx = v231.tx;
      v122 = v231.ty;
      *&v230.a = v185;
      *&v230.c = v184;
      *&v230.tx = v219;
      v230.ty = ty;
      CGAffineTransformConcat(&v229, &v231, &v230);
      *&v219 = v229.tx;
      ty = v229.ty;
      v184 = *&v229.c;
      v185 = *&v229.a;
      v231.a = v117;
      v231.b = b;
      v231.c = c;
      v231.d = d;
      v231.tx = tx;
      v231.ty = v122;
      CGAffineTransformInvert(&v230, &v231);
      *&v231.a = v185;
      *&v231.c = v184;
      *&v231.tx = v219;
      v231.ty = ty;
      CGAffineTransformConcat(&v229, &v231, &v230);
      v231.b = 0.0;
      v231.c = 0.0;
      v231.a = width;
      v231.d = height;
      *&v231.tx = v227;
      *&v231.ty = v220;
      v230 = v229;
      CGAffineTransformConcat(&v229, &v231, &v230);
      v112 = *&v229.a;
      v113 = *&v229.c;
      v111 = *&v229.tx;
    }

    goto LABEL_72;
  }

  v102 = 0;
  v101 = v192;
  v100 = v193;
  v99 = v194;
  v98 = v195;
  while (1)
  {
    if ((*&v80 & 0xC000000000000001) != 0)
    {
      v103 = MEMORY[0x1DA6CE0C0](v102, *&v80);
    }

    else
    {
      if (v102 >= *((*&v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_110;
      }

      v103 = *(*&v80 + 8 * v102 + 32);
    }

    v104 = v103;
    v105 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      break;
    }

    (*((*MEMORY[0x1E69E7D40] & *v103) + 0x290))(&v233);
    v231 = v233;
    v238.origin.x = 0.0;
    v238.origin.y = 0.0;
    v238.size.width = 1.0;
    v238.size.height = 1.0;
    v245 = CGRectApplyAffineTransform(v238, &v231);
    v239.origin.x = v98;
    v239.origin.y = v99;
    v239.size.width = v100;
    v239.size.height = v101;
    v240 = CGRectUnion(v239, v245);
    v98 = v240.origin.x;
    v99 = v240.origin.y;
    v100 = v240.size.width;
    v101 = v240.size.height;

    ++v102;
    if (v105 == v97)
    {
      v34 = v226;
      v15 = v196;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

id CanvasCollaborationStateView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasCollaborationStateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CanvasCollaborationStateView.CollaborationCursor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for CanvasCollaborationStateView.CollaborationCursor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined consume of TimestampedSelection?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t _s8PaperKit9AnyCanvasCAC11Observation10ObservableAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a5 + 16))(a1, a2, ObjectType, a5);
  v10 = (*(a5 + 24))(a1, a2, ObjectType, a5);
  v34 = v11;
  v35 = v10;
  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray.reserveCapacity(_:)();
  v12 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v13 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v14 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v13 setFrame_];
  [v14 &selRef:-6.0 initWithView:-6.0 parameters:10.0 target:4.0];
  v15 = v12;
  [v15 addSublayer_];
  [v15 addSublayer_];
  [v15 setAnchorPoint_];
  [v14 setBackgroundColor_];
  [v13 setBackgroundColor_];
  [v14 setAllowsEdgeAntialiasing_];
  [v13 setAllowsEdgeAntialiasing_];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v16 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v17 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v17 &selRef:-6.0 initWithView:-6.0 parameters:4.0 target:10.0];
  [v18 &selRef:-6.0 initWithView:-6.0 parameters:10.0 target:4.0];
  v19 = v16;
  [v19 addSublayer_];
  [v19 addSublayer_];
  [v19 setAnchorPoint_];
  [v18 setBackgroundColor_];
  [v17 setBackgroundColor_];
  [v18 setAllowsEdgeAntialiasing_];
  [v17 setAllowsEdgeAntialiasing_];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v20 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v21 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v22 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v21 setFrame_];
  [v22 setFrame_];
  v23 = v20;
  [v23 addSublayer_];
  [v23 addSublayer_];
  [v23 setAnchorPoint_];
  [v22 setBackgroundColor_];
  [v21 setBackgroundColor_];
  [v22 setAllowsEdgeAntialiasing_];
  [v21 setAllowsEdgeAntialiasing_];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v24 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v25 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v26 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  [v25 setFrame_];
  [v26 setFrame_];
  v27 = v24;
  [v27 addSublayer_];
  [v27 addSublayer_];
  [v27 setAnchorPoint_];
  [v26 setBackgroundColor_];
  [v25 setBackgroundColor_];
  [v26 setAllowsEdgeAntialiasing_];
  [v25 setAllowsEdgeAntialiasing_];

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
  v29 = swift_allocObject();
  v29[2] = a4;
  v29[3] = a5;
  v29[4] = a1;
  v29[5] = a2;
  objc_allocWithZone(type metadata accessor for CanvasCollaborationAvatarView());
  swift_unknownObjectRetain();
  CanvasCollaborationAvatarView.init(name:color:boundingSuperview:fetchImage:)(v35, v34, v28, a3, &async function pointer to partial apply for closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:), v29);

  return v37;
}

uint64_t outlined consume of CanvasCollaborationStateView.CollaborationCursor?(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(double a1, double a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return closure #2 in CanvasCollaborationStateView.CollaborationCursor.init(for:boundingSuperview:participantDetailsDataSource:)(a1, a2, v6, v7, v9, v8);
}

uint64_t one-time initialization function for toolbarButtonFont()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for Font.Design();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static Font.system(size:weight:design:)();
  result = outlined destroy of Font.Design?(v2);
  static ToolbarView.Constants.toolbarButtonFont = v4;
  return result;
}

uint64_t outlined destroy of Font.Design?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id EmptyLinkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyLinkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x1E69E7CC0];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA6CE0C0](v2, v25);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = (*((*MEMORY[0x1E69E7D40] & *isUniquelyReferenced_nonNull_bridgeObject) + 0x278))();

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        __CocoaSet.count.getter();
        goto LABEL_20;
      }

      if (v9)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v8;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v13 >> 1) - v12) < v33)
          {
            goto LABEL_42;
          }

          v31 = v3;
          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_44;
            }

            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], &_sSaySo16PKAttachmentViewCGMd);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16PKAttachmentViewCGMd);
              v18 = specialized protocol witness for Collection.subscript.read in conformance [A](v32, i, v6);
              v20 = *v19;
              (v18)(v32, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v33);
            v22 = v21 + v33;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_25;
        }
      }

      if (v33 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v36 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v35 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = &_sSay9Calculate0A10ExpressionCGMd;
    v33 = v1;
    while (1)
    {
      if (v37)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1DA6CE0C0](v2, v32);
      }

      else
      {
        if (v2 >= *(v36 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v35 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      if ((*((*MEMORY[0x1E69E7D40] & *isUniquelyReferenced_nonNull_bridgeObject) + 0x9F8))() && (v8 = v7, ObjectType = swift_getObjectType(), v10 = (*(v8 + 8))(ObjectType, v8), v11 = swift_unknownObjectRelease(), v10))
      {
        v12 = MEMORY[0x1DA6CACA0](v11);
      }

      else
      {

        v12 = MEMORY[0x1E69E7CC0];
      }

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = __CocoaSet.count.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = isUniquelyReferenced_nonNull_bridgeObject + v14;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v14))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v40 = v14;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v15)
        {
          goto LABEL_25;
        }

LABEL_24:
        __CocoaSet.count.getter();
        goto LABEL_25;
      }

      if (v15)
      {
        goto LABEL_24;
      }

      v17 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = v3;
        goto LABEL_26;
      }

LABEL_25:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      v18 = v4;
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v13)
      {
        v22 = v17;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v17 = v22;
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_30:
          if (((v20 >> 1) - v19) < v40)
          {
            goto LABEL_47;
          }

          v23 = v17 + 8 * v19 + 32;
          v34 = v17;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_49;
            }

            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CalculateExpression] and conformance [A], v18);
            for (i = 0; i != v21; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v18);
              v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, i, v12);
              v27 = *v26;

              (v25)(v39, 0);
              *(v23 + 8 * i) = v27;
            }
          }

          else
          {
            type metadata accessor for CalculateExpression();
            swift_arrayInitWithCopy();
          }

          v1 = v33;
          v4 = v18;
          v3 = v38;
          if (v40 >= 1)
          {
            v28 = *(v34 + 16);
            v6 = __OFADD__(v28, v40);
            v29 = v28 + v40;
            if (v6)
            {
              goto LABEL_48;
            }

            *(v34 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_30;
        }
      }

      v4 = v18;
      v3 = v38;
      if (v40 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_62;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v2 = MEMORY[0x1E69E7CC0];
    v3 = &_sSay8PaperKit9AnyCanvasCGMd;
    v4 = &_sSay8PaperKit9AnyCanvasCGMR;
    while (1)
    {
      v5 = __OFSUB__(v1--, 1);
      if (v5)
      {
        break;
      }

      if (v35)
      {
        v6 = MEMORY[0x1DA6CE0C0](v1, v32);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v1 >= *(v34 + 16))
        {
          goto LABEL_57;
        }

        v6 = *(v33 + 8 * v1);
      }

      v7 = v6;
      if ([v6 isHidden])
      {

        v8 = MEMORY[0x1E69E7CC0];
        if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_16;
      }

      type metadata accessor for AnyCanvas();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1D405CEB0;
        *(v8 + 32) = v10;
        if (v8 < 0)
        {
          goto LABEL_48;
        }

LABEL_16:
        if ((v8 & 0x4000000000000000) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

      v28 = [v7 subviews];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = specialized Sequence.flatMap<A>(_:)(v29);

      if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
      {
LABEL_48:
        v12 = __CocoaSet.count.getter();
        v11 = 1;
        if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_50;
      }

LABEL_17:
      v11 = 0;
      v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
LABEL_19:
        isUniquelyReferenced_nonNull_bridgeObject = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
        {
          goto LABEL_56;
        }

        goto LABEL_20;
      }

LABEL_50:
      isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
      v13 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_56;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v40 = v12;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
LABEL_27:
          __CocoaSet.count.getter();
        }

LABEL_28:
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = isUniquelyReferenced_nonNull_bridgeObject;
        v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
        goto LABEL_29;
      }

      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v14 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v13 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

LABEL_29:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v11)
      {
        v17 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v14 = v17;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_33;
        }

LABEL_4:

        if (v40 > 0)
        {
          goto LABEL_58;
        }

        if (!v1)
        {
          return v2;
        }
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }

LABEL_33:
        if (((v16 >> 1) - v15) < v40)
        {
          goto LABEL_59;
        }

        v19 = v14 + 8 * v15 + 32;
        v37 = v2;
        v38 = v1;
        v36 = v14;
        if (v11)
        {
          if (v18 < 1)
          {
            goto LABEL_61;
          }

          lazy protocol witness table accessor for type [PaperNewShapeType] and conformance [A](&lazy protocol witness table cache variable for type [AnyCanvas] and conformance [A], v3);
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(v3);
            v21 = v4;
            v22 = v3;
            v23 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, i, v8);
            v25 = *v24;
            (v23)(v39, 0);
            v3 = v22;
            v4 = v21;
            *(v19 + 8 * i) = v25;
          }
        }

        else
        {
          type metadata accessor for AnyCanvas();
          swift_arrayInitWithCopy();
        }

        if (v40 < 1)
        {
          v2 = v37;
          v1 = v38;
          if (!v38)
          {
            return v2;
          }
        }

        else
        {
          v2 = v37;
          v26 = *(v36 + 16);
          v5 = __OFADD__(v26, v40);
          v27 = v26 + v40;
          v1 = v38;
          if (v5)
          {
            goto LABEL_60;
          }

          *(v36 + 16) = v27;
          if (!v38)
          {
            return v2;
          }
        }
      }
    }

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
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v30;
  }

  return MEMORY[0x1E69E7CC0];
}

{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_62;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v3 = __OFSUB__(v1--, 1);
      if (v3)
      {
        break;
      }

      if (v33)
      {
        v4 = MEMORY[0x1DA6CE0C0](v1, v30);
      }

      else
      {
        if ((v1 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        if (v1 >= *(v32 + 16))
        {
          goto LABEL_57;
        }

        v4 = *(v31 + 8 * v1);
      }

      v5 = v4;
      if ([v4 isHidden])
      {
        v6 = MEMORY[0x1E69E7CC0];

        if (v6 < 0)
        {
          goto LABEL_48;
        }

        goto LABEL_16;
      }

      type metadata accessor for AnyCanvas();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = MEMORY[0x1E69E7D40];
        v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x440))();
        v10 = *((*v8 & *v9) + 0x278);
        v11 = v5;
        v6 = v10();

        if (v6 < 0)
        {
          goto LABEL_48;
        }

LABEL_16:
        if ((v6 & 0x4000000000000000) != 0)
        {
          goto LABEL_48;
        }

        goto LABEL_17;
      }

      v26 = [v5 subviews];
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = specialized Sequence.flatMap<A>(_:)(v27);

      if (v6 < 0 || (v6 & 0x4000000000000000) != 0)
      {
LABEL_48:
        v13 = __CocoaSet.count.getter();
        v12 = 1;
        if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_50;
      }

LABEL_17:
      v12 = 0;
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
LABEL_19:
        isUniquelyReferenced_nonNull_bridgeObject = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = isUniquelyReferenced_nonNull_bridgeObject + v13;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v13))
        {
          goto LABEL_56;
        }

        goto LABEL_20;
      }

LABEL_50:
      isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v13;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v13))
      {
        goto LABEL_56;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
LABEL_27:
          __CocoaSet.count.getter();
        }

LABEL_28:
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v2 = isUniquelyReferenced_nonNull_bridgeObject;
        v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
        goto LABEL_29;
      }

      if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        goto LABEL_27;
      }

      v15 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v14 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

LABEL_29:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v12)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_33;
        }

LABEL_4:

        if (v13 > 0)
        {
          goto LABEL_58;
        }

        if (!v1)
        {
          return v2;
        }
      }

      else
      {
        v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }

LABEL_33:
        if (((v17 >> 1) - v16) < v13)
        {
          goto LABEL_59;
        }

        v34 = v15;
        v19 = v15 + 8 * v16 + 32;
        v36 = v1;
        if (v12)
        {
          if (v18 < 1)
          {
            goto LABEL_61;
          }

          lazy protocol witness table accessor for type [PaperNewShapeType] and conformance [A](&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], &_sSaySo16PKAttachmentViewCGMd);
          for (i = 0; i != v18; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16PKAttachmentViewCGMd);
            v21 = specialized protocol witness for Collection.subscript.read in conformance [A](v35, i, v6);
            v23 = *v22;
            (v21)(v35, 0);
            *(v19 + 8 * i) = v23;
          }
        }

        else
        {
          type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
          swift_arrayInitWithCopy();
        }

        if (v13 < 1)
        {
          v1 = v36;
          if (!v36)
          {
            return v2;
          }
        }

        else
        {
          v24 = *(v34 + 16);
          v3 = __OFADD__(v24, v13);
          v25 = v24 + v13;
          v1 = v36;
          if (v3)
          {
            goto LABEL_60;
          }

          *(v34 + 16) = v25;
          if (!v1)
          {
            return v2;
          }
        }
      }
    }

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
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x1E69E7CC0];
}

void *protocol witness for AnyContainerCanvasElementView.drawingView.getter in conformance ContainerCanvasElementView<A>()
{
  v0 = specialized ContainerCanvasElementView.drawingView.getter();
  v1 = v0;
  return v0;
}

void *protocol witness for AnyContainerCanvasElementView.formFillingView.getter in conformance ContainerCanvasElementView<A>()
{
  v0 = specialized ContainerCanvasElementView.formFillingView.getter();
  v1 = v0;
  return v0;
}

BOOL ContainerCanvasElementView.isInLiveEdit.getter()
{
  result = 1;
  if (!CanvasElementView.isInLiveEdit.getter())
  {
    v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x558));
    if (!v1 || !*(v1 + OBJC_IVAR____TtC8PaperKit24CanvasElementDrawingView_liveStreamingDisplayLink))
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall ContainerCanvasElementView.endLiveEdit(undoable:discard:)(Swift::Bool undoable, Swift::Bool discard)
{
  if (ContainerCanvasElementView.isInLiveEdit.getter())
  {
    CanvasElementView.endLiveEdit(undoable:discard:)(undoable, discard);

    ContainerCanvasElementView.transformDrawing()();
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.screenScaleDidChange()()
{
  v0 = ContainerCanvasElementView.subelementViews.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      (*((*v4 & *v5) + 0x250))();

      ++v3;
      if (v7 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

unint64_t ContainerCanvasElementView.didScroll(in:)(uint64_t a1)
{
  v2 = v1;
  result = ContainerCanvasElementView.subelementViews.getter();
  v5 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7D40];
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      (*((*v7 & *v9) + 0x258))(a1);
    }
  }

  v11 = *((*v7 & *v2) + 0x3D0);

  return v11();
}

unint64_t ContainerCanvasElementView.didZoom(in:)(uint64_t a1)
{
  v2 = v1;
  result = ContainerCanvasElementView.subelementViews.getter();
  v5 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v6 = result;
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7D40];
  if (v6)
  {
    if (v6 < 1)
    {
      __break(1u);
      return result;
    }

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6CE0C0](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      (*((*v7 & *v9) + 0x260))(a1);
    }
  }

  v11 = *((*v7 & *v2) + 0x3D0);

  return v11();
}

Swift::Void __swiftcall ContainerCanvasElementView.updateFrame()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[168];
  v3 = v1[169];
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    CanvasElementView.updateFrame()();
  }

  else
  {
    [v0 transform];
    v9 = v16;
    v10 = v17;
    v12 = v15;
    v13 = v14;
    v14 = 0x3FF0000000000000uLL;
    *&v15 = 0;
    *(&v15 + 1) = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v0 setTransform_];
    v11 = CanvasElementView.canvasElement.getter(v7);
    MEMORY[0x1EEE9AC00](v11);
    *(&v12 - 4) = v2;
    *(&v12 - 3) = v3;
    *(&v12 - 2) = v1[170];
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v5 + 8))(v7, v4);
    [v0 setFrame_];
    v14 = v13;
    v15 = v12;
    v16 = v9;
    v17 = v10;
    [v0 setTransform_];
  }
}

unint64_t ContainerCanvasElementView.pencilKitAttachmentViews()()
{
  v1 = type metadata accessor for IndexSet();
  v36 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x558));
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D405CEB0;
    *(v13 + 32) = v12;
    v14 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v37 = v13;
  v15 = ContainerCanvasElementView.subelementViews.getter();
  v16 = specialized Sequence.flatMap<A>(_:)(v15);

  specialized Array.append<A>(contentsOf:)(v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      (*((*v11 & *v18) + 0x448))();

      (*(v5 + 32))(v10, v7, v4);
      v20 = ContainerCanvasElementView.unorderedSubelementViews.getter();
      if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v22 & 1) != 0))
      {
        v35 = *(*(v20 + 56) + 8 * v21);

        v23 = v37;
        v34 = v5;
        if (v37 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v25 = 0;
            while (1)
            {
              MEMORY[0x1DA6CE0C0](v25, v23);
              type metadata accessor for CanvasElementDrawingView();
              if (swift_dynamicCastClass())
              {
                v26 = swift_unknownObjectWeakLoadStrong();
                swift_unknownObjectRelease();
                if (v26)
                {

                  if (v26 == v35)
                  {
                    goto LABEL_30;
                  }
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v27 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              ++v25;
              if (v27 == i)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
          }

          else
          {
            v29 = 0;
            v30 = v23 & 0xFFFFFFFFFFFFFF8;
            v31 = (v23 + 32);
            while (v29 < *(v30 + 16))
            {
              v23 = *&v31[8 * v29];
              type metadata accessor for CanvasElementDrawingView();
              if (swift_dynamicCastClass())
              {
                v32 = swift_unknownObjectWeakLoadStrong();
                if (v32)
                {
                  v23 = v32;

                  if (v23 == v35)
                  {
LABEL_30:
                    IndexSet.init(integer:)();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16PKAttachmentViewCGMd);
                    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [PKAttachmentView] and conformance [A], &_sSaySo16PKAttachmentViewCGMd);
                    MutableCollection.move(fromOffsets:toOffset:)();

                    (*(v36 + 8))(v3, v1);
                    goto LABEL_21;
                  }
                }
              }

              if (i == ++v29)
              {
                goto LABEL_20;
              }
            }
          }

          __break(1u);
LABEL_33:
          ;
        }

LABEL_20:

LABEL_21:
        (*(v34 + 8))(v10, v4);
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }
    }
  }

  return v37;
}

double ContainerCanvasElementView.modelBounds.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x540);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x548);
  v5 = type metadata accessor for Capsule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  CanvasElementView.canvasElement.getter(v10 - v7);
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = *((v2 & v1) + 0x550);
  swift_getKeyPath();
  Capsule.subscript.getter();

  (*(v6 + 8))(v8, v5);
  return *&v10[4];
}

void __swiftcall ContainerCanvasElementView.boundsTransform()(CGAffineTransform *__return_ptr retstr)
{
  v3 = (*MEMORY[0x1E69E7D40] & *v1);
  v4 = v3[168];
  v5 = v3[169];
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    CanvasElementView.modelFrame.getter();
    v12 = v11;
    v13 = CanvasElementView.canvasElement.getter(v9);
    MEMORY[0x1EEE9AC00](v13);
    *(&v18 - 4) = v4;
    *(&v18 - 3) = v5;
    *(&v18 - 2) = v3[170];
    swift_getKeyPath();
    Capsule.subscript.getter();

    (*(v7 + 8))(v9, v6);
    CGAffineTransformMakeScale(&v18, v12 / v18.c, v12 / v18.c);
  }

  else
  {
    v14 = ContainerCanvasElementView.modelBounds.getter();
    CGAffineTransformMakeTranslation(&v18, -v14, -v15);
  }

  v16 = *&v18.c;
  v17 = *&v18.tx;
  *&retstr->a = *&v18.a;
  *&retstr->c = v16;
  *&retstr->tx = v17;
}

void ContainerCanvasElementView.drawingDidChange(newDrawing:)(char *a1)
{
  v2 = v1;
  v53 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - v7;
  v9 = type metadata accessor for MergeResult();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v47 - v13;
  v15 = *((v4 & v3) + 0x540);
  v54 = *((v4 & v3) + 0x548);
  v55 = v15;
  v56 = type metadata accessor for Capsule();
  v16 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v18;
  if ((*(v2 + *((v4 & v3) + 0x590)) & 1) == 0)
  {
    v48 = v9;
    v49 = v19;
    v21 = CanvasElementView.canvasElement.getter(&v47 - v18);
    MEMORY[0x1EEE9AC00](v21);
    v22 = v54;
    *(&v47 - 4) = v55;
    *(&v47 - 3) = v22;
    v23 = *(v5 + 1360);
    *(&v47 - 2) = v23;
    swift_getKeyPath();
    v24 = v56;
    Capsule.subscript.getter();

    v25 = *(v16 + 8);
    v47 = v16 + 8;
    v25(v20, v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
    v27 = (*(*(v26 - 8) + 48))(v14, 1, v26);
    outlined destroy of StocksKitCurrencyCache.Provider?(v14, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    v28 = v53;
    if (v27 == 1)
    {
      v29 = [v53 strokes];
      type metadata accessor for PKStroke();
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = *(v30 + 16);

      if (v31)
      {
        MEMORY[0x1EEE9AC00](v32);
        *(&v47 - 2) = v23;
        *(&v47 - 1) = v28;
        swift_beginAccess();
        Capsule.callAsFunction<A>(_:)();
        swift_endAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v34 = v49;
        if (!Strong)
        {
          return;
        }

        goto LABEL_11;
      }
    }

    v35 = OBJC_IVAR___PKDrawingCoherence_model;
    swift_beginAccess();
    v37 = v50;
    v36 = v51;
    (*(v50 + 16))(v8, &v28[v35], v51);
    swift_beginAccess();
    type metadata accessor for PKDrawingStruct(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
    Capsule.merge<A>(_:)();
    (*(v37 + 8))(v8, v36);
    swift_endAccess();
    v38 = MergeResult.hasDeltaFromOther.getter();
    v34 = v49;
    if (v38)
    {
      v39 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x558));
      if (v39)
      {
        CanvasElementView.canvasElement.getter(v49);
        v40 = v39;
        CanvasElementDrawingView.merge<A>(_:)();

        v25(v34, v56);
      }
    }

    v41 = MergeResult.hasDeltaFromOriginal.getter();
    (*(v52 + 8))(v11, v48);
    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      Strong = v42;
      if ((v41 & 1) == 0)
      {
LABEL_14:

        return;
      }

LABEL_11:
      swift_getKeyPath();
      v58 = Strong;
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v43 = Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v44 = *(v43 + 1);
        ObjectType = swift_getObjectType();
        (*(v44 + 16))(Strong, ObjectType, v44);
        swift_unknownObjectRelease();
      }

      CanvasElementView.canvasElement.getter(v34);
      v57 = 4;
      AnyCanvas.merge<A>(_:from:)(v34, &v57, v55, v54);
      v46 = (v25)(v34, v56);
      (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x460))(v46);
      goto LABEL_14;
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.drawingSelectionDidChange()()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    v7 = MEMORY[0x1E69E7D40];
    v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x468);
    v21 = v6;
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + *((*v7 & *v0) + 0x558));
      if (v11)
      {
        v12 = [v11 drawing];
        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

        PKDrawing._bridgeToObjectiveC()(v13);
        v15 = v14;
        v16 = [v14 uuid];

        (*(v2 + 8))(v4, v1);
        v17 = [v10 selectedStrokeIdsForAttachment_];
        type metadata accessor for UUID();
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        MEMORY[0x1EEE9AC00](v19);
        *(&v20 - 2) = v18;
        AnyCanvas.updateCanvasState(_:)();

        swift_unknownObjectRelease();

        return;
      }
    }

    Strong = v21;
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.didBeginDrawing()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = (v3 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 24);

    if (*(v5 + 16))
    {

      v8 = 1;
    }

    else
    {
      v9 = *(v6 + 16);

      v8 = (v9 != 0) | v7;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x580)) = v8 & 1;
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    (*((*v10 & *v11) + 0x860))();
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.updateRoundedCorners()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x3B0))())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = (*((*v2 & *Strong) + 0x450))();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v17 = v6;
          type metadata accessor for CanvasView();
          if (swift_dynamicCastClass())
          {
            v7 = 0.0;
            if ((CanvasView.isAlmostZoomToFit.getter() & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8PaperKit20AnyCanvasElementView_suppressRoundedCorners) & 1) == 0)
            {
              [v5 zoomScale];
              v7 = 16.0 / v8;
              [v1 bounds];
              Width = CGRectGetWidth(v19);
              [v1 bounds];
              Height = CGRectGetHeight(v20);
              if (Height < Width)
              {
                Width = Height;
              }

              [v5 zoomScale];
              v12 = Width * v11;
              if (v12 < 80.0)
              {
                v7 = v7 * (1.0 - (80.0 - v12) / 80.0);
              }
            }

            [v1 _continuousCornerRadius];
            if (v13 == v7)
            {
              v14 = v5;
              v5 = v17;
              v17 = v14;
            }

            else
            {
              v16 = v5;
              [v1 _setContinuousCornerRadius_];
              v5 = v17;
              v17 = v16;
            }
          }

          v15 = v17;
        }

        else
        {
          v15 = v5;
        }
      }
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.updateGestures()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  CanvasElementView.updateGestures()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*v2 & *Strong) + 0x468))();

    if (v5)
    {
      v6 = [v5 canvasView];

      if (v6)
      {
        v7 = [v6 drawingGestureRecognizer];

        v20 = [v7 view];
        if (v20)
        {
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v8 && (v8, (AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0) || *(v1 + *((*v2 & *v1) + 0x578)))
          {
          }

          else
          {
            v9 = objc_allocWithZone(MEMORY[0x1E69DD060]);
            type metadata accessor for ContainerCanvasElementView();
            v10 = [v9 initWithTarget:_bridgeAnythingToObjectiveC<A>(_:)() action:sel_rootTapped_];
            swift_unknownObjectRelease();
            v11 = *((*v2 & *v1) + 0x578);
            v12 = *(v1 + v11);
            *(v1 + v11) = v10;

            v13 = *v2 & *v1;
            v14 = *(v1 + *(v13 + 0x578));
            if (v14)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
              v15 = swift_allocObject();
              *(v15 + 16) = xmmword_1D405CEB0;
              v16 = v14;
              *(v15 + 32) = Int._bridgeToObjectiveC()();
              type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v16 setAllowedTouchTypes_];

              v13 = *v2 & *v1;
            }

            v18 = *(v1 + *(v13 + 1400));
            if (v18)
            {
              [v18 setAllowableMovement_];
              v13 = *v2 & *v1;
            }

            v19 = *(v1 + *(v13 + 1400));
            if (v19)
            {
              [v19 setDelegate_];
              v13 = *v2 & *v1;
            }

            if (*(v1 + *(v13 + 1400)))
            {
              [v20 addGestureRecognizer_];
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.updateUI()()
{
  CanvasElementView.updateUI()();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x228))();
  }

  ContainerCanvasElementView.updateDrawing()();
  ContainerCanvasElementView.updateSubelements()();

  ContainerCanvasElementView.updateFormFillingView()();
}

void ContainerCanvasElementView.drawingView.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x558);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void ContainerCanvasElementView.subelementsContainerView.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x560);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void ContainerCanvasElementView.formFillingView.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x568);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t ContainerCanvasElementView.subelementViews.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x560));
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = [v2 subviews];
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = v3;
    if (v5 >> 62)
    {
LABEL_20:
      v6 = __CocoaSet.count.getter();
      if (v6)
      {
LABEL_4:
        v7 = 0;
        do
        {
          v8 = v7;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x1DA6CE0C0](v8, v5);
            }

            else
            {
              if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_19;
              }

              v9 = *(v5 + 8 * v8 + 32);
            }

            v10 = v9;
            v7 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }

            type metadata accessor for AnyCanvasElementView();
            if (swift_dynamicCastClass())
            {
              break;
            }

            ++v8;
            if (v7 == v6)
            {
              goto LABEL_21;
            }
          }

          MEMORY[0x1DA6CD190]();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = v15;
        }

        while (v7 != v6);
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_21:
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, (*((*v1 & *Strong) + 0x3C8))(&v15), v12, v15 == 1))
  {
    v13 = ContainerCanvasElementView.transientFormFields.getter();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v3;
  specialized Array.append<A>(contentsOf:)(v13);
  return v15;
}

unint64_t ContainerCanvasElementView.subelementViewsForHitTesting.getter()
{
  v0 = ContainerCanvasElementView.subelementViews.getter();
  v1 = v0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ((*((*v4 & *v5) + 0x1F0))())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v7 == i)
      {
        v8 = v10;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return specialized Sequence.reversed()(v8);
}

uint64_t ContainerCanvasElementView.unorderedSubelementViews.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x570);
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = ContainerCanvasElementView.unorderedTransientSubelementViews.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = v2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v3, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v6);

  return v6;
}

void ContainerCanvasElementView.rootTapGestureRecognizer.setter(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x578);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t ContainerCanvasElementView.selectedSubelementViews.getter()
{
  v0 = ContainerCanvasElementView.subelementViews.getter();
  v1 = v0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7D40];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6CE0C0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ((*((*v4 & *v5) + 0x200))())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        v8 = v10;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v8;
}

Swift::Void __swiftcall ContainerCanvasElementView.createSubelementsContainerViewIfNeeded()()
{
  v1 = MEMORY[0x1E69E7D40];
  if (!*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x560)))
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v0 bounds];
    [v2 setFrame_];
    [v2 setClipsToBounds_];
    [v2 setUserInteractionEnabled_];
    if (*(v0 + *((*v1 & *v0) + 0x558)))
    {
      [v0 insertSubview:v2 belowSubview:?];
    }

    else
    {
      [v0 addSubview_];
    }

    v3 = *((*v1 & *v0) + 0x560);
    v4 = *(v0 + v3);
    *(v0 + v3) = v2;
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.updateSubelements()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v209 = *MEMORY[0x1E69E7D40] & v2;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit20AnyCanvasElementViewCGGMd);
  MEMORY[0x1EEE9AC00](v168);
  v185 = &v163 - v4;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVy8PaperKit20AnyCanvasElementViewCGMd);
  v171 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v170 = &v163 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v201 = (&v163 - v7);
  v207 = type metadata accessor for CRKeyPath();
  v179 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v9 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v163 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v181 = &v163 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v163 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v172 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v206 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v189 = &v163 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v186 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v188 = &v163 - v24;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v169 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v174 = &v163 - v27;
  v28 = *((v3 & v2) + 0x540);
  v29 = *((v3 & v2) + 0x548);
  v30 = type metadata accessor for Capsule();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v167 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v163 - v34;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
  v176 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v187 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v163 - v38;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v204 = Strong;
    v178 = v9;
    v41 = v29;
    v42 = objc_opt_self();
    [v42 begin];
    v166 = v42;
    [v42 setAnimationDuration_];
    v43 = ContainerCanvasElementView.unorderedSubelementViews.getter();
    v214 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence9CRKeyPathV_SD4KeysVyAF8PaperKit09AnyCanvasA4ViewC_GTt0g5(v43);
    v44 = CanvasElementView.canvasElement.getter(v35);
    MEMORY[0x1EEE9AC00](v44);
    v198 = v28;
    *(&v163 - 4) = v28;
    *(&v163 - 3) = v41;
    v202 = v41;
    v163 = *(v209 + 1360);
    *(&v163 - 2) = v163;
    swift_getKeyPath();
    v45 = v174;
    Capsule.subscript.getter();

    v46 = *(v31 + 8);
    v195 = v35;
    v199 = v31 + 8;
    v200 = v30;
    v197 = v46;
    v46(v35, v30);
    v47 = v175;
    CROrderedSet.makeIterator()();
    v48 = *(v173 + 8);
    v165 = v173 + 8;
    v164 = v48;
    v48(v45, v47);
    v49 = MEMORY[0x1E69E7D40];
    v182 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x570);
    v196 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_canvasViewController;
    v50 = v188;
    v51 = v205;
    CROrderedSet.Iterator.next()();
    v52 = v172;
    v208 = *(v172 + 48);
    v209 = v172 + 48;
    v53 = v208(v50, 1, v17);
    v203 = v17;
    v54 = v207;
    v55 = v189;
    if (v53 == 1)
    {
LABEL_3:
      v56 = *(v176 + 8);
      v176 += 8;
      v191 = v56;
      (v56)(v39, v51);
      v57 = v214;
      v55 = v214 + 56;
      v58 = 1 << *(v214 + 32);
      v59 = -1;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      v60 = v59 & *(v214 + 56);
      v61 = (v58 + 63) >> 6;
      v194 = v179 + 16;
      v193 = (v179 + 32);
      v201 = (v179 + 8);

      v17 = 0;
      v16 = v206;
      v195 = v57;
      if (!v60)
      {
        while (1)
        {
LABEL_6:
          v62 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_105;
          }

          if (v62 >= v61)
          {
            break;
          }

          v60 = *(v55 + 8 * v62);
          ++v17;
          if (v60)
          {
            v17 = v62;
            goto LABEL_10;
          }
        }

        v84 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x560));
        if (!v84)
        {

LABEL_74:
          v129 = v204;
          [v166 commit];

          return;
        }

        v201 = v84;
        v85 = [v201 subviews];
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v210 = MEMORY[0x1E69E7CC0];
        v55 = v17 & 0xFFFFFFFFFFFFFF8;
        if (v17 >> 62)
        {
          goto LABEL_109;
        }

        for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
        {
          v87 = v186;
          v88 = v202;
          v207 = MEMORY[0x1E69E7CC0];
          if (!i)
          {
            break;
          }

          v89 = 0;
          v202 = MEMORY[0x1E69E7CC0];
LABEL_34:
          v90 = v89;
          while (1)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v91 = MEMORY[0x1DA6CE0C0](v90, v17);
            }

            else
            {
              if (v90 >= *(v55 + 16))
              {
                goto LABEL_106;
              }

              v91 = *(v17 + 8 * v90 + 32);
            }

            v16 = v91;
            v89 = v90 + 1;
            if (__OFADD__(v90, 1))
            {
              break;
            }

            type metadata accessor for AnyCanvasElementView();
            if (swift_dynamicCastClass())
            {
              MEMORY[0x1DA6CD190]();
              if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v202 = v210;
              v16 = v206;
              v87 = v186;
              if (v89 != i)
              {
                goto LABEL_34;
              }

              goto LABEL_71;
            }

            ++v90;
            v16 = v206;
            if (v89 == i)
            {
              goto LABEL_71;
            }
          }

LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          ;
        }

        v202 = MEMORY[0x1E69E7CC0];
LABEL_71:

        v120 = v167;
        v121 = CanvasElementView.canvasElement.getter(v167);
        MEMORY[0x1EEE9AC00](v121);
        *(&v163 - 4) = v198;
        *(&v163 - 3) = v88;
        *(&v163 - 2) = v163;
        swift_getKeyPath();
        v122 = v169;
        v123 = v200;
        Capsule.subscript.getter();

        v197(v120, v123);
        v210 = MEMORY[0x1E69E7CC0];
        (*(v173 + 16))(v174, v122, v175);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
        dispatch thunk of Sequence.makeIterator()();
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>>.Iterator and conformance CROrderedSet<A>.Iterator, &_s9Coherence12CROrderedSetV8IteratorVyAA15SharedTagged_10Vy8PaperKit0F13CanvasElementVG_GMd);
        dispatch thunk of IteratorProtocol.next()();
        v124 = v203;
        if (v208(v87, 1, v203) != 1)
        {
          v130 = *(v172 + 32);
          v131 = (v172 + 8);
          v207 = MEMORY[0x1E69E7CC0];
          v130(v16, v87, v124);
          while (1)
          {
            closure #2 in ContainerCanvasElementView.updateSubelements()(&v213);
            v134 = (*v131)(v16, v124);
            if (v213)
            {
              MEMORY[0x1DA6CD190](v134);
              if (*((v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v207 = v210;
            }

            v132 = v186;
            dispatch thunk of IteratorProtocol.next()();
            v124 = v203;
            v133 = v208(v132, 1, v203);
            v16 = v206;
            if (v133 == 1)
            {
              break;
            }

            v130(v206, v132, v124);
          }
        }

        (v191)(v187, v205);
        v164(v169, v175);

        v210 = v207;
        v213 = v202;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8PaperKit20AnyCanvasElementViewCGMd);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [AnyCanvasElementView] and conformance [A], &_sSay8PaperKit20AnyCanvasElementViewCGMd);
        _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type AnyCanvasElementView and conformance NSObject, type metadata accessor for AnyCanvasElementView);
        v125 = v170;
        BidirectionalCollection<>.difference<A>(from:)();

        v126 = v185;
        v127 = v184;
        (*(v171 + 16))(v185, v125, v184);
        v128 = *(v168 + 36);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CollectionDifference<AnyCanvasElementView> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVy8PaperKit20AnyCanvasElementViewCGMd);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (*(v126 + v128) == v210)
        {
LABEL_73:

          outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_ss16IndexingIteratorVys20CollectionDifferenceVy8PaperKit20AnyCanvasElementViewCGGMd);
          (*(v171 + 8))(v170, v127);
          goto LABEL_74;
        }

        v209 = v128;
        while (1)
        {
          v142 = dispatch thunk of Collection.subscript.read();
          v145 = *v143;
          v144 = v143[1];
          v146 = v143[2];
          v147 = *(v143 + 24);
          v148 = *(v143 + 25);
          outlined copy of CollectionDifference<PDFPage>.Change(*v143, v144, v146, v147, v148);
          v142(&v210, 0);
          dispatch thunk of Collection.formIndex(after:)();
          v149 = swift_unknownObjectWeakLoadStrong();
          v150 = v149;
          if (v148 == 1)
          {
            break;
          }

          if (v149)
          {
            v157 = *((*MEMORY[0x1E69E7D40] & *v144) + 0x3A8);
            v158 = v144;
            v159 = v157();
            if (v159)
            {
              v160 = v159;
              [v150 addChildViewController_];
              [v201 insertSubview:v158 atIndex:v145];
              v161 = v150;
              [v160 didMoveToParentViewController_];
              outlined consume of CollectionDifference<PDFPage>.Change(v145, v144, v146, v147, 0);
              outlined consume of CollectionDifference<PDFPage>.Change(v145, v144, v146, v147, 0);

              goto LABEL_88;
            }
          }

          else
          {
            v162 = v144;
          }

          [v201 insertSubview:v144 atIndex:v145];
          outlined consume of CollectionDifference<PDFPage>.Change(v145, v144, v146, v147, 0);
          v136 = v145;
          v137 = v144;
          v138 = v146;
          v139 = v147;
          v140 = 0;
LABEL_87:
          outlined consume of CollectionDifference<PDFPage>.Change(v136, v137, v138, v139, v140);
LABEL_88:
          v126 = v185;
          v127 = v184;
          v141 = v209;
          dispatch thunk of Collection.endIndex.getter();
          if (*(v126 + v141) == v210)
          {
            goto LABEL_73;
          }
        }

        if (v149)
        {
          v151 = *((*MEMORY[0x1E69E7D40] & *v144) + 0x3A8);
          v152 = v144;
          v153 = v151();
          if (v153)
          {
            v154 = v153;
            [v153 willMoveToParentViewController_];
            [v152 removeFromSuperview];
            v155 = [v154 parentViewController];
            if (v155 && (v156 = v155, v155, v156 == v150))
            {
              [v150 removeChildViewController_];
            }

            else
            {
              [v154 removeFromParentViewController];
            }

            goto LABEL_86;
          }
        }

        else
        {
          v135 = v144;
        }

        [v144 removeFromSuperview];
LABEL_86:
        outlined consume of CollectionDifference<PDFPage>.Change(v145, v144, v146, v147, 1);
        v136 = v145;
        v137 = v144;
        v138 = v146;
        v139 = v147;
        v140 = 1;
        goto LABEL_87;
      }

LABEL_10:
      while (1)
      {
        v63 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        v64 = *(v57 + 48);
        v65 = v179;
        v192 = *(v179 + 72);
        v66 = v177;
        (*(v179 + 16))(v177, v64 + v192 * (v63 | (v17 << 6)), v54);
        v67 = v178;
        (*(v65 + 32))(v178, v66, v54);
        v68 = ContainerCanvasElementView.unorderedSubelementViews.getter();
        if (*(v68 + 16))
        {
          v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67);
          if (v70)
          {
            break;
          }
        }

        (*v201)(v67, v54);
LABEL_27:
        v57 = v195;
        if (!v60)
        {
          goto LABEL_6;
        }
      }

      v71 = *(*(v68 + 56) + 8 * v69);

      v72 = [v71 superview];
      v73 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x560));
      if (v72)
      {
        v74 = v72;
        v75 = v182;
        if (v73)
        {

          if (v74 == v73)
          {
            goto LABEL_19;
          }

          v76 = v207;
          (*v201)(v178, v207);

          v54 = v76;
          goto LABEL_26;
        }

        v83 = 0;
      }

      else
      {
        v75 = v182;
        if (!v73)
        {
          v77 = 0;
LABEL_19:
          swift_beginAccess();
          v78 = specialized __RawDictionaryStorage.find<A>(_:)(v178);
          v16 = v206;
          if (v79)
          {
            v80 = v78;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v82 = *(v1 + v75);
            v213 = v82;
            *(v1 + v75) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              specialized _NativeDictionary.copy()();
              v82 = v213;
            }

            (*v201)(*(v82 + 48) + v80 * v192, v207);

            specialized _NativeDictionary._delete(at:)(v80, v82);
            *(v1 + v75) = v82;
          }

          swift_endAccess();

          v54 = v207;
          (*v201)(v178, v207);
          goto LABEL_27;
        }
      }

      v54 = v207;
      (*v201)(v178, v207);
LABEL_26:
      v16 = v206;
      goto LABEL_27;
    }

    v193 = *(v52 + 32);
    v191 = (v179 + 8);
    v194 = v52 + 32;
    v190 = (v52 + 8);
    v180 = (v179 + 16);
    v192 = v39;
    v183 = v16;
    v193(v189, v50, v17);
    while (1)
    {
      MEMORY[0x1DA6CB870](v17);
      v93 = v201;
      specialized Set._Variant.remove(_:)(v16, v201);
      outlined destroy of StocksKitCurrencyCache.Provider?(v93, &_s9Coherence9CRKeyPathVSgMd);
      if (*(ContainerCanvasElementView.unorderedSubelementViews.getter() + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v16);
        v95 = v94;

        if (v95)
        {
          v96 = ContainerCanvasElementView.unorderedSubelementViews.getter();
          if (!*(v96 + 16))
          {
            goto LABEL_107;
          }

          v97 = v96;
          v98 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
          if ((v99 & 1) == 0)
          {
            goto LABEL_108;
          }

          v100 = *(*(v97 + 56) + 8 * v98);

          v101 = v49;
          v102 = v195;
          CanvasElementView.canvasElement.getter(v195);
          (*((*v101 & *v100) + 0x138))(v102, v198, v202);

          v103 = v102;
          v49 = v101;
          v39 = v192;
          v197(v103, v200);
          v54 = v207;
          (*v191)(v16, v207);
          (*v190)(v55, v17);
          goto LABEL_50;
        }
      }

      else
      {
      }

      ContainerCanvasElementView.createSubelementsContainerViewIfNeeded()();
      SharedTagged_10<>.layout()(&v210);
      v104 = v211;
      v105 = v212;
      __swift_project_boxed_opaque_existential_1(&v210, v211);
      v106 = v195;
      CanvasElementView.canvasElement.getter(v195);
      v107 = v1;
      v108 = *(v105 + 8);
      v109 = v204;
      v110 = v204;
      v111 = v108(v106, v109, v107, v198, v202, v104, v105);

      v197(v106, v200);
      if (v111)
      {
        __swift_destroy_boxed_opaque_existential_0(&v210);
        swift_unknownObjectWeakAssign();
        v112 = v181;
        v16 = v183;
        (*v180)(v181, v183, v207);
        swift_beginAccess();
        v113 = v111;
        specialized Dictionary.subscript.setter(v111, v112);
        swift_endAccess();
        v114 = swift_unknownObjectWeakLoadStrong();
        v49 = MEMORY[0x1E69E7D40];
        v1 = v107;
        v51 = v205;
        v50 = v188;
        v39 = v192;
        if (v114)
        {
          v115 = v114;
          v116 = (*((*MEMORY[0x1E69E7D40] & *v113) + 0x3A8))();
          if (v116)
          {
            v117 = v116;
            [v115 addChildViewController_];
            v118 = *(v1 + *((*v49 & *v1) + 0x560));
            if (v118)
            {
              [v118 addSubview_];
            }

            [v117 didMoveToParentViewController_];

            goto LABEL_49;
          }
        }

        v119 = *(v1 + *((*v49 & *v1) + 0x560));
        if (v119)
        {
          [v119 addSubview_];
        }

LABEL_49:
        v54 = v207;
        (*v191)(v16, v207);
        v55 = v189;
        v17 = v203;
        (*v190)(v189, v203);
LABEL_50:
        v92 = v51;
        goto LABEL_51;
      }

      v16 = v183;
      v54 = v207;
      (*v191)(v183, v207);
      v55 = v189;
      v17 = v203;
      (*v190)(v189, v203);
      __swift_destroy_boxed_opaque_existential_0(&v210);
      v49 = MEMORY[0x1E69E7D40];
      v1 = v107;
      v92 = v205;
      v50 = v188;
      v39 = v192;
LABEL_51:
      v51 = v92;
      CROrderedSet.Iterator.next()();
      if (v208(v50, 1, v17) == 1)
      {
        goto LABEL_3;
      }

      v193(v55, v50, v17);
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.updateFormFillingView()()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x568));
  if (v1)
  {
    v2 = v1;
    FormFillingView.updateUI()();
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.createFormFillingViewIfNeeded()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v2 = MEMORY[0x1E69E7D40];
    if (!*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x568)))
    {
      [v0 bounds];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      objc_allocWithZone(type metadata accessor for FormFillingView());
      FormFillingView.init(frame:canvas:)(v14, v4, v6, v8, v10);
      v11 = *((*v2 & *v0) + 0x568);
      v12 = *(v0 + v11);
      *(v0 + v11) = v13;

      if (!*(v0 + *((*v2 & *v0) + 0x568)))
      {
        __break(1u);
        return;
      }

      [v0 addSubview_];
    }

    ContainerCanvasElementView.updateFormFillingView()();
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.rootTapped(_:)(UITapGestureRecognizer *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = MEMORY[0x1E69E7D40];
    v22 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x3C8))(&v23);
    if (v23)
    {
      v6 = *((*v5 & *v22) + 0x440);
      v7 = v6();
      [(UITapGestureRecognizer *)a1 locationInView:v7];
      v9 = v8;
      v11 = v10;

      v12 = v6();
      v13 = [v12 hitTest:0 withEvent:{v9, v11}];

      if (v13)
      {
        type metadata accessor for AnyCanvasElementView();
        v14 = v13;
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = v15;
          v17 = v14;
LABEL_11:

          [(UITapGestureRecognizer *)a1 locationInView:v16];
          (*((*v16 & *v5) + 0x198))([(UITapGestureRecognizer *)a1 modifierFlags], 0, (*(v2 + *((*v5 & *v2) + 0x580)) & 1) == 0, v20, v21);
        }

        else
        {
          v17 = v14;
          while (1)
          {
            v18 = [v17 superview];

            if (!v18)
            {
              break;
            }

            v17 = v18;
            v19 = swift_dynamicCastClass();
            if (v19)
            {
              v16 = v19;
              goto LABEL_11;
            }
          }

          v17 = v22;
          v22 = v14;
        }
      }
    }
  }
}

Swift::Void __swiftcall ContainerCanvasElementView.transformDrawing()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = (*MEMORY[0x1E69E7D40] & v2);
  v5 = v4[168];
  v6 = v4[169];
  v7 = type metadata accessor for Capsule();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  v11 = *&v1[*((v3 & v2) + 0x558)];
  if (!v11)
  {
    return;
  }

  v57 = v11;
  [v57 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [v1 bounds];
  v64.origin.x = v20;
  v64.origin.y = v21;
  v64.size.width = v22;
  v64.size.height = v23;
  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  if (!CGRectEqualToRect(v61, v64))
  {
    v59.a = 1.0;
    v59.b = 0.0;
    v59.c = 0.0;
    v59.d = 1.0;
    v59.tx = 0.0;
    v59.ty = 0.0;
    [v57 setTransform_];
    [v1 bounds];
    [v57 setFrame_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v26 = CanvasElementView.canvasElement.getter(v10);
      MEMORY[0x1EEE9AC00](v26);
      *(&v55 - 4) = v5;
      *(&v55 - 3) = v6;
      v54 = v4[170];
      swift_getKeyPath();
      Capsule.subscript.getter();

      (*(v8 + 8))(v10, v7);
      CGAffineTransformMakeRotation(&v59, aBlock.a);
      [v57 setTransform_];
    }

    resize #1 <A>() in ContainerCanvasElementView.transformDrawing()(v57, &v59.a);
    v55 = *&v59.c;
    tx = v59.tx;
    ty = v59.ty;
    v56 = *&v59.a;
    v29 = sqrt(vmuld_n_f64(v59.a, v59.a) + vmuld_lane_f64(v59.b, *&v59.a, 1));
    if (ContainerCanvasElementView.isInLiveEdit.getter())
    {
      v30 = v29 >= 0.5 && v29 <= 2.0;
      v31 = MEMORY[0x1E69E7D40];
      if (!v30)
      {
        goto LABEL_23;
      }
    }

    else
    {
      [v1 bounds];
      *&aBlock.a = v56;
      *&aBlock.c = v55;
      aBlock.tx = tx;
      aBlock.ty = ty;
      v63 = CGRectApplyAffineTransform(v62, &aBlock);
      x = v63.origin.x;
      y = v63.origin.y;
      width = v63.size.width;
      height = v63.size.height;
      [v1 bounds];
      v40 = CGRect.almostEqual(_:threshold:)(v36, v37, v38, v39, 0.5, x, y, width, height);
      v31 = MEMORY[0x1E69E7D40];
      if (!v40 || (v29 >= 0.5 ? (v41 = v29 <= 2.0) : (v41 = 0), !v41))
      {
LABEL_23:
        v45 = swift_unknownObjectWeakLoadStrong();
        if (v45)
        {
          v46 = v45;
          v47 = (*((*v31 & *v45) + 0x468))();

          if (v47)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_1D405CEB0;
            *(v48 + 32) = v57;
            type metadata accessor for PKMathRecognitionItemAttributes(0, lazy cache variable for type metadata for PKAttachmentView);
            v49 = v57;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v51 = swift_allocObject();
            *(v51 + 16) = v49;
            *&aBlock.tx = partial apply for closure #1 in ContainerCanvasElementView.transformDrawing();
            *&aBlock.ty = v51;
            *&aBlock.a = MEMORY[0x1E69E9820];
            *&aBlock.b = 1107296256;
            *&aBlock.c = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
            *&aBlock.d = &block_descriptor_14_1;
            v52 = _Block_copy(&aBlock);
            v53 = v49;

            [v47 resizeTiles:isa completion:v52];

            _Block_release(v52);
            return;
          }
        }

        goto LABEL_26;
      }
    }

    if (!ContainerCanvasElementView.isInLiveEdit.getter())
    {
      v42 = swift_unknownObjectWeakLoadStrong();
      if (v42)
      {
        v43 = v42;
        v44 = (*((*v31 & *v42) + 0x468))();

        [v44 updateTilesForVisibleRect];
      }
    }

LABEL_26:

    return;
  }

  v24 = v57;
}

Swift::Void __swiftcall ContainerCanvasElementView.updateDrawing()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v175 = *MEMORY[0x1E69E7D40] & v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v5 = *(v4 - 8);
  v176 = v4;
  v177 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v150 = &v146 - v6;
  v165 = type metadata accessor for CRKeyPath();
  v173 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v156 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSg_ADtMd);
  MEMORY[0x1EEE9AC00](v155);
  v9 = &v146 - v8;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v151 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v167 = &v146 - v12;
  v171 = type metadata accessor for PKDrawing();
  v164 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v163 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v154 = (&v146 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence9CRKeyPathVSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v146 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v146 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v149 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v146 - v24;
  v162 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *((v3 & v2) + 0x540);
  v180 = *((v3 & v2) + 0x548);
  v179 = type metadata accessor for Capsule();
  v27 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v160 = &v146 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v153 = &v146 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v174 = &v146 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v146 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v159 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v152 = &v146 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v146 - v41;
  v43 = *((v3 & v2) + 0x590);
  v44 = 1;
  *(v1 + v43) = 1;
  if ((AnyCanvasElementView.isEditingCanvasElement.getter() & 1) == 0)
  {
    v147 = v23;
    v172 = v9;
    v45 = CanvasElementView.canvasElement.getter(v35);
    MEMORY[0x1EEE9AC00](v45);
    v46 = v180;
    *(&v146 - 4) = v26;
    *(&v146 - 3) = v46;
    *(&v146 - 2) = *(v175 + 1360);
    swift_getKeyPath();
    v47 = v179;
    Capsule.subscript.getter();

    v48 = v26;
    v178 = v27;
    v49 = *(v27 + 8);
    v49(v35, v47);
    v50 = v176;
    v51 = v177;
    if ((*(v177 + 48))(v42, 1, v176) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v42, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v44 = 0;
      v27 = v178;
      v26 = v48;
    }

    else
    {
      v52 = v174;
      v146 = v1;
      v53 = v48;
      CanvasElementView.canvasElement.getter(v174);
      v157 = v18;
      v54 = v161;
      Ref.subscript.getter();
      v49(v52, v47);
      (*(v51 + 8))(v42, v50);
      v55 = v149;
      v56 = v148;
      v57 = v147;
      (v149)[2](v148, &v54[*(v162 + 20)], v147);
      v58 = v54;
      v18 = v157;
      outlined destroy of PKDrawingStruct(v58);
      v59 = CROrderedSet.count.getter();
      (v55[1])(v56, v57);
      v44 = v59 > 0;
      v27 = v178;
      v26 = v53;
      v1 = v146;
    }

    v9 = v172;
  }

  v60 = MEMORY[0x1E69E7D40];
  v61 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x558));
  v62 = v179;
  if (v61)
  {
    v157 = v18;
    v63 = v61;
    v64 = v63;
    if (v44)
    {
      v172 = v9;
      v178 = v27;
      v65 = [v63 drawing];
      static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for PKDrawingCoherence(0);
      if (swift_dynamicCast())
      {
        v66 = v183;
        v67 = OBJC_IVAR___PKDrawingCoherence_model;
        swift_beginAccess();
        v68 = v168;
        v69 = &v66[v67];
        v70 = v167;
        v71 = v169;
        (*(v168 + 16))(v167, v69, v169);

        v72 = v170;
        Capsule.rootID.getter();
        (*(v68 + 8))(v70, v71);
        v73 = 0;
        v74 = v180;
        v75 = v173;
        v76 = v165;
      }

      else
      {
        v73 = 1;
        v74 = v180;
        v75 = v173;
        v76 = v165;
        v72 = v170;
      }

      v154 = *(v75 + 56);
      v154(v72, v73, 1, v76);
      v77 = v153;
      v78 = CanvasElementView.canvasElement.getter(v153);
      MEMORY[0x1EEE9AC00](v78);
      *(&v146 - 4) = v26;
      *(&v146 - 3) = v74;
      *(&v146 - 2) = *(v175 + 1360);
      swift_getKeyPath();
      v79 = v152;
      Capsule.subscript.getter();

      (*(v178 + 8))(v77, v62);
      v80 = v176;
      v81 = (*(v177 + 48))(v79, 1, v176);
      v166 = v26;
      v149 = v64;
      if (v81 == 1)
      {
        outlined destroy of StocksKitCurrencyCache.Provider?(v79, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
        v82 = 1;
        v83 = v158;
      }

      else
      {
        v83 = v158;
        Ref.id.getter();
        (*(v177 + 8))(v79, v80);
        v82 = 0;
      }

      v84 = v165;
      v154(v83, v82, 1, v165);
      v85 = *(v155 + 48);
      v86 = v170;
      v87 = v172;
      outlined init with copy of CRKeyPath?(v170, v172);
      outlined init with copy of CRKeyPath?(v83, v87 + v85);
      v88 = *(v173 + 48);
      if (v88(v87, 1, v84) == 1)
      {
        v89 = v84;
        outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_s9Coherence9CRKeyPathVSgMd);
        v90 = v172;
        outlined destroy of StocksKitCurrencyCache.Provider?(v86, &_s9Coherence9CRKeyPathVSgMd);
        v91 = v88(v90 + v85, 1, v89);
        v26 = v166;
        v60 = MEMORY[0x1E69E7D40];
        v62 = v179;
        v64 = v149;
        if (v91 == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSgMd);
          v27 = v178;
LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        outlined init with copy of CRKeyPath?(v87, v157);
        v92 = v88(v87 + v85, 1, v84);
        v60 = MEMORY[0x1E69E7D40];
        v64 = v149;
        if (v92 != 1)
        {
          v141 = v173;
          v142 = v87 + v85;
          v143 = v156;
          (*(v173 + 32))(v156, v142, v84);
          _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath, MEMORY[0x1E69954B8]);
          v144 = v157;
          LODWORD(v155) = dispatch thunk of static Equatable.== infix(_:_:)();
          v145 = *(v141 + 8);
          v145(v143, v84);
          outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_s9Coherence9CRKeyPathVSgMd);
          outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence9CRKeyPathVSgMd);
          v145(v144, v84);
          outlined destroy of StocksKitCurrencyCache.Provider?(v172, &_s9Coherence9CRKeyPathVSgMd);
          v27 = v178;
          v62 = v179;
          v26 = v166;
          if (v155)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        v93 = v84;
        outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_s9Coherence9CRKeyPathVSgMd);
        v90 = v172;
        outlined destroy of StocksKitCurrencyCache.Provider?(v170, &_s9Coherence9CRKeyPathVSgMd);
        (*(v173 + 8))(v157, v93);
        v26 = v166;
        v62 = v179;
      }

      outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence9CRKeyPathVSg_ADtMd);
      v27 = v178;
    }

LABEL_20:
    [v64 removeFromSuperview];
    v94 = *((*v60 & *v1) + 0x558);
    v95 = *(v1 + v94);
    *(v1 + v94) = 0;

    v64 = v95;
    goto LABEL_21;
  }

LABEL_22:
  v96 = *(v1 + *((*v60 & *v1) + 0x558));
  if (v96 == 0 && v44)
  {
    v97 = v160;
    v98 = CanvasElementView.canvasElement.getter(v160);
    MEMORY[0x1EEE9AC00](v98);
    v166 = v26;
    v99 = v180;
    *(&v146 - 4) = v26;
    *(&v146 - 3) = v99;
    v172 = *(v175 + 1360);
    *(&v146 - 2) = v172;
    swift_getKeyPath();
    v100 = v159;
    Capsule.subscript.getter();

    v175 = *(v27 + 8);
    (v175)(v97, v62);
    v101 = v176;
    v102 = v177;
    v103 = (*(v177 + 48))(v100, 1, v176);
    v178 = v27 + 8;
    if (v103 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
      v104 = *(MEMORY[0x1E695F050] + 16);
      v183 = *MEMORY[0x1E695F050];
      v184 = v104;
      type metadata accessor for CGRect(0);
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
      CRRegister.init(wrappedValue:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
      CROrderedSet.init()();
      UnknownProperties.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence9CRKeyPathVGMd);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_1D405C990;
      v106 = v174;
      CanvasElementView.canvasElement.getter(v174);
      Capsule.rootID.getter();
      (v175)(v106, v62);
      CRKeyPath.init(_:)();
      *&v183 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9Coherence9CRKeyPathVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [CRKeyPath] and conformance [A], &_sSay9Coherence9CRKeyPathVGMd);
      CRKeyPath.init<A>(_:)();
      _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
      v107 = v167;
      Capsule.init(_:id:)();
      v108 = v168;
      v109 = *(v168 + 16);
      v110 = v151;
      v111 = v169;
      v109(v151, v107, v169);
      v112 = type metadata accessor for PKDrawingCoherence(0);
      v113 = objc_allocWithZone(v112);
      v109(&v113[OBJC_IVAR___PKDrawingCoherence_model], v110, v111);
      v182.receiver = v113;
      v182.super_class = v112;
      v114 = objc_msgSendSuper2(&v182, sel_init);
      v115 = *(v108 + 8);
      v115(v110, v111);
      v116 = v179;
      v115(v107, v111);
    }

    else
    {
      v120 = v150;
      (*(v102 + 32))(v150, v100, v101);
      v106 = v174;
      CanvasElementView.canvasElement.getter(v174);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<PKDrawingStruct> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
      v121 = v167;
      Capsule.encapsulate<A>(_:)();
      (v175)(v106, v62);
      v122 = type metadata accessor for PKDrawingCoherence(0);
      v123 = v101;
      v124 = objc_allocWithZone(v122);
      v125 = v168;
      v126 = v169;
      (*(v168 + 16))(v124 + OBJC_IVAR___PKDrawingCoherence_model, v121, v169);
      v181.receiver = v124;
      v181.super_class = v122;
      v114 = objc_msgSendSuper2(&v181, sel_init);
      (*(v125 + 8))(v121, v126);
      v116 = v179;
      (*(v102 + 8))(v120, v123);
    }

    v60 = MEMORY[0x1E69E7D40];
    v127 = v114;
    v128 = CanvasElementView.canvasElement.getter(v106);
    MEMORY[0x1EEE9AC00](v128);
    v129 = v180;
    *(&v146 - 4) = v166;
    *(&v146 - 3) = v129;
    *(&v146 - 2) = v172;
    swift_getKeyPath();
    Capsule.subscript.getter();

    (v175)(v106, v116);
    v130 = v184;
    v131 = v163;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

    v132 = objc_allocWithZone(type metadata accessor for CanvasElementDrawingView());
    PKDrawing._bridgeToObjectiveC()(v133);
    v135 = v134;
    v136 = [v132 initWithFrame:v134 drawing:{0.0, 0.0, v130}];

    (*(v164 + 8))(v131, v171);
    [v136 setUserInteractionEnabled_];
    swift_unknownObjectWeakAssign();
    [v1 addSubview_];
    v137 = *((*v60 & *v1) + 0x558);
    v138 = *(v1 + v137);
    *(v1 + v137) = v136;
  }

  else
  {
    v117 = v174;
    if (!v96)
    {
      goto LABEL_32;
    }

    CanvasElementView.canvasElement.getter(v174);
    v118 = v96;
    v119 = CanvasElementDrawingView.merge<A>(_:)();

    (*(v27 + 8))(v117, v62);
    if ((v119 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v140 = Strong;
    (*((*v60 & *Strong) + 0x800))();
  }

LABEL_32:
  *(v1 + *((*v60 & *v1) + 0x590)) = 0;
}

void __swiftcall ContainerCanvasElementView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    v9 = *(v3 + *((*v7 & *v3) + 0x568));
    if (v9)
    {
      v10 = v9;
      if (([v10 isHidden] & 1) == 0)
      {
        [v10 convertPoint:v3 fromCoordinateSpace:{x, y}];
        [v10 hitTest:isa withEvent:?];

        return;
      }
    }

    v11 = ContainerCanvasElementView.subelementViewsForHitTesting.getter();
    v12 = v11;
    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA6CE0C0](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ([v15 isHidden])
        {
        }

        else
        {
          [v16 convertPoint:v3 fromCoordinateSpace:{x, y}];
          v18 = [v16 hitTest:isa withEvent:?];

          if (v18)
          {

            return;
          }
        }

        ++v14;
        if (v17 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for ContainerCanvasElementView();
  v19 = [(UIView_optional *)&v20 hitTest:isa withEvent:x, y];
}

id @objc ContainerCanvasElementView.hitTest(_:with:)(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v16.value.super.isa = a5;
  ContainerCanvasElementView.hitTest(_:with:)(v11, __PAIR128__(*&a3, *&a2), v16);
  v13 = v12;

  return v13;
}

Swift::Void __swiftcall ContainerCanvasElementView.layoutSubviews()()
{
  v1 = MEMORY[0x1E69E7D40];
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ContainerCanvasElementView();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = *v1 & *v0;
  v3 = *(v0 + *(v2 + 0x560));
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];

    v2 = *v1 & *v0;
  }

  v5 = *(v0 + *(v2 + 1384));
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }

  ContainerCanvasElementView.transformDrawing()();
  v7 = ContainerCanvasElementView.subelementViews.getter();
  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA6CE0C0](i, v8);
      }

      else
      {
        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      (*((*v1 & *v11) + 0x268))();
    }

    goto LABEL_14;
  }

  __break(1u);
}

void @objc ContainerCanvasElementView.layoutSubviews()(void *a1)
{
  v1 = a1;
  ContainerCanvasElementView.layoutSubviews()();
}

uint64_t closure #2 in ContainerCanvasElementView.updateSubelements()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  MEMORY[0x1DA6CB870](v6);
  v7 = ContainerCanvasElementView.unorderedSubelementViews.getter();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    v10 = *(v3 + 8);
    v11 = *(*(v7 + 56) + 8 * v8);
    v10(v5, v2);
  }

  else
  {

    result = (*(v3 + 8))(v5, v2);
    v11 = 0;
  }

  *a1 = v11;
  return result;
}

void @objc ContainerCanvasElementView.rootTapped(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  ContainerCanvasElementView.rootTapped(_:)(v4);
}

Swift::Bool __swiftcall ContainerCanvasElementView.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    (*((*v4 & *Strong) + 0x3C8))(&v26);
    if (v26)
    {
      v7 = *(v1 + *((*v4 & *v1) + 0x578));
      if (v7 && (type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer), v8 = v7, v9 = a1, v10 = static NSObject.== infix(_:_:)(), v8, v9, (v10 & 1) != 0))
      {
        v11 = (*((*v4 & *v6) + 0x468))();
        if (v11 && (v12 = v11, v13 = [v11 allowsFingerDrawing], v12, (v13 & 1) != 0))
        {
          [(UIGestureRecognizer *)v9 locationInView:v2];
          v14 = [v2 hitTest:0 withEvent:?];
          if (!v14)
          {
            v16 = v6;
LABEL_19:

            goto LABEL_20;
          }

          v15 = v14;
          type metadata accessor for AnyCanvasElementView();
          v16 = v15;
          v17 = v16;
          if (!swift_dynamicCastClass())
          {
            v17 = v16;
            while (1)
            {
              v18 = [v17 superview];

              if (!v18)
              {
                break;
              }

              v17 = v18;
              if (swift_dynamicCastClass())
              {
                goto LABEL_12;
              }
            }

            goto LABEL_19;
          }

LABEL_12:

          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView);
          v19 = v17;
          v20 = v2;
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
LABEL_20:
            LOBYTE(Strong) = *(v2 + *((*v4 & *v2) + 0x580));
            return Strong;
          }

          LOBYTE(Strong) = 1;
        }

        else
        {

          LOBYTE(Strong) = 0;
        }
      }

      else
      {
        v25.receiver = v2;
        v25.super_class = type metadata accessor for ContainerCanvasElementView();
        v22 = [(UIGestureRecognizer *)&v25 gestureRecognizerShouldBegin:a1];

        LOBYTE(Strong) = v22;
      }
    }

    else
    {
      v23 = CanvasElementView.isScrollViewNavigationGestureRecognizer(_:)(a1);

      LOBYTE(Strong) = v23;
    }
  }

  return Strong;
}

uint64_t @objc ContainerCanvasElementView.gestureRecognizerShouldBegin(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = ContainerCanvasElementView.gestureRecognizerShouldBegin(_:)(v4);

  return a1 & 1;
}

uint64_t closure #1 in ContainerCanvasElementView.drawingDidChange(newDrawing:)(void *a1, uint64_t a2, uint64_t a3)
{
  KeyPath = a3;
  v4 = *a1;
  v22 = a1;
  v24 = v4;
  v5 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v23 = v20 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit15PKDrawingStructVGMd);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  v13 = OBJC_IVAR___PKDrawingCoherence_model;
  v21 = a2;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, a2 + v13, v9);
  v20[1] = type metadata accessor for PKDrawingStruct(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_11(&lazy protocol witness table cache variable for type PKDrawingStruct and conformance PKDrawingStruct, type metadata accessor for PKDrawingStruct);
  Capsule.Ref.import<A>(_:)();
  v15 = *(v10 + 8);
  v15(v12, v9);
  v16 = (v24 + *MEMORY[0x1E6995440]);
  v27 = *v16;
  v28 = v16[1];
  v29 = KeyPath;
  KeyPath = swift_getKeyPath();
  v14(v12, v21 + v13, v9);
  Capsule.rootID.getter();
  v15(v12, v9);
  v17 = v23;
  Ref.init(id:)();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  return Capsule.Ref.subscript.setter();
}

uint64_t closure #1 in ContainerCanvasElementView.drawingSelectionDidChange()(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4UUIDV_Tt1g5(*(a2 + 16), 0);
  v6 = *(type metadata accessor for UUID() - 8);
  specialized Sequence._copySequenceContents(initializing:)(&v11, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v3, a2);
  v8 = v7;

  outlined consume of Set<UIColor>.Iterator._Variant();
  if (v8 != v3)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x1E69E7CC0];
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  *a1 = v9;

  a1[4] = v5;
  return result;
}

double resize #1 <A>() in ContainerCanvasElementView.transformDrawing()@<D0>(void *a1@<X0>, CGFloat *a2@<X8>)
{
  [a1 drawingTransform];
  m21 = t1.m21;
  m22 = t1.m22;
  v31 = *&t1.m13;
  v32 = *&t1.m11;
  [a1 tileDrawingTransform];
  CGAffineTransformInvert(&t2, &t1);
  *&t1.m11 = v32;
  *&t1.m13 = v31;
  t1.m21 = m21;
  t1.m22 = m22;
  CGAffineTransformConcat(&v34, &t1, &t2);
  a = v34.a;
  b = v34.b;
  v27 = v34.b;
  v28 = v34.a;
  *&v32 = v34.c;
  tx = v34.tx;
  *&v31 = v34.d;
  ty = v34.ty;
  [a1 bounds];
  MidX = CGRectGetMidX(v36);
  [a1 bounds];
  MidY = CGRectGetMidY(v37);
  CGAffineTransformMakeTranslation(&t1, MidX, MidY);
  m11 = t1.m11;
  m12 = t1.m12;
  m13 = t1.m13;
  m14 = t1.m14;
  v14 = t1.m21;
  v15 = t1.m22;
  t2.a = a;
  t2.b = b;
  *&t2.c = v32;
  *&t2.d = v31;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v16 = v34.tx;
  v17 = v34.ty;
  v23 = *&v34.c;
  v25 = *&v34.a;
  t1.m11 = m11;
  t1.m12 = m12;
  t1.m13 = m13;
  t1.m14 = m14;
  t1.m21 = v14;
  t1.m22 = v15;
  CGAffineTransformInvert(&t2, &t1);
  *&t1.m11 = v25;
  *&t1.m13 = v23;
  t1.m21 = v16;
  t1.m22 = v17;
  CGAffineTransformConcat(&v34, &t1, &t2);
  v18 = v34.tx;
  v19 = v34.ty;
  v24 = *&v34.c;
  v26 = *&v34.a;
  v20 = [a1 tileContainerView];
  v21 = [v20 layer];

  *&t2.a = v26;
  *&t2.c = v24;
  t2.tx = v18;
  t2.ty = v19;
  CATransform3DMakeAffineTransform(&t1, &t2);
  [v21 setSublayerTransform_];

  *a2 = v28;
  a2[1] = v27;
  *(a2 + 2) = v32;
  *(a2 + 3) = v31;
  result = ty;
  a2[4] = tx;
  a2[5] = ty;
  return result;
}

void closure #1 in ContainerCanvasElementView.transformDrawing()(char a1, void *a2)
{
  if (a1)
  {
    v2 = [a2 tileContainerView];
    v3 = [v2 layer];

    v4 = *(MEMORY[0x1E69792E8] + 80);
    v8[4] = *(MEMORY[0x1E69792E8] + 64);
    v8[5] = v4;
    v5 = *(MEMORY[0x1E69792E8] + 112);
    v8[6] = *(MEMORY[0x1E69792E8] + 96);
    v8[7] = v5;
    v6 = *(MEMORY[0x1E69792E8] + 16);
    v8[0] = *MEMORY[0x1E69792E8];
    v8[1] = v6;
    v7 = *(MEMORY[0x1E69792E8] + 48);
    v8[2] = *(MEMORY[0x1E69792E8] + 32);
    v8[3] = v7;
    [v3 setSublayerTransform_];
  }
}

void ContainerCanvasElementView.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x540);
  v10 = *((*MEMORY[0x1E69E7D40] & v8) + 0x548);
  v11 = *((*MEMORY[0x1E69E7D40] & v8) + 0x550);
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ContainerCanvasElementView();
  objc_msgSendSuper2(&v16, sel_contextMenuInteraction_willPerformPreviewActionForMenuWithConfiguration_animator_, a1, a2, a3);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v13[5] = v12;
  v15[4] = partial apply for closure #1 in ContainerCanvasElementView.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:);
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v15[3] = &block_descriptor_59;
  v14 = _Block_copy(v15);

  [a3 addAnimations_];
  _Block_release(v14);
}

void closure #1 in ContainerCanvasElementView.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_unknownObjectWeakLoadStrong();

    if (v7)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        (*((*MEMORY[0x1E69E7D40] & *v7) + 0x8D8))(v8, a4);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void @objc ContainerCanvasElementView.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  ContainerCanvasElementView.contextMenuInteraction(_:willPerformPreviewActionForMenuWith:animator:)(v8, v9, a5);

  swift_unknownObjectRelease();
}

void ContainerCanvasElementView.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *(v0 + *((*v1 & *v0) + 0x578));
}

id ContainerCanvasElementView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContainerCanvasElementView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void @objc ContainerCanvasElementView.__ivar_destroyer(void *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *(a1 + *((*v2 & *a1) + 0x578));
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized ContainerCanvasElementView.canvas.setter()
{
  swift_unknownObjectWeakAssign();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x520);

  return v1();
}

void specialized ContainerCanvasElementView.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x558)) = 0;
  *(v0 + *((*v1 & *v0) + 0x560)) = 0;
  *(v0 + *((*v1 & *v0) + 0x568)) = 0;
  *(v0 + *((*v1 & *v0) + 0x570)) = MEMORY[0x1E69E7CC8];
  *(v0 + *((*v1 & *v0) + 0x578)) = 0;
  *(v0 + *((*v1 & *v0) + 0x580)) = 0;
  *(v0 + *((*v1 & *v0) + 0x588)) = 0;
  *(v0 + *((*v1 & *v0) + 0x590)) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined destroy of PKDrawingStruct(uint64_t a1)
{
  v2 = type metadata accessor for PKDrawingStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of Any?(v13);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ()(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> (), v4);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id PKPaperTextViewLinkingController.addLinkClient.getter()
{
  v1 = OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController____lazy_storage___addLinkClient;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController____lazy_storage___addLinkClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController____lazy_storage___addLinkClient);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D53F0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t PKPaperTextViewLinkingController.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PKPaperTextViewLinkingController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PKPaperTextViewLinkingController.delegate.modify;
}

void PKPaperTextViewLinkingController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *PKPaperTextViewLinkingController.__allocating_init(textView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_allocWithZone(type metadata accessor for SynapseLinkingEngine()) init];
  swift_getObjectType();
  v5 = specialized PKPaperTextViewLinkingController.init(textView:linkingEngine:)(a1, v4, objc_allocWithZone(v1));
  swift_deallocPartialClassInstance();
  return v5;
}

char *PKPaperTextViewLinkingController.init(textView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for SynapseLinkingEngine()) init];
  swift_getObjectType();
  v4 = specialized PKPaperTextViewLinkingController.init(textView:linkingEngine:)(a1, v3, objc_allocWithZone(ObjectType));
  swift_deallocPartialClassInstance();
  return v4;
}

UIMenu PKPaperTextViewLinkingController.linkItemsMenu.getter()
{
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_1D405CEB0;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_60;
  v2 = _Block_copy(aBlock);
  v3 = objc_opt_self();

  v4 = [v3 elementWithProvider_];
  _Block_release(v2);

  *(preferredElementSize + 32) = v4;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v9, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if ([Strong respondsToSelector_])
      {
        v8 = [v7 linkingControllerLinksMenuExcludedUserActivities_];
        swift_unknownObjectRelease();
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSUserActivity);
        v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
        v9 = swift_allocObject();
        v9[2] = v5;
        v9[3] = a1;
        v9[4] = a2;
        v10 = *&v5[OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_linkingEngine + 8];
        ObjectType = swift_getObjectType();
        v12 = swift_allocObject();
        *(v12 + 16) = partial apply for closure #1 in closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter;
        *(v12 + 24) = v9;
        v13 = *(v10 + 32);
        v14 = v5;

        v13(0, 1, v15, closure #1 in PKPaperTextViewLinkingController.fetchLinkableItems(excluding:completion:)partial apply, v12, ObjectType, v10);
      }

      swift_unknownObjectRelease();
    }

    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  return result;
}

uint64_t closure #1 in closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_72;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v12, v9, v16);
  _Block_release(v16);

  (*(v19 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v18);
}

void closure #1 in closure #1 in closure #1 in PKPaperTextViewLinkingController.linkItemsMenu.getter(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    preferredElementSize = PKPaperTextViewLinkingController.buildLinkMenuItems(for:)(a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D405CEB0;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu);
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    *(v8 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, aBlock[0]);
    a3(v8);

    v10 = *(a2 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v12 = MEMORY[0x1DA6CCED0](0xD000000000000028, 0x80000001D4080830);
    v13 = swift_allocObject();
    v13[2] = partial apply for implicit closure #1 in Analytics.recordDidPresentAddLinkMenu(linksCount:);
    v13[3] = v11;
    aBlock[4]._rawValue = partial apply for closure #1 in Analytics.sendEventLazy(key:payload:);
    aBlock[5]._rawValue = v13;
    aBlock[0]._rawValue = MEMORY[0x1E69E9820];
    aBlock[1]._rawValue = 1107296256;
    aBlock[2]._rawValue = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3]._rawValue = &block_descriptor_81;
    v14 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v14);
  }
}

uint64_t PKPaperTextViewLinkingController.buildLinkMenuItems(for:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v1;
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v6 = objc_opt_self();
    v7 = (a1 + 32);
    do
    {
      v8 = swift_allocObject();
      v9 = *v7++;
      *(v8 + 16) = v9;
      *(v8 + 32) = v4;
      aBlock[4] = partial apply for closure #1 in closure #1 in PKPaperTextViewLinkingController.buildLinkMenuItems(for:);
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
      aBlock[3] = &block_descriptor_87;
      v10 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v11 = v4;
      v12 = [v6 elementWithViewProvider_];
      _Block_release(v10);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    v3 = v16;
  }

  if (v3 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);

    v13 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement);
    v13 = v3;
  }

  return v13;
}

uint64_t PKPaperTextViewLinkingController.fetchLinkableItems(excluding:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_linkingEngine + 8);
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = *(v7 + 32);

  v10(0, 1, a1, partial apply for closure #1 in PKPaperTextViewLinkingController.fetchLinkableItems(excluding:completion:), v9, ObjectType, v7);
}

char *closure #1 in closure #1 in PKPaperTextViewLinkingController.buildLinkMenuItems(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(type metadata accessor for LinkMenuItemView());
  v5 = swift_unknownObjectRetain();
  v6 = LinkMenuItemView.init(linkItem:)(v5, a3);
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 16);
  v9 = v6;
  v8(v6, &protocol witness table for LinkMenuItemView, ObjectType, a3);
  (*(a3 + 72))(ObjectType, a3);
  *&v9[OBJC_IVAR____TtC8PaperKit16LinkMenuItemView_delegate + 8] = &protocol witness table for PKPaperTextViewLinkingController;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t PKPaperTextViewLinkingController.fetchLinkableItems(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_linkingEngine + 8);
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(v5 + 32);

  v8(0, 1, MEMORY[0x1E69E7CC0], closure #1 in PKPaperTextViewLinkingController.fetchLinkableItems(excluding:completion:)partial apply, v7, ObjectType, v5);
}

void PKPaperTextViewLinkingController.insertSynapseLink(_:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for SynapseLinkItem());
  v3 = SynapseLinkItem.init(synapseItem:)(a1);
  specialized PKPaperTextViewLinkingController.insertLink(_:completion:)(v3, 0, 0);
}

void PKPaperTextViewLinkingController.insertSynapseLink(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(type metadata accessor for SynapseLinkItem());
  v7 = SynapseLinkItem.init(synapseItem:)(a1);
  specialized PKPaperTextViewLinkingController.insertLink(_:completion:)(v7, a2, a3);
}

uint64_t PKPaperTextViewLinkingController.paperViewCanvas.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = 0;
    v1 = Strong;
    v2 = [Strong textStorage];
    v3 = [v2 length];

    v16[2] = &v18;
    v5 = [v1 textStorage];
    v6 = *MEMORY[0x1E69DB5F8];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = 1;
    *(v7 + 32) = partial apply for closure #1 in PKPaperTextViewLinkingController.paperViewCanvas.getter;
    *(v7 + 40) = v16;
    v8 = swift_allocObject();
    *(v8 + 16) = closure #1 in UITextView.enumeratePaperTextAttachments(in:createIfNeeded:options:using:)partial apply;
    *(v8 + 24) = v7;
    aBlock[4] = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_55;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v5 enumerateAttribute:v6 inRange:0 options:v3 usingBlock:{2, v9}];

    _Block_release(v9);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      return v18;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D38C4000, v13, v14, "Text view backpointer is nil", v15, 2u);
    MEMORY[0x1DA6D0660](v15, -1, -1);
  }

  return 0;
}

uint64_t closure #1 in PKPaperTextViewLinkingController.linkMenuItemViewDidReceiveTap(_:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v27 = v9;
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    if (a1)
    {
      v15 = a1;
      v26 = v6;
      v16 = v15;
      v17 = static OS_dispatch_queue.main.getter();
      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v16;
      v32 = partial apply for closure #1 in closure #1 in PKPaperTextViewLinkingController.linkMenuItemViewDidReceiveTap(_:);
      v33 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v31 = &block_descriptor_32_3;
      v19 = _Block_copy(&aBlock);
      v20 = v14;
      v21 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v6 = v26;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1DA6CD890](0, v12, v8, v19);
      _Block_release(v19);
    }

    else
    {
      v17 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      *(v22 + 24) = a3;
      v32 = partial apply for closure #2 in closure #1 in PKPaperTextViewLinkingController.linkMenuItemViewDidReceiveTap(_:);
      v33 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v31 = &block_descriptor_26_0;
      v23 = _Block_copy(&aBlock);
      v21 = v14;
      v24 = a3;

      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1DA6CD890](0, v12, v8, v23);
      _Block_release(v23);
    }

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v27);
  }

  return result;
}

void closure #1 in closure #1 in PKPaperTextViewLinkingController.linkMenuItemViewDidReceiveTap(_:)(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(type metadata accessor for SynapseLinkItem());
  v4 = SynapseLinkItem.init(synapseItem:)(a2);
  PKPaperTextViewLinkingController.insertLinkItem(_:)(v4);
}

void PKPaperTextViewLinkingController.insertLinkItem(_:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v5 = [v4 linkingController:v1 shouldAddSynapseLinkItem:a1];
  swift_unknownObjectRelease();
  if (v5)
  {
LABEL_6:
    specialized PKPaperTextViewLinkingController.insertLink(_:completion:)(a1, 0, 0);
    v6 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D40807F0);
    aBlock[4] = specialized closure #1 in Analytics.sendEventLazy(key:payload:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_38_0;
    v7 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v7);
  }
}

void closure #2 in closure #1 in PKPaperTextViewLinkingController.linkMenuItemViewDidReceiveTap(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v5 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v6 = [v5 linkingController:a1 shouldAddSynapseLinkItem:a2];
  swift_unknownObjectRelease();
  if (v6)
  {
LABEL_6:
    specialized PKPaperTextViewLinkingController.insertLink(_:completion:)(a2, 0, 0);
    v7 = MEMORY[0x1DA6CCED0](0xD000000000000020, 0x80000001D40807F0);
    aBlock[4] = specialized closure #1 in Analytics.sendEventLazy(key:payload:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_35_1;
    v8 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v8);
  }
}

uint64_t PKPaperTextViewLinkingController.synapseLinkItems.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v1 = Strong;
    v2 = [Strong textStorage];
    v3 = [v2 length];

    v16[2] = &v18;
    v5 = [v1 textStorage];
    v6 = *MEMORY[0x1E69DB5F8];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = 1;
    *(v7 + 32) = partial apply for closure #1 in PKPaperTextViewLinkingController.synapseLinkItems.getter;
    *(v7 + 40) = v16;
    v8 = swift_allocObject();
    *(v8 + 16) = partial apply for closure #1 in UITextView.enumeratePaperTextAttachments(in:createIfNeeded:options:using:);
    *(v8 + 24) = v7;
    aBlock[4] = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_16;
    v9 = _Block_copy(aBlock);
    v10 = v1;

    [v5 enumerateAttribute:v6 inRange:0 options:v3 usingBlock:{0, v9}];

    _Block_release(v9);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if ((v3 & 1) == 0)
    {
      return v18;
    }

    __break(1u);
    goto LABEL_9;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_9:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D38C4000, v13, v14, "Text view backpointer is nil", v15, 2u);
    MEMORY[0x1DA6D0660](v15, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t closure #1 in PKPaperTextViewLinkingController.synapseLinkItems.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - v9;
  v11 = *(a1 + direct field offset for Canvas.paperView);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x3F0);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v11[v12], v7);
  v13 = Capsule<>.links.getter();
  (*(v8 + 8))(v10, v7);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:

    v26 = MEMORY[0x1E69E7CC0];
    return specialized Array.append<A>(contentsOf:)(v26);
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v27[1] = a5;
    v16 = objc_opt_self();
    v17 = 0;
    v18 = *MEMORY[0x1E69D5440];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1DA6CE0C0](v17, v13);
      }

      else
      {
        v19 = *&v13[8 * v17 + 32];
      }

      v20 = v19;
      ++v17;
      v21 = type metadata accessor for SynapseLinkItem();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v22[OBJC_IVAR____TtC8PaperKit15SynapseLinkItem_synapseItem] = v20;
      v28.receiver = v22;
      v28.super_class = v21;
      v23 = v20;
      v24 = objc_msgSendSuper2(&v28, sel_init);
      v25 = [v16 defaultCenter];
      [v25 addObserver:v24 selector:sel_linkPreviewDidFinishLoadingWithNotification_ name:v18 object:v23];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v17);

    v26 = v29;
    return specialized Array.append<A>(contentsOf:)(v26);
  }

  __break(1u);
  return result;
}

id PKPaperTextViewLinkingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PKPaperTextViewLinkingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *specialized PKPaperTextViewLinkingController.init(textView:linkingEngine:)(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController____lazy_storage___addLinkClient] = 0;
  v7 = OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_analytics;
  type metadata accessor for Analytics();
  *&a3[v7] = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v8 = &a3[OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_linkingEngine];
  *v8 = a2;
  *(v8 + 1) = &protocol witness table for SynapseLinkingEngine;
  v15.receiver = a3;
  v15.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC8PaperKit32PKPaperTextViewLinkingController_linkingEngine + 8];
  v11 = swift_getObjectType();
  v12 = *(v10 + 16);
  v13 = v9;
  swift_unknownObjectRetain();
  v12(v9, &protocol witness table for PKPaperTextViewLinkingController, v11, v10);

  swift_unknownObjectRelease();
  return v13;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized PKPaperTextViewLinkingController.insertLink(_:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = PKPaperTextViewLinkingController.paperViewCanvas.getter();
  if (v6)
  {
    oslog = v6;
    _s8PaperKit10LinkLayoutV03addC4Item_2in10completionyAA0cF0_p_AA9AnyCanvasCyycSgtFZTf4ennn_nAA07SynapsecF0C_Tt2g5(a1, v6, a2, a3);
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);
    v8 = a1;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      v12 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit8LinkItem_pMd);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D38C4000, oslog, v9, "Unable to insert link %s because there isn't a paper canvas on the textView", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1DA6D0660](v11, -1, -1);
      MEMORY[0x1DA6D0660](v10, -1, -1);

      return;
    }
  }
}

uint64_t _s8PaperKit10LinkLayoutV03addC4Item_2in10completionyAA0cF0_p_AA9AnyCanvasCyycSgtFZTf4ennn_nAA07SynapsecF0C_Tt2g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Link(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd);
  v17 = *(v43 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v40 - v20;
  v21 = SynapseLinkItem.dataRepresentation.getter();
  v23 = v22;
  v44 = a2;
  [a2 frame];
  outlined copy of Data._Representation(v21, v23);
  Link.init(synapseDataRepresentation:frame:)(v21, v23, v16, 0.0, 0.0, 327.0, 72.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  if (aBlock[0] != 0.0)
  {
    aBlock[0] = 0.0;
    CRRegister.wrappedValue.setter();
  }

  outlined init with copy of Link(v16, v13);
  static CRKeyPath.unique.getter();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type Link and conformance Link, type metadata accessor for Link);
  v24 = v42;
  Capsule.init(_:id:)();
  outlined consume of Data._Representation(v21, v23);
  outlined destroy of Link(v16);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = v41;
  v27 = v43;
  (*(v17 + 16))(v41, v24, v43);
  v28 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v29 = swift_allocObject();
  v30 = v44;
  *(v29 + 16) = v44;
  (*(v17 + 32))(v29 + v28, v26, v27);
  v31 = (v29 + ((v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v45;
  v32 = v46;
  *v31 = v45;
  v31[1] = v32;
  *&aBlock[4] = partial apply for closure #1 in static LinkLayout.addLinkItem(_:in:completion:);
  *&aBlock[5] = v29;
  *&aBlock[0] = MEMORY[0x1E69E9820];
  *&aBlock[1] = 1107296256;
  *&aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  *&aBlock[3] = &block_descriptor_44_1;
  v34 = _Block_copy(aBlock);
  v35 = v30;
  outlined copy of (@escaping @callee_guaranteed (@unowned CGSize) -> (@unowned CGSize))?(v33, v32);

  v36 = v47;
  static DispatchQoS.unspecified.getter();
  *&aBlock[0] = MEMORY[0x1E69E7CC0];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v37 = v50;
  v38 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v36, v37, v34);
  _Block_release(v34);

  (*(v51 + 8))(v37, v38);
  (*(v48 + 8))(v36, v49);
  return (*(v17 + 8))(v24, v27);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of Link(uint64_t a1)
{
  v2 = type metadata accessor for Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in static LinkLayout.addLinkItem(_:in:completion:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit4LinkVGMd) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static LinkLayout.addLinkItem(_:in:completion:)(v3, v0 + v2, v4);
}

void partial apply for closure #1 in PKPaperTextViewLinkingController.paperViewCanvas.getter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(v4 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *v6;
  *v6 = Strong;

  *a4 = 1;
}

uint64_t KeyPathWrapper.isEqual(_:)(uint64_t a1)
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
  v17(&v29 - v15, v1 + OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path, v2, v14);
  v18 = *(v3 + 56);
  v18(v16, 0, 1, v2);
  outlined init with copy of Date?(v31, v33, &_sypSgMd);
  if (v34)
  {
    type metadata accessor for KeyPathWrapper();
    if (swift_dynamicCast())
    {
      v31 = v5;
      v19 = v32;
      (v17)(v12, &v32[OBJC_IVAR____TtC8PaperKitP33_F808299E7C487FAE28308AED5F0A446914KeyPathWrapper_path], v2);

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
      lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(&lazy protocol witness table cache variable for type CRKeyPath and conformance CRKeyPath);
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

id KeyPathWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KeyPathWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for KeyPathWrapper()
{
  result = type metadata singleton initialization cache for KeyPathWrapper;
  if (!type metadata singleton initialization cache for KeyPathWrapper)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void one-time initialization function for shared()
{
  type metadata accessor for GraphCanvasElementRenderedImageCache();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 16) = v1;
  v2 = v1;
  [v2 setCountLimit_];

  static GraphCanvasElementRenderedImageCache.shared = v0;
}

uint64_t lazy protocol witness table accessor for type CRKeyPath and conformance CRKeyPath(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRKeyPath();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double UnknownCanvasElement.frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path setter for UnknownCanvasElement.thumbnail : UnknownCanvasElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence7CRAssetVSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence7CRAssetVSgMd);
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence7CRAssetVSgMd);
}

uint64_t UnknownCanvasElement.thumbnail.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence7CRAssetVSgMd);
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence7CRAssetVSgMd);
}

uint64_t UnknownCanvasElement.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v8 - v4;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  memset(v8, 0, sizeof(v8));
  CRRegister.init(wrappedValue:)();
  type metadata accessor for UnknownCanvasElement(0);
  *&v8[0] = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v6 = type metadata accessor for CRAsset();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  outlined init with copy of Date?(v5, v2, &_s9Coherence7CRAssetVSgMd);
  lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CRAssetVSgMd);
  *&v8[0] = 0;
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

uint64_t (*UnknownCanvasElement.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t UnknownCanvasElement.$frame.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for UnknownCanvasElement.$frame : UnknownCanvasElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t UnknownCanvasElement.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*UnknownCanvasElement.$frame.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

double UnknownCanvasElement.rotation.getter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for UnknownCanvasElement.rotation : UnknownCanvasElement@<D0>(double *a1@<X8>)
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for UnknownCanvasElement.rotation : UnknownCanvasElement()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t UnknownCanvasElement.rotation.setter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*UnknownCanvasElement.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t UnknownCanvasElement.$rotation.getter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for UnknownCanvasElement.$rotation : UnknownCanvasElement()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for UnknownCanvasElement.$rotation : UnknownCanvasElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t UnknownCanvasElement.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*UnknownCanvasElement.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for UnknownCanvasElement(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*UnknownCanvasElement.thumbnail.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t UnknownCanvasElement.thumbnail.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for UnknownCanvasElement(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  return a1(v2);
}

uint64_t key path getter for UnknownCanvasElement.thumbnail : UnknownCanvasElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UnknownCanvasElement(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  return a4(v5);
}

uint64_t key path setter for UnknownCanvasElement.$thumbnail : UnknownCanvasElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t UnknownCanvasElement.$thumbnail.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*UnknownCanvasElement.$thumbnail.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for UnknownCanvasElement(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t UnknownCanvasElement.minAppVersion.getter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for UnknownCanvasElement.minAppVersion : UnknownCanvasElement@<X0>(void *a1@<X8>)
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for UnknownCanvasElement.minAppVersion : UnknownCanvasElement()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t UnknownCanvasElement.minAppVersion.setter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*UnknownCanvasElement.minAppVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t UnknownCanvasElement.$minAppVersion.getter()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for UnknownCanvasElement.$minAppVersion : UnknownCanvasElement()
{
  type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for UnknownCanvasElement.$minAppVersion : UnknownCanvasElement(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t UnknownCanvasElement.$minAppVersion.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for UnknownCanvasElement(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*UnknownCanvasElement.$minAppVersion.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for UnknownCanvasElement(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

BOOL UnknownCanvasElement.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v94 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v87 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v91 = &v78 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v93 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v78 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v92 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v83 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v85 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v78 - v29;
  v95 = type metadata accessor for UnknownCanvasElement.Partial(0);
  MEMORY[0x1EEE9AC00](v95);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UnknownCanvasElement.Partial(v2, v32, type metadata accessor for UnknownCanvasElement.Partial);
  v96 = a1;
  v33 = UnknownCanvasElement.Partial.canMerge(delta:)(a1);
  outlined destroy of UnknownCanvasElement.Partial(v32, type metadata accessor for UnknownCanvasElement.Partial);
  if (!v33)
  {
    return v33;
  }

  v80 = v33;
  v79 = v6;
  v81 = v4;
  outlined init with copy of Date?(v2, v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v34 = v2;
  v78 = v23;
  v35 = *(v23 + 48);
  v36 = v35(v30, 1, v22);
  outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v36 == 1)
  {
    v37 = v21;
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96, v34, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v38 = v34;
  }

  else
  {
    outlined init with copy of Date?(v96, v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v35(v27, 1, v22) == 1)
    {
      v37 = v21;
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
      v38 = v34;
    }

    else
    {
      v39 = v78;
      v40 = v82;
      (*(v78 + 32))(v82, v27, v22);
      v38 = v34;
      if (!v35(v34, 1, v22))
      {
        CRRegister.merge(delta:)();
      }

      v37 = v21;
      (*(v39 + 8))(v40, v22);
    }
  }

  v41 = v88;
  v42 = v95;
  v43 = v95[5];
  v44 = v37;
  outlined init with copy of Date?(v38 + v43, v37, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v45 = *(v92 + 48);
  v46 = v45(v37, 1, v41);
  outlined destroy of StocksKitCurrencyCache.Provider?(v44, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v47 = v42[5];
  v88 = v38;
  if (v46 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v47, v38 + v43, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v48 = v38;
  }

  else
  {
    v49 = v85;
    outlined init with copy of Date?(v96 + v47, v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    if (v45(v49, 1, v41) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
      v48 = v88;
    }

    else
    {
      v50 = v92;
      v51 = v83;
      (*(v92 + 32))(v83, v49, v41);
      v52 = v88;
      v53 = v45(v88 + v43, 1, v41);
      v48 = v52;
      if (!v53)
      {
        CRRegister.merge(delta:)();
      }

      (*(v50 + 8))(v51, v41);
    }
  }

  v54 = v95;
  v55 = v95[6];
  v56 = v89;
  outlined init with copy of Date?(v48 + v55, v89, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v57 = *(v93 + 48);
  v58 = v90;
  v59 = v57(v56, 1, v90);
  outlined destroy of StocksKitCurrencyCache.Provider?(v56, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v60 = v54[6];
  if (v59 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v60, v48 + v55, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  }

  else
  {
    v61 = v86;
    outlined init with copy of Date?(v96 + v60, v86, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    if (v57(v61, 1, v58) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
      v62 = v81;
      v48 = v88;
      goto LABEL_24;
    }

    v63 = v93;
    v64 = v84;
    (*(v93 + 32))(v84, v61, v58);
    v48 = v88;
    if (!v57(v88 + v55, 1, v58))
    {
      CRRegister.merge(delta:)();
    }

    (*(v63 + 8))(v64, v58);
  }

  v62 = v81;
LABEL_24:
  v65 = v95;
  v66 = v95[7];
  v67 = v91;
  outlined init with copy of Date?(v48 + v66, v91, &_s9Coherence10CRRegisterVySiGSgMd);
  v68 = v48;
  v69 = *(v94 + 48);
  v70 = v69(v67, 1, v62);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence10CRRegisterVySiGSgMd);
  v71 = v65[7];
  if (v70 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v96 + v71, v68 + v66, &_s9Coherence10CRRegisterVySiGSgMd);
    LOBYTE(v33) = v80;
  }

  else
  {
    v72 = v87;
    outlined init with copy of Date?(v96 + v71, v87, &_s9Coherence10CRRegisterVySiGSgMd);
    v73 = v69(v72, 1, v62);
    LOBYTE(v33) = v80;
    if (v73 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVySiGSgMd);
    }

    else
    {
      v74 = v62;
      v75 = v94;
      v76 = v79;
      (*(v94 + 32))(v79, v72, v74);
      if (!v69(v88 + v66, 1, v74))
      {
        CRRegister.merge(delta:)();
      }

      (*(v75 + 8))(v76, v74);
    }
  }

  return v33;
}

BOOL UnknownCanvasElement.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v59 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v59 - v28;
  outlined init with copy of Date?(a1, v25, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v26) == 1)
  {
    v22 = v25;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v31 = v70;
    v32 = v71;
    v33 = v69;
    goto LABEL_6;
  }

  (*(v27 + 32))(v29, v25, v26);
  outlined init with copy of Date?(v72, v22, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v30(v22, 1, v26) == 1)
  {
    (*(v27 + 8))(v29, v26);
    goto LABEL_5;
  }

  v51 = CRRegister.canMerge(delta:)();
  v52 = *(v27 + 8);
  v52(v29, v26);
  v52(v22, v26);
  v31 = v70;
  v32 = v71;
  v33 = v69;
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v34 = type metadata accessor for UnknownCanvasElement.Partial(0);
  outlined init with copy of Date?(a1 + v34[5], v17, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v35 = v66;
  v36 = *(v66 + 48);
  if (v36(v17, 1, v18) == 1)
  {
    v33 = v17;
    v37 = v67;
LABEL_10:
    outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v39 = v68;
    goto LABEL_11;
  }

  v71 = a1;
  v38 = v61;
  (*(v35 + 32))(v61, v17, v18);
  outlined init with copy of Date?(v72 + v34[5], v33, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v36(v33, 1, v18) == 1)
  {
    (*(v35 + 8))(v38, v18);
    v37 = v67;
    a1 = v71;
    goto LABEL_10;
  }

  v53 = CRRegister.canMerge(delta:)();
  v54 = *(v35 + 8);
  v54(v38, v18);
  v54(v33, v18);
  v37 = v67;
  v39 = v68;
  a1 = v71;
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  outlined init with copy of Date?(a1 + v34[6], v31, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v40 = v63;
  v41 = *(v63 + 48);
  if (v41(v31, 1, v39) == 1)
  {
    v32 = v31;
    v43 = v64;
    v42 = v65;
  }

  else
  {
    v44 = a1;
    (*(v40 + 32))(v37, v31, v39);
    outlined init with copy of Date?(v72 + v34[6], v32, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v45 = v41(v32, 1, v39);
    v46 = v40;
    v43 = v64;
    v42 = v65;
    if (v45 != 1)
    {
      v55 = CRRegister.canMerge(delta:)();
      v56 = *(v46 + 8);
      v56(v37, v39);
      v56(v32, v39);
      a1 = v44;
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v46 + 8))(v37, v39);
    a1 = v44;
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v32, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
LABEL_16:
  v47 = v62;
  outlined init with copy of Date?(a1 + v34[7], v62, &_s9Coherence10CRRegisterVySiGSgMd);
  v48 = *(v43 + 48);
  if (v48(v47, 1, v42) == 1)
  {
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s9Coherence10CRRegisterVySiGSgMd);
    return 1;
  }

  v49 = v59;
  (*(v43 + 32))(v59, v47, v42);
  v47 = v60;
  outlined init with copy of Date?(v72 + v34[7], v60, &_s9Coherence10CRRegisterVySiGSgMd);
  if (v48(v47, 1, v42) == 1)
  {
    (*(v43 + 8))(v49, v42);
    goto LABEL_19;
  }

  v57 = CRRegister.canMerge(delta:)();
  v58 = *(v43 + 8);
  v58(v49, v42);
  v58(v47, v42);
  return (v57 & 1) != 0;
}

uint64_t UnknownCanvasElement.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  outlined init with copy of Date?(v1, &v24 - v12, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v15 + 8))(v13, v14);
  }

  v16 = type metadata accessor for UnknownCanvasElement.Partial(0);
  outlined init with copy of Date?(v1 + v16[5], v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v18 + 8))(v10, v17);
  }

  outlined init with copy of Date?(v1 + v16[6], v7, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  }

  else
  {
    CRRegister.visitReferences(_:)();
    (*(v20 + 8))(v7, v19);
  }

  outlined init with copy of Date?(v1 + v16[7], v4, &_s9Coherence10CRRegisterVySiGSgMd);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v4, 1, v21) == 1)
  {
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s9Coherence10CRRegisterVySiGSgMd);
  }

  CRRegister.visitReferences(_:)();
  return (*(v22 + 8))(v4, v21);
}

uint64_t UnknownCanvasElement.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v12 = *(v11 - 8);
  v51 = *(v12 + 56);
  v52 = v11;
  v50 = v12 + 56;
  v51(a2, 1, 1);
  v13 = type metadata accessor for UnknownCanvasElement.Partial(0);
  v14 = v13[5];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v16 = *(v15 - 8);
  v48 = *(v16 + 56);
  v49 = v14;
  v47 = v16 + 56;
  v48(a2 + v14, 1, 1, v15);
  v17 = v13[6];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v19 = (*(v18 - 8) + 56);
  v44 = *v19;
  v45 = v17;
  v44(a2 + v17, 1, 1, v18);
  v20 = v13[7];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v58 = a2;
  v23(a2 + v20, 1, 1, v21);
  v25 = v57;
  dispatch thunk of CRDecoder.keyedContainer()();
  v57 = v25;
  if (v25)
  {

    v26 = v58;
    return outlined destroy of UnknownCanvasElement.Partial(v26, type metadata accessor for UnknownCanvasElement.Partial);
  }

  v39 = v18;
  v40 = v15;
  v38[0] = v24;
  v38[1] = v19;
  v42 = v20;
  v43 = v23;
  v41 = v21;
  v27 = v54;
  v28 = v55;
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    type metadata accessor for CGRect(0);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_12(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
    v29 = v53;
    v30 = v57;
    CRRegister.init(from:)();
    v31 = v30;
    v26 = v58;
    if (v30)
    {
      goto LABEL_12;
    }

    (v51)(v29, 0, 1, v52);
    outlined assign with take of UUID?(v29, v26, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v26 = v58;
    v31 = v57;
  }

  if (!dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    goto LABEL_10;
  }

  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(from:)();
  if (v31)
  {
LABEL_12:

    return outlined destroy of UnknownCanvasElement.Partial(v26, type metadata accessor for UnknownCanvasElement.Partial);
  }

  v48(v27, 0, 1, v40);
  outlined assign with take of UUID?(v27, v26 + v49, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
LABEL_10:
  if (dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
    lazy protocol witness table accessor for type CRAsset? and conformance <A> A?();
    CRRegister.init(from:)();
    v32 = v43;
    if (v31)
    {
      goto LABEL_12;
    }

    v44(v28, 0, 1, v39);
    outlined assign with take of UUID?(v28, v26 + v45, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  }

  else
  {
    v32 = v43;
  }

  v34 = dispatch thunk of CRDecoder.CRDTKeyedContainer.decoder(forKey:)();
  v36 = v41;
  v35 = v42;
  if (!v34)
  {
  }

  v37 = v46;
  CRRegister.init(from:)();

  if (!v31)
  {
    v32(v37, 0, 1, v36);
    return outlined assign with take of UUID?(v37, v26 + v35, &_s9Coherence10CRRegisterVySiGSgMd);
  }

  return outlined destroy of UnknownCanvasElement.Partial(v26, type metadata accessor for UnknownCanvasElement.Partial);
}

uint64_t UnknownCanvasElement.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = &v45 - v1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySiGMd);
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v45 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = v57;
  result = dispatch thunk of CREncoder.keyedContainer()();
  if (!v21)
  {
    v45 = v13;
    v46 = v10;
    v47 = v7;
    v23 = v55;
    v24 = v56;
    v57 = 0;
    outlined init with copy of Date?(v56, v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      (*(v18 + 32))(v20, v16, v17);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGRect> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      v25 = v57;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v18 + 8))(v20, v17);
      if (v25)
      {
      }

      v57 = 0;
    }

    v26 = type metadata accessor for UnknownCanvasElement.Partial(0);
    v27 = v46;
    outlined init with copy of Date?(v24 + v26[5], v46, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v28 = v53;
    v29 = v11;
    v30 = (*(v53 + 48))(v27, 1, v11);
    v31 = v23;
    v32 = v54;
    v33 = v47;
    if (v30 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v27, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v34 = v45;
      (*(v28 + 32))(v45, v27, v29);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CGFloat> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
      v35 = v57;
      dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
      (*(v28 + 8))(v34, v29);
      if (v35)
      {
      }

      v57 = 0;
      v33 = v47;
    }

    v36 = v56;
    v37 = v50;
    outlined init with copy of Date?(v56 + v26[6], v50, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
    v38 = (*(v32 + 48))(v37, 1, v31);
    v40 = v51;
    v39 = v52;
    if (v38 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v37, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGSgMd);
      goto LABEL_16;
    }

    (*(v32 + 32))(v33, v37, v31);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<CRAsset?> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
    v41 = v57;
    dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v33, v31);
    if (!v41)
    {
      v57 = 0;
LABEL_16:
      v42 = v36 + v26[7];
      v43 = v48;
      v44 = v49;
      outlined init with copy of Date?(v42, v48, &_s9Coherence10CRRegisterVySiGSgMd);
      if ((*(v39 + 48))(v43, 1, v44) == 1)
      {

        return outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence10CRRegisterVySiGSgMd);
      }

      else
      {
        (*(v39 + 32))(v40, v43, v44);
        lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<Int> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVySiGMd);
        dispatch thunk of CREncoder.CRDTKeyedContainer.encode<A>(_:forKey:)();
        (*(v39 + 8))(v40, v44);
      }
    }
  }

  return result;
}

uint64_t UnknownCanvasElement.shared(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t UnknownCanvasElement.render<A>(in:id:capsule:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return (specialized UnknownCanvasElement.render<A>(in:id:capsule:options:))(a1, a2, a4, a5, a6);
}

uint64_t specialized CanvasElement.renderThumbnail(in:)(uint64_t a1)
{
  v2[106] = v1;
  v2[105] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd);
  v2[107] = swift_task_alloc();
  v3 = type metadata accessor for CRAsset();
  v2[108] = v3;
  v2[109] = *(v3 - 8);
  v2[110] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderThumbnail(in:), 0, 0);
}

{
  *(*v1 + 904) = a1;

  return MEMORY[0x1EEE6DFA0](specialized CanvasElement.renderThumbnail(in:), 0, 0);
}

uint64_t specialized CanvasElement.renderThumbnail(in:)()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v0[111] = type metadata accessor for UnknownCanvasElement(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA7CRAssetVSgGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[107], &_s9Coherence7CRAssetVSgMd);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[105];
    (*(v0[109] + 32))(v0[110], v0[107], v0[108]);
    v7 = CGBitmapContextGetColorSpace(v6);
    if (v7)
    {
      v8 = v7;
      if (CGColorSpaceUsesExtendedRange(v7))
      {
        v9 = 1;
      }

      else
      {
        v9 = MEMORY[0x1DA6CEC30](v8);
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v0[105];
    v11 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
    v12 = specialized CanvasElement.maxDimensionInPixels(_:in:)(v10, v11);
    v13 = swift_task_alloc();
    v0[112] = v13;
    *v13 = v0;
    v13[1] = specialized CanvasElement.renderThumbnail(in:);

    return CRAsset.loadImage(maxDimensionInPixels:waitIfUnavailable:isHDRAllowed:)(v12, 0, v9);
  }
}

{
  v71 = v0;
  v1 = *(v0 + 904);
  if (v1)
  {
    v2 = *(v0 + 840);
    v3 = protocol witness for SignatureProvider.frame.getter in conformance Signature();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    angle = *(v0 + 832);
    CGContextSaveGState(v2);
    Width = CGImageGetWidth(v1);
    Height = CGImageGetHeight(v1);
    v73.origin.x = v3;
    v73.origin.y = v5;
    v73.size.width = v7;
    v68 = v7;
    v73.size.height = v9;
    v12 = CGRectGetWidth(v73);
    v74.origin.x = 0.0;
    v74.origin.y = 0.0;
    v74.size.width = Width;
    v74.size.height = Height;
    v13 = v12 / CGRectGetWidth(v74);
    v75.origin.x = v3;
    v75.origin.y = v5;
    v75.size.width = v7;
    v75.size.height = v9;
    v14 = CGRectGetHeight(v75);
    v76.origin.x = 0.0;
    v76.origin.y = 0.0;
    v76.size.width = Width;
    v76.size.height = Height;
    v15 = v14 / CGRectGetHeight(v76);
    if (v15 < v13)
    {
      v13 = v15;
    }

    v77.origin.x = v3;
    v77.origin.y = v5;
    v77.size.width = v7;
    v77.size.height = v9;
    MidX = CGRectGetMidX(v77);
    v78.origin.x = v3;
    v78.origin.y = v5;
    v78.size.width = v7;
    v69 = v9;
    v78.size.height = v9;
    v17 = v13 * Width;
    v18 = v13 * Height;
    v19 = MidX - v13 * Width * 0.5;
    v20 = CGRectGetMidY(v78) - v13 * Height * 0.5;
    v62 = v18;
    v66 = v20 - v18 * 0.0;
    v67 = v19 - v17 * 0.0;
    v79.origin.x = v19;
    v79.origin.y = v20;
    v79.size.width = v17;
    v79.size.height = v18;
    v21 = CGRectGetMidX(v79);
    v80.origin.x = v19;
    v80.origin.y = v20;
    v80.size.width = v17;
    v80.size.height = v18;
    MidY = CGRectGetMidY(v80);
    CGAffineTransformMakeRotation(&v70, angle);
    v59 = *&v70.a;
    *anglea = *&v70.c;
    tx = v70.tx;
    ty = v70.ty;
    CGAffineTransformMakeTranslation(&v70, -v21, -MidY);
    a = v70.a;
    b = v70.b;
    c = v70.c;
    d = v70.d;
    *(v0 + 64) = v59;
    v28 = v70.tx;
    v29 = v70.ty;
    *(v0 + 16) = a;
    *(v0 + 24) = b;
    *(v0 + 32) = c;
    *(v0 + 40) = d;
    *(v0 + 48) = v28;
    *(v0 + 56) = v29;
    *(v0 + 80) = *anglea;
    *(v0 + 96) = tx;
    *(v0 + 104) = ty;
    CGAffineTransformConcat(&v70, (v0 + 16), (v0 + 64));
    *angleb = *&v70.a;
    v61 = *&v70.c;
    *(v0 + 112) = a;
    v31 = v70.tx;
    v30 = v70.ty;
    *(v0 + 120) = b;
    *(v0 + 128) = c;
    *(v0 + 136) = d;
    *(v0 + 144) = v28;
    *(v0 + 152) = v29;
    CGAffineTransformInvert(&v70, (v0 + 112));
    v32 = *&v70.a;
    v33 = *&v70.c;
    v34 = *&v70.tx;
    *(v0 + 160) = *angleb;
    *(v0 + 176) = v61;
    *(v0 + 192) = v31;
    *(v0 + 200) = v30;
    *(v0 + 208) = v32;
    *(v0 + 224) = v33;
    *(v0 + 240) = v34;
    CGAffineTransformConcat(&v70, (v0 + 160), (v0 + 208));
    v35 = *&v70.c;
    v36 = *&v70.tx;
    *(v0 + 304) = *&v70.a;
    *(v0 + 256) = v17;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    *(v0 + 280) = v62;
    *(v0 + 288) = v67;
    *(v0 + 296) = v66;
    *(v0 + 320) = v35;
    *(v0 + 336) = v36;
    CGAffineTransformConcat(&v70, (v0 + 256), (v0 + 304));
    v37 = *&v70.c;
    v38 = *&v70.tx;
    *(v0 + 352) = *&v70.a;
    *(v0 + 368) = v37;
    *(v0 + 384) = v38;
    CGContextConcatCTM(v2, (v0 + 352));
    v81.origin.x = 0.0;
    v81.origin.y = 0.0;
    v81.size.width = 1.0;
    v81.size.height = 1.0;
    MinY = CGRectGetMinY(v81);
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = 1.0;
    v82.size.height = 1.0;
    MaxY = CGRectGetMaxY(v82);
    *(v0 + 400) = 0x3FF0000000000000;
    *(v0 + 408) = 0;
    *(v0 + 416) = 0;
    *(v0 + 432) = 0;
    *(v0 + 440) = 0;
    *(v0 + 424) = 0x3FF0000000000000;
    *(v0 + 448) = 0x3FF0000000000000;
    *(v0 + 456) = 0;
    *(v0 + 464) = 0;
    *(v0 + 472) = 0xBFF0000000000000;
    *(v0 + 480) = 0;
    *(v0 + 488) = MinY + MaxY;
    CGAffineTransformConcat(&v70, (v0 + 400), (v0 + 448));
    v41 = *&v70.c;
    v42 = *&v70.tx;
    *(v0 + 496) = *&v70.a;
    *(v0 + 512) = v41;
    *(v0 + 528) = v42;
    CGContextConcatCTM(v2, (v0 + 496));
    if (v68 < 0.0)
    {
      v43 = *(v0 + 840);
      v83.origin.x = 0.0;
      v83.origin.y = 0.0;
      v83.size.width = 1.0;
      v83.size.height = 1.0;
      MinX = CGRectGetMinX(v83);
      v84.origin.x = 0.0;
      v84.origin.y = 0.0;
      v84.size.width = 1.0;
      v84.size.height = 1.0;
      MaxX = CGRectGetMaxX(v84);
      *(v0 + 688) = 0x3FF0000000000000;
      *(v0 + 696) = 0u;
      *(v0 + 712) = 0x3FF0000000000000;
      *(v0 + 720) = 0u;
      *(v0 + 736) = 0xBFF0000000000000;
      *(v0 + 744) = 0u;
      *(v0 + 760) = 0x3FF0000000000000;
      *(v0 + 768) = MinX + MaxX;
      *(v0 + 776) = 0;
      CGAffineTransformConcat(&v70, (v0 + 688), (v0 + 736));
      v46 = *&v70.c;
      v47 = *&v70.tx;
      *(v0 + 784) = *&v70.a;
      *(v0 + 800) = v46;
      *(v0 + 816) = v47;
      CGContextConcatCTM(v43, (v0 + 784));
    }

    if (v69 < 0.0)
    {
      v48 = *(v0 + 840);
      v85.origin.x = 0.0;
      v85.origin.y = 0.0;
      v85.size.width = 1.0;
      v85.size.height = 1.0;
      v49 = CGRectGetMinY(v85);
      v86.origin.x = 0.0;
      v86.origin.y = 0.0;
      v86.size.width = 1.0;
      v86.size.height = 1.0;
      v50 = CGRectGetMaxY(v86);
      *(v0 + 544) = 0x3FF0000000000000;
      *(v0 + 552) = 0u;
      *(v0 + 568) = 0x3FF0000000000000;
      *(v0 + 576) = 0u;
      *(v0 + 592) = 0x3FF0000000000000;
      *(v0 + 600) = 0u;
      *(v0 + 616) = 0xBFF0000000000000;
      *(v0 + 624) = 0;
      *(v0 + 632) = v49 + v50;
      CGAffineTransformConcat(&v70, (v0 + 544), (v0 + 592));
      v51 = *&v70.c;
      v52 = *&v70.tx;
      *(v0 + 640) = *&v70.a;
      *(v0 + 656) = v51;
      *(v0 + 672) = v52;
      CGContextConcatCTM(v48, (v0 + 640));
    }

    v53 = *(v0 + 880);
    v54 = *(v0 + 872);
    v55 = *(v0 + 864);
    v56 = *(v0 + 840);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = 1.0;
    v87.size.height = 1.0;
    CGContextRef.draw(_:in:byTiling:)(v1, v87, 0);
    CGContextRestoreGState(v56);

    (*(v54 + 8))(v53, v55);
  }

  else
  {
    (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
  }

  v57 = *(v0 + 8);

  return v57();
}