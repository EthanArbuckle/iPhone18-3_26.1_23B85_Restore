unint64_t lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel()
{
  result = lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel)
  {
    type metadata accessor for ReactionPickerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel);
  }

  return result;
}

uint64_t CustomReactionPicker.$model.getter()
{
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();

  return EnvironmentObject.projectedValue.getter();
}

id CustomReactionPicker.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for CustomReactionPickerEntryView());

  return [v0 init];
}

uint64_t CustomReactionPicker.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*a3 + 368);

    v6 = v4(v5);
    v8 = v7;

    return (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v6, v8);
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t CustomReactionPicker.init()()
{
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();

  return EnvironmentObject.init()();
}

unint64_t lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker()
{
  result = lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker;
  if (!lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker;
  if (!lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomReactionPicker and conformance CustomReactionPicker);
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance CustomReactionPicker()
{
  v0 = objc_allocWithZone(type metadata accessor for CustomReactionPickerEntryView());

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance CustomReactionPicker(void *a1)
{
  if (*v1)
  {
    v3 = *(**v1 + 368);

    v5 = v3(v4);
    v7 = v6;

    return (*((*MEMORY[0x277D85000] & *a1) + 0x60))(v5, v7);
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CustomReactionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CustomReactionPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance CustomReactionPicker()
{
  lazy protocol witness table accessor for type CustomReactionPicker and conformance CustomReactionPicker();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for CustomReactionPicker(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for CustomReactionPicker(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ReactionPickerBubble.model.getter(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t ReactionPickerBubble.$model.getter()
{
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);

  return EnvironmentObject.projectedValue.getter();
}

uint64_t ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v35 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4030800000000000;
  v17[16] = 0;
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_APyAA6ZStackVyAA012_ConditionalN0VyAPyAwA013_TraitWritingU0VyAA010TransitionX3KeyVGGAPyAPyAPyAQ13MoreReactionsVAA12_ScaleEffectVGAVGA5_GGGAUySSSgGGtGGMd) + 44)];
  v38 = a1;
  closure #1 in ReactionPickerBubble.body.getter(a1, a2, a3, a4, v18);
  v19 = *MEMORY[0x277CDFA00];
  v20 = type metadata accessor for DynamicTypeSize();
  (*(*(v20 - 8) + 104))(v13, v19, v20);
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v37 = a3;
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ReactionButton, _AnimationModifier<Bool>>>, ModifiedContent<ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>>>, _AnimationModifier<String?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd);
    v36 = a2;
    v22 = v38;
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of NSObject?(v13, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    outlined destroy of NSObject?(v17, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd);
    v23 = swift_allocObject();
    v24 = v36;
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    v25 = v37 & 1;
    *(v23 + 32) = v37 & 1;
    *(v23 + 40) = a4;
    v26 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMd) + 36));
    *v26 = partial apply for closure #2 in ReactionPickerBubble.body.getter;
    v26[1] = v23;
    v26[2] = 0;
    v26[3] = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v24;
    *(v27 + 32) = v25;
    *(v27 + 40) = a4;
    v28 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMd) + 36));
    *v28 = 0;
    v28[1] = 0;
    v28[2] = partial apply for closure #3 in ReactionPickerBubble.body.getter;
    v28[3] = v27;
    swift_retain_n();
    swift_retain_n();
    LOBYTE(v27) = static Edge.Set.all.getter();
    v29 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMd) + 36);
    *v29 = v27;
    *(v29 + 8) = xmmword_23B758980;
    *(v29 + 24) = xmmword_23B758990;
    *(v29 + 40) = 0;
    v30 = static Alignment.bottomTrailing.getter();
    v32 = v31;
    v33 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMd) + 36);
    closure #4 in ReactionPickerBubble.body.getter(v22, v24, v25, a4, v33);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMd);
    v34 = (v33 + *(result + 36));
    *v34 = v30;
    v34[1] = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v50 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGGMd);
  v52 = *(v9 - 8);
  v53 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v54 = &v45 - v14;
  if (a1)
  {
    v15 = *(*a1 + 272);

    v17 = v15(v16);
    v18 = specialized _copySequenceToContiguousArray<A>(_:)(v17);

    *&v75 = v18;
    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v20 = a3 & 1;
    *(v19 + 32) = v20;
    *(v19 + 40) = a4;
    *(v19 + 48) = xmmword_23B7589A0;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in closure #1 in ReactionPickerBubble.body.getter;
    *(v21 + 24) = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySi6offset_SS7elementtGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [(offset: Int, element: String)] and conformance [A], &_sSaySi6offset_SS7elementtGMd);
    lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    v22 = static Alignment.center.getter();
    v48 = v23;
    KeyPath = v22;
    closure #2 in closure #1 in ReactionPickerBubble.body.getter(a1, v20, a4, &v75);
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v61 = v75;
    v62 = v76;
    v68 = v80;
    v67[2] = v77;
    v67[3] = v78;
    v67[4] = v79;
    v67[0] = v75;
    v67[1] = v76;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v61, v69, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMd);
    v24 = outlined destroy of NSObject?(v67, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingL0VyAA010TransitionM3KeyVGGAEyAEyAEyAF13MoreReactionsVAA12_ScaleEffectVGAKGAQGGMd);
    v57 = v63;
    v58 = v64;
    v59 = v65;
    v60 = v66;
    v55 = v61;
    v56 = v62;
    MEMORY[0x23EEA6200](v24, 0.5, 0.7, 0.0);
    v47 = Animation.speed(_:)();

    v46 = (*(*a1 + 224))(v25);
    v27 = v26;

    v29 = v51;
    v28 = v52;
    v30 = *(v52 + 16);
    v31 = v53;
    v30(v51, v54, v53);
    v32 = v50;
    v30(v50, v29, v31);
    v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_AHyAA6ZStackVyAA012_ConditionalH0VyAHyAoA013_TraitWritingO0VyAA010TransitionR3KeyVGGAHyAHyAHyAI13MoreReactionsVAA12_ScaleEffectVGANGAYGGGAMySSSgGGtMd) + 48)];
    v35 = v48;
    v34 = KeyPath;
    *&v69[0] = KeyPath;
    *(&v69[0] + 1) = v48;
    LOBYTE(v73) = v60;
    v70 = v57;
    v71 = v58;
    v72 = v59;
    v36 = v55;
    v69[1] = v55;
    v69[2] = v56;
    v38 = v46;
    v37 = v47;
    *(&v73 + 1) = v47;
    *&v74 = v46;
    *(&v74 + 1) = v27;
    v39 = v56;
    *v33 = v69[0];
    *(v33 + 1) = v36;
    v40 = v74;
    v41 = v72;
    *(v33 + 6) = v73;
    *(v33 + 7) = v40;
    v42 = v70;
    *(v33 + 4) = v71;
    *(v33 + 5) = v41;
    *(v33 + 2) = v39;
    *(v33 + 3) = v42;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v69, &v75, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMd);
    v43 = *(v28 + 8);
    v43(v54, v31);
    *&v75 = v34;
    *(&v75 + 1) = v35;
    v78 = v57;
    v79 = v58;
    v80 = v59;
    v81 = v60;
    v76 = v55;
    v77 = v56;
    v82 = v37;
    v83 = v38;
    v84 = v27;
    outlined destroy of NSObject?(&v75, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA012_ConditionalD0VyACyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGACyACyACyAH13MoreReactionsVAA12_ScaleEffectVGAMGASGGGALySSSgGGMd);
    return (v43)(v29, v31);
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  State.wrappedValue.getter();
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v8 = Animation.delay(_:)();

  result = State.wrappedValue.getter();
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = v11;
  *(a3 + 40) = v8;
  *(a3 + 48) = v11;
  return result;
}

uint64_t closure #2 in closure #1 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v79 = a2;
  v7 = type metadata accessor for OpacityTransition();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v80 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for ScaleTransition();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v72[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE8combined4withQrqd___tAaBRd__lFQOyAA05ScaleC0V_AA07OpacityC0VQo_Md);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  if (a1)
  {
    v82 = v12;
    v83 = v8;
    v84 = v23;
    v81 = v11;
    v85 = a4;
    v78 = &v72[-v21];
    v86 = v7;
    v87 = v22;
    v88 = v20;
    v24 = *(*a1 + 224);
    v25 = swift_retain_n();
    v26 = v24(v25);
    if (v27 == 0.0)
    {
    }

    else
    {
      v28 = v26;
      v29 = v27;
      v30 = (*a1 + 272);
      v31 = *v30;
      v32 = (*v30)();
      v77 = v28;
      *&v101 = v28;
      *(&v101 + 1) = v29;
      MEMORY[0x28223BE20](v32, v33);
      *&v72[-16] = &v101;
      LOBYTE(v28) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v72[-32], v32);

      if ((v28 & 1) == 0)
      {
        v56 = v79 & 1;
        LOBYTE(v101) = v79 & 1;
        *(&v101 + 1) = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
        State.wrappedValue.getter();
        v79 = v91;
        type metadata accessor for ReactionPickerViewModel();
        lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
        v76 = EnvironmentObject.init()();
        v75 = v57;
        static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
        v31();

        v74 = Animation.delay(_:)();

        LOBYTE(v101) = v56;
        *(&v101 + 1) = a3;
        State.wrappedValue.getter();
        v73 = v91;
        static UnitPoint.center.getter();
        ScaleTransition.init(_:anchor:)();
        v58 = v80;
        OpacityTransition.init()();
        v59 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, MEMORY[0x277CDFAE8]);
        v60 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
        v61 = v78;
        v62 = v81;
        v63 = v86;
        Transition.combined<A>(with:)();
        (*(v83 + 8))(v58, v63);
        (*(v82 + 8))(v15, v62);
        v64 = v87;
        v65 = v88;
        (*(v87 + 16))(v84, v61, v88);
        *&v101 = v62;
        *(&v101 + 1) = v63;
        *&v102 = v59;
        *(&v102 + 1) = v60;
        swift_getOpaqueTypeConformance2();
        v66 = AnyTransition.init<A>(_:)();
        (*(v64 + 8))(v61, v65);
        v89 = 0;
        v91 = v76;
        v92 = v75;
        v93 = v77;
        v94 = v29;
        LOBYTE(v95) = v79;
        v96 = v74;
        LOBYTE(v97) = v73;
        v98 = v66;
        v99 = v90;
        v100 = 0;
LABEL_10:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMd);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMd);
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
        lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
        result = _ConditionalContent<>.init(storage:)();
        v68 = v104;
        v69 = v105;
        v70 = v102;
        v71 = v85;
        *(v85 + 32) = v103;
        *(v71 + 48) = v68;
        *(v71 + 64) = v69;
        *(v71 + 80) = v106;
        *v71 = v101;
        *(v71 + 16) = v70;
        return result;
      }
    }

    v34 = FocusState.init<>()();
    v77 = v35;
    v37 = v36;
    v38 = v79 & 1;
    LOBYTE(v101) = v79 & 1;
    *(&v101 + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    v39 = v91;
    static UnitPoint.center.getter();
    v41 = v40;
    v43 = v42;
    LODWORD(v76) = v34 & 1;
    v79 = v37 & 1;
    v44 = 1.0;
    v45 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    (*(*a1 + 272))(v45);

    if (!v39)
    {
      v44 = 0.0;
    }

    v75 = Animation.delay(_:)();

    LOBYTE(v101) = v38;
    *(&v101 + 1) = a3;
    State.wrappedValue.getter();
    v46 = v91;
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    v47 = v80;
    OpacityTransition.init()();
    v48 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, MEMORY[0x277CDFAE8]);
    v49 = lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, MEMORY[0x277CE0068]);
    v50 = v78;
    v51 = v81;
    v52 = v86;
    Transition.combined<A>(with:)();
    (*(v83 + 8))(v47, v52);
    (*(v82 + 8))(v15, v51);
    v53 = v87;
    v54 = v88;
    (*(v87 + 16))(v84, v50, v88);
    *&v101 = v51;
    *(&v101 + 1) = v52;
    *&v102 = v48;
    *(&v102 + 1) = v49;
    swift_getOpaqueTypeConformance2();
    v55 = AnyTransition.init<A>(_:)();
    (*(v53 + 8))(v50, v54);
    LOBYTE(v90) = 1;
    LOBYTE(v91) = v76;
    v92 = v77;
    LOBYTE(v93) = v79;
    v94 = v44;
    v95 = v44;
    v96 = v41;
    v97 = v43;
    v98 = v75;
    LOBYTE(v99) = v46;
    *(&v99 + 1) = v55;
    v100 = 1;
    goto LABEL_10;
  }

  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in ReactionPickerBubble.body.getter()
{
  return partial apply for closure #2 in ReactionPickerBubble.body.getter();
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
  return State.wrappedValue.setter();
}

uint64_t closure #4 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a4;
  LODWORD(v47) = a3;
  v45 = a2;
  v51 = a5;
  v6 = type metadata accessor for Capsule();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ScaledShapeVyAA7CapsuleVGMd);
  MEMORY[0x28223BE20](v46, v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
  v18 = MEMORY[0x28223BE20](v50, v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v45 - v22;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA14GeometryReaderVyAA08ModifiedD0VyAA10_ShapeViewVyAA06ScaledI0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGAIyAKyAMyAA7CapsuleVGASGAWG_GMd);
  MEMORY[0x28223BE20](v48, v24);
  v26 = (&v45 - v25);
  if (a1)
  {
    v27 = *(*a1 + 176);

    if ((v27(v28) & 1) != 0 && (v29 = (*(*a1 + 320))(), , !v29))
    {
      v43 = swift_allocObject();
      v44 = v45;
      *(v43 + 16) = a1;
      *(v43 + 24) = v44;
      *(v43 + 32) = v47 & 1;
      *(v43 + 40) = v49;
      *v26 = partial apply for closure #1 in closure #4 in ReactionPickerBubble.body.getter;
      v26[1] = v43;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd);
      lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd);
      lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {

      v30 = *MEMORY[0x277CE0118];
      v31 = type metadata accessor for RoundedCornerStyle();
      (*(*(v31 - 8) + 104))(v9, v30, v31);
      v32 = v47 & 1;
      v53 = v47 & 1;
      v47 = v23;
      v33 = v26;
      v34 = v49;
      v54 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
      State.wrappedValue.getter();
      if (v52)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.1;
      }

      outlined init with take of Capsule(v9, v12);
      v36 = v46;
      v37 = &v12[*(v46 + 36)];
      *v37 = v35;
      v37[1] = v35;
      *&v12[*(v36 + 40)] = xmmword_23B7589B0;
      static Material.thick.getter();
      outlined init with take of ScaledShape<Capsule>(v12, v16, &_s7SwiftUI11ScaledShapeVyAA7CapsuleVGMd);
      *&v16[*(v13 + 56)] = 256;
      v38 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
      v53 = v32;
      v54 = v34;
      State.wrappedValue.getter();
      v39 = v52;
      outlined init with take of ScaledShape<Capsule>(v16, v20, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd);
      v40 = &v20[*(v50 + 36)];
      *v40 = v38;
      v40[8] = v39;
      v41 = v47;
      outlined init with take of ScaledShape<Capsule>(v20, v47, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
      outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v41, v33, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd);
      lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>> and conformance GeometryReader<A>, &_s7SwiftUI14GeometryReaderVyAA15ModifiedContentVyAA10_ShapeViewVyAA06ScaledG0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGGMd);
      lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of NSObject?(v41, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
    }
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #4 in ReactionPickerBubble.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38[1] = a2;
  v39 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMd);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (v38 - v10);
  v12 = type metadata accessor for NamedCoordinateSpace();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0xD000000000000019;
  v42 = 0x800000023B75C370;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  GeometryProxy.frame<A>(in:)();
  v18 = v17;
  v20 = v19;
  (*(v13 + 8))(v16, v12);
  if (a1)
  {
    v21 = *(*a1 + 128);

    v23 = v21(v22) - v18;
    (*(*a1 + 128))();
    v25 = v24;

    v27 = destructiveProjectEnumData for GroupActivitySharingResult(v26, v23, v25 - v20);
    v29 = v28;
    GeometryProxy.size.getter();
    v31 = v30 - v27;
    LOBYTE(v41) = a3 & 1;
    v42 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd);
    State.wrappedValue.getter();
    if (v40)
    {
      v32 = 1.0;
    }

    else
    {
      v32 = 0.1;
    }

    static Material.thick.getter();
    *v11 = xmmword_23B7589C0;
    v11[2] = v31;
    *(v11 + 3) = v29;
    v11[4] = v32;
    v11[5] = v32;
    *(v11 + 3) = xmmword_23B7589B0;
    *(v11 + *(v8 + 56)) = 256;
    v33 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    LOBYTE(v41) = a3 & 1;
    v42 = a4;
    State.wrappedValue.getter();
    v34 = v40;
    v35 = v39;
    outlined init with take of ScaledShape<Capsule>(v11, v39, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGMd);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
    v37 = v35 + *(result + 36);
    *v37 = v33;
    *(v37 + 8) = v34;
  }

  else
  {
    type metadata accessor for ReactionPickerViewModel();
    lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t ReactionPickerBubble.init()()
{
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);
  v0 = EnvironmentObject.init()();
  State.init(wrappedValue:)();
  return v0;
}

uint64_t default argument 0 of ReactionPickerBubble.init(model:)()
{
  type metadata accessor for ReactionPickerViewModel();
  lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(&lazy protocol witness table cache variable for type ReactionPickerViewModel and conformance ReactionPickerViewModel, type metadata accessor for ReactionPickerViewModel);

  return EnvironmentObject.init()();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ReactionPickerBubble(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ReactionPickerBubble(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGAA011_BackgroundW0VyA3_yAA14GeometryReaderVyACyAA06_ShapeE0VyAA11ScaledShapeVyAT13PopoverBubbleVGAA8MaterialVGAYGGACyA40_yA42_yAA7CapsuleVGA47_GAYGGGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA19_ConditionalContentVyAA14GeometryReaderVyAA08ModifiedF0VyAA10_ShapeViewVyAA06ScaledJ0Vy22_GroupActivities_UIKit13PopoverBubbleVGAA8MaterialVGAA010_AnimationD0VySbGGGAIyAKyAMyAA7CapsuleVGASGAWGGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout>, _BackgroundModifier<_ConditionalContent<GeometryReader<ModifiedContent<_ShapeView<ScaledShape<PopoverBubble>, Material>, _AnimationModifier<Bool>>>, ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGA29_GMd);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicgH0O5BoundRtd__lFQOyAA6HStackVyAA05TupleE0VyAA7ForEachVySaySi6offset_SS7elementtGSiACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ACyAA6ZStackVyAA012_ConditionalD0VyACyAzA013_TraitWritingW0VyAA010TransitionZ3KeyVGGACyACyACyAT13MoreReactionsVAA12_ScaleEffectVGAYGA8_GGGAXySSSgGGtGG_s19PartialRangeThroughVyAHGQo_AA017_AppearanceActionW0VGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(ForEach<[(offset: Int, element: String)], Int, ModifiedContent<ReactionButton, _AnimationModifier<Bool>>>, ModifiedContent<ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>>>, _AnimationModifier<String?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA7ForEachVySaySi6offset_SS7elementtGSiAA15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGG_ALyAA6ZStackVyAA012_ConditionalK0VyALyAsA013_TraitWritingR0VyAA010TransitionU3KeyVGGALyALyALyAM13MoreReactionsVAA12_ScaleEffectVGARGA1_GGGAQySSSgGGtGGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of Capsule(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA06ScaledE0VyAA7CapsuleVGAA8MaterialVGAA18_AnimationModifierVySbGGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _ShapeView<ScaledShape<Capsule>, Material> and conformance _ShapeView<A, B>, &_s7SwiftUI10_ShapeViewVyAA06ScaledC0VyAA7CapsuleVGAA8MaterialVGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with take of ScaledShape<Capsule>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_SS7elementtGMd);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }

  return v2;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGMd);
    lazy protocol witness table accessor for type ReactionButton and conformance ReactionButton();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ReactionButton and conformance ReactionButton()
{
  result = lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton;
  if (!lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionButton and conformance ReactionButton);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ReactionPickerViewModel and conformance ReactionPickerViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit14ReactionButtonVAA18_AnimationModifierVySbGGAA013_TraitWritingK0VyAA010TransitionL3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ReactionButton, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ReactionButton, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGAA013_TraitWritingM0VyAA010TransitionN3KeyVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA010TransitionC3KeyVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGAA18_AnimationModifierVySbGGMd);
    lazy protocol witness table accessor for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<MoreReactions, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit13MoreReactionsVAA12_ScaleEffectVGMd);
    lazy protocol witness table accessor for type MoreReactions and conformance MoreReactions();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MoreReactions, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MoreReactions and conformance MoreReactions()
{
  result = lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions;
  if (!lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MoreReactions and conformance MoreReactions);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id GroupActivityPlaceholderSharingController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t key path getter for GroupActivityPlaceholderSharingController.placeholderControllerDidCancel : GroupActivityPlaceholderSharingController@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed GroupActivityPlaceholderSharingController) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for GroupActivityPlaceholderSharingController.placeholderControllerDidCancel : GroupActivityPlaceholderSharingController(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupActivityPlaceholderSharingController) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  sub_23B6FD304(v3);
  return v7(v6, v5);
}

uint64_t GroupActivityPlaceholderSharingController.placeholderControllerDidCancel.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  swift_beginAccess();
  v2 = *v1;
  sub_23B6FD304(*v1);
  return v2;
}

uint64_t GroupActivityPlaceholderSharingController.placeholderControllerDidCancel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6);
}

id GroupActivityPlaceholderSharingController.init()()
{
  v1 = &v0[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  *&v0[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  return objc_msgSendSuper2(&v4, sel_initWithRootViewController_, v2);
}

Swift::Void __swiftcall GroupActivityPlaceholderSharingController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v1 action:sel_cancelButtonTapped_];
  v4 = [*&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_rootViewController] navigationItem];
  [v4 setRightBarButtonItem_];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1);
}

Swift::Void __swiftcall GroupActivityPlaceholderSharingController.viewDidLoad()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 systemGreenColor];
  [v2 setTintColor_];

  v5 = [v0 navigationBar];
  v6 = [v0 navigationBar];
  v7 = [v6 standardAppearance];

  [v5 setScrollEdgeAppearance_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = v8;
  [v8 setPreservesSuperviewLayoutMargins_];

  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 systemBackgroundColor];
    [v11 setBackgroundColor_];

    v13.receiver = v0;
    v13.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
    objc_msgSendSuper2(&v13, sel_viewDidLoad);
    return;
  }

LABEL_7:
  __break(1u);
}

id GroupActivityPlaceholderSharingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GroupActivityPlaceholderSharingController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit41GroupActivityPlaceholderSharingController_placeholderControllerDidCancel);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*GroupActivityPlaceholderSharingController.hostViewController(_:didFailToHost:error:)())(void *)
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  if (result)
  {
    v2 = result;
    result(v0);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  return result;
}

void @objc GroupActivityPlaceholderSharingController.hostViewController(_:didFailToHost:error:)(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v4 = a1;
  v2 = v1();
  if (v2)
  {
    v3 = v2;
    v2(v4);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
  }

  else
  {
  }
}

id GroupActivityPlaceholderSharingController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id GroupActivityPlaceholderSharingController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id GroupActivityPlaceholderSharingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x23EEA6320]();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GroupActivityPlaceholderSharingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupActivityPlaceholderSharingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*specialized GroupActivityPlaceholderSharingController.cancelButtonTapped(_:)())(void *)
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Cancel button tapped", v5, 2u);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v1) + 0x60))();
  if (result)
  {
    v7 = result;
    result(v1);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed GroupActivityPlaceholderSharingController) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

id ReactionPickerViewRepresentable.makeUIView(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ReactionPickerView());

  return [v0 init];
}

uint64_t ReactionPickerViewRepresentable.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0xB0);

  v8(a3, a4);
  v9 = *((*v7 & *a1) + 0xE0);

  return v9(v10);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ReactionPickerViewRepresentable()
{
  v0 = objc_allocWithZone(type metadata accessor for ReactionPickerView());

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance ReactionPickerViewRepresentable(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0xB0);

  v6(v3, v4);
  v7 = *((*v5 & *a1) + 0xE0);

  return v7(v8);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ReactionPickerViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ReactionPickerViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ReactionPickerViewRepresentable()
{
  lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t ReactionPicker.selectedReaction.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReactionPicker.selectedReaction.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReactionPicker.history.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

_GroupActivities_UIKit::ReactionPicker __swiftcall ReactionPicker.init(selectedReaction:history:)(Swift::String_optional selectedReaction, Swift::OpaquePointer history)
{
  *v2 = selectedReaction;
  *(v2 + 16) = history;
  result.selectedReaction = selectedReaction;
  result.history = history;
  return result;
}

uint64_t ReactionPicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 257;
}

unint64_t lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable()
{
  result = lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable;
  if (!lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable);
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance ReactionPicker@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 257;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReactionPickerViewRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ReactionPickerViewRepresentable(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy22_GroupActivities_UIKit31ReactionPickerViewRepresentableVAA16_FixedSizeLayoutVGMd);
    lazy protocol witness table accessor for type ReactionPickerViewRepresentable and conformance ReactionPickerViewRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ReactionPickerViewRepresentable, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

_GroupActivities_UIKit::Subsystem_optional __swiftcall Subsystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = _GroupActivities_UIKit_Subsystem_runtimeIssues;
  }

  else
  {
    v4.value = _GroupActivities_UIKit_Subsystem_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t Subsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Subsystem(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  else
  {
    v4 = "com.apple.calls.copresence";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "com.apple.calls.copresence";
  }

  else
  {
    v7 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Subsystem()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Subsystem(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.calls.copresence";
  }

  else
  {
    v3 = &_sSo21NSAttributedStringKeya_yptMR;
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for copmanager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.copmanager);
  __swift_project_value_buffer(v0, static Logger.copmanager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1)
{
  return one-time initialization function for runtimeIssues(a1, static Logger.runtimeIssues);
}

{
  return one-time initialization function for runtimeIssues(a1, static Log.runtimeIssues);
}

uint64_t one-time initialization function for extensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.extensionController);
  __swift_project_value_buffer(v0, static Log.extensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProviderObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProviderObserver);
  __swift_project_value_buffer(v0, static Log.groupSessionProviderObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProvider);
  __swift_project_value_buffer(v0, static Log.groupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for ckShareGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for personalGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personalGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.personalGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for shareChangeObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.shareChangeObserver);
  __swift_project_value_buffer(v0, static Log.shareChangeObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for reliableBroadcast()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.reliableBroadcast);
  __swift_project_value_buffer(v0, static Log.reliableBroadcast);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for sessionUI(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for systemCoordinator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.systemCoordinator);
  __swift_project_value_buffer(v0, static Log.systemCoordinator);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupActivityAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupActivityAssociation);
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for nearbyActivityAdvertiser()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  __swift_project_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.default.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.sessionUI.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v30 = a4;
  v29 = a1;
  v26 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v6);
  v24 = 1;
  if ((*(v15 + 48))(v22, 1, v14) != 1)
  {
    (*(v15 + 32))(v19, v22, v14);
    v29(v19, v12);
    (*(v15 + 8))(v19, v14);
    if (v7)
    {
      return (*(v26 + 32))(v27, v12, a3);
    }

    v24 = 0;
  }

  return (*(*(v30 - 8) + 56))(a6, v24, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x23EEA6390](v3, v4);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v4 + 16))(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t one-time initialization function for canvasPreviewPresentationManager()
{
  v0 = type metadata accessor for GroupSessionEndpointIdentifier();
  __swift_allocate_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  return GroupSessionEndpointIdentifier.init(rawValue:)();
}

uint64_t GroupSessionEndpointIdentifier.canvasPreviewPresentationManager.unsafeMutableAddressor()
{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for GroupSessionEndpointIdentifier();

  return __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
}

uint64_t static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupSessionEndpointIdentifier();
  v3 = __swift_project_value_buffer(v2, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t GroupSession.requestCanvasPreviewPresentationManagerClient()()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = *v0;
  return MEMORY[0x2822009F8](GroupSession.requestCanvasPreviewPresentationManagerClient(), 0, 0);
}

{
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for GroupSessionEndpointIdentifier();
  v2 = __swift_project_value_buffer(v1, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = GroupSession.requestCanvasPreviewPresentationManagerClient();

  return MEMORY[0x28211FD40](v2);
}

{
  v15 = v0;
  if (v0[8])
  {
    type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient();
    v1 = XPCClient.__allocating_init(listenerEndpoint:)();
  }

  else
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.previews);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[5];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315138;
      v0[4] = v5;
      swift_getWitnessTable();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v14);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_23B6FA000, v3, v4, "Unable to get endpoint for canvas preview presentation manager on session: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x23EEA7200](v7, -1, -1);
      MEMORY[0x23EEA7200](v6, -1, -1);
    }

    else
    {
    }

    v1 = 0;
  }

  v12 = v0[1];

  return v12(v1);
}

{
  v22 = v0;
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.previews);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = v0[5];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    v0[2] = v8;
    swift_getWitnessTable();
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v0[3] = v7;
    v15 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Failed to get endpoint for canvas preview presentation manager on session: %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19(0);
}

uint64_t GroupSession.requestCanvasPreviewPresentationManagerClient()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = GroupSession.requestCanvasPreviewPresentationManagerClient();
  }

  else
  {
    v4 = GroupSession.requestCanvasPreviewPresentationManagerClient();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t GroupSessionPreviewPresentationViewModel.previewData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionPreviewPresentationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKitP33_7EC4E9541CA9C2130F5EA0FCD480FE6640GroupSessionPreviewPresentationViewModel__previewData;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DataVSgGMd);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GroupSessionPreviewPresentationViewModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t GroupSessionPreviewPresentationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA13_ArchivedViewVAA05EmptyG0V_GMd);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v21 - v3;
  v5 = type metadata accessor for _ArchivedViewStates();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _ArchivedView();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v25;
  if (v25 >> 60 == 15)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890]);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v20 = v24;
    outlined copy of Data._Representation(v24, v25);
    _ArchivedViewStates.init(data:)();
    _ArchivedViewStates.state(at:)();
    (*(v21 + 8))(v8, v22);
    (*(v10 + 32))(v17, v14, v9);
    (*(v10 + 16))(v4, v17, v9);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890]);
    _ConditionalContent<>.init(storage:)();
    outlined consume of Data?(v20, v18);
    return (*(v10 + 8))(v17, v9);
  }
}

uint64_t GroupSessionPreviewPresentationController.previewData.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionPreviewPresentationController.previewData.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*GroupSessionPreviewPresentationController.previewData.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + direct field offset for GroupSessionPreviewPresentationController.model);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v4 = v4[1];
  return GroupSessionPreviewPresentationController.previewData.modify;
}

void GroupSessionPreviewPresentationController.previewData.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v3[3] = v5;

  if (a2)
  {
    outlined copy of Data?(v4, v5);
    static Published.subscript.setter();
    outlined consume of Data?(*v3, v3[1]);
  }

  else
  {
    static Published.subscript.setter();
  }

  free(v3);
}

uint64_t GroupSessionPreviewPresentationController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + direct field offset for GroupSessionPreviewPresentationController.delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*GroupSessionPreviewPresentationController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for GroupSessionPreviewPresentationController.delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return PeoplePickerController.hostViewController.modify;
}

id GroupSessionPreviewPresentationController.init()()
{
  v1 = type metadata accessor for UIHostingControllerSizingOptions();
  MEMORY[0x28223BE20](v1, v2);
  v3 = direct field offset for GroupSessionPreviewPresentationController.model;
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  Published.init(initialValue:)();
  *(v0 + v3) = v4;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v5 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for GroupSessionPreviewPresentationController.subscriptions) = v5;
  *(v0 + direct field offset for GroupSessionPreviewPresentationController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel, type metadata accessor for GroupSessionPreviewPresentationViewModel);

  ObservedObject.init(wrappedValue:)();
  v12 = v6;
  lazy protocol witness table accessor for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView();
  v11 = AnyView.init<A>(_:)();
  v7 = UIHostingController.init(rootView:)();
  result = [v7 view];
  if (result)
  {
    v9 = result;
    [result frame];
    [v9 setFrame_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI32UIHostingControllerSizingOptionsVGMd);
    *(swift_allocObject() + 16) = xmmword_23B757EF0;
    v10 = v7;
    static UIHostingControllerSizingOptions.preferredContentSize.getter();
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type UIHostingControllerSizingOptions and conformance UIHostingControllerSizingOptions, MEMORY[0x277CDE4B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
    lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    dispatch thunk of UIHostingController.sizingOptions.setter();

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double @objc GroupSessionPreviewPresentationController.preferredContentSize.getter(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  objc_msgSendSuper2(&v3, sel_preferredContentSize);
  if (result == 0.0 && v2 == 0.0)
  {
    return 370.0;
  }

  return result;
}

double GroupSessionPreviewPresentationController.preferredContentSize.getter()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  objc_msgSendSuper2(&v3, sel_preferredContentSize);
  if (result == 0.0 && v2 == 0.0)
  {
    return 370.0;
  }

  return result;
}

void @objc GroupSessionPreviewPresentationController.preferredContentSize.setter(void *a1, double a2, double a3)
{
  v5 = a1;
  GroupSessionPreviewPresentationController.preferredContentSize.setter(a2, a3);
}

uint64_t GroupSessionPreviewPresentationController.preferredContentSize.setter(double a1, double a2)
{
  v3 = v2;
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.previews);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    type metadata accessor for CGSize(0);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_23B6FA000, v7, v8, "Updating preferred content size on presentation controller to new size: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  v14 = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v21.receiver = v3;
  v21.super_class = v14;
  v15 = objc_msgSendSuper2(&v21, sel_setPreferredContentSize_, a1, a2);
  result = (*((*MEMORY[0x277D85000] & *v3) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v15);
  if (result)
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v3, ObjectType, v18);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall GroupSessionPreviewPresentationController.viewDidLayoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v1 = objc_msgSendSuper2(&v5, sel_viewDidLayoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v0) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

void @objc GroupSessionPreviewPresentationController.viewDidLayoutSubviews()(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  if ((*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for GroupSessionPreviewPresentationController + 72))(v2))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v1, ObjectType, v4);
    swift_unknownObjectRelease();
  }
}

id GroupSessionPreviewPresentationController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t GroupSessionPreviewPresentationController.__ivar_destroyer()
{

  v1 = v0 + direct field offset for GroupSessionPreviewPresentationController.delegate;

  return outlined destroy of weak PeoplePickerViewController?(v1);
}

id GroupSessionPreviewPresentationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionPreviewPresentationController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t @objc GroupSessionPreviewPresentationController.__ivar_destroyer(uint64_t a1)
{

  v2 = a1 + direct field offset for GroupSessionPreviewPresentationController.delegate;

  return outlined destroy of weak PeoplePickerViewController?(v2);
}

void vtable thunk for UIHostingController.__allocating_init(rootView:) dispatching to GroupSessionPreviewPresentationController.__allocating_init(rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void vtable thunk for UIHostingController.__allocating_init(coder:rootView:) dispatching to GroupSessionPreviewPresentationController.__allocating_init(coder:rootView:)()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

double key path getter for GroupSessionPreviewPresentationViewModel.previewData : GroupSessionPreviewPresentationViewModel@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for GroupSessionPreviewPresentationViewModel.previewData : GroupSessionPreviewPresentationViewModel(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  outlined copy of Data?(v1, v2);
  return static Published.subscript.setter();
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView()
{
  result = lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView;
  if (!lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupSessionPreviewPresentationView and conformance GroupSessionPreviewPresentationView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type [UIHostingControllerSizingOptions] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7SwiftUI32UIHostingControllerSizingOptionsVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UIHostingControllerSizingOptions] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for GroupSessionPreviewPresentationViewModel(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void specialized GroupSessionPreviewPresentationController.init(coder:)()
{
  v1 = direct field offset for GroupSessionPreviewPresentationController.model;
  type metadata accessor for GroupSessionPreviewPresentationViewModel(0);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  Published.init(initialValue:)();
  *(v0 + v1) = v2;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  *(v0 + direct field offset for GroupSessionPreviewPresentationController.subscriptions) = v3;
  *(v0 + direct field offset for GroupSessionPreviewPresentationController.delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void type metadata completion function for GroupSessionPreviewPresentationViewModel()
{
  type metadata accessor for Published<Data?>();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Data?>()
{
  if (!lazy cache variable for type metadata for Published<Data?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Data?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA13_ArchivedViewVAA05EmptyF0VGMd);
    lazy protocol witness table accessor for type GroupSessionPreviewPresentationViewModel and conformance GroupSessionPreviewPresentationViewModel(&lazy protocol witness table cache variable for type _ArchivedView and conformance _ArchivedView, MEMORY[0x277CDD890]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ArchivedView, EmptyView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t GroupActivityAssociationInteraction.view.getter()
{
  return GroupActivityAssociationInteraction.view.getter();
}

{
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void GroupActivityAssociationInteraction.view.setter(void *a1)
{
  GroupActivityAssociationInteraction.view.setter(a1);
}

{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*GroupActivityAssociationInteraction.view.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_view;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return GroupActivityAssociationInteraction.view.modify;
}

id GroupActivityAssociationInteraction.__allocating_init(associationKind:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v5 = type metadata accessor for GroupActivityAssociationKind();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, &v3[v4]);
  swift_endAccess();
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  return v6;
}

id GroupActivityAssociationInteraction.init(associationKind:)(uint64_t a1)
{
  UUID.init()();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v4 = type metadata accessor for GroupActivityAssociationKind();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, &v1[v3]);
  swift_endAccess();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GroupActivityAssociationInteraction(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  return v5;
}

uint64_t outlined assign with copy of GroupActivityAssociationKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for GroupActivityAssociationInteraction.associationKind : GroupActivityAssociationInteraction(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of GroupActivityAssociationKind?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x90))(v7);
}

void GroupActivityAssociationInteraction.associationKind.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GroupActivityAssociationKind();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v32 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMd);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v30[-v19];
  v21 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  v22 = *(v17 + 56);
  outlined init with copy of GroupActivityAssociationKind?(v2 + v21, v20);
  outlined init with copy of GroupActivityAssociationKind?(a1, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    if (v23(&v20[v22], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v20, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
      return;
    }
  }

  else
  {
    outlined init with copy of GroupActivityAssociationKind?(v20, v15);
    if (v23(&v20[v22], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v20[v22], v4);
      lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind();
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v8, v4);
      v29(v15, v4);
      v24 = outlined destroy of NSObject?(v20, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
      if (v31)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v15, v4);
  }

  v24 = outlined destroy of NSObject?(v20, &_s15GroupActivities0A23ActivityAssociationKindVSg_ADtMd);
LABEL_7:
  v25 = (*((*MEMORY[0x277D85000] & *v2) + 0x68))(v24);
  if (v25)
  {
    v26 = v25;
    v27 = v32;
    outlined init with copy of GroupActivityAssociationKind?(v2 + v21, v32);
    v28 = v23(v27, 1, v4);
    outlined destroy of NSObject?(v27, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
    if (v28 == 1)
    {
      GroupActivityAssociationInteraction.uninstall(from:)(v26);
    }

    else
    {
      GroupActivityAssociationInteraction.install(on:)(v26);
    }
  }
}

uint64_t GroupActivityAssociationInteraction.associationKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  return outlined init with copy of GroupActivityAssociationKind?(v1 + v3, a1);
}

uint64_t outlined init with copy of GroupActivityAssociationKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityAssociationInteraction.associationKind.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationKind?(v1 + v7, v6);
  swift_beginAccess();
  outlined assign with copy of GroupActivityAssociationKind?(a1, v1 + v7);
  swift_endAccess();
  GroupActivityAssociationInteraction.associationKind.didset(v6);
  outlined destroy of NSObject?(a1, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  return outlined destroy of NSObject?(v6, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
}

void (*GroupActivityAssociationInteraction.associationKind.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_associationKind;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of GroupActivityAssociationKind?(v1 + v9, v8);
  return GroupActivityAssociationInteraction.associationKind.modify;
}

void GroupActivityAssociationInteraction.associationKind.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of GroupActivityAssociationKind?(*(*a1 + 96), v6);
    outlined init with copy of GroupActivityAssociationKind?(v7 + v4, v5);
    swift_beginAccess();
    outlined assign with copy of GroupActivityAssociationKind?(v6, v7 + v4);
    swift_endAccess();
    GroupActivityAssociationInteraction.associationKind.didset(v5);
    outlined destroy of NSObject?(v5, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  }

  else
  {
    outlined init with copy of GroupActivityAssociationKind?(v7 + v4, v6);
    swift_beginAccess();
    outlined assign with copy of GroupActivityAssociationKind?(v3, v7 + v4);
    swift_endAccess();
    GroupActivityAssociationInteraction.associationKind.didset(v6);
  }

  outlined destroy of NSObject?(v6, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  outlined destroy of NSObject?(v3, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall GroupActivityAssociationInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v25 - v7;
  v9 = MEMORY[0x277D85000];
  v10 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v11 = (v10)(v6);
  v12 = v11;
  if (to)
  {
    if (v11)
    {
      type metadata accessor for UIView();
      v13 = to;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        return;
      }
    }
  }

  else
  {
    if (!v11)
    {
      return;
    }
  }

  v15 = v10();
  if (v15)
  {
    v16 = v15;
    GroupActivityAssociationInteraction.uninstall(from:)(v15);
  }

  v17 = *((*v9 & *v2) + 0x70);
  v18 = to;
  v19 = v17(to);
  (*((*v9 & *v2) + 0x88))(v19);
  v20 = type metadata accessor for GroupActivityAssociationKind();
  v21 = (*(*(v20 - 8) + 48))(v8, 1, v20);
  v22 = outlined destroy of NSObject?(v8, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  if (v21 != 1)
  {
    v23 = (v10)(v22);
    if (v23)
    {
      v24 = v23;
      GroupActivityAssociationInteraction.install(on:)(v23);
    }
  }
}

void GroupActivityAssociationInteraction.uninstall(from:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xD8))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

void GroupActivityAssociationInteraction.install(on:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xD0))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

unint64_t type metadata accessor for UIView()
{
  result = lazy cache variable for type metadata for UIView;
  if (!lazy cache variable for type metadata for UIView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIView);
  }

  return result;
}

id GroupActivityAssociationInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t GroupActivityAssociationInteraction.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id @objc GroupActivityAssociationInteraction.view.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t (*SpatialTemplateAnchorInteraction.view.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_view;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SpatialTemplateAnchorInteraction.view.modify;
}

void GroupActivityAssociationInteraction.view.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id SpatialTemplateAnchorInteraction.__allocating_init(isEnabled:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  UUID.init()();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SpatialTemplateAnchorInteraction.init(isEnabled:)(char a1)
{
  UUID.init()();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SpatialTemplateAnchorInteraction(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t SpatialTemplateAnchorInteraction.isEnabled.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void SpatialTemplateAnchorInteraction.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v5);
    if (v7)
    {
      v8 = v7;
      if (*(v1 + v4))
      {
        SpatialTemplateAnchorInteraction.install(on:)(v7);
      }

      else
      {
        SpatialTemplateAnchorInteraction.uninstall(from:)(v7);
      }
    }
  }
}

void (*SpatialTemplateAnchorInteraction.isEnabled.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_isEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return SpatialTemplateAnchorInteraction.isEnabled.modify;
}

void SpatialTemplateAnchorInteraction.isEnabled.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  if (a2)
  {
    if ((v5 ^ v6))
    {
      v7 = (*((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x68))();
      if (v7)
      {
        v8 = v7;
        if ((*(*(v2 + 24) + *(v2 + 32)) & 1) == 0)
        {
LABEL_5:
          SpatialTemplateAnchorInteraction.uninstall(from:)(v8);
LABEL_10:

          goto LABEL_11;
        }

LABEL_9:
        SpatialTemplateAnchorInteraction.install(on:)(v8);
        goto LABEL_10;
      }
    }
  }

  else if ((v5 ^ v6))
  {
    v9 = (*((*MEMORY[0x277D85000] & **(v2 + 24)) + 0x68))();
    if (v9)
    {
      v8 = v9;
      if (*(*(v2 + 24) + *(v2 + 32)) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

LABEL_11:

  free(v2);
}

Swift::Void __swiftcall SpatialTemplateAnchorInteraction.didMove(to:)(UIView_optional *to)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v6 = v5();
  v7 = v6;
  if (to)
  {
    if (v6)
    {
      type metadata accessor for UIView();
      v8 = to;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        return;
      }
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }
  }

  v10 = v5();
  if (v10)
  {
    v11 = v10;
    SpatialTemplateAnchorInteraction.uninstall(from:)(v10);
  }

  v12 = *((*v4 & *v2) + 0x70);
  v13 = to;
  v14 = v12(to);
  if ((*((*v4 & *v2) + 0x88))(v14))
  {
    v15 = v5();
    if (v15)
    {
      v16 = v15;
      SpatialTemplateAnchorInteraction.install(on:)(v15);
    }
  }
}

void SpatialTemplateAnchorInteraction.uninstall(from:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xE8))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

void SpatialTemplateAnchorInteraction.install(on:)(void *a1)
{
  v2 = [a1 window];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = [v2 windowScene];

  if (!v5)
  {
    return;
  }

  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  if (![v5 _sceneComponentForKey_])
  {
    goto LABEL_8;
  }

  type metadata accessor for GroupActivityAssociationSceneComponent();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    (*((*MEMORY[0x277D85000] & *v4) + 0xE0))(v1);
    swift_unknownObjectRelease();
LABEL_8:

    return;
  }

  swift_unknownObjectRelease();
}

id GroupActivityAssociationInteraction.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized GroupActivityAssociationInteraction._didMove(from:to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v15 - v7;
  v9 = MEMORY[0x277D85000];
  if (a1)
  {
    v6 = [a1 windowScene];
    if (v6)
    {
      v10 = v6;
      specialized static GroupActivityAssociationCoordinator.register()();
      if (one-time initialization token for componentKey != -1)
      {
        swift_once();
      }

      if (![v10 _sceneComponentForKey_])
      {
        goto LABEL_8;
      }

      type metadata accessor for GroupActivityAssociationSceneComponent();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        (*((*v9 & *v11) + 0xD8))(v2);
        swift_unknownObjectRelease();
LABEL_8:

        goto LABEL_10;
      }

      v6 = swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v12 = (*((*v9 & *v2) + 0x68))(v6);
  if (v12)
  {
    v13 = v12;
    (*((*v9 & *v2) + 0x88))();
    v14 = type metadata accessor for GroupActivityAssociationKind();
    if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
    {

      outlined destroy of NSObject?(v8, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
    }

    else
    {
      outlined destroy of NSObject?(v8, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
      GroupActivityAssociationInteraction.install(on:)(v13);
    }
  }
}

void specialized SpatialTemplateAnchorInteraction._didMove(from:to:)(id a1)
{
  v2 = MEMORY[0x277D85000];
  if (a1)
  {
    a1 = [a1 windowScene];
    if (a1)
    {
      v3 = a1;
      specialized static GroupActivityAssociationCoordinator.register()();
      if (one-time initialization token for componentKey != -1)
      {
        swift_once();
      }

      if (![v3 _sceneComponentForKey_])
      {
        goto LABEL_8;
      }

      type metadata accessor for GroupActivityAssociationSceneComponent();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        (*((*v2 & *v4) + 0xE8))(v1);
        swift_unknownObjectRelease();
LABEL_8:

        goto LABEL_10;
      }

      a1 = swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v5 = (*((*v2 & *v1) + 0x68))(a1);
  if (v5)
  {
    v6 = v5;
    if ((*((*v2 & *v1) + 0x88))())
    {
      SpatialTemplateAnchorInteraction.install(on:)(v6);
    }
  }
}

void type metadata completion function for GroupActivityAssociationInteraction()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GroupActivityAssociationKind?();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for GroupActivityAssociationKind?()
{
  if (!lazy cache variable for type metadata for GroupActivityAssociationKind?)
  {
    type metadata accessor for GroupActivityAssociationKind();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupActivityAssociationKind?);
    }
  }
}

uint64_t type metadata completion function for SpatialTemplateAnchorInteraction()
{
  result = type metadata accessor for UUID();
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

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind)
  {
    type metadata accessor for GroupActivityAssociationKind();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind);
  }

  return result;
}

uint64_t GroupActivityAssociationCoordinator.init(mode:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_2;
  }

  v5 = a1;
  v6 = a2;
  v7 = __CocoaSet.count.getter();
  if (v7)
  {
    v8 = v7;
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14CopresenceCore24GroupActivityAssociationC_Tt1g5(v7, 0);
    specialized Array._copyContents(initializing:)((v3 + 4), v8, MEMORY[0x277D84F90]);
    v10 = v9;

    a2 = v6;
    a1 = v5;
    if (v10 == v8)
    {
      goto LABEL_2;
    }

    __break(1u);
  }

  a2 = v6;
  a1 = v5;
LABEL_2:
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  if (a1)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    *(v2 + 64) = closure #1 in GroupActivityAssociationCoordinator.init(mode:);
    *(v2 + 72) = 0;
    GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 0);
  }

  return v2;
}

uint64_t GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(char a1, char a2)
{
  v3 = v2;
  v4 = (*(v2 + 64))();
  if (one-time initialization token for groupActivityAssociation != -1)
  {
LABEL_42:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.groupActivityAssociation);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = v4 >> 62;
  v42 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B75CB50, v44);
    *(v9 + 12) = 2048;
    if (v8)
    {
      v11 = __CocoaSet.count.getter();
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    _os_log_impl(&dword_23B6FA000, v6, v7, "%{public}s: Found %ld association(s)", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v12 = (v3 + 24);
  v40 = *(*(v3 + 24) + 16);
  swift_beginAccess();
  v13 = specialized OrderedSet.intersection<A>(_:)();
  v15 = v14;
  *(v3 + 16) = v13;
  *(v3 + 24) = v14;
  swift_endAccess();
  v39 = *(v15 + 16);
  if (v8)
  {
    v16 = __CocoaSet.count.getter();
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_44:
    v43 = 0;
LABEL_45:

    if (a1)
    {
      if (v43 & 1 | (v40 != v39))
      {

        GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(v37, a2 & 1);
      }
    }

    return result;
  }

  v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_44;
  }

LABEL_9:
  v17 = 0;
  v43 = 0;
  while (1)
  {
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x23EEA67C0](v17, v42);
      }

      else
      {
        if (v17 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v20 = *(v42 + 32 + 8 * v17);
      }

      v21 = v20;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      swift_beginAccess();
      v23 = *(v3 + 16);
      v24 = (*v12 + 32);
      v25 = *(*v12 + 16);
      if (!v23)
      {
        break;
      }

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v21, v24, v25, (v23 + 16));
      v19 = v18;

      if (v19)
      {
        goto LABEL_21;
      }

LABEL_11:
      swift_endAccess();

      if (v17 == v16)
      {
        goto LABEL_45;
      }
    }

    if (v25)
    {
      type metadata accessor for GroupActivityAssociation();
      do
      {
        v4 = *v24;
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
          goto LABEL_11;
        }

        ++v24;
      }

      while (--v25);
    }

LABEL_21:
    v27 = v21;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v28 = *v12;
    v4 = *(*v12 + 16);
    v29 = *(v3 + 16);
    if (v29)
    {
      break;
    }

    if (v4 > 0xF)
    {
      v30 = 0;
LABEL_28:
      v31 = MEMORY[0x23EEA5450](v4);
      if (v30 <= v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = v30;
      }

      v33 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v28, v32, 0, v30);

      *(v3 + 16) = v33;
    }

LABEL_37:
    swift_endAccess();

    v43 = 1;
    if (v17 == v16)
    {
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  if (MEMORY[0x23EEA5430](*(v29 + 16) & 0x3FLL) < v4)
  {
    swift_beginAccess();
    v30 = *(v29 + 24) & 0x3FLL;
    if (v4 > 0xF || v30)
    {
      goto LABEL_28;
    }

    *(v3 + 16) = 0;
    goto LABEL_37;
  }

  result = swift_isUniquelyReferenced_native();
  v35 = *(v3 + 16);
  if ((result & 1) == 0)
  {
    if (!v35)
    {
      goto LABEL_51;
    }

    v36 = _HashTable.copy()();

    *(v3 + 16) = v36;
    v35 = v36;
  }

  if (v35)
  {
    _HashTable.UnsafeHandle.subscript.setter();
    goto LABEL_37;
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t static GroupActivityAssociationCoordinator._createForTesting(activeGroupActivityAssociations:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  return GroupActivityAssociationCoordinator.init(mode:)(a1, a2);
}

void GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = *(v3 + 48);
  if (v10)
  {

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    MEMORY[0x23EEA64F0](v10, MEMORY[0x277D84F78] + 8, v11, MEMORY[0x277D84950]);
  }

  if ((a2 & 1) != 0 && (v12 = *(v3 + 56), *(v3 + 56) = 1, v12 == 1))
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = a1;
    v15[5] = v3;
    *(v3 + 48) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:), v15);
  }

  else
  {
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.groupActivityAssociation);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = type metadata accessor for GroupActivityAssociation();
      v23 = MEMORY[0x23EEA6410](a1, v22);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_23B6FA000, v18, v19, "Sharing anchors without debounce: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x23EEA7200](v21, -1, -1);
      MEMORY[0x23EEA7200](v20, -1, -1);
    }

    v26 = *(v3 + 32);
    if (v26)
    {

      v26(a1);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v26);
    }
  }
}

uint64_t closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:), v8, v7);
}

uint64_t closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);

  return specialized Clock.sleep(for:tolerance:)(10000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);
  }

  else
  {
    v8 = closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:);
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

{
  v16 = v0;

  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.groupActivityAssociation);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for GroupActivityAssociation();
    v8 = MEMORY[0x23EEA6410](v4, v7);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23B6FA000, v2, v3, "Sharing anchors after debounce: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEA7200](v6, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);
  }

  v11 = *(v0[3] + 32);
  if (v11)
  {
    v12 = v0[2];

    v11(v12);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
  }

  v13 = v0[1];

  return v13();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupActivityAssociationCoordinator.deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));

  return v0;
}

uint64_t GroupActivityAssociationCoordinator.__deallocating_deinit()
{

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t GroupActivityAssociationCoordinator.setOnGroupActivityAssociationChangeHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Log.groupActivityAssociation);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23B6FA000, v7, v8, "On group activity association change set", v9, 2u);
    MEMORY[0x23EEA7200](v9, -1, -1);
  }

  v10 = *(v3 + 32);
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v10);

  GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(0, 0);
  swift_beginAccess();

  GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(v11, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, 255, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, 255, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized Clock.sleep(for:tolerance:);
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14CopresenceCore24GroupActivityAssociationC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t specialized OrderedSet.intersection<A>(_:)()
{
  v1 = 0;
  static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  __break(1u);

  result = outlined consume of OrderedSet<GroupActivityAssociation>?(0, v1);
  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable()()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x23EEA5450](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x23EEA5450](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x23EEA5460](v8, a4);
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v10 + 16));
    return v10;
  }

  return result;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, Swift::Int *a3)
{
  v9 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = *a3;
        v7 = *(v9 + 8 * v5);
        result = NSObject._rawHashValue(seed:)(v6);
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Int *a4)
{
  result = NSObject._rawHashValue(seed:)(*a4);
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    v7 = _HashTable.BucketIterator.currentValue.getter();
    if ((v8 & 1) == 0)
    {
      type metadata accessor for GroupActivityAssociation();
      do
      {
        v9 = *(a2 + 8 * v7);
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v7 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v11 & 1) == 0);
    }

    return v7;
  }

  return result;
}

uint64_t specialized closure #1 in OrderedSet.intersection<A>(_:)(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      v27 = a2 & 0xFFFFFFFFFFFFFF8;
      v28 = a2 & 0xC000000000000001;
      v23 = a2;
      v25 = a3;
      v26 = a2 + 32;
      v7 = a4 + 32;
      while (1)
      {
        if (v28)
        {
          v8 = MEMORY[0x23EEA67C0](v6, v23);
        }

        else
        {
          if (v6 >= *(v27 + 16))
          {
            goto LABEL_21;
          }

          v8 = *(v26 + 8 * v6);
        }

        v9 = v8;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v11 = *(a4 + 16);
        if (a3)
        {

          v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v9, v7, v11, (a3 + 16));
          v14 = v13;

          if (v14)
          {
            goto LABEL_5;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (!v11)
          {
            goto LABEL_5;
          }

          type metadata accessor for GroupActivityAssociation();
          v12 = 0;
          while (1)
          {
            v15 = *(v7 + 8 * v12);
            v16 = static NSObject.== infix(_:_:)();

            if (v16)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_5;
            }
          }
        }

        *(*a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
LABEL_5:

        a3 = v25;
        if (v6 == v5)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v17 = a2;
      v18 = __CocoaSet.count.getter();
      a2 = v17;
      v5 = v18;
    }

    while (v18);
  }

LABEL_24:
  v19 = *a1;
  v20 = a1[1];
  v21 = specialized default argument 2 of OrderedSet._extractSubset(using:count:extraCapacity:)();

  *&v30 = v19;
  *(&v30 + 1) = v20;
  return specialized OrderedSet._extractSubset(using:count:extraCapacity:)(v30, 0, 1, v21, a3, a4);
}

void *specialized closure #1 in static _UnsafeBitSet.withTemporaryBitSet<A>(wordCount:run:)(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return outlined consume of OrderedSet<GroupActivityAssociation>?(v6, v7);
  }

  return result;
}

uint64_t specialized OrderedSet._extractSubset(using:count:extraCapacity:)(__int128 a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a4;
  if (a3)
  {
    if (a1 && *(&a1 + 1))
    {
      a2 = 0;
      v9 = 8 * *(&a1 + 1);
      v10 = a1;
      while (1)
      {
        v11 = vcnt_s8(*v10);
        v11.i16[0] = vaddlv_u8(v11);
        v12 = __OFADD__(a2, v11.u32[0]);
        a2 += v11.u32[0];
        if (v12)
        {
          break;
        }

        ++v10;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a2)
  {
LABEL_14:
    _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(MEMORY[0x277D84F90]);
    specialized OrderedSet._reserveCapacity(_:persistent:)(v8, 0);

    v7 = 0;
    goto LABEL_26;
  }

  if (a2 == *(a6 + 16))
  {
    if (a5)
    {
      v13 = a2;
      swift_beginAccess();
      v14 = MEMORY[0x23EEA5430](*(v7 + 16) & 0x3FLL);
      a2 = v13;
      v15 = v14 - v13;
      if (!__OFSUB__(v14, v13))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 15 - a2;
      if (!__OFSUB__(15, a2))
      {
LABEL_11:
        if (v15 < v8)
        {
          *&a1 = a2 + v8;
          if (__OFADD__(a2, v8))
          {
LABEL_31:
            __break(1u);
            return a1;
          }

          specialized OrderedSet._reserveCapacity(_:persistent:)(a1, 0);
        }

        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = a2 + a4;
    if (__OFADD__(a2, a4))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC14CopresenceCore24GroupActivityAssociationC_Tt0g5(MEMORY[0x277D84F90]);
    specialized OrderedSet._reserveCapacity(_:persistent:)(v16, 0);
    v8 = 0;
    v19 = 0;
  }

  *&a1 = _UnsafeBitSet.Iterator.next()();
  if ((BYTE8(a1) & 1) == 0)
  {
    while ((a1 & 0x8000000000000000) == 0)
    {
      if (a1 >= *(a6 + 16))
      {
        goto LABEL_29;
      }

      v17 = *(a6 + 32 + 8 * a1);
      specialized OrderedSet._appendNew(_:)(v17);

      *&a1 = _UnsafeBitSet.Iterator.next()();
      if (BYTE8(a1))
      {
        v8 = v19;
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_25:

  v7 = v8;
LABEL_26:
  *&a1 = v7;
  return a1;
}

uint64_t specialized OrderedSet._appendNew(_:)(void *a1)
{
  a1;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  v3 = *v1;
  v4 = *(v1[1] + 16);
  if (!*v1)
  {
    if (v4 < 0x10)
    {
      return result;
    }

    return specialized OrderedSet._regenerateHashTable()();
  }

  swift_beginAccess();
  if (MEMORY[0x23EEA5430](*(v3 + 16) & 0x3FLL) < v4)
  {
    return specialized OrderedSet._regenerateHashTable()();
  }

  result = swift_isUniquelyReferenced_native();
  v5 = *v1;
  if ((result & 1) == 0)
  {
    if (!v5)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v6 = _HashTable.copy()();

    *v1 = v6;
    v5 = v6;
  }

  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v5 + 16);

  result = NSObject._rawHashValue(seed:)(v7);
  if (__OFSUB__(1 << *(v5 + 16), 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (_HashTable.UnsafeHandle._startIterator(bucket:)())
  {
    while (1)
    {
      _HashTable.BucketIterator.advance()();
    }
  }

  _HashTable.BucketIterator.currentValue.setter();
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  v5 = result;
  specialized ContiguousArray.reserveCapacity(_:)();
  v6 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v7 = *(v6 + 16) & 0x3FLL;
    v8 = MEMORY[0x23EEA5450](v5);
    v9 = v8;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v8 = v9;
      v9 = *(v6 + 24) & 0x3FLL;
    }
  }

  else
  {
    v8 = MEMORY[0x23EEA5450](v5);
    v7 = 0;
    if (a2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v3[1];
  if (v7 < v8)
  {
    if (v9 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v14 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy14CopresenceCore24GroupActivityAssociationCG_Tt2g5(v10, v11, 0, v9);

    *v3 = v14;
    return result;
  }

  if (v9 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  result = MEMORY[0x23EEA5450](*(v10 + 16));
  if (result <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = result;
  }

  if (v13 < v7)
  {
    if (v9 <= v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v6 || (result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v15 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return result;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v15 = _HashTable.copy()();

  *v3 = v15;
  if (!v15)
  {
    goto LABEL_32;
  }

LABEL_28:
  result = swift_beginAccess();
  if ((*(v15 + 24) & 0x3FLL) != v9)
  {
    *(v15 + 24) = *(v15 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }

  return result;
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = __CocoaSet.count.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = __CocoaSet.count.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [GroupActivityAssociation] and conformance [A]();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore24GroupActivityAssociationCGMd);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for GroupActivityAssociation();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEA67C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void specialized static GroupActivityAssociationCoordinator.register()()
{
  if ((static GroupActivityAssociationCoordinator.isRegistered & 1) == 0)
  {
    static GroupActivityAssociationCoordinator.isRegistered = 1;
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_23B6FA000, v1, v2, "Registering spatial template group activity association scene component.", v3, 2u);
      MEMORY[0x23EEA7200](v3, -1, -1);
    }

    v4 = type metadata accessor for GroupActivityAssociationCoordinator();
    swift_allocObject();
    v5 = GroupActivityAssociationCoordinator.init(mode:)(0, 0);
    type metadata accessor for GroupActivityAssociationCoordinatorTable();
    static GroupActivityAssociationCoordinatorTable.shared.getter();
    v7[3] = v4;
    v7[4] = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type GroupActivityAssociationCoordinator and conformance GroupActivityAssociationCoordinator, v6, type metadata accessor for GroupActivityAssociationCoordinator);
    v7[0] = v5;

    GroupActivityAssociationCoordinatorTable.registerCoordinator(_:)();

    __swift_destroy_boxed_opaque_existential_0(v7);
  }
}

void specialized GroupActivityAssociationCoordinator.sceneConnected(_:)()
{
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_23B6FA000, oslog, v1, "New scene connected", v2, 2u);
    MEMORY[0x23EEA7200](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ReactionPickerView.sendReaction(_:to:);

  return closure #1 in GroupActivityAssociationCoordinator.shareAnchors(_:debounce:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for specialized closure #1 in OrderedSet.intersection<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in OrderedSet.intersection<A>(_:)(a1, **(v2 + 16), *(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t outlined consume of OrderedSet<GroupActivityAssociation>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [GroupActivityAssociation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14CopresenceCore24GroupActivityAssociationCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GroupActivityAssociation] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id UIScene.groupActivityAssociationSceneComponent.getter()
{
  specialized static GroupActivityAssociationCoordinator.register()();
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  result = [v0 _sceneComponentForKey_];
  if (result)
  {
    type metadata accessor for GroupActivityAssociationSceneComponent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t one-time initialization function for componentKey()
{
  type metadata accessor for NSString();
  result = NSString.init(stringLiteral:)();
  static GroupActivityAssociationSceneComponent.componentKey = result;
  return result;
}

uint64_t *GroupActivityAssociationSceneComponent.componentKey.unsafeMutableAddressor()
{
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  return &static GroupActivityAssociationSceneComponent.componentKey;
}

id static GroupActivityAssociationSceneComponent.componentKey.getter()
{
  if (one-time initialization token for componentKey != -1)
  {
    swift_once();
  }

  v1 = static GroupActivityAssociationSceneComponent.componentKey;

  return v1;
}

void *GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    v9 = a1;
    goto LABEL_7;
  }

  if (!a1 || (type metadata accessor for GroupActivityAssociation(), v6 = a1, v7 = v5, v8 = static NSObject.== infix(_:_:)(), v7, (v8 & 1) == 0))
  {
LABEL_7:
    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v7 = a1;
    goto LABEL_10;
  }

LABEL_10:
}

void (*GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify;
}

void GroupActivityAssociationSceneComponent.activeGroupActivityAssociation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    if (v7)
    {
      if (v3)
      {
        type metadata accessor for GroupActivityAssociation();
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_15:
          goto LABEL_16;
        }
      }
    }

    else
    {
      if (!v3)
      {
LABEL_16:
        v11 = *v4;
        goto LABEL_22;
      }

      v14 = v3;
    }

    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v8 = v3;
    goto LABEL_15;
  }

  if (!v7)
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    v15 = v3;
    goto LABEL_19;
  }

  if (!v3 || (type metadata accessor for GroupActivityAssociation(), v11 = v3, v12 = v7, v13 = static NSObject.== infix(_:_:)(), v12, (v13 & 1) == 0))
  {
LABEL_19:
    if (swift_weakLoadStrong())
    {
      GroupActivityAssociationCoordinator.recalculateGroupActivityAssociation(shareIfChanged:debounce:)(1, 1);
    }

    v11 = v3;
    goto LABEL_22;
  }

LABEL_22:
LABEL_23:

  free(v2);
}

uint64_t GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()()
{
  v1 = type metadata accessor for GroupActivityAssociationKind.Storage();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v55 = (&v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v50 - v12);
  MEMORY[0x28223BE20](v11, v14);
  v54 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v50 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v50 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v50 - v30;
  v32 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v33 = *(v0 + v32);
  v57 = v33;
  v58 = closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation();
  v59 = 0;
  v60 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v61 = 0;

  v34 = specialized LazyFilterSequence<>.startIndex.getter();
  if (v36)
  {
    goto LABEL_12;
  }

  if (*(v33 + 36) != v35)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = 1;
  if (v34 == 1 << *(v33 + 32))
  {
    goto LABEL_6;
  }

  specialized Dictionary.Values.subscript.getter(v34, v35, v33, v56);
  closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()(v28);
  outlined destroy of WeakGroupActivityAssociationBox(v56);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v28, v24, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  if ((*(v6 + 48))(v24, 1, v5) == 1)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  outlined init with take of ScaledShape<Capsule>(v24, v31, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  outlined destroy of NSObject?(v28, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  v37 = 0;
LABEL_6:
  (*(v6 + 56))(v31, v37, 1, v5);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v31, v20, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  if ((*(v6 + 48))(v20, 1, v5) == 1)
  {
    outlined destroy of NSObject?(v31, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
    outlined destroy of NSObject?(v20, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
    return 0;
  }

  v39 = v54;
  outlined init with take of ScaledShape<Capsule>(v20, v54, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v39, v13, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);

  v40 = *(v5 + 48);
  GroupActivityAssociationKind.storage.getter();
  v41 = type metadata accessor for GroupActivityAssociationKind();
  v51 = *(*(v41 - 8) + 8);
  v51(v13 + v40, v41);
  v43 = v52;
  v42 = v53;
  if ((*(v52 + 88))(v4, v53) != *MEMORY[0x277CCB1B0])
  {
    goto LABEL_14;
  }

  (*(v43 + 96))(v4, v42);
  v44 = v55;
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v39, v55, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  v45 = *v44;
  v53 = *(v5 + 48);
  v46 = [v45 session];

  v47 = [v46 persistentIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = objc_allocWithZone(type metadata accessor for GroupActivityAssociation());
  v49 = GroupActivityAssociation.init(sceneID:associationID:)();
  outlined destroy of NSObject?(v39, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  outlined destroy of NSObject?(v31, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  v51(v44 + v53, v41);
  return v49;
}

uint64_t closure #1 in GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for GroupActivityAssociationKind();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x88))();
  }

  else
  {
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      if ((*((*MEMORY[0x277D85000] & *v21) + 0x88))())
      {
        static GroupActivityAssociationKind.primary(_:)();

        (*(v15 + 56))(v6, 0, 1, v14);
      }

      else
      {

        (*(v15 + 56))(v6, 1, 1, v14);
      }

      outlined init with take of ScaledShape<Capsule>(v6, v10, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
    }

    else
    {
      (*(v15 + 56))(v10, 1, 1, v14);
    }
  }

  outlined init with take of ScaledShape<Capsule>(v10, v13, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v13, &_s15GroupActivities0A23ActivityAssociationKindVSgMd);
  }

  else
  {
    v23 = *(v15 + 32);
    v23(v18, v13, v14);
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24 || (v24 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v25 = v24;
      v26 = (*((*MEMORY[0x277D85000] & *v24) + 0x68))();

      if (v26)
      {
        v27 = [v26 window];

        if (v27)
        {
          v28 = [v27 windowScene];

          if (v28)
          {
            v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
            v30 = *(v29 + 48);
            *a1 = v28;
            v23(&a1[v30], v18, v14);
            return (*(*(v29 - 8) + 56))(a1, 0, 1, v29);
          }
        }
      }
    }

    (*(v15 + 8))(v18, v14);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtMd);
  return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
}

void GroupActivityAssociationSceneComponent.addGroupActivityAssociationInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit35GroupActivityAssociationInteraction_id;
  v10 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_6;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v9);
  if ((v13 & 1) == 0)
  {

LABEL_6:
    v17[0] = 0;
    v17[1] = 0;
    v18 = 1;
    outlined destroy of NSObject?(v17, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
    goto LABEL_7;
  }

  outlined init with copy of WeakGroupActivityAssociationBox(*(v11 + 56) + 16 * v12, v17);

  v18 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of NSObject?(v17, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
  if (Strong)
  {

    return;
  }

LABEL_7:
  (*(v5 + 16))(v8, a1 + v9, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19[16] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v19, v8);
  swift_endAccess();
  v15 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v15);
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    outlined destroy of NSObject?(a1, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
    specialized Dictionary.removeValue(forKey:)(a2, v9);
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 8))(a2, v4);
    return outlined destroy of NSObject?(v9, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
  }

  else
  {
    outlined init with take of WeakGroupActivityAssociationBox(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v8;
  }

  return result;
}

void GroupActivityAssociationSceneComponent.addDeprecatedSpatialTemplateAnchorInteraction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22_GroupActivities_UIKit32SpatialTemplateAnchorInteraction_id;
  v10 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!*(v11 + 16))
  {
    goto LABEL_6;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1 + v9);
  if ((v13 & 1) == 0)
  {

LABEL_6:
    v17[0] = 0;
    v17[1] = 0;
    v18 = 1;
    outlined destroy of NSObject?(v17, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
    goto LABEL_7;
  }

  outlined init with copy of WeakGroupActivityAssociationBox(*(v11 + 56) + 16 * v12, v17);

  v18 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of NSObject?(v17, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
  if (Strong)
  {

    return;
  }

LABEL_7:
  (*(v5 + 16))(v8, a1 + v9, v4);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v19[16] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v19, v8);
  swift_endAccess();
  v15 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  (*((*MEMORY[0x277D85000] & *v2) + 0x90))(v15);
}

uint64_t GroupActivityAssociationSceneComponent.removeGroupActivityAssociationInteraction(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1 + v5, v8);
  outlined destroy of NSObject?(v8, &_s22_GroupActivities_UIKit04WeakA22ActivityAssociationBox33_DED96278C70A9583889108CC8716ECF9LLVSgMd);
  swift_endAccess();
  v6 = GroupActivityAssociationSceneComponent.primaryGroupActivityAssociation()();
  return (*((*MEMORY[0x277D85000] & *v3) + 0x90))(v6);
}

void GroupActivityAssociationSceneComponent._scene.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*GroupActivityAssociationSceneComponent._scene.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent__scene;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return GroupActivityAssociationInteraction.view.modify;
}

id GroupActivityAssociationSceneComponent.__allocating_init(scene:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions] = MEMORY[0x277D84F98];
  *&v3[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id GroupActivityAssociationSceneComponent.init(scene:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_groupActivityAssociationInteractions] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit38GroupActivityAssociationSceneComponent_activeGroupActivityAssociation] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GroupActivityAssociationSceneComponent();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id GroupActivityAssociationSceneComponent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupActivityAssociationSceneComponent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupActivityAssociationSceneComponent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v12;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    outlined init with take of WeakGroupActivityAssociationBox(*(v9 + 56) + 16 * v7, a2);
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v36 = type metadata accessor for UUID();
  v4 = *(v36 - 8);
  result = MEMORY[0x28223BE20](v36, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v35 = (v13 + 1) & v12;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v33 = a2 + 64;
    v34 = v16;
    v17 = *(v15 + 56);
    v32 = (v15 - 8);
    v37 = v14;
    v18 = v36;
    do
    {
      v19 = v17;
      v20 = v17 * v11;
      v21 = *(a2 + 48) + v17 * v11;
      v22 = v15;
      v34(v8, v21, v18);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v32)(v8, v18);
      v24 = v37;
      v25 = v23 & v37;
      if (a1 >= v35)
      {
        if (v25 >= v35 && a1 >= v25)
        {
LABEL_15:
          v15 = v22;
          v17 = v19;
          if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + 16 * a1;
          v9 = v33;
          if (a1 < v11 || result >= v28 + 16 * v11 + 16)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v24 = v37;
          }

          else
          {
            v24 = v37;
            if (a1 != v11)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v24 = v37;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v35 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v9 = v33;
      v17 = v19;
LABEL_4:
      v11 = (v11 + 1) & v24;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t specialized LazyFilterSequence<>.startIndex.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[3];
  v25 = v0[2];
  v26 = v5;
  v24 = v7;
  v8 = v6 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = *(v6 + 36);
  v23 = v6 + 72;
  while (1)
  {
    v13 = 1 << *(v6 + 32);
    if (v10 == v13)
    {
      return v10;
    }

    if (v10 < 0 || v10 >= v13)
    {
      break;
    }

    v14 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_20;
    }

    outlined init with copy of WeakGroupActivityAssociationBox(*(v6 + 56) + 16 * v10, v27);
    v26(v27);
    outlined destroy of WeakGroupActivityAssociationBox(v27);
    v15 = v24(v4);
    result = outlined destroy of NSObject?(v4, &_sSo7UISceneC5scene_15GroupActivities0C23ActivityAssociationKindV4kindtSgMd);
    if (v15)
    {
      return v10;
    }

    v12 = 1 << *(v6 + 32);
    if (v10 >= v12)
    {
      goto LABEL_21;
    }

    v16 = *(v8 + 8 * v14);
    if ((v16 & (1 << v10)) == 0)
    {
      goto LABEL_22;
    }

    if (v11 != *(v6 + 36))
    {
      goto LABEL_23;
    }

    v17 = v16 & (-2 << (v10 & 0x3F));
    if (v17)
    {
      v12 = __clz(__rbit64(v17)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v14 << 6;
      v19 = v14 + 1;
      v20 = (v23 + 8 * v14);
      while (v19 < (v12 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of [UUID : WeakGroupActivityAssociationBox].Index._Variant(v10, v11, 0);
          v12 = __clz(__rbit64(v21)) + v18;
          goto LABEL_3;
        }
      }

      result = outlined consume of [UUID : WeakGroupActivityAssociationBox].Index._Variant(v10, v11, 0);
    }

LABEL_3:
    v10 = v12;
    if (v11 != *(v6 + 36))
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.Values.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of WeakGroupActivityAssociationBox(*(a3 + 56) + 16 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

id PictureInPicturePreviewPresenter.sourceView.getter()
{
  v1 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void PictureInPicturePreviewPresenter.sourceView.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy) viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
}

id (*PictureInPicturePreviewPresenter.sourceView.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PictureInPicturePreviewPresenter.sourceView.modify;
}

id PictureInPicturePreviewPresenter.sourceView.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(*(a1 + 24) + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);

    return [v5 viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
  }

  return result;
}

uint64_t PictureInPicturePreviewPresenter.pictureInPictureShouldStartWhenEnteringBackground.getter()
{
  if (![objc_opt_self() isPictureInPictureSupported])
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.previews);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "PIP will not start when entering background, as it's unsupported";
    goto LABEL_11;
  }

  v1 = (*((*MEMORY[0x277D85000] & **(v0 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 48))();
  if (v2 >> 60 == 15)
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.previews);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_12;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "PIP will not start when entering background, as there's no preview to show";
LABEL_11:
    _os_log_impl(&dword_23B6FA000, v4, v5, v7, v6, 2u);
    MEMORY[0x23EEA7200](v6, -1, -1);
LABEL_12:

    return 0;
  }

  outlined consume of Data?(v1, v2);
  return 1;
}

char *PictureInPicturePreviewPresenter.init(sourceView:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter] = 0;
  v4 = objc_allocWithZone(type metadata accessor for GroupSessionPreviewPresentationController(0));
  v5 = GroupSessionPreviewPresentationController.init()();
  *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController] = v5;
  v6 = objc_allocWithZone(MEMORY[0x277D38BE8]);
  v7 = v5;
  result = [v6 initWithControlsStyle:4 viewController:v7];
  if (result)
  {
    *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] = result;
    *&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_sourceView] = a1;
    v9 = type metadata accessor for PictureInPicturePreviewPresenter();
    v29.receiver = v2;
    v29.super_class = v9;
    v10 = a1;
    v11 = objc_msgSendSuper2(&v29, sel_init);
    v12 = *((*MEMORY[0x277D85000] & *v7) + class metadata base offset for GroupSessionPreviewPresentationController + 80);
    v13 = v11;
    v12(v11, &protocol witness table for PictureInPicturePreviewPresenter);
    v14 = type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter();
    v15 = objc_allocWithZone(v14);
    v25 = v9;
    v26 = &protocol witness table for PictureInPicturePreviewPresenter;
    v24[0] = v13;
    outlined init with copy of ConversationManagerClientProtocol(v24, v15 + OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate);
    v28.receiver = v15;
    v28.super_class = v14;
    v16 = objc_msgSendSuper2(&v28, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v17 = *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter];
    *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxyDelegateAdapter] = v16;
    v18 = v16;

    v19 = OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy;
    v20 = *&v13[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy];
    [v20 setDelegate_];

    v21 = *&v13[v19];
    v26 = specialized thunk for @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ();
    v27 = 0;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 1107296256;
    v24[2] = thunk for @escaping @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ();
    v25 = &block_descriptor_2;
    v22 = _Block_copy(v24);
    v23 = v21;

    [v23 updatePlaybackStateUsingBlock_];
    _Block_release(v22);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

id specialized thunk for @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ()(id result)
{
  if (result)
  {
    return [result setContentType_];
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed PGMutablePlaybackState?) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall PictureInPicturePreviewPresenter.updatePictureInPictureShouldStartWhenEnteringBackground()()
{
  v1 = v0;
  ShouldStartWhenEntering = PictureInPicturePreviewPresenter.pictureInPictureShouldStartWhenEnteringBackground.getter();
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.previews);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = ShouldStartWhenEntering & 1;
    _os_log_impl(&dword_23B6FA000, v4, v5, "Updating picture and picture with intent to start when application enters background: %{BOOL}d", v6, 8u);
    MEMORY[0x23EEA7200](v6, -1, -1);
  }

  v7 = *(v1 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);

  [v7 setPictureInPictureShouldStartWhenEnteringBackground_];
}

Swift::Void __swiftcall PictureInPicturePreviewPresenter.updatePreferredContentSizeForViewController()()
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.previews);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v15 = v6;
  *v5 = 136315394;
  [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController] preferredContentSize];
  type metadata accessor for CGSize(0);
  v7 = String.init<A>(reflecting:)();
  v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

  *(v5 + 4) = v9;
  *(v5 + 12) = 2080;
  v10 = [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] clientSessionIdentifier];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_23B6FA000, v3, v4, "Updating preferred content size for preview to size: %s for session: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEA7200](v6, -1, -1);
    MEMORY[0x23EEA7200](v5, -1, -1);
LABEL_7:

    [*&v2[OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy] preferredContentSizeDidChangeForViewController];
    return;
  }

  __break(1u);
}

uint64_t PictureInPicturePreviewPresenter.registerPreviewSource<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_pictureInPictureProxy);
  GroupSessionPreviewSource.groupSessionID.getter(a2, a3);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  v16 = MEMORY[0x23EEA6320](v13, v15);

  [v12 setClientSessionIdentifier_];

  return (*((*MEMORY[0x277D85000] & *v4) + 0xB0))();
}

uint64_t PictureInPicturePreviewPresenter.updatePreview<A>(for:using:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 56);
  outlined copy of Data._Representation(*a2, v5);
  v8 = v7(v4, v5);
  (*((*v6 & *v3) + 0xB0))(v8);
  v9 = *((*v6 & *v3) + 0xB8);

  return v9();
}

uint64_t protocol witness for GroupSessionPreviewPresenter.updatePreview<A>(for:using:) in conformance PictureInPicturePreviewPresenter(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & **(v3 + OBJC_IVAR____TtC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter_presentationController)) + class metadata base offset for GroupSessionPreviewPresentationController + 56);
  outlined copy of Data._Representation(*a2, v5);
  v8 = v7(v4, v5);
  v9 = (*((*v6 & *v3) + 0xB0))(v8);
  return (*((*v6 & *v3) + 0xB8))(v9);
}

uint64_t PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate;
  swift_beginAccess();
  return outlined init with copy of ConversationManagerClientProtocol(v1 + v3, a1);
}

uint64_t PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.delegate.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v1 + v3);
  outlined init with take of ConversationManagerClientProtocol(a1, v1 + v3);
  return swift_endAccess();
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.pictureInPictureProxyViewControllerWindow(forTransitionAnimation:)(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v7);
  v3 = v8;
  v4 = v9;
  result = __swift_project_boxed_opaque_existential_1(v7, v8);
  if (a1)
  {
    v6 = (*(v4 + 8))(a1, v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.pictureInPictureProxyViewFrame(forTransitionAnimation:)(uint64_t a1)
{
  (*((*MEMORY[0x277D85000] & *v1) + 0x58))(v6);
  v3 = v7;
  v4 = v8;
  result = __swift_project_boxed_opaque_existential_1(v6, v7);
  if (a1)
  {
    (*(v4 + 16))(a1, v3, v4);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PictureInPicturePreviewPresenter.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized Sequence.compactMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for UIScene();
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
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

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (type metadata accessor for UIScene(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_23:
        outlined consume of Set<UIScene>.Iterator._Variant();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x23EEA63E0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of ConversationManagerClientProtocol(v11, a2 + OBJC_IVAR____TtCC22_GroupActivities_UIKit32PictureInPicturePreviewPresenter36PictureInPictureProxyDelegateAdapter_delegate);
  v10.receiver = a2;
  v10.super_class = type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter();
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v8;
}

id specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.__allocating_init(delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter());
  (*(v7 + 16))(v9, a1, a3);
  return specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.init(delegate:)(v9, v10, a3, a4);
}

id specialized PictureInPicturePreviewPresenter.pictureInPictureProxyViewControllerWindowForTransitionAnimation(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  v2 = [v1 window];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  type metadata accessor for UIScene();
  lazy protocol witness table accessor for type UIScene and conformance NSObject();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Sequence.compactMap<A>(_:)(v6);
  v8 = v7;

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    if (one-time initialization token for previews == -1)
    {
LABEL_15:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.previews);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_23B6FA000, v20, v21, "There are no windows associated with the application, returning an empty window.", v22, 2u);
        MEMORY[0x23EEA7200](v22, -1, -1);
      }

      v23 = objc_allocWithZone(MEMORY[0x277D75DA0]);

      return [v23 init];
    }

LABEL_22:
    swift_once();
    goto LABEL_15;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x23EEA67C0](0, v8);
    goto LABEL_8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v8 + 32);
LABEL_8:
  v10 = v9;

  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.previews);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = v12;

  if (!os_log_type_enabled(v13, v14))
  {

    return v12;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  *(v16 + 4) = v15;
  *v17 = v15;
  v18 = v15;
  _os_log_impl(&dword_23B6FA000, v13, v14, "Source view is yet attached to a window, returning the first window of the application: %@", v16, 0xCu);
  outlined destroy of NSObject?(v17);
  MEMORY[0x23EEA7200](v17, -1, -1);
  MEMORY[0x23EEA7200](v16, -1, -1);

  return v18;
}

double specialized PictureInPicturePreviewPresenter.pictureInPictureProxyViewFrameForTransitionAnimation(_:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v2 = v1();
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  if (CGRectIsEmpty(v29) || (v11 = v1(), v12 = [v11 superview], v11, !v12))
  {
    if (one-time initialization token for previews != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Log.previews);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23B6FA000, v24, v25, "The source view does not yet have a frame or superview set, returning the main screen bounds for picture-in-picture", v26, 2u);
      MEMORY[0x23EEA7200](v26, -1, -1);
    }

    v12 = [objc_opt_self() mainScreen];
    [(UIView *)v12 bounds];
  }

  else
  {
    v13 = v1();
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v30.origin.x = v15;
    v30.origin.y = v17;
    v30.size.width = v19;
    v30.size.height = v21;
    v22 = UIAccessibilityConvertFrameToScreenCoordinates(v30, v12);
  }

  v27 = *&v22;

  return v27;
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:willStartPictureInPictureWith:)(void *a1, const char *a2)
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(oslog, v6))
  {

    goto LABEL_8;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v16 = v8;
  *v7 = 136315138;
  if (!a1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v5 clientSessionIdentifier];

  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v16);

  *(v7 + 4) = v14;
  _os_log_impl(&dword_23B6FA000, oslog, v6, a2, v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v9);
  MEMORY[0x23EEA7200](v9, -1, -1);
  MEMORY[0x23EEA7200](v7, -1, -1);
LABEL_8:
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:failedToStartPictureInPictureWith:error:)(void *a1, NSObject *a2)
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  v6 = a2;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(oslog, v7))
  {

    v21 = a2;

    goto LABEL_10;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v23 = v10;
  *v8 = 136315394;
  if (a1)
  {
    v11 = v10;
    v12 = [v5 clientSessionIdentifier];
    if (v12)
    {
      v13 = v12;

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v23);

      *(v8 + 4) = v17;
      *(v8 + 12) = 2112;
      if (a2)
      {
        v18 = a2;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v8 + 14) = v19;
      *v9 = v20;
      _os_log_impl(&dword_23B6FA000, oslog, v7, "Failed to start preview in picture in picture for session: %s with error: %@", v8, 0x16u);
      outlined destroy of NSObject?(v9);
      MEMORY[0x23EEA7200](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23EEA7200](v11, -1, -1);
      MEMORY[0x23EEA7200](v8, -1, -1);
      v21 = oslog;

LABEL_10:

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void specialized PictureInPicturePreviewPresenter.PictureInPictureProxyDelegateAdapter.picture(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(void *a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for previews != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.previews);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v16 = v9;
  *v8 = 136315138;
  if (!a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v5 clientSessionIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v16);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_23B6FA000, v6, v7, "Transitioning from preview to user interface for session: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23EEA7200](v10, -1, -1);
    MEMORY[0x23EEA7200](v8, -1, -1);
LABEL_8:

    if (a2)
    {
      a2(1);
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  __break(1u);
}

unint64_t type metadata accessor for UIScene()
{
  result = lazy cache variable for type metadata for UIScene;
  if (!lazy cache variable for type metadata for UIScene)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIScene);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIScene and conformance NSObject)
  {
    type metadata accessor for UIScene();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for GroupSessionCanvasPreviewPresentationManager();
  result = swift_initStaticObject();
  static GroupSessionCanvasPreviewPresentationManager.shared = result;
  return result;
}

uint64_t *GroupSessionCanvasPreviewPresentationManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static GroupSessionCanvasPreviewPresentationManager.shared;
}

uint64_t static GroupSessionCanvasPreviewPresentationManager.shared.getter()
{
  type metadata accessor for GroupSessionCanvasPreviewPresentationManager();

  return swift_initStaticObject();
}

uint64_t one-time initialization function for identifier()
{
  v0 = type metadata accessor for GroupSessionEndpointIdentifier();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for canvasPreviewPresentationManager != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, static GroupSessionEndpointIdentifier.canvasPreviewPresentationManager);
  (*(v1 + 16))(v4, v5, v0);
  v6 = GroupSessionEndpointIdentifier.rawValue.getter();
  v8 = v7;
  result = (*(v1 + 8))(v4, v0);
  static GroupSessionCanvasPreviewPresentationManager.identifier = v6;
  *algn_27E1805F8 = v8;
  return result;
}

uint64_t *GroupSessionCanvasPreviewPresentationManager.identifier.unsafeMutableAddressor()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  return &static GroupSessionCanvasPreviewPresentationManager.identifier;
}

uint64_t static GroupSessionCanvasPreviewPresentationManager.identifier.getter()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static GroupSessionCanvasPreviewPresentationManager.identifier;

  return v0;
}

uint64_t protocol witness for static CustomEndpointProvider.identifier.getter in conformance GroupSessionCanvasPreviewPresentationManager()
{
  if (one-time initialization token for identifier != -1)
  {
    swift_once();
  }

  v0 = static GroupSessionCanvasPreviewPresentationManager.identifier;

  return v0;
}

uint64_t GroupSessionPreviewCoordinator.hostingController.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t GroupSessionPreviewCoordinator.updatePreview(session:presenter:previewContent:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v72 = a4;
  v73 = a3;
  v75 = *v5;
  v74 = *(v75 + 88);
  v8 = *(v74 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v71 = &v64 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v64 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v28 = &v64 - v27;
  if (a1)
  {
    v64 = v26;
    v65 = a2;
    v66 = v8;

    v70 = a1;
    GroupSession.id.getter();
    v69 = v11;
    v29 = *(v11 + 56);
    v30 = v29(v28, 0, 1, v10);
    v31 = *(*v5 + 120);
    v67 = v5;
    v32 = v31(v30);
    if (v32)
    {
      v79 = v32;
      v76 = *(v75 + 80);
      v77 = v74;
      v78 = *(v75 + 96);
      v33 = type metadata accessor for GroupSessionPreviewHostingController();
      WitnessTable = swift_getWitnessTable();
      GroupSessionPreviewSource.groupSessionID.getter(v33, WitnessTable);

      v35 = v24;
      v36 = 0;
    }

    else
    {
      v35 = v24;
      v36 = 1;
    }

    v29(v35, v36, 1, v10);
    v39 = *(v14 + 48);
    outlined init with copy of UUID?(v28, v17);
    outlined init with copy of UUID?(v24, &v17[v39]);
    v40 = v69;
    v41 = *(v69 + 48);
    if (v41(v17, 1, v10) == 1)
    {
      outlined destroy of NSObject?(v24, &_s10Foundation4UUIDVSgMd);
      outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd);
      if (v41(&v17[v39], 1, v10) == 1)
      {
        outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd);
      }
    }

    else
    {
      v42 = v64;
      outlined init with copy of UUID?(v17, v64);
      if (v41(&v17[v39], 1, v10) != 1)
      {
        v61 = v68;
        (*(v40 + 32))(v68, &v17[v39], v10);
        lazy protocol witness table accessor for type UUID and conformance UUID();
        v62 = dispatch thunk of static Equatable.== infix(_:_:)();
        v63 = *(v40 + 8);
        v63(v61, v10);
        outlined destroy of NSObject?(v24, &_s10Foundation4UUIDVSgMd);
        outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd);
        v63(v42, v10);
        outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSgMd);
        v43 = v70;
        if (v62)
        {
        }

LABEL_14:
        if (one-time initialization token for previews != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        __swift_project_value_buffer(v44, static Log.previews);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v76 = v48;
          *v47 = 136315138;
          v79 = v43;
          v49 = *(v75 + 80);
          v50 = *(v75 + 96);
          type metadata accessor for GroupSession();
          swift_getWitnessTable();
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v53 = v52;

          v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v76);

          *(v47 + 4) = v54;
          _os_log_impl(&dword_23B6FA000, v45, v46, "Session changed for preview coordinator to new session: %s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x23EEA7200](v48, -1, -1);
          MEMORY[0x23EEA7200](v47, -1, -1);

          v55 = v75;
        }

        else
        {

          v55 = v75;
          v49 = *(v75 + 80);
          v50 = *(v75 + 96);
        }

        v56 = *(v55 + 104);
        v57 = v74;
        v76 = v49;
        v77 = v74;
        *&v78 = v50;
        *(&v78 + 1) = v56;
        type metadata accessor for GroupSessionPreviewHostingController();

        v59 = v71;
        v73(v58);
        outlined init with copy of ConversationManagerClientProtocol(v65, &v76);
        v60 = specialized GroupSessionPreviewHostingController.__allocating_init(session:rootView:previewPresenter:)(v43, v59, &v76);
        (*(v66 + 8))(v59, v57);

        (*(*v67 + 128))(v60);
      }

      outlined destroy of NSObject?(v24, &_s10Foundation4UUIDVSgMd);
      outlined destroy of NSObject?(v28, &_s10Foundation4UUIDVSgMd);
      (*(v40 + 8))(v42, v10);
    }

    outlined destroy of NSObject?(v17, &_s10Foundation4UUIDVSg_ADtMd);
    v43 = v70;
    goto LABEL_14;
  }

  v37 = *(v75 + 128);

  return v37(0);
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GroupSessionPreviewCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t GroupSessionPreviewCoordinator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t GroupSessionPreviewCoordinator.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id GroupSessionPreviewSourceView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GroupSessionPreviewSourceView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id GroupSessionPreviewSourceView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GroupSessionPreviewSourceView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id GroupSessionPreviewSourceView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GroupSessionPreviewHostingView.previewContent.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));

  return v2;
}

id GroupSessionPreviewHostingView.makeUIView(context:)()
{
  type metadata accessor for GroupSessionPreviewSourceView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t GroupSessionPreviewHostingView.updateUIView(_:context:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  type metadata accessor for UIViewRepresentableContext();
  UIViewRepresentableContext.coordinator.getter();
  v6 = v14[5];
  v12 = *v3;
  v13 = a1;
  v7 = *(a3 + 48);
  v8 = *(v7 + 24);
  v9 = *(a3 + 24);
  v14[3] = swift_getAssociatedTypeWitness();
  v14[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v14);
  v10 = a1;
  v8(&v13, v9, v7);

  (*(*v6 + 144))(v12, v14, *(v3 + *(a3 + 72)), *(v3 + *(a3 + 72) + 8));

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

uint64_t GroupSessionPreviewHostingView.init(session:style:previewContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for GroupSessionPreviewHostingView();
  result = (*(*(a5 - 8) + 32))(&a6[*(v11 + 68)], a2, a5);
  v13 = &a6[*(v11 + 72)];
  *v13 = a3;
  *(v13 + 1) = a4;
  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance GroupSessionPreviewHostingView<A, B, C>()
{
  type metadata accessor for GroupSessionPreviewSourceView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance GroupSessionPreviewHostingView<A, B, C>@<X0>(uint64_t *a1@<X8>)
{
  result = specialized GroupSessionPreviewHostingView.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GroupSessionPreviewHostingView<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance GroupSessionPreviewHostingView<A, B, C>()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

char *PictureInPicturePreviewPresentationStyle.makePreviewPresenter(configuration:)@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter());
  result = PictureInPicturePreviewPresenter.init(sourceView:)(v3);
  *a2 = result;
  return result;
}

char *protocol witness for GroupSessionPreviewPresentationStyle.makePreviewPresenter(configuration:) in conformance PictureInPicturePreviewPresentationStyle@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  v4 = objc_allocWithZone(type metadata accessor for PictureInPicturePreviewPresenter());
  result = PictureInPicturePreviewPresenter.init(sourceView:)(v3);
  *a2 = result;
  return result;
}

uint64_t GroupSessionPreviewViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a3;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v9 + 16);
  *&v10 = v44;
  *(&v10 + 1) = v5;
  v11 = *(v9 + 48);
  v41 = *(v9 + 56);
  v42 = v11;
  v53 = v11;
  v54 = v41;
  v40 = *(v9 + 32);
  v52 = v40;
  v51 = v10;
  v12 = type metadata accessor for GroupSessionPreviewHostingView();
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - v14;
  swift_getWitnessTable();
  v36 = type metadata accessor for _ViewModifier_Content();
  v37 = v12;
  WitnessTable = swift_getWitnessTable();
  v43 = type metadata accessor for _BackgroundModifier();
  v16 = type metadata accessor for ModifiedContent();
  v45 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v39 = &v36 - v22;
  v23 = *v3;
  (*(v6 + 16))(v8, &v3[*(a2 + 68)], v5);
  v24 = &v3[*(a2 + 72)];
  v26 = *v24;
  v25 = *(v24 + 1);
  *v15 = v23;
  *&v51 = v44;
  *(&v51 + 1) = v5;
  v52 = v40;
  v53 = v42;
  v54 = v41;
  v27 = type metadata accessor for GroupSessionPreviewHostingView();
  (*(v6 + 32))(&v15[*(v27 + 68)], v8, v5);
  v28 = &v15[*(v27 + 72)];
  *v28 = v26;
  *(v28 + 1) = v25;

  static Alignment.center.getter();
  v29 = swift_getWitnessTable();
  v30 = v37;
  View.background<A>(_:alignment:)();
  (*(v46 + 8))(v15, v30);
  v31 = swift_getWitnessTable();
  v49 = v29;
  v50 = v31;
  v32 = swift_getWitnessTable();
  v33 = v39;
  static ViewBuilder.buildExpression<A>(_:)(v20, v16, v32);
  v34 = *(v45 + 8);
  v34(v20, v16);
  static ViewBuilder.buildExpression<A>(_:)(v33, v16, v32);
  return (v34)(v33, v16);
}

uint64_t View.preview<A, B, C>(for:style:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38 = a5;
  v31 = a6;
  v32 = a8;
  v35 = a3;
  v36 = a4;
  v33 = a2;
  v37 = a9;
  v15 = *(a7 - 8);
  v34 = a10;
  MEMORY[0x28223BE20](a1, a2);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v18;
  v40 = v19;
  v41 = v20;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v21 = type metadata accessor for GroupSessionPreviewViewModifier();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v30 - v24;
  (*(v15 + 16))(v17, v33, a7);
  *v25 = a1;
  v39 = v31;
  v40 = a7;
  v41 = v32;
  v42 = a11;
  v43 = a12;
  v44 = a13;
  v26 = type metadata accessor for GroupSessionPreviewViewModifier();
  (*(v15 + 32))(&v25[*(v26 + 68)], v17, a7);
  v27 = &v25[*(v26 + 72)];
  v28 = v36;
  *v27 = v35;
  *(v27 + 1) = v28;

  MEMORY[0x23EEA5F40](v25, v38, v21, v34);
  return (*(v22 + 8))(v25, v21);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t specialized GroupSessionPreviewHostingView.makeCoordinator()()
{
  type metadata accessor for GroupSessionPreviewCoordinator();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle()
{
  result = lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle;
  if (!lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PictureInPicturePreviewPresentationStyle and conformance PictureInPicturePreviewPresentationStyle);
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewPresentationStyleConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for GroupSessionPreviewPresentationStyleConfiguration(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PictureInPicturePreviewPresentationStyle(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PictureInPicturePreviewPresentationStyle(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t type metadata completion function for GroupSessionPreviewHostingView()
{
  type metadata accessor for GroupSession();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewHostingView(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v8 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    v18 = (a1 + v6 + 8) & ~v6;
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

_BYTE *storeEnumTagSinglePayload for GroupSessionPreviewHostingView(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
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
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = (&result[v8 + 8] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
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

  if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

id GroupSessionCanvasPreviewPresentationManagerHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerHostConnection();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GroupSessionCanvasPreviewPresentationManagerHostConnection()
{
  result = type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerHostConnection;
  if (!type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t @objc GroupSessionCanvasPreviewPresentationManagerHostConnection.registerPreview(for:)()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return (*(v1 + 8))(v4, v0);
}

void @objc GroupSessionCanvasPreviewPresentationManagerHostConnection.updatePreview(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  outlined consume of Data._Representation(v3, v4);
}

id GroupSessionCanvasPreviewPresentationManagerClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GroupSessionCanvasPreviewPresentationManagerClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient()
{
  result = type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerClient;
  if (!type metadata singleton initialization cache for GroupSessionCanvasPreviewPresentationManagerClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc GroupSessionCanvasPreviewPresentationManagerClient.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GroupSessionCanvasPreviewPresentationManagerClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupSessionCanvasPreviewPresentationManagerClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static GroupSessionCanvasPreviewPresentationManagerInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFD118];
  v3 = type metadata accessor for XPCIdentity();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id static GroupSessionCanvasPreviewPresentationManagerInterface.hostObjectInterface.getter(void *a1)
{
  v1 = [objc_opt_self() interfaceWithProtocol_];

  return v1;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance GroupSessionCanvasPreviewPresentationManagerInterface@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFD118];
  v3 = type metadata accessor for XPCIdentity();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance GroupSessionCanvasPreviewPresentationManagerInterface(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

uint64_t GroupSessionPreviewUpdate.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t GroupSessionPreviewSource.groupSessionID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  GroupSession.id.getter();
}

uint64_t GroupSessionPreviewUpdate.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupSessionPreviewUpdate.data.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for GroupSessionPreviewUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GroupSessionPreviewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t ReactionHistoryViewModel.__allocating_init(entries:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ReactionHistoryViewModel.init(entries:)(a1);
  return v2;
}

uint64_t ReactionHistoryView.init(model:)()
{
  type metadata accessor for ReactionHistoryViewModel();
  _s22_GroupActivities_UIKit24ReactionHistoryViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ReactionHistoryViewModel and conformance ReactionHistoryViewModel, type metadata accessor for ReactionHistoryViewModel);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t static ReactionHistoryEntry.ImageProvider.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  type metadata accessor for UIView(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

Swift::Int ReactionHistoryEntry.ImageProvider.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](a2 & 1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ReactionHistoryEntry.ImageProvider()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReactionHistoryEntry.ImageProvider()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ReactionHistoryEntry.ImageProvider(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  type metadata accessor for UIView(0, &lazy cache variable for type metadata for NSObject);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t ReactionHistoryEntry.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReactionHistoryEntry.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReactionHistoryEntry.reaction.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReactionHistoryEntry.reaction.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void *ReactionHistoryEntry.avatarImageProvider.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ReactionHistoryEntry.init(displayName:reaction:avatarImage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  return result;
}

uint64_t ReactionHistoryEntry.init(displayName:reaction:avatarImageProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = 1;
  return result;
}

uint64_t ReactionHistoryEntry.init<A>(displayName:reaction:avatarImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v15 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  (*(v13 + 16))(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a5, a6);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  (*(v13 + 32))(v17 + v16, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
  NSItemProvider.register<A>(_:)();

  result = (*(v13 + 8))(a5, a6);
  v19 = v23;
  v20 = v24;
  *a8 = a1;
  *(a8 + 8) = v19;
  v21 = v25;
  *(a8 + 16) = v20;
  *(a8 + 24) = v21;
  *(a8 + 32) = v15;
  *(a8 + 40) = 1;
  return result;
}

uint64_t ReactionHistoryEntry.hash(into:)()
{
  v1 = *(v0 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  return NSObject.hash(into:)();
}

Swift::Int ReactionHistoryEntry.hashValue.getter()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ReactionHistoryEntry()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ReactionHistoryEntry()
{
  v1 = *(v0 + 40);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  return NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ReactionHistoryEntry()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x23EEA69E0](v1);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ReactionFilter.filter.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  MEMORY[0x23EEA6150](&v4, v2);
  return v4;
}

double key path getter for ReactionFilter.filter : ReactionFilter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v9 = *(a1 + 1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  MEMORY[0x23EEA6150](&v6, v4);
  result = *&v6;
  *a2 = v6;
  return result;
}

uint64_t key path setter for ReactionFilter.filter : ReactionFilter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  return Binding.wrappedValue.setter();
}

void (*ReactionFilter.filter.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 120) = v1;
  v5 = *v1;
  *(v3 + 128) = *v1;
  v6 = v1[1];
  *(v3 + 136) = v6;
  *(v3 + 112) = v5;
  *(v3 + 64) = *(v1 + 1);
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = *(v1 + 1);
  outlined init with copy of Transaction(v3 + 112, v3 + 32);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v4 + 64, v4 + 32, &_sSSSgMd);
  *(v4 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  MEMORY[0x23EEA6150]();
  return ReactionFilter.filter.modify;
}

void ReactionFilter.filter.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  *(v2 + 32) = *(*a1 + 128);
  v4 = *(v2 + 80);
  *(v2 + 40) = *(v2 + 136);
  v5 = *(v3 + 16);
  *(v2 + 96) = v4;
  v6 = *(v2 + 88);
  *(v2 + 48) = v5;
  *(v2 + 104) = v6;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of NSObject?(v2 + 64, &_sSSSgMd);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(v2 + 112);

    outlined destroy of NSObject?(v2 + 64, &_sSSSgMd);
  }

  free(v2);
}

uint64_t ReactionFilter.$filter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t ReactionFilter.reactions.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

double ReactionFilter.init(filter:reactions:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  specialized ReactionFilter.init(filter:reactions:)(a1, a2, a3, a4, a5, v9);
  v7 = v9[1];
  *a6 = v9[0];
  a6[1] = v7;
  result = *&v10;
  a6[2] = v10;
  return result;
}

uint64_t ReactionFilter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ScrollIndicatorVisibility();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - v8;
  static Axis.Set.horizontal.getter();
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA6HStackVyAA05TupleC0VyAA6ButtonVyAA15ModifiedContentVyAPyAPyAPyAPyAJyALyAA4TextV_ARtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAVyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameV0VGAA026_InsettableBackgroundShapeR0VyAA08_OpacityZ5StyleVyAA012Hierarchicalz5StyleR0VyAXGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSANyAPyAPyAPyAPyAPyAPyAPyA7_AA01_yR0VyAA01_zC0VyA20_AXGGGAZGA3_GA6_GA9_GAA11_ClipEffectVyAA9RectangleVGGA21_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAFGQo_Md);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v12 = lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>>, ForEach<[String], String, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd);
  v13 = lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = ScrollView.init(_:showsIndicators:content:)();
  MEMORY[0x23EEA5C40](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B759A20;
  LOBYTE(v10) = static Axis.Set.vertical.getter();
  *(inited + 32) = v10;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v16;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v10)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type ScrollView<<<opaque return type of View.dynamicTypeSize<A>(_:)>>.0> and conformance ScrollView<A>, &_s7SwiftUI10ScrollViewVyAA0D0PAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamicfG0O5BoundRtd__lFQOyAA6HStackVyAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyARyARyARyARyALyANyAA4TextV_ATtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAXyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameW0VGAA026_InsettableBackgroundShapeS0VyAA18_OpacityShapeStyleVyAA022HierarchicalShapeStyleS0VyAZGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAPyARyARyARyARyARyARyARyA9_AA01_zS0VyAA06_ShapeD0VyA22_AZGGGA0_GA5_GA8_GA11_GAA11_ClipEffectVyAA9RectangleVGGA23_GGGAA6SpacerVtGG_s19PartialRangeThroughVyAHGQo_GMd);
  v17 = v21;
  View.scrollIndicators(_:axes:)();
  (*(v23 + 8))(v5, v24);
  return (*(v20 + 8))(v9, v17);
}

uint64_t closure #1 in ReactionFilter.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6ButtonVyAA15ModifiedContentVyAMyAMyAMyAMyAA0F0VyAIyAA4TextV_AQtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAUyAA4FontVSgGGAA08_PaddingG0VGAA06_FrameG0VGAA026_InsettableBackgroundShapeP0VyAA08_OpacityW5StyleVyAA012HierarchicalwyP0VyAWGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAKyAMyAMyAMyAMyAMyAMyAMyA6_AA01_vP0VyAA01_wD0VyA19_AWGGGAYGA2_GA5_GA8_GAA11_ClipEffectVyAA9RectangleVGGA20_GGGAA6SpacerVtGGMd);
  closure #1 in closure #1 in ReactionFilter.body.getter(a1, &v9[*(v10 + 44)]);
  v11 = *MEMORY[0x277CDFA00];
  v12 = type metadata accessor for DynamicTypeSize();
  (*(*(v12 - 8) + 104))(v5, v11, v12);
  _s22_GroupActivities_UIKit24ReactionHistoryViewModelCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, MEMORY[0x277CDFA28]);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type HStack<TupleView<(Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>>, ForEach<[String], String, Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PartialRangeThrough<DynamicTypeSize> and conformance PartialRangeThrough<A>, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of NSObject?(v5, &_ss19PartialRangeThroughVy7SwiftUI15DynamicTypeSizeOGMd);
    return outlined destroy of NSObject?(v9, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6ButtonVyAA15ModifiedContentVyAIyAIyAIyAIyACyAEyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSAGyAIyAIyAIyAIyAIyAIyAIyA0_AA01_tM0VyAA01_uE0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtGGMd);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6ButtonVyAA15ModifiedContentVyAHyAHyAHyAHyAHyAHyAHyAHyAHyAA6HStackVyAA9TupleViewVyAA4TextV_ANtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGARyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundO0VyAA06_ShapeJ0VyAA7CapsuleVATGGGAVGA_GA2_GAA06_FrameS0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettabletuO0VyAA08_OpacityU5StyleVyAA012Hierarchicalu5StyleO0VyATGGA9_GGGGMd);
  v3 = *(v42 - 8);
  v5 = MEMORY[0x28223BE20](v42, v4);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v48 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGGMd);
  v43 = *(v9 - 8);
  v44 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v47 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v40 - v14;
  v16 = *a1;
  v54 = *(a1 + 1);
  v55[0] = v16;
  v53 = a1[4];
  v17 = v53;
  v18 = swift_allocObject();
  v19 = *(a1 + 1);
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = *(a1 + 2);
  v50 = a1;
  outlined init with copy of Transaction(v55, &v52);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v54, &v52, &_sSSSgMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v53, &v52, &_sSDySSSiGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>> and conformance <> ModifiedContent<A, B>();
  v46 = v15;
  Button.init(action:label:)();
  v20 = *(v17 + 16);
  if (!v20)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v41 = v3;
  v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v20, 0);
  v22 = specialized Sequence._copySequenceContents(initializing:)(&v52, v21 + 4, v20, v17);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v53, &v51, &_sSDySSSiGMd);
  result = outlined consume of Set<UIScene>.Iterator._Variant();
  if (v22 == v20)
  {
    v3 = v41;
LABEL_5:
    v51 = v21;
    swift_getKeyPath();
    v24 = swift_allocObject();
    v25 = *(a1 + 1);
    v24[1] = *a1;
    v24[2] = v25;
    v24[3] = *(a1 + 2);
    outlined init with copy of Transaction(v55, &v52);

    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v54, &v52, &_sSSSgMd);
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v53, &v52, &_sSDySSSiGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    lazy protocol witness table accessor for type Published<GroupActivitySharingResult?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundM0VyAA06_ShapeH0VyAA7CapsuleVAQGGGASGAXGA_GAA06_FrameQ0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettablersM0VyAA08_OpacityS5StyleVyAA012Hierarchicals5StyleM0VyAQGGA6_GGGMd);
    v26 = v48;
    ForEach<>.init(_:id:content:)();
    v28 = v43;
    v27 = v44;
    v29 = *(v43 + 16);
    v30 = v47;
    v29(v47, v46, v44);
    v31 = *(v3 + 16);
    v32 = v26;
    v33 = v42;
    v31(v49, v32, v42);
    v34 = v45;
    v29(v45, v30, v27);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAEyAEyAA6HStackVyAA9TupleViewVyAA4TextV_AKtGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameQ0VGAA026_InsettableBackgroundShapeM0VyAA08_OpacityU5StyleVyAA012HierarchicaluwM0VyAQGGAA7CapsuleVGGG_AA7ForEachVySaySSGSSACyAEyAEyAEyAEyAEyAEyAEyA0_AA01_tM0VyAA01_uH0VyA13_AQGGGASGAXGA_GA2_GAA11_ClipEffectVyAA9RectangleVGGA14_GGGAA6SpacerVtMd);
    v36 = v49;
    v31(&v34[*(v35 + 48)], v49, v33);
    v37 = &v34[*(v35 + 64)];
    *v37 = 0;
    v37[8] = 1;
    v38 = *(v3 + 8);
    v38(v48, v33);
    v39 = *(v28 + 8);
    v39(v46, v27);
    v38(v36, v33);
    return (v39)(v47, v27);
  }

  __break(1u);
  return result;
}

double closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = static VerticalAlignment.center.getter();
  LOBYTE(v49) = 0;
  closure #1 in closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter(v52);
  *&v47[7] = v52[0];
  *&v47[23] = v52[1];
  *&v47[39] = v52[2];
  *&v47[55] = v52[3];
  v41 = v49;
  v42 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0AB0], v8);
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  static Font.Weight.regular.getter();
  v14 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v7, &_s7SwiftUI4FontV6DesignOSgMd);
  (*(v9 + 8))(v12, v8);
  v15 = swift_getKeyPath();
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v45) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v48[7] = v49;
  *&v48[23] = v50;
  *&v48[39] = v51;
  v25 = static Color.gray.getter();
  v26 = a1[1];
  v45 = *a1;
  v46 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  MEMORY[0x23EEA6150](v44, v27);
  if (v44[1])
  {

    v28 = 0;
  }

  else
  {
    v28 = 1063675494;
  }

  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA06_FrameP0VGAA026_InsettableBackgroundShapeL0VyAA08_OpacityT5StyleVyAA012HierarchicaltvL0VyAOGGAA7CapsuleVGGMd) + 36);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMd);
  v31 = *(v30 + 52);
  v32 = *MEMORY[0x277CE0118];
  v33 = type metadata accessor for RoundedCornerStyle();
  (*(*(v33 - 8) + 104))(v29 + v31, v32, v33);
  *v29 = v25;
  *(v29 + 8) = 3;
  *(v29 + 16) = v28;
  *(v29 + *(v30 + 56)) = 256;
  v34 = *v47;
  *(a2 + 33) = *&v47[16];
  v35 = *&v47[48];
  *(a2 + 49) = *&v47[32];
  *(a2 + 65) = v35;
  *a2 = v43;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v41;
  v36 = *&v47[63];
  *(a2 + 17) = v34;
  v37 = KeyPath;
  *(a2 + 80) = v36;
  *(a2 + 88) = v37;
  *(a2 + 96) = v42;
  *(a2 + 104) = v15;
  *(a2 + 112) = v14;
  *(a2 + 120) = v16;
  *(a2 + 128) = v18;
  *(a2 + 136) = v20;
  *(a2 + 144) = v22;
  *(a2 + 152) = v24;
  *(a2 + 160) = 0;
  *(a2 + 161) = *v48;
  result = *&v48[16];
  v39 = *&v48[32];
  *(a2 + 177) = *&v48[16];
  *(a2 + 193) = v39;
  *(a2 + 208) = *&v48[47];
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v2 - 8, v3);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringKey.init(stringInterpolation:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v16 = v8 & 1;
  v21 = v8 & 1;
  v18 = v17 & 1;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v16;
  *(a1 + 24) = v10;
  *(a1 + 32) = v13;
  *(a1 + 40) = v14;
  *(a1 + 48) = v17 & 1;
  *(a1 + 56) = v19;
  outlined copy of Text.Storage(v4, v6, v16);

  outlined copy of Text.Storage(v13, v15, v18);

  outlined consume of Text.Storage(v13, v15, v18);

  outlined consume of Text.Storage(v4, v6, v21);
}

uint64_t closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v11 = *(a2 + 1);
  v12 = v5;
  v10 = a2[4];
  v6 = swift_allocObject();
  v7 = *(a2 + 1);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 2);
  *(v6 + 64) = v4;
  *(v6 + 72) = v3;
  outlined init with copy of Transaction(&v12, v9);

  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v11, v9, &_sSSSgMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v10, v9, &_sSDySSSiGMd);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>, _InsettableBackgroundShapeModifier<_OpacityShapeStyle<HierarchicalShapeStyleModifier<Color>>, Capsule>> and conformance <> ModifiedContent<A, B>();
  return Button.init(action:label:)();
}

uint64_t closure #1 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  return Binding.wrappedValue.setter();
}

uint64_t closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v94 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v73 - v9;
  v11 = type metadata accessor for Font.TextStyle();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGMd) - 8;
  MEMORY[0x28223BE20](v93, v16);
  v18 = &v73 - v17;
  v87 = static VerticalAlignment.center.getter();
  LOBYTE(v100) = 0;
  v73 = a1;
  v74 = a2;
  closure #1 in closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter(a1, a2, a3, v103);
  *&v99[7] = v103[0];
  *&v99[23] = v103[1];
  *&v99[39] = v103[2];
  *&v99[55] = v103[3];
  v81 = v100;
  v80 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v86 = *MEMORY[0x277CE0AB0];
  v85 = *(v12 + 104);
  v19 = v11;
  v78 = v11;
  v85(v15);
  v20 = type metadata accessor for Font.Design();
  v21 = *(v20 - 8);
  v83 = *(v21 + 56);
  v84 = v21 + 56;
  v83(v10, 1, 1, v20);
  static Font.Weight.regular.getter();
  v77 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v10, &_s7SwiftUI4FontV6DesignOSgMd);
  v82 = *(v12 + 8);
  v82(v15, v19);
  v76 = swift_getKeyPath();
  v75 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v100) = 0;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGMd) + 36)];
  v34 = *MEMORY[0x277CE0118];
  v35 = type metadata accessor for RoundedCornerStyle();
  v36 = *(v35 - 8);
  v37 = *(v36 + 104);
  v91 = v34;
  v90 = v35;
  v89 = v37;
  v88 = v36 + 104;
  (v37)(v33, v34);
  v38 = static Color.clear.getter();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA7CapsuleVAA5ColorVGMd);
  *&v33[*(v39 + 52)] = v38;
  *&v33[*(v39 + 56)] = 256;
  v40 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA10_ShapeViewVyAA7CapsuleVAA5ColorVGGMd) + 36)];
  *v40 = v30;
  v40[1] = v32;
  v41 = *&v99[16];
  *(v18 + 17) = *v99;
  *(v18 + 10) = *&v99[63];
  v42 = *&v99[32];
  *(v18 + 65) = *&v99[48];
  *(v18 + 49) = v42;
  *v18 = v87;
  *(v18 + 1) = 0x4010000000000000;
  v18[16] = v81;
  *(v18 + 33) = v41;
  v43 = v80;
  *(v18 + 11) = KeyPath;
  *(v18 + 12) = v43;
  v44 = v77;
  *(v18 + 13) = v76;
  *(v18 + 14) = v44;
  v18[120] = v75;
  *(v18 + 16) = v23;
  *(v18 + 17) = v25;
  *(v18 + 18) = v27;
  *(v18 + 19) = v29;
  v18[160] = 0;
  v45 = static Color.black.getter();
  v46 = swift_getKeyPath();
  v47 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGMd) + 36)];
  *v47 = v46;
  v47[1] = v45;
  v48 = v78;
  (v85)(v15, v86, v78);
  v83(v10, 1, 1, v20);
  static Font.Weight.regular.getter();
  v49 = static Font.system(_:design:weight:)();
  outlined destroy of NSObject?(v10, &_s7SwiftUI4FontV6DesignOSgMd);
  v82(v15, v48);
  v50 = swift_getKeyPath();
  v51 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGMd) + 36)];
  *v51 = v50;
  v51[1] = v49;
  LOBYTE(v50) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGMd) + 36)];
  *v60 = v50;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v61 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGMd) + 36)];
  v62 = v101;
  *v61 = v100;
  *(v61 + 1) = v62;
  *(v61 + 2) = v102;
  *&v18[*(v93 + 44)] = 0;
  v63 = static Color.gray.getter();
  v64 = v92[1];
  v97 = *v92;
  v98 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySSSgGMd);
  MEMORY[0x23EEA6150](&v95, v65);
  v66 = 0;
  if (v96)
  {
    if (v95 == v73 && v96 == v74)
    {

LABEL_6:
      v66 = 1063675494;
      goto LABEL_7;
    }

    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v67)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyACyAA6HStackVyAA9TupleViewVyAA4TextV_AItGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVGAA011_BackgroundL0VyAA06_ShapeG0VyAA7CapsuleVAOGGGAQGAVGAYGAA06_FrameP0VGAA11_ClipEffectVyAA9RectangleVGGAA011_InsettableqrL0VyAA08_OpacityR5StyleVyAA012HierarchicalrzL0VyAOGGA4_GGMd);
  v69 = v94;
  v70 = v94 + *(v68 + 36);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA08_OpacityE5StyleVyAA012HierarchicalehF0VyAA5ColorVGGAA7CapsuleVGMd);
  v89(v70 + *(v71 + 52), v91, v90);
  *v70 = v63;
  *(v70 + 8) = 3;
  *(v70 + 16) = v66;
  *(v70 + *(v71 + 56)) = 256;
  return outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Text, Text)>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _BackgroundModifier<_ShapeView<Capsule, Color>>>, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FrameLayout>, _ClipEffect<Rectangle>>(v18, v69);
}

uint64_t closure #1 in closure #2 in closure #3 in closure #1 in closure #1 in ReactionFilter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v28 = a1;
  lazy protocol witness table accessor for type String and conformance String();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.title2.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v30 = v17;
  v31 = v18;

  outlined consume of Text.Storage(v9, v11, v13 & 1);

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  if (*(*(a3 + 32) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v28, a2);
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
  LocalizedStringKey.init(stringInterpolation:)();
  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24 & 1;
  *a4 = v14;
  *(a4 + 8) = v16;
  *(a4 + 16) = v30 & 1;
  *(a4 + 24) = v31;
  *(a4 + 32) = v21;
  *(a4 + 40) = v22;
  *(a4 + 48) = v24 & 1;
  *(a4 + 56) = v26;
  outlined copy of Text.Storage(v14, v16, v30 & 1);

  outlined copy of Text.Storage(v21, v23, v25);

  outlined consume of Text.Storage(v21, v23, v25);

  outlined consume of Text.Storage(v14, v16, v30 & 1);
}

uint64_t ReactionHistoryEntryAvatarImage.LoadingState.task.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void ReactionHistoryEntryAvatarImage.LoadingState.imageProvider.setter(uint64_t a1, char a2)
{
  outlined consume of ReactionHistoryEntry.ImageProvider?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

id ReactionHistoryEntryAvatarImage.imageProvider.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t ReactionHistoryEntryAvatarImage.transaction.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ReactionHistoryEntryAvatarImage.loadingState.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  State.wrappedValue.getter();
  return v1;
}

double key path getter for ReactionHistoryEntryAvatarImage.loadingState : ReactionHistoryEntryAvatarImage@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  State.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t key path setter for ReactionHistoryEntryAvatarImage.loadingState : ReactionHistoryEntryAvatarImage(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);

  outlined copy of ReactionHistoryEntry.ImageProvider?(v1, v3);
  outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  return State.wrappedValue.setter();
}

void (*ReactionHistoryEntryAvatarImage.loadingState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = *(v1 + 24);
  *(v3 + 192) = v5;
  v6 = *(v1 + 48);
  *(v3 + 200) = v6;
  v7 = *(v1 + 56);
  *(v3 + 208) = v7;
  v8 = *(v1 + 40);
  *(v3 + 144) = *(v1 + 32);
  v9 = v3 + 144;
  *(v3 + 160) = v5;
  *(v3 + 168) = v6;
  *(v3 + 176) = v7;
  *(v3 + 152) = v8;
  *v3 = v5;
  v10 = *(v1 + 32);
  *(v3 + 16) = *(v1 + 40);
  *(v3 + 8) = v10;
  LODWORD(v10) = *(v1 + 41);
  *(v3 + 20) = *(v1 + 44);
  *(v3 + 17) = v10;
  *(v3 + 24) = v6;
  *(v3 + 32) = v7;
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v3 + 160, v3 + 40, &_sScTyyts5Error_pGSgMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v9, v4 + 40, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(v4 + 168, v4 + 40);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(v4 + 176, v4 + 40, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd);
  *(v4 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  State.wrappedValue.getter();
  return ReactionHistoryEntryAvatarImage.loadingState.modify;
}

void ReactionHistoryEntryAvatarImage.loadingState.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 184);
  *(v2 + 40) = *(*a1 + 192);
  v4 = *(v2 + 80);
  v5 = *(v3 + 40);
  *(v2 + 48) = *(v3 + 32);
  *(v2 + 56) = v5;
  v6 = *(v3 + 44);
  LODWORD(v3) = *(v3 + 41);
  *(v2 + 112) = v4;
  v7 = *(v2 + 88);
  v8 = *(v2 + 96);
  v9 = *(v2 + 104);
  v10 = *(v2 + 200);
  *(v2 + 57) = v3;
  *(v2 + 60) = v6;
  *(v2 + 64) = v10;
  *(v2 + 120) = v7;
  *(v2 + 128) = v8;
  *(v2 + 136) = v9;
  if (a2)
  {

    outlined copy of ReactionHistoryEntry.ImageProvider?(v7, v8);
    outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(v9);
    State.wrappedValue.setter();
    outlined destroy of NSObject?(v2 + 160, &_sScTyyts5Error_pGSgMd);
    outlined destroy of NSObject?(v2 + 144, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
    outlined destroy of ReactionHistoryEntryAvatarImage.ImagePhase(v2 + 168);
    outlined destroy of NSObject?(v2 + 176, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd);
    v11 = *(v2 + 88);
    v12 = *(v2 + 104);
    v13 = *(v2 + 96);

    outlined consume of ReactionHistoryEntry.ImageProvider?(v11, v13);
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v12);
  }

  else
  {
    State.wrappedValue.setter();
    outlined destroy of NSObject?(v2 + 160, &_sScTyyts5Error_pGSgMd);
    outlined destroy of NSObject?(v2 + 144, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
    outlined destroy of ReactionHistoryEntryAvatarImage.ImagePhase(v2 + 168);
    outlined destroy of NSObject?(v2 + 176, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd);
  }

  free(v2);
}

__n128 ReactionHistoryEntryAvatarImage.$loadingState.getter@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  State.projectedValue.getter();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  a1[2].n128_u64[1] = v7;
  return result;
}

__n128 ReactionHistoryEntryAvatarImage.content.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v8 = *(v1 + 40);
  v32 = *(v1 + 24);
  v33 = v8;
  v34.n128_u64[0] = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV07LoadingC0VGMd);
  State.wrappedValue.getter();
  v9 = *(&v26[0] + 1);
  v10 = *(&v26[1] + 1);
  v11 = v26[1];
  outlined copy of ReactionHistoryEntryAvatarImage.ImagePhase(*(&v26[1] + 1));

  outlined consume of ReactionHistoryEntry.ImageProvider?(v9, v11);
  outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v10);
  if (v10 >> 62)
  {
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v10);
    v15 = [objc_opt_self() quaternaryLabelColor];
    v16 = MEMORY[0x23EEA5FE0](v15);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v28[22] = v23[0];
    *&v28[38] = v23[1];
    *&v28[6] = v22;
    *(v26 + 10) = *v28;
    LOBYTE(v29) = 1;
    *&v26[0] = v16;
    WORD4(v26[0]) = 256;
    *(&v26[1] + 10) = *&v28[16];
    *(&v26[2] + 10) = *&v28[32];
    *(&v26[3] + 1) = *(&v23[1] + 1);
    v27[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v4 + 8))(v7, v3);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32.n128_u8[0] = 1;
    *&v21[6] = v29;
    *&v21[22] = v30;
    *&v21[38] = v31;
    v13 = static Alignment.center.getter();
    v22 = v12;
    LOWORD(v23[0]) = 257;
    *(&v23[2] + 2) = *&v21[32];
    *(&v23[1] + 2) = *&v21[16];
    *(v23 + 2) = *v21;
    *&v23[3] = *&v21[46];
    *(&v23[3] + 1) = v13;
    v24 = v14;
    v34 = v23[1];
    v35 = v23[2];
    *v36 = v23[3];
    *&v36[16] = v14;
    v32 = v12;
    v33 = v23[0];
    v25 = 0;
    v36[24] = 0;
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v26, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v26, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined consume of ReactionHistoryEntryAvatarImage.ImagePhase(v10);
    outlined destroy of NSObject?(&v22, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    outlined destroy of NSObject?(&v22, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA20_MaskAlignmentEffectVyAA6CircleVGGMd);
    v34 = v26[2];
    v35 = v26[3];
    *v36 = *v27;
    *&v36[9] = *&v27[9];
    v32 = v26[0];
    v33 = v26[1];
  }

  v17 = v35;
  a1[2] = v34;
  a1[3] = v17;
  a1[4] = *v36;
  *(a1 + 73) = *&v36[9];
  result = v32;
  v19 = v33;
  *a1 = v32;
  a1[1] = v19;
  return result;
}

uint64_t ReactionHistoryEntryAvatarImage.body.getter()
{
  ReactionHistoryEntryAvatarImage.content.getter(v15);
  v1 = *v0;
  v2 = *(v0 + 16);
  v22 = *(v0 + 24);
  v23 = v2;
  v3 = *(v0 + 32);
  v21 = *(v0 + 40);
  v4 = *(v0 + 56);
  v19 = *(v0 + 48);
  v20 = v3;
  v18 = v4;
  v5 = swift_allocObject();
  v6 = *(v0 + 16);
  v5[1] = *v0;
  v5[2] = v6;
  v7 = *(v0 + 48);
  v5[3] = *(v0 + 32);
  v5[4] = v7;
  v16 = 0uLL;
  *&v17 = partial apply for closure #1 in ReactionHistoryEntryAvatarImage.body.getter;
  *(&v17 + 1) = v5;
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v9;
  v10 = *(v0 + 48);
  v8[3] = *(v0 + 32);
  v8[4] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for implicit closure #2 in implicit closure #1 in ReactionHistoryEntryAvatarImage.body.getter;
  *(v11 + 24) = v8;
  v12 = v1;
  outlined init with copy of Transaction(&v23, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v24, &_sScTyyts5Error_pGSgMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v20, v24, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(&v19, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v18, v24, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd);
  v13 = v12;
  outlined init with copy of Transaction(&v23, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v22, v24, &_sScTyyts5Error_pGSgMd);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v20, v24, &_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
  outlined init with copy of ReactionHistoryEntryAvatarImage.ImagePhase(&v19, v24);
  outlined init with copy of ModifiedContent<_ShapeView<ScaledShape<Capsule>, Material>, _AnimationModifier<Bool>>(&v18, v24, &_s7SwiftUI11AnyLocationCy22_GroupActivities_UIKit31ReactionHistoryEntryAvatarImageV12LoadingStateVGSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22_GroupActivities_UIKit20ReactionHistoryEntryV13ImageProviderOSgMd);
  lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _MaskAlignmentEffect<Circle>>, ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ReactionHistoryEntry.ImageProvider? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  v24[4] = v15[4];
  v24[5] = v15[5];
  v24[6] = v16;
  v24[7] = v17;
  v24[0] = v15[0];
  v24[1] = v15[1];
  v24[2] = v15[2];
  v24[3] = v15[3];
  return outlined destroy of NSObject?(v24, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameI0VGAA20_MaskAlignmentEffectVyAA6CircleVGGACyAA10_ShapeViewVyAqA5ColorVGALGGAA25_AppearanceActionModifierVGMd);
}