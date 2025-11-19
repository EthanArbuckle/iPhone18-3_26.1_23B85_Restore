uint64_t storeEnumTagSinglePayload for NavigationUpdateEvent.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t getEnumTag for NavigationUpdateEvent.Action(uint64_t a1)
{
  result = *(a1 + 56);
  if (result >= 4)
  {
    return (*a1 + 4);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationUpdateEvent.Action(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 56) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<NavigationEventHandlers>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<NavigationEventHandlers>, &type metadata for NavigationEventHandlers, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<NavigationEventHandlers> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>)
  {
    type metadata accessor for Binding<NavigationSplitViewColumn>?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<NavigationSplitViewColumn>?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

double specialized implicit closure #1 in _GraphInputs.navigationEventHandlers.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationEventHandlersKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationEventHandlersKey>);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

double specialized implicit closure #1 in _GraphInputs.navigationRequiredCompactColumn.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>);

    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t closure #1 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of TextField<_TextFieldStyleLabel>(a2, a3);
  v5 = a3 + *(type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter() + 20);

  return outlined init with copy of PlatformItem(a1, v5);
}

void *closure #2 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[8];
  if (v3)
  {
    v4 = result[6];
    v5 = result[7];
    v6 = result[5];
    v7 = v5 & 1;
    outlined copy of Text?(v6, v4, v5, v3);
    outlined copy of Text.Storage(v6, v4, v5 & 1);

    outlined consume of Text.Storage(v6, v4, v5 & 1);
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v7 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v3;
  *(a2 + 32) = v3 == 0;
  return result;
}

uint64_t static PlatformItemListTextFieldStyle.PlatformItemListWriter._makeView(view:inputs:)(uint64_t a1, __int128 *a2)
{
  v2 = a2[3];
  v3 = a2[1];
  v29 = a2[2];
  v30 = v2;
  v4 = a2[3];
  v31 = a2[4];
  v5 = a2[1];
  v27 = *a2;
  v28 = v5;
  v16 = v29;
  v17 = v4;
  v18 = a2[4];
  v32 = *(a2 + 20);
  v19 = *(a2 + 20);
  v14 = v27;
  v15 = v3;
  outlined init with copy of _ViewInputs(&v27, v12);
  _s7SwiftUI11_ViewInputsV22addPlatformItemListKey5flags13editOperationyxm_AA0fgH8FlagsSetV04EditL0OSgtAA0fghM0RzlFAA03AllfghM0V_Ttg5(2u);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter();
  v7 = AGGraphCreateOffsetAttribute2();
  v8 = v28;
  swift_beginAccess();
  v9 = *(v8 + 16);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v10 = PropertyList.Tracker.init()();
  v20 = OffsetAttribute2;
  v21 = v7;
  v22 = v9;
  v23 = v10;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  _ViewOutputs.init()();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v13 = v19;
  v12[0] = v14;
  v12[1] = v15;
  return outlined destroy of _ViewInputs(v12);
}

uint64_t implicit closure #1 in static PlatformItemListTextFieldStyle.PlatformItemListWriter._makeView(view:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems();
  return Attribute.init<A>(body:value:flags:update:)();
}

id PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter(v0);
    *(v0 + 24) = v3;
    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  return v2;
}

id closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = *(a1 + 24);

  v6 = v5;
  Value = AGGraphGetValue();
  outlined init with copy of TextField<_TextFieldStyleLabel>(Value, v4);

  v8 = type metadata accessor for PlatformTextFieldCoordinator(0);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment] = xmmword_18CD6A6D0;
  static PlatformItem.empty.getter();
  v10 = &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_selectionStorage];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isViewUpdating] = 0;
  v11 = &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_field];
  *v11 = 0;
  v11[8] = -1;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_ignoreNextUpdate] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_isUserEditing] = 0;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v4, &v9[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration]);
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v10[32] = 1;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  outlined destroy of TextField<_TextFieldStyleLabel>(v4);
  return v12;
}

uint64_t PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue()()
{
  v1 = v0;
  v52[79] = *MEMORY[0x1E69E9840];
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33[-v6];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.coordinator.getter();
  Value = AGGraphGetValue();
  outlined init with copy of PlatformItem(Value, v52);
  v13 = AGGraphGetValue();
  v36 = v10;
  v37 = v14;
  outlined init with copy of TextField<_TextFieldStyleLabel>(v13, v10);
  v35 = *(AGGraphGetValue() + 8);
  if (v15)
  {

    swift_retain_n();
    v34 = PropertyList.Tracker.hasDifferentUsedValues(_:)();
  }

  else
  {

    v34 = 0;
  }

  v16 = AGGraphGetValue();
  outlined init with copy of TextField<_TextFieldStyleLabel>(v16, v7);
  v17 = v7[180];
  v18 = *(v7 + 120);
  v19 = *(v7 + 152);
  v43 = *(v7 + 136);
  v44[0] = v19;
  if (v17)
  {
    *(v44 + 12) = *(v7 + 164);
    v20 = *(v7 + 88);
    v39 = *(v7 + 72);
    v40 = v20;
    v41 = *(v7 + 104);
    v42 = v18;
    v38[0] = v39;
    v38[1] = v20;
    v38[2] = v41;
    v38[3] = v18;
    v38[4] = v43;
    v38[5] = v19;
    *(&v38[5] + 12) = *(v44 + 12);
    BYTE12(v38[6]) = v17;
    v21 = &lazy cache variable for type metadata for Binding<TextFieldState>;
    v22 = MEMORY[0x1E6981948];
    _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(v38, &v45, &lazy cache variable for type metadata for Binding<TextFieldState>, MEMORY[0x1E6981948]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextFieldState>, &type metadata for TextFieldState, v22);
    MEMORY[0x18D00ACC0](v50);
    v49[0] = v43;
    v49[1] = v44[0];
    *(&v49[1] + 12) = *(v44 + 12);
  }

  else
  {
    *&v44[1] = *(v7 + 21);
    v23 = *(v7 + 88);
    v39 = *(v7 + 72);
    v40 = v23;
    v41 = *(v7 + 104);
    v42 = v18;
    v38[4] = v43;
    v38[5] = v19;
    *(&v38[5] + 12) = *(v7 + 164);
    v38[0] = v39;
    v38[1] = v23;
    v38[2] = v41;
    v38[3] = v18;
    BYTE12(v38[6]) = v17;
    v21 = &lazy cache variable for type metadata for State<TextFieldState>;
    v22 = MEMORY[0x1E6981790];
    _s7SwiftUI5StateVyAA09TextFieldC0VGWOcTm_0(v38, &v45, &lazy cache variable for type metadata for State<TextFieldState>, MEMORY[0x1E6981790]);
    _s7SwiftUI7BindingVyAA14TextFieldStateVGMaTm_0(0, &lazy cache variable for type metadata for State<TextFieldState>, &type metadata for TextFieldState, v22);
    State.wrappedValue.getter();
    v49[0] = v43;
    v49[1] = v44[0];
    *&v49[2] = *&v44[1];
  }

  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  outlined destroy of PlatformItemList.Item.SystemItem?(&v45, v21, &type metadata for TextFieldState, v22);
  outlined destroy of TextField<_TextFieldStyleLabel>(v7);
  v24 = v50[0];
  v47 = v50[2];
  v48 = v50[3];
  v49[0] = v51[0];
  *(v49 + 12) = *(v51 + 12);
  v45 = v50[0];
  v46 = v50[1];

  outlined destroy of TextFieldState(&v45);
  if (*(v0 + 40))
  {
    if (*(v0 + 32) == v24)
    {
      v25 = 1;
      if (v37)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v37)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v25 = 0;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for (_:)();
  if (AGGraphGetOutputValue())
  {
    v26 = v34;
    if (v34)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_17:
  outlined init with copy of TextField<_TextFieldStyleLabel>(v36, v4);
  v27 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of TextField<_TextFieldStyleLabel>(v4, &v11[v27]);
  swift_endAccess();
  outlined init with copy of PlatformItem(v52, v38);
  v28 = OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_label;
  swift_beginAccess();
  outlined assign with take of PlatformItem(v38, &v11[v28]);
  swift_endAccess();
  v26 = v34;
  if (v34)
  {
LABEL_19:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v29 = *&v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment];
    *&v11[OBJC_IVAR____TtC7SwiftUI28PlatformTextFieldCoordinator_environment] = v38[0];
    outlined consume of EnvironmentValues?(v29);
    goto LABEL_20;
  }

LABEL_18:
  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_19;
  }

LABEL_20:
  if (((v37 | v26) & 1) != 0 || (type metadata accessor for (_:)(), !AGGraphGetOutputValue()))
  {
    PlatformTextFieldCoordinator.update()();
  }

  type metadata accessor for (_:)();
  if (((AGGraphGetOutputValue() != 0) & v25) == 1)
  {

    outlined destroy of TextField<_TextFieldStyleLabel>(v36);
    outlined destroy of PlatformItem(v52);
  }

  else
  {
    outlined init with copy of PlatformItem(v52, v38);
    v30 = swift_allocObject();
    *(v30 + 16) = v11;
    *(v30 + 24) = v24;
    memcpy((v30 + 40), v38, 0x271uLL);
    *&v39 = partial apply for closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue();
    *(&v39 + 1) = v30;

    v31 = v11;
    AGGraphSetOutputValue();

    outlined destroy of TextField<_TextFieldStyleLabel>(v36);
    outlined destroy of PlatformItem(v52);
  }

  *(v1 + 32) = v24;
  return result;
}

uint64_t closure #1 in PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems.updateValue()(void **a1, void *a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v60 = a3;
  v63 = a1;
  v8 = type metadata accessor for PlatformItemList.Item();
  v9 = (v8 - 8);
  v62 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v98);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v79 = 0u;
  v13[32] = 0;
  *(v13 + 3) = 0;
  *(v13 + 8) = 0u;
  *(v13 + 5) = -1;
  v13[56] = 1;
  v14 = v107;
  *(v13 + 12) = v106;
  *(v13 + 13) = v14;
  *(v13 + 14) = v108[0];
  *(v13 + 235) = *(v108 + 11);
  v15 = v103;
  *(v13 + 8) = v102;
  *(v13 + 9) = v15;
  v16 = v105;
  *(v13 + 10) = v104;
  *(v13 + 11) = v16;
  v17 = v99;
  *(v13 + 4) = v98;
  *(v13 + 5) = v17;
  v18 = v101;
  *(v13 + 6) = v100;
  *(v13 + 7) = v18;
  *(v13 + 19) = 0u;
  *(v13 + 20) = 0u;
  *(v13 + 17) = 0u;
  *(v13 + 18) = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 42) = 0x3FFFFFFFCLL;
  *(v13 + 344) = 0u;
  *(v13 + 360) = 0u;
  *(v13 + 376) = 0u;
  *(v13 + 392) = 0u;
  *(v13 + 51) = 0;
  *(v13 + 52) = 1;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  *(v13 + 60) = 0;
  *(v13 + 488) = 0u;
  v13[504] = 0;
  *(v13 + 32) = 0u;
  v13[528] = 4;
  *(v13 + 536) = 0u;
  *(v13 + 552) = 0u;
  *(v13 + 568) = 0u;
  *(v13 + 584) = 0u;
  *(v13 + 600) = 0u;
  *(v13 + 616) = 0u;
  *(v13 + 632) = 0u;
  *(v13 + 648) = 0u;
  *(v13 + 664) = 0u;
  *(v13 + 680) = 0u;
  *(v13 + 696) = 0u;
  *(v13 + 712) = 0u;
  *(v13 + 728) = 0u;
  *(v13 + 744) = 0u;
  *(v13 + 760) = 0u;
  *(v13 + 776) = 0u;
  *(v13 + 792) = 0u;
  *(v13 + 808) = 0u;
  *(v13 + 824) = 0u;
  *(v13 + 840) = 0u;
  *(v13 + 107) = 0;
  *(v13 + 108) = 1;
  *(v13 + 872) = 0u;
  *(v13 + 888) = 0u;
  *(v13 + 904) = 0u;
  *(v13 + 920) = 0u;
  *(v13 + 936) = 0u;
  *(v13 + 476) = 1283;
  v13[954] = 3;
  v19 = v9[30];
  v20 = type metadata accessor for CommandOperation();
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  v13[v9[31]] = 0;
  v13[v9[32]] = 0;
  v13[v9[33]] = 2;
  v13[v9[34]] = 0;
  v13[v9[35]] = 0;
  v21 = v9[36];
  *v13 = 0;
  v22 = *(v13 + 13);
  v109[8] = *(v13 + 12);
  v109[9] = v22;
  v110[0] = *(v13 + 14);
  *(v110 + 11) = *(v13 + 235);
  v23 = *(v13 + 9);
  v109[4] = *(v13 + 8);
  v109[5] = v23;
  v24 = *(v13 + 11);
  v109[6] = *(v13 + 10);
  v109[7] = v24;
  v25 = *(v13 + 5);
  v109[0] = *(v13 + 4);
  v109[1] = v25;
  v26 = *(v13 + 7);
  v109[2] = *(v13 + 6);
  v109[3] = v26;
  v27 = MEMORY[0x1E69E6720];
  outlined destroy of PlatformItemList.Item.SystemItem?(v109, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720]);
  v28 = v107;
  *(v13 + 12) = v106;
  *(v13 + 13) = v28;
  *(v13 + 14) = v108[0];
  *(v13 + 235) = *(v108 + 11);
  v29 = v103;
  *(v13 + 8) = v102;
  *(v13 + 9) = v29;
  v30 = v105;
  *(v13 + 10) = v104;
  *(v13 + 11) = v30;
  v31 = v99;
  *(v13 + 4) = v98;
  *(v13 + 5) = v31;
  v32 = v101;
  *(v13 + 6) = v100;
  *(v13 + 7) = v32;
  v33 = *(v13 + 456);
  v111[2] = *(v13 + 440);
  v111[3] = v33;
  v112 = v13[472];
  v34 = *(v13 + 424);
  v111[0] = *(v13 + 408);
  v111[1] = v34;
  outlined destroy of PlatformItemList.Item.SystemItem?(v111, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, v27);
  *(v13 + 408) = xmmword_18CD633F0;
  *(v13 + 424) = 0u;
  *(v13 + 440) = 0u;
  *(v13 + 456) = 0u;
  v13[472] = 0;
  v35 = v60;
  outlined assign with take of PlatformItemList.Item.Accessibility?(&v79, (v13 + 536));
  *&v13[v21] = 0;
  *(v13 + 6) = 0;
  v36 = *(v13 + 24);
  v113[4] = *(v13 + 23);
  v113[5] = v36;
  v114 = *(v13 + 50);
  v37 = *(v13 + 20);
  v113[0] = *(v13 + 19);
  v113[1] = v37;
  v38 = *(v13 + 22);
  v113[2] = *(v13 + 21);
  v113[3] = v38;
  v39 = a2;
  outlined destroy of PlatformItemList.Item.SystemItem?(v113, &lazy cache variable for type metadata for PlatformItemList.Item.SystemItem?, &type metadata for PlatformItemList.Item.SystemItem, v27);
  *(v13 + 38) = a2;
  *(v13 + 42) = 0x4000000000000000;
  v40 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v40 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v42 = MEMORY[0x18D00C850](v35, a4);
    v43 = [v41 initWithString_];

    *v13 = v43;
    v44 = v63;
    v45 = v61;
  }

  else
  {
    v46 = a5[15];
    v91 = a5[14];
    v92 = v46;
    v93 = a5[16];
    v47 = a5[11];
    v87 = a5[10];
    v88 = v47;
    v48 = a5[13];
    v89 = a5[12];
    v90 = v48;
    v49 = a5[7];
    v83 = a5[6];
    v84 = v49;
    v50 = a5[9];
    v85 = a5[8];
    v86 = v50;
    v51 = a5[3];
    v79 = a5[2];
    v80 = v51;
    v52 = a5[5];
    v81 = a5[4];
    v82 = v52;
    v53 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v79);
    v44 = v63;
    if (v53 == 1)
    {
      v45 = v61;
    }

    else
    {
      v76 = v91;
      v77 = v92;
      v78 = v93;
      v72 = v87;
      v73 = v88;
      v74 = v89;
      v75 = v90;
      v68 = v83;
      v69 = v84;
      v70 = v85;
      v71 = v86;
      v64 = v79;
      v65 = v80;
      v66 = v81;
      v67 = v82;
      v54 = PlatformItem.PrimaryContent.text.getter();
      v45 = v61;
      if (v54)
      {
        v55 = v54;
        if ([v54 length])
        {
          *v13 = v55;
        }

        else
        {
        }
      }
    }
  }

  outlined init with copy of PlatformItemList.Item(v13, v45);
  v56 = *v44;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
  }

  v58 = v56[2];
  v57 = v56[3];
  if (v58 >= v57 >> 1)
  {
    v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v56);
  }

  v56[2] = v58 + 1;
  outlined init with take of PlatformItemList.Item(v45, v56 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v58);
  *v44 = v56;
  return _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v13, type metadata accessor for PlatformItemList.Item);
}

__n128 protocol witness for TextFieldStyle._body(configuration:) in conformance PlatformItemListTextFieldStyle@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12[-v6];
  outlined init with copy of TextField<_TextFieldStyleLabel>(a1, &v12[-v6]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of TextField<_TextFieldStyleLabel>(v7, v9 + v8);
  v13 = a1;
  type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter();
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
  lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>();
  PlatformItemsReader.init(for:content:source:)();
  v10 = v17;
  *(a2 + 32) = v16;
  *(a2 + 48) = v10;
  *(a2 + 64) = v18;
  result = v15;
  *a2 = v14;
  *(a2 + 16) = result;
  return result;
}

uint64_t outlined init with take of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in PlatformItemListTextFieldStyle._body(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80));

  return closure #1 in PlatformItemListTextFieldStyle._body(configuration:)(a1, v6, a2);
}

uint64_t type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter()
{
  result = type metadata singleton initialization cache for PlatformItemListTextFieldStyle.PlatformItemListWriter;
  if (!type metadata singleton initialization cache for PlatformItemListTextFieldStyle.PlatformItemListWriter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    v12 = v5 + ((v4 + 16) & ~v4);

    return v12;
  }

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
  v86 = a2[17];
  v87 = a2[18];
  v88 = a2[19];
  v89 = a2[20];
  v90 = a2[21];
  __dsta = *(a2 + 44);
  v93 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v13, v14, v15, v16, v17, v18, v20, v19, v86, v87, v88, v89, v90, __dsta, v93);
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  *(a1 + 120) = v20;
  *(a1 + 128) = v19;
  *(a1 + 136) = v86;
  *(a1 + 144) = v87;
  *(a1 + 152) = v88;
  *(a1 + 160) = v89;
  *(a1 + 168) = v90;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v93;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v22 = *(v21 + 56);
  v23 = (a1 + v22);
  v24 = (a2 + v22);
  type metadata accessor for Binding<TextSelection?>(0);
  v26 = v25;
  v27 = *(v25 - 8);
  v12 = a1;
  if ((*(v27 + 48))(v24, 1, v25))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
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
    v35 = v31;
    v36 = v32;

    if (v34(v35, 1, v36))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v35, *(*(v37 - 8) + 64));
    }

    else
    {
      v38 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v39 - 8) + 16))(__dst, v35, v39);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v35, *(*(v38 - 8) + 64));
      }

      __dst[*(v36 + 20)] = *(v35 + *(v36 + 20));
      (*(v33 + 56))(__dst, 0, 1, v36);
    }

    (*(v27 + 56))(v23, 0, 1, v26);
    v12 = a1;
  }

  v40 = *(a3 + 20);
  v41 = v12 + v40;
  v42 = a2 + v40;
  v43 = *(a2 + v40);
  v44 = *(a2 + v40 + 8);
  *v41 = v43;
  *(v41 + 8) = v44;
  *(v41 + 16) = *(v42 + 16);
  *(v41 + 24) = *(v42 + 24);
  *(v41 + 28) = *(v42 + 28);
  v45 = *(v42 + 32);

  if (v45 == 1)
  {
    v46 = *(v42 + 240);
    *(v41 + 224) = *(v42 + 224);
    *(v41 + 240) = v46;
    *(v41 + 256) = *(v42 + 256);
    v47 = *(v42 + 176);
    *(v41 + 160) = *(v42 + 160);
    *(v41 + 176) = v47;
    v48 = *(v42 + 208);
    *(v41 + 192) = *(v42 + 192);
    *(v41 + 208) = v48;
    v49 = *(v42 + 112);
    *(v41 + 96) = *(v42 + 96);
    *(v41 + 112) = v49;
    v50 = *(v42 + 144);
    *(v41 + 128) = *(v42 + 128);
    *(v41 + 144) = v50;
    v51 = *(v42 + 48);
    *(v41 + 32) = *(v42 + 32);
    *(v41 + 48) = v51;
    v52 = *(v42 + 80);
    *(v41 + 64) = *(v42 + 64);
    *(v41 + 80) = v52;
  }

  else
  {
    v53 = *(v42 + 40);
    v54 = *(v42 + 48);
    *(v41 + 32) = v45;
    *(v41 + 40) = v53;
    *(v41 + 48) = v54;
    v55 = *(v42 + 184);
    v56 = v45;
    v57 = v53;
    v58 = v54;
    if (v55 >> 1 == 4294967294)
    {
      *(v41 + 184) = *(v42 + 184);
      *(v41 + 200) = *(v42 + 200);
      *(v41 + 216) = *(v42 + 216);
      *(v41 + 227) = *(v42 + 227);
      *(v41 + 120) = *(v42 + 120);
      *(v41 + 136) = *(v42 + 136);
      *(v41 + 152) = *(v42 + 152);
      *(v41 + 168) = *(v42 + 168);
      *(v41 + 56) = *(v42 + 56);
      *(v41 + 72) = *(v42 + 72);
      *(v41 + 88) = *(v42 + 88);
      *(v41 + 104) = *(v42 + 104);
    }

    else
    {
      v59 = *(v42 + 64);
      if (v59 == 255)
      {
        *(v41 + 56) = *(v42 + 56);
        *(v41 + 64) = *(v42 + 64);
      }

      else
      {
        v60 = *(v42 + 56);
        outlined copy of GraphicsImage.Contents(v60, *(v42 + 64));
        *(v41 + 56) = v60;
        *(v41 + 64) = v59;
        v55 = *(v42 + 184);
      }

      *(v41 + 72) = *(v42 + 72);
      *(v41 + 80) = *(v42 + 80);
      *(v41 + 96) = *(v42 + 96);
      *(v41 + 100) = *(v42 + 100);
      *(v41 + 113) = *(v42 + 113);
      v61 = *(v42 + 144);
      *(v41 + 128) = *(v42 + 128);
      *(v41 + 144) = v61;
      *(v41 + 160) = *(v42 + 160);
      *(v41 + 162) = *(v42 + 162);
      *(v41 + 163) = *(v42 + 163);
      if (v55 >> 1 == 0xFFFFFFFF)
      {
        *(v41 + 168) = *(v42 + 168);
        *(v41 + 184) = *(v42 + 184);
      }

      else
      {
        v62 = *(v42 + 168);
        v63 = *(v42 + 176);
        v64 = *(v42 + 192);
        outlined copy of AccessibilityImageLabel(v62, v63, v55);
        *(v41 + 168) = v62;
        *(v41 + 176) = v63;
        *(v41 + 184) = v55;
        *(v41 + 192) = v64;
      }

      v65 = *(v42 + 208);
      *(v41 + 200) = *(v42 + 200);
      *(v41 + 208) = v65;
      *(v41 + 216) = *(v42 + 216);
      *(v41 + 220) = *(v42 + 220);
      *(v41 + 224) = *(v42 + 224);
      v66 = *(v42 + 232);
      *(v41 + 232) = v66;
      *(v41 + 240) = *(v42 + 240);
      *(v41 + 242) = *(v42 + 242);
      swift_unknownObjectRetain();

      v67 = v66;
    }

    *(v41 + 248) = *(v42 + 248);
    *(v41 + 256) = *(v42 + 256);
    *(v41 + 264) = *(v42 + 264);
  }

  *(v41 + 272) = *(v42 + 272);
  v68 = *(v42 + 304);

  if (v68 == 1)
  {
    v69 = *(v42 + 296);
    *(v41 + 280) = *(v42 + 280);
    *(v41 + 296) = v69;
  }

  else
  {
    *(v41 + 280) = *(v42 + 280);
    *(v41 + 288) = *(v42 + 288);
    *(v41 + 304) = v68;
    swift_unknownObjectRetain();
  }

  *(v41 + 312) = *(v42 + 312);
  *(v41 + 320) = *(v42 + 320);
  if (!*(v42 + 608))
  {
    memcpy((v41 + 328), (v42 + 328), 0x129uLL);
    return v12;
  }

  v70 = *(v42 + 336);
  *(v41 + 328) = *(v42 + 328);
  *(v41 + 336) = v70;
  *(v41 + 344) = *(v42 + 344);
  *(v41 + 352) = *(v42 + 352);
  *(v41 + 360) = *(v42 + 360);
  *(v41 + 368) = *(v42 + 368);
  *(v41 + 384) = *(v42 + 384);
  v71 = (v41 + 392);
  v72 = (v42 + 392);
  v73 = *(v42 + 416);

  if (!v73)
  {
    v75 = *(v42 + 408);
    *v71 = *v72;
    *(v41 + 408) = v75;
    *(v41 + 424) = *(v42 + 424);
LABEL_37:
    *(v41 + 432) = *(v42 + 432);

    goto LABEL_38;
  }

  if (v73 != 1)
  {
    v76 = *(v42 + 424);
    *(v41 + 416) = v73;
    *(v41 + 424) = v76;
    (**(v73 - 8))(v41 + 392, v42 + 392, v73);
    goto LABEL_37;
  }

  v74 = *(v42 + 408);
  *v71 = *v72;
  *(v41 + 408) = v74;
  *(v41 + 424) = *(v42 + 424);
LABEL_38:
  *(v41 + 440) = *(v42 + 440);
  *(v41 + 448) = *(v42 + 448);
  v77 = (v41 + 456);
  v78 = (v42 + 456);
  v79 = *(v42 + 568);
  if (v79 == 1)
  {
    v80 = *(v42 + 568);
    *(v41 + 552) = *(v42 + 552);
    *(v41 + 568) = v80;
    *(v41 + 584) = *(v42 + 584);
    *(v41 + 600) = *(v42 + 600);
    v81 = *(v42 + 504);
    *(v41 + 488) = *(v42 + 488);
    *(v41 + 504) = v81;
    v82 = *(v42 + 536);
    *(v41 + 520) = *(v42 + 520);
    *(v41 + 536) = v82;
    v83 = *(v42 + 472);
    *v77 = *v78;
    *(v41 + 472) = v83;
  }

  else
  {
    *v77 = *v78;
    *(v41 + 464) = *(v42 + 464);
    *(v41 + 472) = *(v42 + 472);
    *(v41 + 480) = *(v42 + 480);
    *(v41 + 481) = *(v42 + 481);
    *(v41 + 483) = *(v42 + 483);
    *(v41 + 484) = *(v42 + 484);
    *(v41 + 488) = *(v42 + 488);
    v84 = *(v42 + 512);
    *(v41 + 496) = *(v42 + 496);
    *(v41 + 512) = v84;
    *(v41 + 528) = *(v42 + 528);
    *(v41 + 536) = *(v42 + 536);
    *(v41 + 544) = *(v42 + 544);
    *(v41 + 560) = *(v42 + 560);
    *(v41 + 568) = v79;
    *(v41 + 576) = *(v42 + 576);
    *(v41 + 592) = *(v42 + 592);
    *(v41 + 600) = *(v42 + 600);
  }

  *(v41 + 608) = *(v42 + 608);
  *(v41 + 616) = *(v42 + 616);
  *(v41 + 624) = *(v42 + 624);

  return v12;
}

uint64_t destroy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 64))
  {
    outlined consume of Text.Storage(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  }

  outlined consume of StateOrBinding<TextFieldState>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 180));
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = a1 + *(v4 + 56);
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v8 = *(v7 + 32);
    v9 = type metadata accessor for TextSelection(0);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v10 - 8) + 8))(v5 + v8, v10);
      }
    }
  }

  v11 = a1 + *(a2 + 20);

  v12 = *(v11 + 32);
  if (v12 != 1)
  {

    v13 = *(v11 + 184);
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v15 = *(v11 + 64);
      if (v15 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v11 + 56), v15);
        v13 = *(v11 + 184);
        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v14 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v11 + 168), *(v11 + 176), v13);
      }

      swift_unknownObjectRelease();
    }
  }

  result = *(v11 + 304);
  if (result != 1)
  {
    result = swift_unknownObjectRelease();
  }

  if (*(v11 + 608))
  {

    v17 = *(v11 + 416);
    if (v17)
    {
      if (v17 == 1)
      {
LABEL_22:
        if (*(v11 + 568) != 1)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v11 + 392);
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2, uint64_t a3)
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
    *(a1 + 64) = *(a2 + 64);
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
  v85 = *(a2 + 136);
  v86 = *(a2 + 144);
  v87 = *(a2 + 152);
  v88 = *(a2 + 160);
  v89 = *(a2 + 168);
  __dsta = *(a2 + 176);
  v92 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v11, v12, v13, v14, v15, v16, v18, v17, v85, v86, v87, v88, v89, __dsta, v92);
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  *(a1 + 112) = v16;
  *(a1 + 120) = v18;
  *(a1 + 128) = v17;
  *(a1 + 136) = v85;
  *(a1 + 144) = v86;
  *(a1 + 152) = v87;
  *(a1 + 160) = v88;
  *(a1 + 168) = v89;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v92;
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v20 = *(v19 + 56);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  type metadata accessor for Binding<TextSelection?>(0);
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = a1;
  if ((*(v25 + 48))(v22, 1, v23))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v21, v22, *(*(v27 - 8) + 64));
  }

  else
  {
    v28 = v22[1];
    *v21 = *v22;
    v21[1] = v28;
    v29 = *(v24 + 32);
    __dst = v21 + v29;
    v30 = v22 + v29;
    v31 = type metadata accessor for TextSelection(0);
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    v34 = v30;
    v35 = v31;

    if (v33(v34, 1, v35))
    {
      type metadata accessor for TextSelection?(0);
      memcpy(__dst, v34, *(*(v36 - 8) + 64));
    }

    else
    {
      v37 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v38 - 8) + 16))(__dst, v34, v38);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(__dst, v34, *(*(v37 - 8) + 64));
      }

      __dst[*(v35 + 20)] = *(v34 + *(v35 + 20));
      (*(v32 + 56))(__dst, 0, 1, v35);
    }

    (*(v25 + 56))(v21, 0, 1, v24);
    v26 = a1;
  }

  v39 = *(a3 + 20);
  v40 = v26 + v39;
  v41 = a2 + v39;
  v42 = *(a2 + v39);
  v43 = *(a2 + v39 + 8);
  *v40 = v42;
  *(v40 + 8) = v43;
  *(v40 + 16) = *(v41 + 16);
  *(v40 + 24) = *(v41 + 24);
  *(v40 + 28) = *(v41 + 28);
  v44 = *(v41 + 32);

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
    *(v40 + 32) = *(v41 + 32);
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
    return v26;
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

  if (!v72)
  {
    v74 = *(v41 + 408);
    *v70 = *v71;
    *(v40 + 408) = v74;
    *(v40 + 424) = *(v41 + 424);
LABEL_35:
    *(v40 + 432) = *(v41 + 432);

    goto LABEL_36;
  }

  if (v72 != 1)
  {
    v75 = *(v41 + 424);
    *(v40 + 416) = v72;
    *(v40 + 424) = v75;
    (**(v72 - 8))(v40 + 392, v41 + 392, v72);
    goto LABEL_35;
  }

  v73 = *(v41 + 408);
  *v70 = *v71;
  *(v40 + 408) = v73;
  *(v40 + 424) = *(v41 + 424);
LABEL_36:
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

  return v26;
}

uint64_t assignWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v273 = a2;
  v21 = *(a2 + 104);
  v22 = *(a2 + 112);
  v23 = *(a2 + 120);
  v24 = *(a2 + 128);
  v265 = *(a2 + 136);
  v25 = *(a2 + 144);
  v266 = *(v273 + 152);
  v267 = *(v273 + 160);
  v268 = *(v273 + 168);
  __dsta = *(v273 + 176);
  v271 = *(v273 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v17, v18, v19, v20, v21, v22, v23, v24, v265, v25, v266, v267, v268, __dsta, v271);
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
  v39 = v273;
  *(a1 + 120) = v23;
  *(a1 + 128) = v24;
  *(a1 + 136) = v265;
  *(a1 + 144) = v25;
  *(a1 + 152) = v266;
  *(a1 + 160) = v267;
  *(a1 + 168) = v268;
  *(a1 + 176) = __dsta;
  *(a1 + 180) = v271;
  outlined consume of StateOrBinding<TextFieldState>(v26, v27, v28, v29, v30, v31, v32, v33, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v41 = *(v40 + 56);
  v42 = (a1 + v41);
  v43 = (v273 + v41);
  type metadata accessor for Binding<TextSelection?>(0);
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = *(v46 + 48);
  LODWORD(v24) = v47(v42, 1, v44);
  v48 = v47(v43, 1, v45);
  v49 = a1;
  if (v24)
  {
    if (!v48)
    {
      *v42 = *v43;
      v42[1] = v43[1];
      v50 = *(v45 + 32);
      __dst = v42 + v50;
      v51 = v43 + v50;
      v52 = type metadata accessor for TextSelection(0);
      v53 = *(v52 - 8);
      v54 = *(v53 + 48);

      if (v54(v51, 1, v52))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(__dst, v51, *(*(v55 - 8) + 64));
      }

      else
      {
        v67 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v68 - 8) + 16))(__dst, v51, v68);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(__dst, v51, *(*(v67 - 8) + 64));
        }

        __dst[*(v52 + 20)] = v51[*(v52 + 20)];
        (*(v53 + 56))(__dst, 0, 1, v52);
      }

      v49 = a1;
      (*(v46 + 56))(v42, 0, 1, v45);
      goto LABEL_27;
    }

LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    memcpy(v42, v43, *(*(v56 - 8) + 64));
    goto LABEL_28;
  }

  if (v48)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v42, type metadata accessor for Binding<TextSelection?>);
    goto LABEL_14;
  }

  *v42 = *v43;

  v42[1] = v43[1];

  v57 = *(v45 + 32);
  v58 = v42 + v57;
  v59 = v43 + v57;
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
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v66 - 8) + 16))(v58, v59, v66);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v58, v59, *(*(v65 - 8) + 64));
      }

      v58[*(v60 + 20)] = v59[*(v60 + 20)];
      (*(v61 + 56))(v58, 0, 1, v60);
      goto LABEL_27;
    }

LABEL_23:
    type metadata accessor for TextSelection?(0);
    memcpy(v58, v59, *(*(v69 - 8) + 64));
LABEL_27:
    v39 = v273;
    goto LABEL_28;
  }

  if (v64)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v58, type metadata accessor for TextSelection);
    goto LABEL_23;
  }

  v39 = v273;
  if (a1 != v273)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v58, type metadata accessor for TextSelection.Indices);
    v173 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v174 - 8) + 16))(v58, v59, v174);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v58, v59, *(*(v173 - 8) + 64));
    }
  }

  v58[*(v60 + 20)] = v59[*(v60 + 20)];
LABEL_28:
  v70 = *(a3 + 20);
  v71 = v49 + v70;
  v72 = v39 + v70;
  *(v49 + v70) = *(v39 + v70);

  *(v71 + 8) = *(v72 + 8);

  *(v71 + 16) = *(v72 + 16);
  *(v71 + 24) = *(v72 + 24);
  *(v71 + 28) = *(v72 + 28);
  v73 = (v71 + 32);
  v74 = *(v71 + 32);
  v76 = (v72 + 32);
  v75 = *(v72 + 32);
  if (v74 == 1)
  {
    if (v75 == 1)
    {
      v77 = *v76;
      v78 = *(v72 + 64);
      *(v71 + 48) = *(v72 + 48);
      *(v71 + 64) = v78;
      *v73 = v77;
      v79 = *(v72 + 80);
      v80 = *(v72 + 96);
      v81 = *(v72 + 128);
      *(v71 + 112) = *(v72 + 112);
      *(v71 + 128) = v81;
      *(v71 + 80) = v79;
      *(v71 + 96) = v80;
      v82 = *(v72 + 144);
      v83 = *(v72 + 160);
      v84 = *(v72 + 192);
      *(v71 + 176) = *(v72 + 176);
      *(v71 + 192) = v84;
      *(v71 + 144) = v82;
      *(v71 + 160) = v83;
      v85 = *(v72 + 208);
      v86 = *(v72 + 224);
      v87 = *(v72 + 256);
      *(v71 + 240) = *(v72 + 240);
      *(v71 + 256) = v87;
      *(v71 + 208) = v85;
      *(v71 + 224) = v86;
    }

    else
    {
      *(v71 + 32) = v75;
      v99 = *(v72 + 40);
      *(v71 + 40) = v99;
      v100 = *(v72 + 48);
      *(v71 + 48) = v100;
      v101 = *(v72 + 184);
      v102 = v75;
      v103 = v99;
      v104 = v100;
      if (v101 >> 1 == 4294967294)
      {
        v105 = *(v72 + 56);
        v106 = *(v72 + 72);
        v107 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v107;
        *(v71 + 72) = v106;
        *(v71 + 56) = v105;
        v108 = *(v72 + 120);
        v109 = *(v72 + 136);
        v110 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v110;
        *(v71 + 136) = v109;
        *(v71 + 120) = v108;
        v111 = *(v72 + 184);
        v112 = *(v72 + 200);
        v113 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v113;
        *(v71 + 200) = v112;
        *(v71 + 184) = v111;
      }

      else
      {
        v131 = *(v72 + 64);
        if (v131 == 255)
        {
          v148 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v148;
        }

        else
        {
          v132 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v132, *(v72 + 64));
          *(v71 + 56) = v132;
          *(v71 + 64) = v131;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v149 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v149;
        v150 = *(v72 + 128);
        v151 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v150;
        *(v71 + 144) = v151;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v152 = *(v72 + 184);
        if (v152 >> 1 == 0xFFFFFFFF)
        {
          v153 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v153;
        }

        else
        {
          v154 = *(v72 + 168);
          v155 = *(v72 + 176);
          v156 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v154, v155, *(v72 + 184));
          *(v71 + 168) = v154;
          *(v71 + 176) = v155;
          *(v71 + 184) = v152;
          *(v71 + 192) = v156;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v157 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v157;
        v158 = *(v72 + 232);
        *(v71 + 232) = v158;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v159 = v158;
      }

      *(v71 + 248) = *(v72 + 248);
      *(v71 + 256) = *(v72 + 256);
      *(v71 + 264) = *(v72 + 264);
    }
  }

  else if (v75 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v71 + 32);
    v89 = *(v72 + 48);
    v88 = *(v72 + 64);
    *v73 = *v76;
    *(v71 + 48) = v89;
    *(v71 + 64) = v88;
    v90 = *(v72 + 128);
    v92 = *(v72 + 80);
    v91 = *(v72 + 96);
    *(v71 + 112) = *(v72 + 112);
    *(v71 + 128) = v90;
    *(v71 + 80) = v92;
    *(v71 + 96) = v91;
    v93 = *(v72 + 192);
    v95 = *(v72 + 144);
    v94 = *(v72 + 160);
    *(v71 + 176) = *(v72 + 176);
    *(v71 + 192) = v93;
    *(v71 + 144) = v95;
    *(v71 + 160) = v94;
    v96 = *(v72 + 256);
    v98 = *(v72 + 208);
    v97 = *(v72 + 224);
    *(v71 + 240) = *(v72 + 240);
    *(v71 + 256) = v96;
    *(v71 + 208) = v98;
    *(v71 + 224) = v97;
  }

  else
  {
    *(v71 + 32) = v75;
    v114 = v75;

    v115 = *(v71 + 40);
    v116 = *(v72 + 40);
    *(v71 + 40) = v116;
    v117 = v116;

    v118 = *(v71 + 48);
    v119 = *(v72 + 48);
    *(v71 + 48) = v119;
    v120 = v119;

    v121 = *(v72 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v71 + 184) >> 1 == 4294967294)
    {
      if (v121 == 0x1FFFFFFFCLL)
      {
        v122 = *(v72 + 56);
        v123 = *(v72 + 72);
        v124 = *(v72 + 88);
        *(v71 + 104) = *(v72 + 104);
        *(v71 + 88) = v124;
        *(v71 + 72) = v123;
        *(v71 + 56) = v122;
        v125 = *(v72 + 120);
        v126 = *(v72 + 136);
        v127 = *(v72 + 152);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 152) = v127;
        *(v71 + 136) = v126;
        *(v71 + 120) = v125;
        v128 = *(v72 + 184);
        v129 = *(v72 + 200);
        v130 = *(v72 + 216);
        *(v71 + 227) = *(v72 + 227);
        *(v71 + 216) = v130;
        *(v71 + 200) = v129;
        *(v71 + 184) = v128;
      }

      else
      {
        v142 = *(v72 + 64);
        if (v142 == 255)
        {
          v160 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v160;
        }

        else
        {
          v143 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v143, *(v72 + 64));
          *(v71 + 56) = v143;
          *(v71 + 64) = v142;
        }

        *(v71 + 72) = *(v72 + 72);
        *(v71 + 80) = *(v72 + 80);
        *(v71 + 96) = *(v72 + 96);
        v161 = *(v72 + 100);
        *(v71 + 113) = *(v72 + 113);
        *(v71 + 100) = v161;
        v162 = *(v72 + 128);
        v163 = *(v72 + 144);
        *(v71 + 160) = *(v72 + 160);
        *(v71 + 128) = v162;
        *(v71 + 144) = v163;
        *(v71 + 161) = *(v72 + 161);
        *(v71 + 162) = *(v72 + 162);
        *(v71 + 163) = *(v72 + 163);
        v164 = *(v72 + 184);
        if (v164 >> 1 == 0xFFFFFFFF)
        {
          v165 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v165;
        }

        else
        {
          v166 = *(v72 + 168);
          v167 = *(v72 + 176);
          v168 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v166, v167, *(v72 + 184));
          *(v71 + 168) = v166;
          *(v71 + 176) = v167;
          *(v71 + 184) = v164;
          *(v71 + 192) = v168;
        }

        *(v71 + 200) = *(v72 + 200);
        *(v71 + 208) = *(v72 + 208);
        *(v71 + 216) = *(v72 + 216);
        *(v71 + 217) = *(v72 + 217);
        v169 = *(v72 + 220);
        *(v71 + 224) = *(v72 + 224);
        *(v71 + 220) = v169;
        v170 = *(v72 + 232);
        *(v71 + 232) = v170;
        *(v71 + 240) = *(v72 + 240);
        *(v71 + 242) = *(v72 + 242);
        swift_unknownObjectRetain();

        v171 = v170;
      }
    }

    else if (v121 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(v71 + 56);
      v133 = *(v72 + 72);
      v134 = *(v72 + 88);
      v135 = *(v72 + 104);
      *(v71 + 56) = *(v72 + 56);
      *(v71 + 104) = v135;
      *(v71 + 88) = v134;
      *(v71 + 72) = v133;
      v136 = *(v72 + 136);
      v137 = *(v72 + 152);
      v138 = *(v72 + 168);
      *(v71 + 120) = *(v72 + 120);
      *(v71 + 168) = v138;
      *(v71 + 152) = v137;
      *(v71 + 136) = v136;
      v139 = *(v72 + 200);
      v140 = *(v72 + 216);
      v141 = *(v72 + 227);
      *(v71 + 184) = *(v72 + 184);
      *(v71 + 227) = v141;
      *(v71 + 216) = v140;
      *(v71 + 200) = v139;
    }

    else
    {
      v144 = *(v72 + 64);
      if (*(v71 + 64) == 255)
      {
        if (v144 == 255)
        {
          v176 = *(v72 + 56);
          *(v71 + 64) = *(v72 + 64);
          *(v71 + 56) = v176;
        }

        else
        {
          v172 = *(v72 + 56);
          outlined copy of GraphicsImage.Contents(v172, *(v72 + 64));
          *(v71 + 56) = v172;
          *(v71 + 64) = v144;
        }
      }

      else if (v144 == 255)
      {
        outlined destroy of GraphicsImage.Contents(v71 + 56);
        v175 = *(v72 + 64);
        *(v71 + 56) = *(v72 + 56);
        *(v71 + 64) = v175;
      }

      else
      {
        v145 = *(v72 + 56);
        outlined copy of GraphicsImage.Contents(v145, *(v72 + 64));
        v146 = *(v71 + 56);
        *(v71 + 56) = v145;
        v147 = *(v71 + 64);
        *(v71 + 64) = v144;
        outlined consume of GraphicsImage.Contents(v146, v147);
      }

      *(v71 + 72) = *(v72 + 72);
      *(v71 + 80) = *(v72 + 80);
      *(v71 + 88) = *(v72 + 88);
      *(v71 + 96) = *(v72 + 96);
      v177 = *(v72 + 100);
      *(v71 + 113) = *(v72 + 113);
      *(v71 + 100) = v177;
      v178 = *(v72 + 128);
      v179 = *(v72 + 144);
      *(v71 + 160) = *(v72 + 160);
      *(v71 + 128) = v178;
      *(v71 + 144) = v179;
      *(v71 + 161) = *(v72 + 161);
      *(v71 + 162) = *(v72 + 162);
      *(v71 + 163) = *(v72 + 163);
      v180 = *(v72 + 184);
      v181 = v180 & 0xFFFFFFFFFFFFFFFELL;
      if (*(v71 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v181 == 0x1FFFFFFFELL)
        {
          v182 = *(v72 + 168);
          *(v71 + 184) = *(v72 + 184);
          *(v71 + 168) = v182;
        }

        else
        {
          v184 = *(v72 + 168);
          v185 = *(v72 + 176);
          v186 = *(v72 + 192);
          outlined copy of AccessibilityImageLabel(v184, v185, *(v72 + 184));
          *(v71 + 168) = v184;
          *(v71 + 176) = v185;
          *(v71 + 184) = v180;
          *(v71 + 192) = v186;
        }
      }

      else if (v181 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(v71 + 168);
        v183 = *(v72 + 184);
        *(v71 + 168) = *(v72 + 168);
        *(v71 + 184) = v183;
      }

      else
      {
        v187 = *(v72 + 168);
        v188 = *(v72 + 176);
        v189 = *(v72 + 192);
        outlined copy of AccessibilityImageLabel(v187, v188, *(v72 + 184));
        v190 = *(v71 + 168);
        v191 = *(v71 + 176);
        v192 = *(v71 + 184);
        *(v71 + 168) = v187;
        *(v71 + 176) = v188;
        *(v71 + 184) = v180;
        *(v71 + 192) = v189;
        outlined consume of AccessibilityImageLabel(v190, v191, v192);
      }

      *(v71 + 200) = *(v72 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(v71 + 208) = *(v72 + 208);

      *(v71 + 216) = *(v72 + 216);
      *(v71 + 217) = *(v72 + 217);
      v193 = *(v72 + 220);
      *(v71 + 224) = *(v72 + 224);
      *(v71 + 220) = v193;
      v194 = *(v71 + 232);
      v195 = *(v72 + 232);
      *(v71 + 232) = v195;
      v196 = v195;

      *(v71 + 240) = *(v72 + 240);
      *(v71 + 242) = *(v72 + 242);
    }

    *(v71 + 248) = *(v72 + 248);

    *(v71 + 256) = *(v72 + 256);
    *(v71 + 264) = *(v72 + 264);
  }

  *(v71 + 272) = *(v72 + 272);

  v197 = (v71 + 280);
  v198 = (v72 + 280);
  v199 = *(v72 + 304);
  if (*(v71 + 304) == 1)
  {
    if (v199 == 1)
    {
      v200 = *(v72 + 296);
      *v197 = *v198;
      *(v71 + 296) = v200;
    }

    else
    {
      *(v71 + 280) = *(v72 + 280);
      *(v71 + 288) = *(v72 + 288);
      *(v71 + 296) = *(v72 + 296);
      *(v71 + 304) = *(v72 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v199 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v71 + 280);
    v201 = *(v72 + 296);
    *v197 = *v198;
    *(v71 + 296) = v201;
  }

  else
  {
    *(v71 + 280) = *(v72 + 280);
    *(v71 + 284) = *(v72 + 284);
    *(v71 + 288) = *(v72 + 288);
    *(v71 + 292) = *(v72 + 292);
    *(v71 + 296) = *(v72 + 296);
    *(v71 + 304) = *(v72 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v202 = *(v72 + 312);
  *(v71 + 320) = *(v72 + 320);
  *(v71 + 312) = v202;
  v203 = *(v72 + 608);
  if (*(v71 + 608))
  {
    if (v203)
    {
      *(v71 + 328) = *(v72 + 328);
      *(v71 + 336) = *(v72 + 336);

      *(v71 + 344) = *(v72 + 344);
      *(v71 + 352) = *(v72 + 352);

      *(v71 + 360) = *(v72 + 360);
      v204 = *(v72 + 368);
      *(v71 + 384) = *(v72 + 384);
      *(v71 + 368) = v204;
      v205 = (v71 + 392);
      v206 = (v72 + 392);
      v207 = *(v71 + 416);
      v208 = *(v72 + 416);
      if (v207 != 1)
      {
        if (v208 == 1)
        {
          outlined destroy of AccessibilityValueStorage(v71 + 392);
          v218 = *(v72 + 408);
          v217 = *(v72 + 424);
          *v205 = *v206;
          *(v71 + 408) = v218;
          *(v71 + 424) = v217;
        }

        else
        {
          if (v207)
          {
            if (v208)
            {
              __swift_assign_boxed_opaque_existential_1((v71 + 392), (v72 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v71 + 392);
              v236 = *(v72 + 424);
              v237 = *(v72 + 408);
              *v205 = *v206;
              *(v71 + 408) = v237;
              *(v71 + 424) = v236;
            }
          }

          else if (v208)
          {
            *(v71 + 416) = v208;
            *(v71 + 424) = *(v72 + 424);
            (**(v208 - 8))(v71 + 392, v72 + 392);
          }

          else
          {
            v238 = *v206;
            v239 = *(v72 + 408);
            *(v71 + 424) = *(v72 + 424);
            *v205 = v238;
            *(v71 + 408) = v239;
          }

          *(v71 + 432) = *(v72 + 432);
        }

        goto LABEL_115;
      }

      if (v208)
      {
        if (v208 == 1)
        {
          v209 = *v206;
          v210 = *(v72 + 424);
          *(v71 + 408) = *(v72 + 408);
          *(v71 + 424) = v210;
          *v205 = v209;
LABEL_115:
          v240 = *(v72 + 440);
          *(v71 + 448) = *(v72 + 448);
          *(v71 + 440) = v240;
          v241 = (v71 + 456);
          v242 = (v72 + 456);
          v243 = *(v72 + 568);
          if (*(v71 + 568) == 1)
          {
            if (v243 == 1)
            {
              v244 = *(v72 + 472);
              *v241 = *v242;
              *(v71 + 472) = v244;
              v245 = *(v72 + 488);
              v246 = *(v72 + 504);
              v247 = *(v72 + 536);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 536) = v247;
              *(v71 + 488) = v245;
              *(v71 + 504) = v246;
              v248 = *(v72 + 552);
              v249 = *(v72 + 568);
              v250 = *(v72 + 584);
              *(v71 + 600) = *(v72 + 600);
              *(v71 + 568) = v249;
              *(v71 + 584) = v250;
              *(v71 + 552) = v248;
            }

            else
            {
              v258 = *v242;
              *(v71 + 464) = *(v72 + 464);
              *v241 = v258;
              v259 = *(v72 + 472);
              *(v71 + 480) = *(v72 + 480);
              *(v71 + 472) = v259;
              *(v71 + 481) = *(v72 + 481);
              *(v71 + 482) = *(v72 + 482);
              *(v71 + 483) = *(v72 + 483);
              *(v71 + 484) = *(v72 + 484);
              *(v71 + 488) = *(v72 + 488);
              *(v71 + 496) = *(v72 + 496);
              *(v71 + 504) = *(v72 + 504);
              *(v71 + 512) = *(v72 + 512);
              *(v71 + 520) = *(v72 + 520);
              *(v71 + 528) = *(v72 + 528);
              *(v71 + 536) = *(v72 + 536);
              *(v71 + 537) = *(v72 + 537);
              *(v71 + 544) = *(v72 + 544);
              *(v71 + 552) = *(v72 + 552);
              *(v71 + 560) = *(v72 + 560);
              *(v71 + 568) = *(v72 + 568);
              v260 = *(v72 + 576);
              *(v71 + 592) = *(v72 + 592);
              *(v71 + 576) = v260;
              *(v71 + 600) = *(v72 + 600);
            }
          }

          else if (v243 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(v71 + 456);
            v251 = *(v72 + 472);
            *v241 = *v242;
            *(v71 + 472) = v251;
            v252 = *(v72 + 536);
            v254 = *(v72 + 488);
            v253 = *(v72 + 504);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 536) = v252;
            *(v71 + 488) = v254;
            *(v71 + 504) = v253;
            v256 = *(v72 + 568);
            v255 = *(v72 + 584);
            v257 = *(v72 + 552);
            *(v71 + 600) = *(v72 + 600);
            *(v71 + 568) = v256;
            *(v71 + 584) = v255;
            *(v71 + 552) = v257;
          }

          else
          {
            v261 = *v242;
            *(v71 + 464) = *(v72 + 464);
            *v241 = v261;
            v262 = *(v72 + 472);
            *(v71 + 480) = *(v72 + 480);
            *(v71 + 472) = v262;
            *(v71 + 481) = *(v72 + 481);
            *(v71 + 482) = *(v72 + 482);
            *(v71 + 483) = *(v72 + 483);
            *(v71 + 484) = *(v72 + 484);
            *(v71 + 488) = *(v72 + 488);
            *(v71 + 496) = *(v72 + 496);
            *(v71 + 504) = *(v72 + 504);
            *(v71 + 512) = *(v72 + 512);
            *(v71 + 520) = *(v72 + 520);
            *(v71 + 528) = *(v72 + 528);
            *(v71 + 536) = *(v72 + 536);
            *(v71 + 537) = *(v72 + 537);
            *(v71 + 544) = *(v72 + 544);
            *(v71 + 552) = *(v72 + 552);
            *(v71 + 560) = *(v72 + 560);
            *(v71 + 568) = *(v72 + 568);

            v263 = *(v72 + 576);
            *(v71 + 592) = *(v72 + 592);
            *(v71 + 576) = v263;
            *(v71 + 600) = *(v72 + 600);
          }

          *(v71 + 608) = *(v72 + 608);

          *(v71 + 616) = *(v72 + 616);
          *(v71 + 620) = *(v72 + 620);
          *(v71 + 624) = *(v72 + 624);
          return v49;
        }

        *(v71 + 416) = v208;
        *(v71 + 424) = *(v72 + 424);
        (**(v208 - 8))(v71 + 392, v72 + 392);
      }

      else
      {
        v234 = *v206;
        v235 = *(v72 + 408);
        *(v71 + 424) = *(v72 + 424);
        *v205 = v234;
        *(v71 + 408) = v235;
      }

      *(v71 + 432) = *(v72 + 432);

      goto LABEL_115;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v71 + 328);
LABEL_94:
    memcpy((v71 + 328), (v72 + 328), 0x129uLL);
    return v49;
  }

  if (!v203)
  {
    goto LABEL_94;
  }

  *(v71 + 328) = *(v72 + 328);
  *(v71 + 336) = *(v72 + 336);
  *(v71 + 344) = *(v72 + 344);
  *(v71 + 352) = *(v72 + 352);
  *(v71 + 360) = *(v72 + 360);
  v211 = *(v72 + 368);
  *(v71 + 384) = *(v72 + 384);
  *(v71 + 368) = v211;
  v212 = (v71 + 392);
  v213 = (v72 + 392);
  v214 = *(v72 + 416);

  if (!v214)
  {
    v219 = *v213;
    v220 = *(v72 + 408);
    *(v71 + 424) = *(v72 + 424);
    *v212 = v219;
    *(v71 + 408) = v220;
LABEL_102:
    *(v71 + 432) = *(v72 + 432);

    goto LABEL_103;
  }

  if (v214 != 1)
  {
    *(v71 + 416) = v214;
    *(v71 + 424) = *(v72 + 424);
    (**(v214 - 8))(v71 + 392, v72 + 392, v214);
    goto LABEL_102;
  }

  v215 = *v213;
  v216 = *(v72 + 424);
  *(v71 + 408) = *(v72 + 408);
  *(v71 + 424) = v216;
  *v212 = v215;
LABEL_103:
  v221 = *(v72 + 440);
  *(v71 + 448) = *(v72 + 448);
  *(v71 + 440) = v221;
  v222 = (v71 + 456);
  v223 = (v72 + 456);
  if (*(v72 + 568) == 1)
  {
    v224 = *(v72 + 472);
    *v222 = *v223;
    *(v71 + 472) = v224;
    v225 = *(v72 + 488);
    v226 = *(v72 + 504);
    v227 = *(v72 + 536);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 536) = v227;
    *(v71 + 488) = v225;
    *(v71 + 504) = v226;
    v228 = *(v72 + 552);
    v229 = *(v72 + 568);
    v230 = *(v72 + 584);
    *(v71 + 600) = *(v72 + 600);
    *(v71 + 568) = v229;
    *(v71 + 584) = v230;
    *(v71 + 552) = v228;
  }

  else
  {
    v231 = *v223;
    *(v71 + 464) = *(v72 + 464);
    *v222 = v231;
    v232 = *(v72 + 472);
    *(v71 + 480) = *(v72 + 480);
    *(v71 + 472) = v232;
    *(v71 + 481) = *(v72 + 481);
    *(v71 + 482) = *(v72 + 482);
    *(v71 + 483) = *(v72 + 483);
    *(v71 + 484) = *(v72 + 484);
    *(v71 + 488) = *(v72 + 488);
    *(v71 + 496) = *(v72 + 496);
    *(v71 + 504) = *(v72 + 504);
    *(v71 + 512) = *(v72 + 512);
    *(v71 + 520) = *(v72 + 520);
    *(v71 + 528) = *(v72 + 528);
    *(v71 + 536) = *(v72 + 536);
    *(v71 + 537) = *(v72 + 537);
    *(v71 + 544) = *(v72 + 544);
    *(v71 + 552) = *(v72 + 552);
    *(v71 + 560) = *(v72 + 560);
    *(v71 + 568) = *(v72 + 568);
    v233 = *(v72 + 576);
    *(v71 + 592) = *(v72 + 592);
    *(v71 + 576) = v233;
    *(v71 + 600) = *(v72 + 600);
  }

  *(v71 + 608) = *(v72 + 608);
  *(v71 + 616) = *(v72 + 616);
  *(v71 + 624) = *(v72 + 624);

  return v49;
}

uint64_t initializeWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2, uint64_t a3)
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
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v8 = *(v7 + 56);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  type metadata accessor for Binding<TextSelection?>(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v10, 1, v11))
  {
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
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
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
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

  memcpy((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), 0x271uLL);
  return a1;
}

uint64_t assignWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter(uint64_t a1, uint64_t a2, uint64_t a3)
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
    if (*(a2 + 64))
    {
      v7 = *(a2 + 56);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      *(a1 + 64) = *(a2 + 64);

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 40);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
LABEL_6:
  v11 = *(a2 + 168);
  v12 = *(a2 + 176);
  v13 = *(a2 + 180);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v23 = *(a1 + 152);
  v24 = *(a1 + 168);
  v25 = *(a1 + 176);
  v26 = *(a1 + 180);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v11;
  *(a1 + 176) = v12;
  *(a1 + 180) = v13;
  outlined consume of StateOrBinding<TextFieldState>(v14, v15, v16, v17, v18, v19, v20, v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26);
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v28 = *(v27 + 56);
  v29 = (a1 + v28);
  v30 = (a2 + v28);
  type metadata accessor for Binding<TextSelection?>(0);
  v32 = v31;
  v33 = *(v31 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v29, 1, v31);
  v36 = v34(v30, 1, v32);
  if (v35)
  {
    if (!v36)
    {
      v37 = *(v30 + 1);
      *v29 = *v30;
      *(v29 + 1) = v37;
      v38 = *(v32 + 32);
      v39 = &v29[v38];
      v40 = &v30[v38];
      v41 = type metadata accessor for TextSelection(0);
      v42 = *(v41 - 8);
      if ((*(v42 + 48))(v40, 1, v41))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v39, v40, *(*(v43 - 8) + 64));
      }

      else
      {
        v109 = a3;
        v59 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v60 - 8) + 32))(v39, v40, v60);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v39, v40, *(*(v59 - 8) + 64));
        }

        v39[*(v41 + 20)] = v40[*(v41 + 20)];
        (*(v42 + 56))(v39, 0, 1, v41);
        a3 = v109;
      }

      (*(v33 + 56))(v29, 0, 1, v32);
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (v36)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v29, type metadata accessor for Binding<TextSelection?>);
LABEL_12:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v45 = *(*(v44 - 8) + 64);
    v46 = v29;
    v47 = v30;
LABEL_13:
    memcpy(v46, v47, v45);
    goto LABEL_26;
  }

  v48 = a3;
  *v29 = *v30;

  *(v29 + 1) = *(v30 + 1);

  v49 = *(v32 + 32);
  v50 = &v29[v49];
  v51 = &v30[v49];
  v52 = type metadata accessor for TextSelection(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 48);
  v55 = v54(v50, 1, v52);
  v56 = v54(v51, 1, v52);
  a3 = v48;
  if (v55)
  {
    if (!v56)
    {
      v57 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v58 - 8) + 32))(v50, v51, v58);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v50, v51, *(*(v57 - 8) + 64));
      }

      v50[*(v52 + 20)] = v51[*(v52 + 20)];
      (*(v53 + 56))(v50, 0, 1, v52);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v56)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v50, type metadata accessor for TextSelection);
LABEL_22:
    type metadata accessor for TextSelection?(0);
    v45 = *(*(v61 - 8) + 64);
    v46 = v50;
    v47 = v51;
    goto LABEL_13;
  }

  if (a1 != a2)
  {
    _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(v50, type metadata accessor for TextSelection.Indices);
    v79 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v80 - 8) + 32))(v50, v51, v80);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v50, v51, *(*(v79 - 8) + 64));
    }
  }

  v50[*(v52 + 20)] = v51[*(v52 + 20)];
LABEL_26:
  v62 = *(a3 + 20);
  v63 = a1 + v62;
  v64 = a2 + v62;
  *(a1 + v62) = *(a2 + v62);

  *(v63 + 8) = *(v64 + 8);

  *(v63 + 16) = *(v64 + 16);
  *(v63 + 24) = *(v64 + 24);
  *(v63 + 28) = *(v64 + 28);
  v65 = *(v63 + 32);
  v66 = *(v64 + 32);
  if (v65 == 1)
  {
LABEL_29:
    v67 = *(v64 + 240);
    *(v63 + 224) = *(v64 + 224);
    *(v63 + 240) = v67;
    *(v63 + 256) = *(v64 + 256);
    v68 = *(v64 + 176);
    *(v63 + 160) = *(v64 + 160);
    *(v63 + 176) = v68;
    v69 = *(v64 + 208);
    *(v63 + 192) = *(v64 + 192);
    *(v63 + 208) = v69;
    v70 = *(v64 + 112);
    *(v63 + 96) = *(v64 + 96);
    *(v63 + 112) = v70;
    v71 = *(v64 + 144);
    *(v63 + 128) = *(v64 + 128);
    *(v63 + 144) = v71;
    v72 = *(v64 + 48);
    *(v63 + 32) = *(v64 + 32);
    *(v63 + 48) = v72;
    v73 = *(v64 + 80);
    *(v63 + 64) = *(v64 + 64);
    *(v63 + 80) = v73;
    goto LABEL_51;
  }

  if (v66 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(v63 + 32);
    goto LABEL_29;
  }

  *(v63 + 32) = v66;

  v74 = *(v63 + 40);
  *(v63 + 40) = *(v64 + 40);

  v75 = *(v63 + 48);
  *(v63 + 48) = *(v64 + 48);

  if (*(v63 + 184) >> 1 == 4294967294)
  {
    goto LABEL_33;
  }

  if (*(v64 + 184) >> 1 != 4294967294)
  {
    v76 = *(v63 + 64);
    if (v76 != 255)
    {
      v77 = *(v64 + 64);
      if (v77 != 255)
      {
        v78 = *(v63 + 56);
        *(v63 + 56) = *(v64 + 56);
        *(v63 + 64) = v77;
        outlined consume of GraphicsImage.Contents(v78, v76);
        goto LABEL_44;
      }

      outlined destroy of GraphicsImage.Contents(v63 + 56);
    }

    *(v63 + 56) = *(v64 + 56);
    *(v63 + 64) = *(v64 + 64);
LABEL_44:
    *(v63 + 72) = *(v64 + 72);
    *(v63 + 88) = *(v64 + 88);
    *(v63 + 96) = *(v64 + 96);
    *(v63 + 100) = *(v64 + 100);
    *(v63 + 113) = *(v64 + 113);
    v81 = *(v64 + 144);
    *(v63 + 128) = *(v64 + 128);
    *(v63 + 144) = v81;
    *(v63 + 160) = *(v64 + 160);
    *(v63 + 161) = *(v64 + 161);
    v82 = *(v63 + 184);
    *(v63 + 162) = *(v64 + 162);
    if (v82 >> 1 != 0xFFFFFFFF)
    {
      v83 = *(v64 + 184);
      if (v83 >> 1 != 0xFFFFFFFF)
      {
        v84 = *(v64 + 192);
        v85 = *(v63 + 168);
        v86 = *(v63 + 176);
        *(v63 + 168) = *(v64 + 168);
        *(v63 + 184) = v83;
        *(v63 + 192) = v84;
        outlined consume of AccessibilityImageLabel(v85, v86, v82);
        goto LABEL_49;
      }

      outlined destroy of AccessibilityImageLabel(v63 + 168);
    }

    *(v63 + 168) = *(v64 + 168);
    *(v63 + 184) = *(v64 + 184);
LABEL_49:
    *(v63 + 200) = *(v64 + 200);
    swift_unknownObjectRelease();
    *(v63 + 208) = *(v64 + 208);

    *(v63 + 216) = *(v64 + 216);
    *(v63 + 217) = *(v64 + 217);
    *(v63 + 220) = *(v64 + 220);
    *(v63 + 224) = *(v64 + 224);
    v87 = *(v63 + 232);
    *(v63 + 232) = *(v64 + 232);

    *(v63 + 240) = *(v64 + 240);
    *(v63 + 242) = *(v64 + 242);
    goto LABEL_50;
  }

  outlined destroy of Image.Resolved(v63 + 56);
LABEL_33:
  *(v63 + 184) = *(v64 + 184);
  *(v63 + 200) = *(v64 + 200);
  *(v63 + 216) = *(v64 + 216);
  *(v63 + 227) = *(v64 + 227);
  *(v63 + 120) = *(v64 + 120);
  *(v63 + 136) = *(v64 + 136);
  *(v63 + 152) = *(v64 + 152);
  *(v63 + 168) = *(v64 + 168);
  *(v63 + 56) = *(v64 + 56);
  *(v63 + 72) = *(v64 + 72);
  *(v63 + 88) = *(v64 + 88);
  *(v63 + 104) = *(v64 + 104);
LABEL_50:
  *(v63 + 248) = *(v64 + 248);

  *(v63 + 256) = *(v64 + 256);
  *(v63 + 264) = *(v64 + 264);

LABEL_51:
  *(v63 + 272) = *(v64 + 272);

  v88 = (v63 + 280);
  v89 = (v64 + 280);
  if (*(v63 + 304) == 1)
  {
LABEL_54:
    v91 = *(v64 + 296);
    *v88 = *v89;
    *(v63 + 296) = v91;
    goto LABEL_56;
  }

  v90 = *(v64 + 304);
  if (v90 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(v63 + 280);
    goto LABEL_54;
  }

  *v88 = *v89;
  *(v63 + 296) = *(v64 + 296);
  *(v63 + 304) = v90;
  swift_unknownObjectRelease();
LABEL_56:
  *(v63 + 312) = *(v64 + 312);
  *(v63 + 320) = *(v64 + 320);
  if (*(v63 + 608))
  {
    if (*(v64 + 608))
    {
      v92 = *(v64 + 336);
      *(v63 + 328) = *(v64 + 328);
      *(v63 + 336) = v92;

      *(v63 + 344) = *(v64 + 344);
      *(v63 + 352) = *(v64 + 352);

      *(v63 + 360) = *(v64 + 360);
      *(v63 + 368) = *(v64 + 368);
      *(v63 + 384) = *(v64 + 384);
      v93 = (v63 + 392);
      v94 = (v64 + 392);
      v95 = *(v63 + 416);
      if (v95 != 1)
      {
        v96 = *(v64 + 416);
        if (v96 != 1)
        {
          if (v95)
          {
            v98 = v63 + 392;
            if (v96)
            {
              __swift_destroy_boxed_opaque_existential_1(v98);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v98);
            }
          }

          v99 = *(v64 + 408);
          *v93 = *v94;
          *(v63 + 408) = v99;
          *(v63 + 424) = *(v64 + 424);
          *(v63 + 432) = *(v64 + 432);

LABEL_69:
          *(v63 + 440) = *(v64 + 440);
          *(v63 + 448) = *(v64 + 448);
          v100 = (v63 + 456);
          v101 = (v64 + 456);
          if (*(v63 + 568) != 1)
          {
            v102 = *(v64 + 568);
            if (v102 != 1)
            {
              *v100 = *v101;
              *(v63 + 464) = *(v64 + 464);
              *(v63 + 472) = *(v64 + 472);
              *(v63 + 480) = *(v64 + 480);
              *(v63 + 481) = *(v64 + 481);
              *(v63 + 483) = *(v64 + 483);
              *(v63 + 484) = *(v64 + 484);
              *(v63 + 488) = *(v64 + 488);
              v107 = *(v64 + 512);
              *(v63 + 496) = *(v64 + 496);
              *(v63 + 512) = v107;
              *(v63 + 528) = *(v64 + 528);
              *(v63 + 536) = *(v64 + 536);
              *(v63 + 537) = *(v64 + 537);
              *(v63 + 544) = *(v64 + 544);
              *(v63 + 560) = *(v64 + 560);
              *(v63 + 568) = v102;

              *(v63 + 576) = *(v64 + 576);
              *(v63 + 592) = *(v64 + 592);
              *(v63 + 600) = *(v64 + 600);
              goto LABEL_74;
            }

            outlined destroy of AccessibilityTextLayoutProperties(v63 + 456);
          }

          v103 = *(v64 + 568);
          *(v63 + 552) = *(v64 + 552);
          *(v63 + 568) = v103;
          *(v63 + 584) = *(v64 + 584);
          *(v63 + 600) = *(v64 + 600);
          v104 = *(v64 + 504);
          *(v63 + 488) = *(v64 + 488);
          *(v63 + 504) = v104;
          v105 = *(v64 + 536);
          *(v63 + 520) = *(v64 + 520);
          *(v63 + 536) = v105;
          v106 = *(v64 + 472);
          *v100 = *v101;
          *(v63 + 472) = v106;
LABEL_74:
          *(v63 + 608) = *(v64 + 608);

          *(v63 + 616) = *(v64 + 616);
          *(v63 + 624) = *(v64 + 624);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(v63 + 392);
      }

      v97 = *(v64 + 408);
      *v93 = *v94;
      *(v63 + 408) = v97;
      *(v63 + 424) = *(v64 + 424);
      goto LABEL_69;
    }

    outlined destroy of PlatformItem.AccessibilityContent(v63 + 328);
  }

  memcpy((v63 + 328), (v64 + 328), 0x129uLL);
  return a1;
}

void type metadata completion function for PlatformItemListTextFieldStyle.PlatformItemListWriter()
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(319, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>()
{
  result = lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>;
  if (!lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>)
  {
    type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>> and conformance PlatformItemsReader<A, B, C>);
  }

  return result;
}

void type metadata accessor for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>()
{
  if (!lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>)
  {
    type metadata accessor for PlatformItemListTextFieldStyle.PlatformItemListWriter();
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<Text, _TextFieldStyleLabel>, MEMORY[0x1E6981148], &type metadata for _TextFieldStyleLabel, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<Text, _TextFieldStyleLabel> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for PlatformItemsReader();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformItemsReader<TextPlatformItemsStrategy, PlatformItemListTextFieldStyle.PlatformItemListWriter, _ConditionalContent<Text, _TextFieldStyleLabel>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems()
{
  result = lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems;
  if (!lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems and conformance PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems);
  }

  return result;
}

uint64_t outlined destroy of TextField<_TextFieldStyleLabel>(uint64_t a1)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of TextField<_TextFieldStyleLabel>(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_0(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI13TextSelectionV7IndicesOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1)
{
}

uint64_t initializeWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  v6 = v5;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for PlatformItemListTextFieldStyle.PlatformItemListWriter.TransformPlatformItems(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t View.submitLabel(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.submitLabel.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.submitLabel : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.submitLabel : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.returnKey(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SubmitLabel>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SubmitLabel>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SubmitLabel>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SubmitLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubmitLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SubmitLabel.Role and conformance SubmitLabel.Role()
{
  result = lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role;
  if (!lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubmitLabel.Role and conformance SubmitLabel.Role);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SubmitLabel> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage()
{
  result = lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage;
  if (!lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedValueKeyframeInterpolation.Storage and conformance AnimatedValueKeyframeInterpolation.Storage);
  }

  return result;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance NavigationTransitionKey(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  outlined init with copy of _NavigationTransitionOutputs?(a1, v6);
  if (v6[4] != 1)
  {
    return _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
  }

  _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(a1, type metadata accessor for _NavigationTransitionOutputs?);
  v4 = _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(v6, type metadata accessor for _NavigationTransitionOutputs?);
  return a2(v4);
}

double AutomaticNavigationTransition._outputs(for:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t View.tabBarMinimizeBehavior(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.tabBarMinimizeBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.tabBarMinimizeBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.tabBarMinimizeBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int TabBarMinimizeBehavior.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior()
{
  result = lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior;
  if (!lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarMinimizeBehavior and conformance TabBarMinimizeBehavior);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarMinimizeBehavior.Behavior and conformance TabBarMinimizeBehavior.Behavior);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_tabBarMinimizeBehavior>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarMinimizeBehavior> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _ViewInputs.requestedDividerRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();

  PropertyList.subscript.getter();

  return v1;
}

uint64_t Divider.Child.value.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 2 && (*MEMORY[0x1E698D3F8] == HIDWORD(result) || (v2 = a2, type metadata accessor for Axis?(), Value = AGGraphGetValue(), a2 = v2, result = *Value, result == 2)))
  {
    v4 = 0;
  }

  else
  {
    v4 = result ^ 1;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t _GraphInputs.requestedDividerRepresentation.getter()
{
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t (*_ViewInputs.requestedDividerRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _ViewInputs.requestedDividerRepresentation.modify;
}

uint64_t (*_GraphInputs.requestedDividerRepresentation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  *(v3 + 40) = lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.getter();
  *v4 = v4[1];
  return _GraphInputs.requestedDividerRepresentation.modify;
}

void _ViewInputs.requestedDividerRepresentation.modify(_OWORD **a1)
{
  v1 = *a1;
  (*a1)[1] = **a1;
  PropertyList.subscript.setter();

  free(v1);
}

uint64_t getEnumTagSinglePayload for Divider.Child(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

void type metadata accessor for Axis?()
{
  if (!lazy cache variable for type metadata for Axis?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Axis?);
    }
  }
}

uint64_t DragAndDropBridge.outermostDropResponder()()
{
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();

      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UIDropSession.itemProviders(for:)(uint64_t a1)
{
  v4 = [v1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v8 = 0;
    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x18D00E9C0](v8, v5);
      }

      else
      {
        if (v8 >= *(v9 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v5 + 8 * v8 + 32);
      }

      v2 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v20 = v10;
      if (closure #1 in UIDropSession.itemProviders(for:)(&v20, a1))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v21;
        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_16:

  if ((v12 & 0x8000000000000000) == 0 && (v12 & 0x4000000000000000) == 0)
  {
    v13 = *(v12 + 16);
    if (v13)
    {
      goto LABEL_19;
    }

LABEL_30:

    return MEMORY[0x1E69E7CC0];
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_19:
  v21 = v7;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v13 < 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x18D00E9C0](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 itemProvider];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v13 != v14);

    return v21;
  }

  return result;
}

id closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:)(void (*a1)(void **__return_ptr))
{
  a1(&v5);
  v1 = v5;
  if (!v5)
  {
    return 0;
  }

  v2 = v6;
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC998]) initWithView:v5 parameters:v6];

  return v3;
}

id thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?)(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t closure #1 in DragAndDropBridge.itemsInListForSession(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8[5] = a1;
  type metadata accessor for ResponderNode();
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider);

  result = swift_dynamicCast();
  if (result)
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = a1;

    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  return result;
}

void closure #1 in DragAndDropBridge.updateSpringLoadedInteraction(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
    if (v2)
    {
      v3 = *(v2 + 224);

      v3(v4);
    }

    else
    {
    }
  }
}

uint64_t closure #2 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(**v4 + 96);

      v7 = v5(v6);
      if (v7)
      {
        v8 = v7;
        v9 = v2;
        v7(&v9);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v8);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t closure #1 in DragAndDropBridge.dragInteraction(_:item:willAnimateCancelWith:)(uint64_t result, id a2)
{
  if (!result)
  {
    v11 = v2;
    v12 = v3;
    if ([a2 localObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      type metadata accessor for DragSourceContext();
      result = swift_dynamicCast();
      if (result)
      {

        v4 = DragPayload.resolve()();

        v5 = *(*v4 + 120);

        v7 = v5(v6);

        if (v7)
        {
          v7(1);

          return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
        }

        else
        {
        }
      }
    }

    else
    {
      return _sypSgWOhTm_2(v10, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }
  }

  return result;
}

uint64_t closure #1 in DragAndDropBridge.outermostDropResponder()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  type metadata accessor for DragDropDefaultPreviewResponder();
  result = dynamic_cast_existential_1_superclass_conditional(a1);
  if (result)
  {
    *a2 = result;
    a2[1] = v7;

    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void @objc DragAndDropBridge.dropInteraction(_:sessionDidEnter:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;

  swift_unknownObjectRelease();
}

uint64_t closure #1 in DragAndDropBridge.dropInteraction(_:item:willAnimateDropWith:)(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    return result;
  }

  v22 = v3;
  v23 = v4;
  v6 = (a2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
  swift_beginAccess();
  if (*v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6[1] == 1;
  }

  if (!v7)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v6[1] + 8))(v15, *Strong);
      if (v15[3])
      {
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate);
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private);
        if (swift_dynamicCast())
        {
          if (*(&v17 + 1))
          {
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v16, &v19);
            v9 = *(&v20 + 1);
            v10 = v21;
            __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
            (*(v10 + 16))(v9, v10);

            __swift_destroy_boxed_opaque_existential_1(&v19);
            goto LABEL_15;
          }
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
        }
      }

      else
      {

        outlined destroy of DragPayloadProvider?(v15, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);
        v16 = 0u;
        v17 = 0u;
        v18 = 0;
      }

      outlined destroy of DragPayloadProvider?(&v16, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private);
    }
  }

LABEL_15:
  if ([a3 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v19 = v16;
  v20 = v17;
  if (!*(&v17 + 1))
  {
    return _sypSgWOhTm_2(&v19, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }

  type metadata accessor for DragSourceContext();
  result = swift_dynamicCast();
  if (result)
  {

    v11 = DragPayload.resolve()();

    v12 = *(*v11 + 120);

    v14 = v12(v13);

    if (v14)
    {
      v14(0);

      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v14);
    }

    else
    {
    }
  }

  return result;
}

void @objc DragAndDropBridge.dragInteraction(_:sessionWillBegin:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id @objc DragAndDropBridge.dragInteraction(_:previewForCancelling:withDefault:)(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v11, v12);

  return v14;
}

uint64_t DragAndDropBridge.springLoadedResponder(from:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 window];
  [a1 locationInView_];

  MEMORY[0x18D00ABE0]();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v9 = *(v3 + 8);
  v10 = swift_getObjectType();
  v11 = (*(v9 + 24))(v10, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_11:
    static Update.end()();
    goto LABEL_12;
  }

  type metadata accessor for ViewResponder();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_11;
  }

  v12 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

  static Update.end()();
  if (!v12)
  {
LABEL_12:

    return 0;
  }

  type metadata accessor for SpringLoadedViewResponder();
  ResponderNode.firstAncestor<A>(ofType:)();

  result = v13;
  if (v13 && (*(v13 + 216) & 1) == 0)
  {

    return 0;
  }

  return result;
}

uint64_t DragAndDropBridge.__ivar_destroyer()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host);

  _sypSgWOhTm_2(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionBegan));
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);

  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
}

void DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:)(void *a1, id a2)
{
  v4 = [a2 state];
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        LOBYTE(v18[0]) = 1;
        specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
      }

      return;
    }

    goto LABEL_7;
  }

  if (v4 != 2)
  {
    if (v4 != 3)
    {
      return;
    }

LABEL_7:
    LOBYTE(v18[0]) = 0;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
    v5 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer;
    v6 = *(v2 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer);
    if (v6)
    {
      [v6 invalidate];
      v7 = *(v2 + v5);
      *(v2 + v5) = 0;
    }

    return;
  }

  v8 = OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer;
  if (!*(v2 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_blinkTimer))
  {
    LOBYTE(v18[0]) = 1;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(v18);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a1;
    v18[4] = partial apply for closure #1 in DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:);
    v18[5] = v10;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v18[3] = &block_descriptor_30;
    v11 = _Block_copy(v18);
    v12 = objc_opt_self();

    v13 = a1;
    v14 = [v12 timerWithTimeInterval:1 repeats:v11 block:0.1];
    _Block_release(v11);

    v15 = *(v2 + v8);
    *(v2 + v8) = v14;
    v16 = v14;

    v17 = [objc_opt_self() mainRunLoop];
    [v17 addTimer:v16 forMode:*MEMORY[0x1E695DA28]];
  }
}

void closure #1 in DragAndDropBridge.SpringLoadedEffect.interaction(_:didChangeWith:)(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) == 2)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5 = v4;
    specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(&v5);
  }

  else
  {
    [a1 invalidate];
  }
}

Swift::Void __swiftcall DragAndDropBridge.SpringLoadedBehavior.interactionDidFinish(_:)(UISpringLoadedInteraction a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge20SpringLoadedBehavior_base);
  if ([v3 respondsToSelector_])
  {
    [v3 interactionDidFinish_];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder;
    v6 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
    if (v6)
    {
      v7 = *(v6 + 256);
      v9 = Strong;

      v7(v8);

      *&v9[v5] = 0;
    }

    else
    {
    }
  }
}

id AnyDragAndDropBridge.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DragSourceContext.__deallocating_deinit()
{
  *(*(v0 + 24) + 176) = 0;

  return swift_deallocClassInstance();
}

uint64_t DropInfoTargetStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t destroy for DropDestination(uint64_t a1)
{
  swift_weakDestroy();
  if (*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }
}

uint64_t initializeWithCopy for DropDestination(uint64_t a1, uint64_t a2)
{
  *(swift_weakCopyInit() + 8) = *(a2 + 8);
  v4 = *(a2 + 40);
  if (v4)
  {
    v5 = *(a2 + 48);
    *(a1 + 40) = v4;
    *(a1 + 48) = v5;
    (**(v4 - 8))(a1 + 16, a2 + 16);
  }

  else
  {
    v6 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v6;
    *(a1 + 48) = *(a2 + 48);
  }

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t assignWithCopy for DropDestination(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakCopyAssign();
  *(v4 + 8) = *(a2 + 8);
  v5 = *(a2 + 40);
  if (!*(v4 + 40))
  {
    if (v5)
    {
      *(a1 + 40) = v5;
      *(a1 + 48) = *(a2 + 48);
      (**(v5 - 8))(a1 + 16, a2 + 16);
      goto LABEL_8;
    }

LABEL_7:
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    goto LABEL_8;
  }

  v6 = (a1 + 16);
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v6, (a2 + 16));
LABEL_8:
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

__n128 initializeWithTake for DropDestination(uint64_t a1, uint64_t a2)
{
  v3 = swift_weakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v4;
  result = *(a2 + 48);
  *(v3 + 48) = result;
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 72) = *(a2 + 72);
  return result;
}

uint64_t assignWithTake for DropDestination(uint64_t a1, uint64_t a2)
{
  v4 = swift_weakTakeAssign();
  *(v4 + 8) = *(a2 + 8);
  if (*(v4 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 16);
  }

  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t storeEnumTagSinglePayload for DropDestination(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

uint64_t DropInfoAdaptor.localDragContexts.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = [Strong localDragSession], swift_unknownObjectRelease(), !v1))
  {
    v6 = 0u;
    v7 = 0u;
LABEL_6:
    _sypSgWOhTm_2(&v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 localContext];
  swift_unknownObjectRelease();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_6;
  }

  _sypSgMaTm_2(0, &lazy cache variable for type metadata for [Any], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if (swift_dynamicCast())
  {
    return v4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t DropInfoAdaptor.originContentPath.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v3 = 0uLL;
  if (!result)
  {
    LOBYTE(v10) = -1;
    v11 = 0uLL;
LABEL_21:
    *a1 = v3;
    *(a1 + 16) = v11;
    *(a1 + 32) = v10;
    return result;
  }

  v4 = [result localDragSession];
  result = swift_unknownObjectRelease();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = [v4 items];
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_5;
    }

LABEL_18:

    goto LABEL_19;
  }

  result = __CocoaSet.count.getter();
  if (result != 1)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x18D00E9C0](0, v6);
LABEL_8:
    v8 = v7;

    v9 = [v8 localObject];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16 = v14;
    v17 = v15;
    if (*(&v15 + 1))
    {
      type metadata accessor for DragSourceContext();
      result = swift_dynamicCast();
      if (result)
      {

        UIViewSnapshotResponder.contentPath.getter(&v16);
        v12 = v16;
        v13 = v17;
        v10 = v18;

        if (v10 != 255)
        {
          v3 = v12;
          v11 = v13;
          goto LABEL_21;
        }

LABEL_20:
        v11 = 0uLL;
        v3 = 0uLL;
        goto LABEL_21;
      }
    }

    else
    {
      result = _sypSgWOhTm_2(&v16, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    }

LABEL_19:
    LOBYTE(v10) = -1;
    goto LABEL_20;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall UIDropSession.hasItemsConforming(to:)(Swift::OpaquePointer to)
{
  v2 = v1;
  v27 = type metadata accessor for UTType();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(to._rawValue + 2);
  if (v7)
  {
    v23 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v28;
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = to._rawValue + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v25 = *(v9 + 56);
    v26 = v10;
    v24 = (v9 - 8);
    do
    {
      v12 = v27;
      v13 = v9;
      v26(v6, v11, v27);
      v14 = UTType.identifier.getter();
      v16 = v15;
      (*v24)(v6, v12);
      v28 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v28;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += v25;
      --v7;
      v9 = v13;
    }

    while (v7);
    v2 = v23;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v2 hasItemsConformingToTypeIdentifiers_];

  return v21;
}

uint64_t UIDropSession.registeredContentTypes()()
{
  v1 = type metadata accessor for UTType();
  v28 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  v34 = MEMORY[0x1E69E7CD0];
  v8 = [v0 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    v29 = v9;
    v30 = v9 & 0xC000000000000001;
    v25 = v9 + 32;
    v26 = v9 & 0xFFFFFFFFFFFFFF8;
    v12 = (v28 + 8);
    v27 = i;
    while (v30)
    {
      v13 = MEMORY[0x18D00E9C0](v11, v9);
      v14 = __OFADD__(v11, 1);
      v15 = v11 + 1;
      if (v14)
      {
        goto LABEL_17;
      }

LABEL_12:
      v33 = v15;
      v16 = v13;
      v17 = [v13 itemProvider];
      v18 = [v17 registeredContentTypes];

      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = *(v19 + 16);
      if (v20)
      {
        v31 = v19;
        v32 = v16;
        v21 = v19 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
        v22 = *(v28 + 72);
        v23 = *(v28 + 16);
        do
        {
          v23(v3, v21, v1);
          specialized Set._Variant.insert(_:)(v7, v3);
          (*v12)(v7, v1);
          v21 += v22;
          --v20;
        }

        while (v20);

        v9 = v29;
        i = v27;
      }

      else
      {

        v9 = v29;
      }

      v11 = v33;
      if (v33 == i)
      {

        return v34;
      }
    }

    if (v11 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    v13 = *(v25 + 8 * v11);
    v14 = __OFADD__(v11, 1);
    v15 = v11 + 1;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL closure #1 in UIDropSession.itemProviders(for:)(void **a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a2 + 16);
  do
  {
    v5 = v2;
    if (v4 == v2)
    {
      break;
    }

    type metadata accessor for UTType();
    ++v2;
    v6 = [v3 itemProvider];
    v7 = UTType.identifier.getter();
    v8 = MEMORY[0x18D00C850](v7);

    v9 = [v6 hasItemConformingToTypeIdentifier_];
  }

  while (!v9);
  return v4 != v5;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UISpringLoadedInteraction, @guaranteed UISpringLoadedInteractionContext) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

uint64_t specialized DragAndDropBridge.hitTestedResponder(session:)(void *a1, uint64_t a2)
{
  v3 = a2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
    if (!v7)
    {
      return 0;
    }

    type metadata accessor for ViewResponder();
    if (!swift_dynamicCastClass())
    {
LABEL_9:

      return 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v3 + 8);
      v9 = swift_getObjectType();
      v10 = ViewGraphDelegate.uiView.getter(v9, *(*(v8 + 16) + 8));
      swift_unknownObjectRelease();
      if (v10)
      {
        v11 = [v10 window];
        if (v11)
        {
          v12 = v11;
          MEMORY[0x18D00ABE0]([a1 locationInView_]);
          v13 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();
          static Update.end()();

          return v13;
        }
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragItems(_:_:)(void *a1, uint64_t a2)
{
  v4 = DragPayload.resolve()();
  if (((*(*v4 + 80))() & 1) == 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for DragSourceContext();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = v5;
  v26 = v7;
  *(v7 + 40) = v6;
  v8 = *(*v4 + 160);

  v10 = v8(v9);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_4:
  v29 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v24 = v4;
    v14 = (*(*a1 + class metadata base offset for DragDropDefaultPreviewResponder + 64))(result);
    v15 = 0;
    v25 = v28;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x18D00E9C0](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 preferredPresentationSize];
      if (v20 == 0.0 && v19 == 0.0)
      {
        (*(*a1 + class metadata base offset for DragDropDefaultPreviewResponder + 32))(v18);
        [v17 setPreferredPresentationSize_];
      }

      v21 = [objc_allocWithZone(MEMORY[0x1E69DC990]) initWithItemProvider_];
      [v21 setLocalObject_];
      if (v14)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:);
        *(v22 + 24) = a1;
        v28[2] = partial apply for closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:);
        v28[3] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v28[0] = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
        v28[1] = &block_descriptor_46;
        v23 = _Block_copy(aBlock);
        swift_retain_n();

        [v21 setPreviewProvider_];

        _Block_release(v23);
      }

      else
      {
      }

      ++v15;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v12 != v15);

    return v29;
  }

  return result;
}

uint64_t specialized DragAndDropBridge.itemsInListForSession(_:)()
{
  v8 = 0;
  v1 = v0 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    v6 = swift_unknownObjectRelease();
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      dispatch thunk of ResponderNode.visit(applying:)();
    }

    v7 = MEMORY[0x1E69E7CC0];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(a1 + 8) == 1;
  }

  if (v10 || (Strong = swift_weakLoadStrong()) == 0)
  {
    if (!a3)
    {
      goto LABEL_62;
    }

    goto LABEL_14;
  }

  v12 = Strong;
  swift_unknownObjectRelease();
  if (!a3)
  {
    v24 = 1;
    goto LABEL_15;
  }

  if (v12 != a3)
  {
LABEL_14:
    v24 = 0;
LABEL_15:
    if (*a1)
    {
      v25 = 0;
    }

    else
    {
      v25 = *(a1 + 8) == 1;
    }

    if (!v25)
    {
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        v27 = v26;
        v28 = *(a1 + 8);
        v29 = *v26;
        *&v108 = v26;
        (*(v28 + 8))(&v117, v29);
        if (v119)
        {
          v100 = a4;
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v117, v132);
          v130 = &type metadata for DropInfoAdaptor;
          v131 = &protocol witness table for DropInfoAdaptor;
          v99 = swift_allocObject();
          *&v129 = v99;
          swift_unknownObjectWeakInit();
          *(&v117 + 1) = 0;
          swift_unknownObjectWeakAssign();

          [a2 locationInView_];
          v115 = v30;
          v116 = v31;
          type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
          if (static SemanticFeature.isEnabled.getter())
          {
            hostingViewCoordinateSpace.getter();
            v106[0] = v102;
            v107 = 1;
            v32 = *(*v27 + class metadata base offset for UIViewSnapshotResponder + 80);

            v32(&v108, v33);

            v103 = v108;
            v104 = v109;
            v105 = v110;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convert(from:transform:)();

            outlined destroy of CoordinateSpace(v106);
          }

          v34 = v115;
          v35 = v116;
          v127 = v115;
          v128 = v116;
          swift_unknownObjectRetain();
          v36 = a5;
          if ([a2 localDragSession])
          {
            swift_unknownObjectRelease();
            v37 = [a2 items];
          }

          else
          {
            v37 = [a2 items];
          }

          v71 = v37;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
          v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v72 >> 62)
          {
            v73 = __CocoaSet.count.getter();
          }

          else
          {
            v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v74 = &selRef_allowsMoveOperation;
            v75 = 3;
          }

          else
          {
            v74 = &selRef_isRestrictedToDraggingApplication;
            v75 = 4;
          }

          v76 = [a2 *v74];
          swift_unknownObjectRelease();
          if (v76)
          {
            v77 = v75;
          }

          else
          {
            v77 = 1;
          }

          [v36 bounds];
          v79 = v78;
          v81 = v80;

          swift_unknownObjectRelease();

          v118 = a2;
          LOBYTE(v119) = 6;
          v120 = v98;
          v121 = v73;
          v122 = v77;
          v123 = v79;
          v124 = v81;
          v125 = v34;
          v126 = v35;
          outlined init with take of DropInfoAdaptor(&v117, v99 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v129, &v108);
          v82 = v133;
          v83 = v134;
          __swift_project_boxed_opaque_existential_1(v132, v133);
          (*(v83 + 40))(&v108, v82, v83);

          outlined destroy of DropInfo(&v108);
          __swift_destroy_boxed_opaque_existential_1(v132);
          a4 = v100;
          if (v24)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        outlined destroy of DragPayloadProvider?(&v117, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);
      }
    }

    if ((v24 & 1) == 0)
    {
LABEL_28:
      v38 = *a3;
      *&v108 = a3;
      v39 = *(a4 + 8);

      v39(&v117, v38, a4);
      if (v119)
      {
        v101 = a4;
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v117, v132);
        v130 = &type metadata for DropInfoAdaptor;
        v131 = &protocol witness table for DropInfoAdaptor;
        v40 = swift_allocObject();
        *&v129 = v40;
        swift_unknownObjectWeakInit();
        *(&v117 + 1) = 0;
        swift_unknownObjectWeakAssign();

        [a2 locationInView_];
        v115 = v41;
        v116 = v42;
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v107 = 1;
          v43 = *(*a3 + class metadata base offset for UIViewSnapshotResponder + 80);

          v43(&v108, v44);

          v103 = v108;
          v104 = v109;
          v105 = v110;
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();

          outlined destroy of CoordinateSpace(v106);
        }

        v45 = v115;
        v46 = v116;
        v127 = v115;
        v128 = v116;
        swift_unknownObjectRetain();
        v47 = a5;
        if ([a2 localDragSession])
        {
          swift_unknownObjectRelease();
          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = [a2 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
        v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v50 >> 62)
        {
          v51 = __CocoaSet.count.getter();
        }

        else
        {
          v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v52 = &selRef_allowsMoveOperation;
          v53 = 3;
        }

        else
        {
          v52 = &selRef_isRestrictedToDraggingApplication;
          v53 = 4;
        }

        v54 = [a2 *v52];
        swift_unknownObjectRelease();
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 1;
        }

        [v47 bounds];
        v57 = v56;
        v59 = v58;

        swift_unknownObjectRelease();

        v118 = a2;
        LOBYTE(v119) = 6;
        v120 = v48;
        v121 = v51;
        v122 = v55;
        v123 = v57;
        v124 = v59;
        v125 = v45;
        v126 = v46;
        outlined init with take of DropInfoAdaptor(&v117, v40 + 16);
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v129, &v103);
        v60 = v133;
        v61 = v134;
        __swift_project_boxed_opaque_existential_1(v132, v133);
        if ((*(v61 + 8))(&v103, v60, v61))
        {
          v62 = v133;
          v63 = v134;
          __swift_project_boxed_opaque_existential_1(v132, v133);
          (*(v63 + 24))(&v103, v62, v63);
          v64 = v133;
          v65 = v134;
          __swift_project_boxed_opaque_existential_1(v132, v133);
          (*(v65 + 32))(&v108, &v103, v64, v65);
          if (v108 == 6)
          {
            v66 = 2;
            v67 = v101;
          }

          else
          {
            v66 = 0;
            v67 = v101;
            if (v108 > 2u)
            {
              if (v108 == 3)
              {
                v66 = 3;
              }

              else if (v108 != 4)
              {
                goto LABEL_99;
              }
            }

            else if (v108)
            {
              if (v108 == 1)
              {
                v66 = 1;
              }

              else
              {
                v66 = 2;
              }
            }
          }

          v111 = 0;
          v110 = 0u;
          v109 = 0u;
          *(&v108 + 1) = v67;
          swift_weakInit();
          v112 = v66;
          type metadata accessor for DropInfoTargetStore();
          v68 = swift_allocObject();
          v69 = MEMORY[0x1E69E7CC0];
          *(v68 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So7CGPointVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
          v70 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo10UIDragItemC_So17CGAffineTransformVTt0g5Tf4g_n(v69);

          outlined destroy of DropInfo(&v103);
          *(v68 + 24) = v70;
          v113 = v68;
          v114 = 0;
          outlined assign with take of DropDestination?(&v108, a1);
        }

        else
        {
          outlined destroy of DropInfo(&v103);

          _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
          *a1 = xmmword_18CD633F0;
          *(a1 + 16) = 0u;
          *(a1 + 32) = 0u;
          *(a1 + 48) = 0u;
          *(a1 + 57) = 0u;
          v66 = 1;
        }

LABEL_92:
        __swift_destroy_boxed_opaque_existential_1(v132);
        return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
      }

      goto LABEL_33;
    }

LABEL_62:
    _sypSgWOhTm_2(a1, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    v66 = 0;
    *a1 = xmmword_18CD633F0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 57) = 0u;
    return [objc_allocWithZone(MEMORY[0x1E69DC9C0]) initWithDropOperation_];
  }

  v13 = *a3;
  *&v108 = a3;
  v14 = *(a4 + 8);

  v14(&v117, v13, a4);
  if (!v119)
  {
LABEL_33:
    outlined destroy of DragPayloadProvider?(&v117, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);

    goto LABEL_62;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v117, v132);
  v130 = &type metadata for DropInfoAdaptor;
  v131 = &protocol witness table for DropInfoAdaptor;
  v15 = swift_allocObject();
  *&v129 = v15;
  swift_unknownObjectWeakInit();
  *(&v117 + 1) = 0;
  swift_unknownObjectWeakAssign();

  [a2 locationInView_];
  v115 = v16;
  v116 = v17;
  type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
  if (static SemanticFeature.isEnabled.getter())
  {
    hostingViewCoordinateSpace.getter();
    v107 = 1;
    v18 = *(*a3 + class metadata base offset for UIViewSnapshotResponder + 80);

    v18(&v108, v19);

    v103 = v108;
    v104 = v109;
    v105 = v110;
    type metadata accessor for CGPoint(0);
    ApplyViewTransform.convert(from:transform:)();

    outlined destroy of CoordinateSpace(v106);
  }

  v20 = v115;
  v21 = v116;
  v127 = v115;
  v128 = v116;
  swift_unknownObjectRetain();
  v22 = a5;
  if ([a2 localDragSession])
  {
    swift_unknownObjectRelease();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v84 = [a2 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v85 >> 62)
  {
    v86 = __CocoaSet.count.getter();
  }

  else
  {
    v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ([swift_unknownObjectRetain() localDragSession])
  {
    swift_unknownObjectRelease();
    v87 = &selRef_allowsMoveOperation;
    v88 = 3;
  }

  else
  {
    v87 = &selRef_isRestrictedToDraggingApplication;
    v88 = 4;
  }

  v89 = [a2 *v87];
  swift_unknownObjectRelease();
  if (v89)
  {
    v90 = v88;
  }

  else
  {
    v90 = 1;
  }

  [v22 bounds];
  v92 = v91;
  v94 = v93;

  swift_unknownObjectRelease();

  v118 = a2;
  LOBYTE(v119) = 6;
  v120 = v23;
  v121 = v86;
  v122 = v90;
  v123 = v92;
  v124 = v94;
  v125 = v20;
  v126 = v21;
  outlined init with take of DropInfoAdaptor(&v117, v15 + 16);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v129, &v108);
  v95 = v133;
  v96 = v134;
  __swift_project_boxed_opaque_existential_1(v132, v133);
  (*(v96 + 32))(&v103, &v108, v95, v96);
  if (v103 == 6)
  {
    if (*a1 || *(a1 + 8) != 1)
    {
      outlined destroy of DropInfo(&v108);

      v66 = *(a1 + 56);
      goto LABEL_92;
    }

    __break(1u);
    goto LABEL_98;
  }

  v66 = 0;
  if (v103 <= 2u)
  {
    if (v103)
    {
      if (v103 == 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = 2;
      }
    }

LABEL_89:
    if (*a1 || *(a1 + 8) != 1)
    {
      outlined destroy of DropInfo(&v108);

      *(a1 + 56) = v66;
      goto LABEL_92;
    }

LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v103 == 3)
  {
    v66 = 3;
    goto LABEL_89;
  }

  if (v103 == 4)
  {
    goto LABEL_89;
  }

LABEL_99:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:itemsForBeginning:)(void *a1)
{
  swift_getObjectType();
  if (!specialized DragAndDropBridge.hitTestedResponder(session:)(a1, v1))
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider);
  ResponderNode.firstAncestor<A>(ofType:)();

  if (!*(&v10 + 1))
  {
LABEL_6:
    outlined destroy of DragPayloadProvider?(&v9, &lazy cache variable for type metadata for DragPayloadProvider?, &lazy cache variable for type metadata for DragPayloadProvider);
    return MEMORY[0x1E69E7CC0];
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v9, v12);
  outlined init with copy of _Benchmark(v12, &v9);
  type metadata accessor for DragDropDefaultPreviewResponder();
  if (swift_dynamicCast())
  {
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = (*(v4 + 8))(v3, v4);
    v6 = specialized DragAndDropBridge.dragItems(_:_:)(v8, v5);

    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:itemsForAddingTo:withTouchAt:)(void *a1, double a2, double a3)
{
  v7 = v3 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = MEMORY[0x1E69E7CC0];
  if (Strong)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v13 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v11 + 16) + 8));
    if (!v13)
    {
      goto LABEL_63;
    }

    v14 = v13;
    v15 = [v13 window];
    if (!v15)
    {
      swift_unknownObjectRelease();

      return MEMORY[0x1E69E7CC0];
    }

    v16 = v15;
    MEMORY[0x18D00ABE0]([v15 convertPoint:v14 fromCoordinateSpace:{a2, a3}]);
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = *(v7 + 8);
    v18 = swift_getObjectType();
    v19 = (*(v17 + 24))(v18, v17);
    swift_unknownObjectRelease();
    if (v19)
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        v20 = ViewResponder.hitTest(globalPoint:radius:cacheKey:options:)();

        static Update.end()();
        if (v20)
        {
          type metadata accessor for DragDropDefaultPreviewResponder();
          ResponderNode.firstAncestor<A>(ofType:)();

          v21 = v51;
          if (v51)
          {
            *&v48 = v51;
            type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DragPayloadProvider);

            if ((swift_dynamicCast() & 1) == 0)
            {
              swift_unknownObjectRelease();

              v53 = 0;
              v51 = 0u;
              v52 = 0u;
              outlined destroy of DragPayloadProvider?(&v51, &lazy cache variable for type metadata for DragPayloadProvider?, &lazy cache variable for type metadata for DragPayloadProvider);
              return MEMORY[0x1E69E7CC0];
            }

            v22 = *(&v52 + 1);
            v23 = v53;
            __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
            v24 = (*(v23 + 8))(v22, v23);
            __swift_destroy_boxed_opaque_existential_1(&v51);
            if (*(v24 + 24) == 1)
            {
              swift_unknownObjectRelease();

              return MEMORY[0x1E69E7CC0];
            }

            v42 = v24;
            v43 = *(v24 + 16);
            v25 = [a1 items];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
            v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v27 = v26;
            if (v26 >> 62)
            {
LABEL_42:
              v33 = v27;
              v46 = v27 & 0xFFFFFFFFFFFFFF8;
              v28 = __CocoaSet.count.getter();
              v27 = v33;
              if (v28)
              {
                goto LABEL_19;
              }
            }

            else
            {
              v46 = v26 & 0xFFFFFFFFFFFFFF8;
              v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v28)
              {
LABEL_19:
                v29 = 0;
                v44 = v27 & 0xC000000000000001;
                v30 = MEMORY[0x1E69E7CC0];
                v41 = v21;
                while (1)
                {
                  v21 = v29;
                  while (1)
                  {
                    if (v44)
                    {
                      v31 = v27;
                      v27 = MEMORY[0x18D00E9C0](v21);
                    }

                    else
                    {
                      if (v21 >= *(v46 + 16))
                      {
                        goto LABEL_41;
                      }

                      v31 = v27;
                      v27 = *(v27 + 8 * v21 + 32);
                    }

                    v32 = v27;
                    v29 = (v21 + 1);
                    if (__OFADD__(v21, 1))
                    {
                      __break(1u);
LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

                    if ([v27 localObject])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      swift_unknownObjectRelease();
                    }

                    else
                    {

                      v48 = 0u;
                      v49 = 0u;
                    }

                    v51 = v48;
                    v52 = v49;
                    if (*(&v49 + 1))
                    {
                      break;
                    }

                    _sypSgWOhTm_2(&v51, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_22:
                    ++v21;
                    v27 = v31;
                    if (v29 == v28)
                    {
                      v21 = v41;
                      goto LABEL_44;
                    }
                  }

                  type metadata accessor for DragSourceContext();
                  if ((swift_dynamicCast() & 1) == 0 || !v50)
                  {
                    goto LABEL_22;
                  }

                  MEMORY[0x18D00CC30]();
                  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  v30 = v10;
                  v21 = v41;
                  v27 = v31;
                  if (v29 == v28)
                  {
                    goto LABEL_44;
                  }
                }
              }
            }

            v30 = MEMORY[0x1E69E7CC0];
LABEL_44:

            if (v30 >> 62)
            {
LABEL_67:
              v45 = v30 & 0xFFFFFFFFFFFFFF8;
              v47 = __CocoaSet.count.getter();
            }

            else
            {
              v45 = v30 & 0xFFFFFFFFFFFFFF8;
              v47 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v34 = 0;
            while (1)
            {
              if (v47 == v34)
              {
                goto LABEL_58;
              }

              if ((v30 & 0xC000000000000001) != 0)
              {
                v35 = MEMORY[0x18D00E9C0](v34, v30);
                if (__OFADD__(v34, 1))
                {
LABEL_57:
                  __break(1u);
LABEL_58:

                  v40 = specialized DragAndDropBridge.dragItems(_:_:)(v21, v42);
                  swift_unknownObjectRelease();

                  return v40;
                }
              }

              else
              {
                if (v34 >= *(v45 + 16))
                {
                  __break(1u);
                  goto LABEL_67;
                }

                v35 = *(v30 + 8 * v34 + 32);

                if (__OFADD__(v34, 1))
                {
                  goto LABEL_57;
                }
              }

              if (*(v35 + 16) == v21)
              {
                break;
              }

              v36 = v21;
              v37 = *(v35 + 32);
              v38 = *(v35 + 40);

              if (v38 == 1)
              {

                goto LABEL_62;
              }

              ++v34;
              v39 = v37 == v43;
              v21 = v36;
              if (!v39)
              {

                goto LABEL_61;
              }
            }

LABEL_61:

LABEL_62:

LABEL_63:
            swift_unknownObjectRelease();
            return MEMORY[0x1E69E7CC0];
          }
        }

LABEL_15:

        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }
    }

    static Update.end()();
    goto LABEL_15;
  }

  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:previewForLifting:session:)(void *a1)
{
  if ([a1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
LABEL_12:
    _sypSgWOhTm_2(v13, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_14;
  }

  type metadata accessor for DragSourceContext();
  if (swift_dynamicCast())
  {
    v2 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v3 + 16) + 8));
      swift_unknownObjectRelease();
      if (!v5)
      {

        goto LABEL_14;
      }

      v6 = *(*(v10 + 16) + 312);

      v7 = DragDropDefaultPreviewResponder.previewParameters.getter();
      v8 = specialized UIViewSnapshotResponder.portalTargetedPreview<A>(kind:id:host:parameters:options:)(2, v6, v5, v7, 9);

      if (v8)
      {

        return v8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:previewForCancelling:withDefault:)(void *a1, id a2)
{
  if ([a1 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v78 = v89;
  v79 = v90;
  if (!*(&v90 + 1))
  {
    _sypSgWOhTm_2(&v78, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_18;
  }

  type metadata accessor for DragSourceContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v33 = a2;
    return a2;
  }

  v4 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v6 + 16) + 8));
    v9 = swift_unknownObjectRelease();
    if (v8)
    {
      v10 = *(v86.i64[0] + 16);
      if ((*(*v10 + class metadata base offset for DragDropDefaultPreviewResponder + 40))(v9))
      {
        v11 = *(v10 + 312);

        v12 = DragDropDefaultPreviewResponder.previewParameters.getter();
        v13 = [v8 window];
        if (v13 && (v13, AGSubgraphIsValid()) && (type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>), lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>), (static SemanticFeature.isEnabled.getter() & 1) != 0) && (v89.i8[0] = 17, static Update.dispatchImmediately<A>(reason:_:)(), v78.u8[0] == 1) && (v78.i32[0] = v11, (v14 = UIView.findPortal(kind:id:excludingGroups:)(2, &v78, 1)) != 0))
        {
          v16 = v15;
          v17 = v14;
          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v18 = *(v10 + 136);
          v80 = *(v10 + 120);
          v81 = v18;
          v82 = *(v10 + 152);
          v83 = *(v10 + 168);
          v19 = *(v10 + 104);
          v78 = *(v10 + 88);
          v79 = v19;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          Value = AGGraphGetValue();
          v21 = *Value;
          v22 = Value[1];
          AGGraphSetUpdate();
          v23 = v21 - *(v10 + 240);
          v24 = v22 - *(v10 + 248);
          UIViewSnapshotResponder.contentPath.getter(v84);
          v25 = v85;
          if (v85 == 255)
          {
            v32 = 0uLL;
            v29 = 0.0;
            v31 = 0.0;
          }

          else
          {
            v86 = v84[0];
            v87 = v84[1];
            v88 = v85;
            Path.boundingRect.getter();
            v76 = v26;
            v77 = v27;
            v29 = v28;
            v31 = v30;
            _sypSgWOhTm_2(v84, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
            v32.i64[0] = v76;
            v32.i64[1] = v77;
          }

          v78 = v32;
          *&v79 = v29;
          *(&v79 + 1) = v31;
          LOBYTE(v80) = v25 == 255;
          v56 = v17;
          [v56 convertPoint:v8 toCoordinateSpace:{0.0, 0.0}];
          v58 = v57;
          v60 = v59;
          v61.f64[0] = v23;
          v62 = closure #1 in closure #1 in UIViewSnapshotResponder.portalPreviewTarget<A>(inHost:portalResult:options:preferredContainer:)(4, &v78, v10, v61, v24);
          v64 = v63;

          if (v16)
          {
            v65 = v58 - v62;
          }

          else
          {
            v65 = v62 - v58;
          }

          if (v16)
          {
            v66 = v60 - v64;
          }

          else
          {
            v66 = v64 - v60;
          }

          if (v25 == 255)
          {
            [v56 bounds];
            v29 = v67;
            v31 = v68;
          }

          v94.origin.x = v65;
          v94.origin.y = v66;
          v94.size.width = v29;
          v94.size.height = v31;
          v95 = CGRectOffset(v94, v23, v24);
          v89.i64[0] = *&v95.origin.x;
          v89.i64[1] = *&v95.origin.y;
          *&v90 = v95.size.width;
          *(&v90 + 1) = *&v95.size.height;
          v91 = 0;
          v69 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v89, v8, 4, 0);
          v71 = v70;
          v73 = [objc_allocWithZone(MEMORY[0x1E69DCE38]) initWithContainer:v70 center:{v69, v72}];

          static Update.end()();
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITargetedDragPreview);
          v74 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v75 = v56;
          a2 = [v74 initWithView:v75 parameters:v12 target:v73];
        }

        else
        {

          MEMORY[0x18D00ABE0]();
          AGGraphClearUpdate();
          v34 = *(v10 + 136);
          v80 = *(v10 + 120);
          v81 = v34;
          v82 = *(v10 + 152);
          v83 = *(v10 + 168);
          v35 = *(v10 + 104);
          v78 = *(v10 + 88);
          v79 = v35;
          _ViewInputs.position.getter();
          type metadata accessor for CGPoint(0);
          v36 = AGGraphGetValue();
          v37 = *v36;
          v38 = v36[1];
          AGGraphSetUpdate();
          v39 = v37 - *(v10 + 240);
          v40 = v38 - *(v10 + 248);
          UIViewSnapshotResponder.contentPath.getter(&v86);
          if (v88 == 255)
          {
            v46 = *(v10 + 224);
            v48 = *(v10 + 232);
            v42 = 0.0;
            v44 = 0.0;
          }

          else
          {
            v89 = v86;
            v90 = v87;
            v91 = v88;
            Path.boundingRect.getter();
            v42 = v41;
            v44 = v43;
            v46 = v45;
            v48 = v47;
            _sypSgWOhTm_2(&v86, &lazy cache variable for type metadata for Path?, MEMORY[0x1E6980F80]);
          }

          v92.origin.x = v42;
          v92.origin.y = v44;
          v92.size.width = v46;
          v92.size.height = v48;
          v93 = CGRectOffset(v92, v39, v40);
          v78.i64[0] = *&v93.origin.x;
          v78.i64[1] = *&v93.origin.y;
          *&v79 = v93.size.width;
          *(&v79 + 1) = *&v93.size.height;
          LOBYTE(v80) = 0;
          v49 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v78, v8, 8, 0);
          v51 = v50;
          v52 = v49;
          v54 = v53;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragPreviewTarget);
          v55 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContainer:v51 center:{v52, v54}];

          static Update.end()();
          a2 = [a2 retargetedPreviewWithTarget_];
        }
      }

      else
      {

        return 0;
      }

      return a2;
    }

    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:prefersFullSizePreviewsFor:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v13 = 0u;
        v14 = 0u;
      }

      v15[0] = v13;
      v15[1] = v14;
      if (*(&v14 + 1))
      {
        type metadata accessor for DragSourceContext();
        if (swift_dynamicCast())
        {
          v9 = *(v12 + 16);

          v10 = *(v9 + 296);

          if (v10)
          {
            i = 1;
            goto LABEL_19;
          }
        }
      }

      else
      {
        _sypSgWOhTm_2(v15, &lazy cache variable for type metadata for Any?, v5 + 8);
      }

      ++v4;
      if (v8 == i)
      {
        i = 0;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_19:

  return i;
}

void specialized DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)(char **a1, id a2)
{
  v3 = [a2 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v43 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_28:
    v5 = __CocoaSet.count.getter();
    v33 = a1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_29:
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = a1;
  if (!v5)
  {
    goto LABEL_29;
  }

LABEL_3:
  v6 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  a1 = &selRef_bundleIdentifier;
  v7 = MEMORY[0x1E69E7CA0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x18D00E9C0](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v9 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      aBlock = v41;
      v36 = v42;
      if (*(&v42 + 1))
      {
        break;
      }

      _sypSgWOhTm_2(&aBlock, &lazy cache variable for type metadata for Any?, v7 + 8);
LABEL_6:
      ++v8;
      if (v6 == v5)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v11 = *(v40 + 24);

    if (*(v11 + 176))
    {
    }

    else
    {
      swift_beginAccess();
      outlined init with copy of DropDestination?(v11 + 32, &aBlock, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
      if (!v39)
      {
        goto LABEL_40;
      }

      v13 = _DraggingModifier.resolve()();

      *(v11 + 176) = v13;
    }

    MEMORY[0x18D00CC30](v12);
    if (*(v43 + 16) >= *(v43 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v34 = v43;
  }

  while (v6 != v5);
LABEL_30:

  v14 = *(v34 + 16);
  if (v14)
  {
    v15 = v34 + 32;
    do
    {
      v16 = *(**v15 + 96);

      v18 = v16(v17);
      if (v18)
      {
        v19 = v18;
        LOBYTE(aBlock) = 0;
        v18(&aBlock);
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v19);
      }

      v15 += 8;
      --v14;
    }

    while (v14);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v34;
  v37 = partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:);
  v38 = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v36 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
  *(&v36 + 1) = &block_descriptor_84_0;
  v21 = _Block_copy(&aBlock);

  [v33 addCompletion_];
  _Block_release(v21);
  v22 = v32 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);

    ObjectType = swift_getObjectType();
    v25 = type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for SubviewsManagingPlatformView);
    (*(*(*(v23 + 16) + 8) + 16))(&aBlock, v25, v25, ObjectType);
    swift_unknownObjectRelease();
    v26 = aBlock;
    if (aBlock)
    {
      v27 = *(&aBlock + 1);
      v28 = swift_getObjectType();
      (*(v27 + 8))(v28, v27);
      v29 = swift_allocObject();
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      v37 = partial apply for closure #3 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:);
      v38 = v29;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v36 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      *(&v36 + 1) = &block_descriptor_90;
      v30 = _Block_copy(&aBlock);
      v31 = v26;

      [v33 addCompletion_];
      _Block_release(v30);
    }
  }

  else
  {
    __break(1u);
LABEL_40:
    __break(1u);
  }
}

uint64_t specialized DragAndDropBridge.dragInteraction(_:sessionWillBegin:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_28:
    v3 = __CocoaSet.count.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_29:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_29;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x18D00E9C0](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if ([v7 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0u;
        v51 = 0u;
      }

      v46 = v50;
      v47 = v51;
      if (*(&v51 + 1))
      {
        break;
      }

      _sypSgWOhTm_2(&v46, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for DragSourceContext();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    v9 = *(v49 + 24);

    if (*(v9 + 176))
    {
    }

    else
    {
      swift_beginAccess();
      result = outlined init with copy of DropDestination?(v9 + 32, &v46, &lazy cache variable for type metadata for _DraggingModifier?, &type metadata for _DraggingModifier);
      if (!v48)
      {
        goto LABEL_63;
      }

      v12 = _DraggingModifier.resolve()();

      *(v9 + 176) = v12;
    }

    MEMORY[0x18D00CC30](v10);
    if (*(v52 + 16) >= *(v52 + 24) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v5 = v52;
  }

  while (v4 != v3);
LABEL_30:

  v13 = *(v5 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v5 + 32;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v14 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v17 = *(**(v15 + 8 * v14) + 128);

      v17(&v46, v18);
      v50 = v46;
      v51 = v47;

      if (*(&v51 + 1))
      {
        outlined init with take of Any(&v50, &v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v20 = *(v16 + 2);
        v19 = *(v16 + 3);
        if (v20 >= v19 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
        }

        *(v16 + 2) = v20 + 1;
        result = outlined init with take of Any(&v46, &v16[32 * v20 + 32]);
      }

      else
      {
        result = _sypSgWOhTm_2(&v50, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
      }

      ++v14;
    }

    while (v13 != v14);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setLocalContext_];

    for (i = 0; i != v13; ++i)
    {
      v23 = *(**(v15 + 8 * i) + 104);

      v25 = v23(v24);
      if (v25)
      {
        v26 = v25;
        v25();
        outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v26);
      }
    }

    v27 = 0;
    v28 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v29 = v27;
    while (v29 < *(v5 + 16))
    {
      v27 = v29 + 1;
      v30 = *(**(v15 + 8 * v29) + 112);

      v32 = v30(v31);
      if (v32)
      {
        v34 = v32;
        v35 = v33;
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
          v28 = result;
        }

        v38 = v28[2];
        v37 = v28[3];
        if (v38 >= v37 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v28);
          v28 = result;
        }

        v28[2] = v38 + 1;
        v39 = &v28[2 * v38];
        v39[4] = partial apply for thunk for @callee_guaranteed () -> ();
        v39[5] = v36;
        if (v13 - 1 != v29)
        {
          goto LABEL_46;
        }

        goto LABEL_58;
      }

      ++v29;
      if (v13 == v27)
      {
        goto LABEL_58;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v40 = Array._bridgeToObjectiveC()().super.isa;

    [a1 setLocalContext_];

LABEL_58:

    if (v28[2])
    {
      v41 = swift_allocObject();
      *(v41 + 16) = v28;
      v42 = (v44 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
      v43 = *(v44 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_onSessionEnded);
      *v42 = partial apply for closure #2 in DragAndDropBridge.dragInteraction(_:sessionWillBegin:);
      v42[1] = v41;
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v43);
    }

    else
    {
    }
  }

  return result;
}

id specialized DragAndDropBridge._dragInteraction(_:sessionPropertiesForSession:)(void *a1)
{
  v1 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x18D00E9C0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v6 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0u;
        v14 = 0u;
      }

      v15[0] = v13;
      v15[1] = v14;
      if (*(&v14 + 1))
      {
        type metadata accessor for DragSourceContext();
        if (swift_dynamicCast())
        {
          v9 = *(*(v12 + 16) + 316);
          if (v9 != 2)
          {

            v10 = [objc_allocWithZone(MEMORY[0x1E69DD480]) init];
            [v10 set:v9 & 1 supportsSystemDrag:?];

            return v10;
          }
        }
      }

      else
      {

        _sypSgWOhTm_2(v15, &lazy cache variable for type metadata for Any?, v5 + 8);
      }

      ++v4;
      if (v8 == i)
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

  return 0;
}

uint64_t specialized DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (specialized DragAndDropBridge.hitTestedResponder(session:)(a1, v1))
  {
    type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
    ResponderNode.firstAncestor<A>(ofType:)();

    v4 = v37[0];
    v5 = v37[1];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop;
  swift_beginAccess();
  outlined init with copy of DropDestination?(v6, &aBlock, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  if (aBlock == __PAIR128__(1, 0))
  {
    _sypSgWOhTm_2(&aBlock, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    goto LABEL_29;
  }

  outlined init with take of DropDestination(&aBlock, v37);
  if (v38)
  {
    outlined destroy of DropDestination(v37);
    goto LABEL_29;
  }

  v7 = [a1 items];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_28:
    outlined destroy of DropDestination(v37);

    goto LABEL_29;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x18D00E9C0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

  if (!v4)
  {
    outlined destroy of DropDestination(v37);

    v35 = 0;
    aBlock = 0u;
    v34 = 0u;
LABEL_21:
    outlined destroy of DragPayloadProvider?(&aBlock, &lazy cache variable for type metadata for CustomDropPreviewProvider?, &lazy cache variable for type metadata for CustomDropPreviewProvider);
    goto LABEL_29;
  }

  v39 = v4;
  v40 = v5;
  type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
  type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CustomDropPreviewProvider);

  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = 0;
    aBlock = 0u;
    v34 = 0u;
    goto LABEL_20;
  }

  if (!*(&v34 + 1))
  {
LABEL_20:
    outlined destroy of DropDestination(v37);

    goto LABEL_21;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&aBlock, v30);
  v12 = v31;
  v13 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v14 = [v11 itemProvider];
  v15 = [v14 registeredContentTypes];

  type metadata accessor for UTType();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&aBlock = 0;
  (*(v13 + 8))(v16, &aBlock, v12, v13);

  v17 = *(*v4 + class metadata base offset for DragDropDefaultPreviewResponder + 72);

  v17(&v39, v18);

  v19 = v39;
  if (v39)
  {
    v20 = v40;
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    *(v21 + 32) = v41;
    *(v21 + 48) = v42;
    v35 = partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:sessionDidUpdate:);
    v36 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v34 = thunk for @escaping @callee_guaranteed () -> (@owned UIDragPreview?);
    *(&v34 + 1) = &block_descriptor_63;
    v22 = _Block_copy(&aBlock);
    v23 = v19;
    v24 = v20;

    [v11 setPreviewProvider_];

    _Block_release(v22);
    v11 = v23;
  }

  else
  {
    [v11 setPreviewProvider_];
  }

  outlined destroy of DropDestination(v37);
  if (*v6 || *(v6 + 8) != 1)
  {
    *(v6 + 72) = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
LABEL_29:
  v25 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v26 = *(v25 + 8);
  ObjectType = swift_getObjectType();
  v28 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v26 + 16) + 8));
  swift_unknownObjectRelease();
  if (!v28)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  swift_beginAccess();
  v29 = specialized static UIDropProposal.fromActiveDrop(_:session:responder:host:)(v6, a1, v4, v5, v28);
  swift_endAccess();

  return v29;
}

uint64_t specialized DragAndDropBridge.dropInteraction(_:sessionDidEnd:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
  result = swift_unknownObjectRelease();
  if (v7)
  {
    v8 = (v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
    swift_beginAccess();
    if (*v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8[1] == 1;
    }

    if (v9 || (Strong = swift_weakLoadStrong()) == 0)
    {
    }

    else
    {
      v11 = Strong;
      *&v34 = Strong;
      (*(v8[1] + 8))(&v37, *Strong);
      if (*(&v38 + 1))
      {
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate);
        type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private);
        if (swift_dynamicCast())
        {
          if (*(&v44 + 1))
          {
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v43, v53);
            v51 = &type metadata for DropInfoAdaptor;
            v52 = &protocol witness table for DropInfoAdaptor;
            v12 = swift_allocObject();
            *&v50 = v12;
            swift_unknownObjectWeakInit();
            *(&v43 + 1) = 0;
            swift_unknownObjectWeakAssign();
            v13 = v7;

            [a1 locationInView_];
            v41 = v14;
            v42 = v15;
            type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
            lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
            if (static SemanticFeature.isEnabled.getter())
            {
              hostingViewCoordinateSpace.getter();
              v40[40] = 1;
              v16 = *(*v11 + class metadata base offset for UIViewSnapshotResponder + 80);

              v16(&v37, v17);

              v34 = v37;
              v35 = v38;
              v36 = v39;
              type metadata accessor for CGPoint(0);
              ApplyViewTransform.convert(from:transform:)();
              outlined destroy of CoordinateSpace(v40);
            }

            v18 = v41;
            v19 = v42;
            v48 = v41;
            v49 = v42;
            if ([swift_unknownObjectRetain() localDragSession])
            {
              swift_unknownObjectRelease();
              v20 = 0;
            }

            else
            {
              v20 = 1;
            }

            v21 = [a1 items];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
            v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v22 >> 62)
            {
              v23 = __CocoaSet.count.getter();
            }

            else
            {
              v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if ([swift_unknownObjectRetain() localDragSession])
            {
              swift_unknownObjectRelease();
              v24 = &selRef_allowsMoveOperation;
              v25 = 3;
            }

            else
            {
              v24 = &selRef_isRestrictedToDraggingApplication;
              v25 = 4;
            }

            v26 = [a1 *v24];
            swift_unknownObjectRelease();
            if (v26)
            {
              v27 = v25;
            }

            else
            {
              v27 = 1;
            }

            [v13 bounds];
            v29 = v28;
            v31 = v30;

            swift_unknownObjectRelease();

            *&v44 = a1;
            BYTE8(v44) = 6;
            *&v45 = v20;
            *(&v45 + 1) = v23;
            *v46 = v27;
            *&v46[8] = v29;
            *&v46[16] = v31;
            *&v46[24] = v18;
            v47 = v19;
            outlined init with take of DropInfoAdaptor(&v43, v12 + 16);
            outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v50, &v37);
            v32 = v54;
            v33 = v55;
            __swift_project_boxed_opaque_existential_1(v53, v54);
            (*(v33 + 32))(&v37, v32, v33);

            outlined destroy of DropInfo(&v37);
            __swift_destroy_boxed_opaque_existential_1(v53);
            goto LABEL_20;
          }
        }

        else
        {
          *&v45 = 0;
          v43 = 0u;
          v44 = 0u;
        }
      }

      else
      {

        outlined destroy of DragPayloadProvider?(&v37, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);
        v43 = 0u;
        v44 = 0u;
        *&v45 = 0;
      }

      outlined destroy of DragPayloadProvider?(&v43, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private);
    }

LABEL_20:
    v43 = xmmword_18CD633F0;
    v44 = 0u;
    v45 = 0u;
    memset(v46, 0, 25);
    swift_beginAccess();
    outlined assign with take of DropDestination?(&v43, v8);
    return swift_endAccess();
  }

  return result;
}

void specialized DragAndDropBridge.dropInteraction(_:performDrop:)(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v5 + 16) + 8));
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = (v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
      swift_beginAccess();
      if (*v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8[1] == 1;
      }

      if (v9 || (Strong = swift_weakLoadStrong()) == 0)
      {
      }

      else
      {
        v11 = Strong;
        v12 = v8[1];
        swift_unknownObjectWeakInit();
        v47 = 0;
        swift_unknownObjectWeakAssign();
        v13 = v7;

        [a1 locationInView_];
        v44 = v14;
        v45 = v15;
        type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
        if (static SemanticFeature.isEnabled.getter())
        {
          hostingViewCoordinateSpace.getter();
          v42 = 1;
          v16 = *(*v11 + class metadata base offset for UIViewSnapshotResponder + 80);

          v16(v59, v17);

          v36 = v59[0];
          v37 = v59[1];
          v38 = v59[2];
          type metadata accessor for CGPoint(0);
          ApplyViewTransform.convert(from:transform:)();
          outlined destroy of CoordinateSpace(v39);
        }

        v18 = v44;
        v19 = v45;
        v57 = v44;
        v58 = v45;
        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v20 = 0;
        }

        else
        {
          v20 = 1;
        }

        v21 = [a1 items];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v22 >> 62)
        {
          v23 = __CocoaSet.count.getter();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if ([swift_unknownObjectRetain() localDragSession])
        {
          swift_unknownObjectRelease();
          v24 = &selRef_allowsMoveOperation;
          v25 = 3;
        }

        else
        {
          v24 = &selRef_isRestrictedToDraggingApplication;
          v25 = 4;
        }

        v26 = [a1 *v24];
        swift_unknownObjectRelease();
        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 1;
        }

        [v13 bounds];
        v29 = v28;
        v31 = v30;

        swift_unknownObjectRelease();

        v48 = a1;
        v49 = 6;
        v50 = v20;
        v51 = v23;
        v52 = v27;
        v53 = v29;
        v54 = v31;
        v55 = v18;
        v56 = v19;
        outlined init with take of DropInfoAdaptor(v46, v59);
        if (*v8 || v8[1] != 1)
        {
          v32 = v8[8];
        }

        else
        {
          v32 = 0;
        }

        *(&v59[0] + 1) = v32;
        *(&v37 + 1) = &type metadata for DropInfoAdaptor;
        *&v38 = &protocol witness table for DropInfoAdaptor;
        *&v36 = swift_allocObject();
        outlined init with copy of DropInfoAdaptor(v59, v36 + 16);
        v33 = *v11;
        v43 = v11;
        (*(v12 + 8))(v39, v33, v12);
        v34 = v40;
        if (v40)
        {
          v35 = v41;
          __swift_project_boxed_opaque_existential_1(v39, v40);
          (*(v35 + 16))(&v36, v34, v35);

          outlined destroy of DropInfo(&v36);
          __swift_destroy_boxed_opaque_existential_1(v39);
        }

        else
        {

          outlined destroy of DropInfo(&v36);
          outlined destroy of DragPayloadProvider?(v39, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);
        }

        outlined destroy of DropInfoAdaptor(v59);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized DragAndDropBridge.dropInteraction(_:concludeDrop:)(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    __break(1u);
    return;
  }

  v4 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v6 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v4 + 16) + 8));
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = (v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop);
    swift_beginAccess();
    if (*v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7[1] == 1;
    }

    if (v8 || (Strong = swift_weakLoadStrong()) == 0)
    {

      return;
    }

    v10 = Strong;
    *&v33 = Strong;
    (*(v7[1] + 8))(&v36, *Strong);
    if (*(&v37 + 1))
    {
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate);
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for DropDelegate_Private);
      if (swift_dynamicCast())
      {
        if (*(&v43 + 1))
        {
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v42, v56);
          v54 = &type metadata for DropInfoAdaptor;
          v55 = &protocol witness table for DropInfoAdaptor;
          v11 = swift_allocObject();
          *&v53 = v11;
          swift_unknownObjectWeakInit();
          *(&v42 + 1) = 0;
          swift_unknownObjectWeakAssign();
          v12 = v6;

          [a1 locationInView_];
          v40 = v13;
          v41 = v14;
          type metadata accessor for _SemanticFeature<Semantics_v2>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
          lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
          if (static SemanticFeature.isEnabled.getter())
          {
            hostingViewCoordinateSpace.getter();
            v39[40] = 1;
            v15 = *(*v10 + class metadata base offset for UIViewSnapshotResponder + 80);

            v15(&v36, v16);

            v33 = v36;
            v34 = v37;
            v35 = v38;
            type metadata accessor for CGPoint(0);
            ApplyViewTransform.convert(from:transform:)();
            outlined destroy of CoordinateSpace(v39);
          }

          v17 = v40;
          v18 = v41;
          v51 = v40;
          v52 = v41;
          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v20 = [a1 items];
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIDragItem);
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v21 >> 62)
          {
            v22 = __CocoaSet.count.getter();
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ([swift_unknownObjectRetain() localDragSession])
          {
            swift_unknownObjectRelease();
            v23 = &selRef_allowsMoveOperation;
            v24 = 3;
          }

          else
          {
            v23 = &selRef_isRestrictedToDraggingApplication;
            v24 = 4;
          }

          v25 = [a1 *v23];
          swift_unknownObjectRelease();
          if (v25)
          {
            v26 = v24;
          }

          else
          {
            v26 = 1;
          }

          [v12 bounds];
          v28 = v27;
          v30 = v29;

          swift_unknownObjectRelease();

          *&v43 = a1;
          BYTE8(v43) = 6;
          v44 = v19;
          v45 = v22;
          v46 = v26;
          v47 = v28;
          v48 = v30;
          v49 = v17;
          v50 = v18;
          outlined init with take of DropInfoAdaptor(&v42, v11 + 16);
          outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v53, &v36);
          v31 = v57;
          v32 = v58;
          __swift_project_boxed_opaque_existential_1(v56, v57);
          (*(v32 + 24))(&v36, v31, v32);

          outlined destroy of DropInfo(&v36);
          __swift_destroy_boxed_opaque_existential_1(v56);
          return;
        }
      }

      else
      {
        v44 = 0;
        v42 = 0u;
        v43 = 0u;
      }
    }

    else
    {

      outlined destroy of DragPayloadProvider?(&v36, &lazy cache variable for type metadata for DropDelegate?, &lazy cache variable for type metadata for DropDelegate);
      v42 = 0u;
      v43 = 0u;
      v44 = 0;
    }

    outlined destroy of DragPayloadProvider?(&v42, &lazy cache variable for type metadata for DropDelegate_Private?, &lazy cache variable for type metadata for DropDelegate_Private);
  }
}

uint64_t specialized DragAndDropBridge.dropInteraction(_:previewForDropping:withDefault:)(void *a1, id a2)
{
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeDrop;
  swift_beginAccess();
  outlined init with copy of DropDestination?(v2 + v5, &v59, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
  if (v59)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&v59 + 1) == 1;
  }

  if (v6)
  {
    _sypSgWOhTm_2(&v59, &lazy cache variable for type metadata for DropDestination?, &type metadata for DropDestination);
    goto LABEL_15;
  }

  outlined init with take of DropDestination(&v59, v63);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    outlined destroy of DropDestination(v63);
    goto LABEL_15;
  }

  v8 = Strong;
  v9 = v64;
  v10 = v2 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_host;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v14 = ViewGraphDelegate.uiView.getter(ObjectType, *(*(v12 + 16) + 8));
    swift_unknownObjectRelease();
    if (v14)
    {
      v66 = v8;
      v67 = v9;
      type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider();
      type metadata accessor for DropDelegate(0, &lazy cache variable for type metadata for CustomDropPreviewProvider);

      if (swift_dynamicCast())
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v56.i8, &v59);
        v15 = *(&v60 + 1);
        v16 = v61;
        __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
        v17 = [a1 itemProvider];
        v18 = [v17 registeredContentTypes];

        type metadata accessor for UTType();
        v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v56.i64[0] = a2;
        v20 = *(v16 + 8);
        v21 = a2;
        v20(v19, &v56, v15, v16);

        v22 = *(*v8 + class metadata base offset for DragDropDefaultPreviewResponder + 72);

        v22(&v66, v23);

        v24 = v66;
        if (!v66)
        {

          outlined destroy of DropDestination(v63);
          __swift_destroy_boxed_opaque_existential_1(&v59);
          return 0;
        }

        v25 = v67;
        v26 = v69;
        v53 = v68;
        __swift_destroy_boxed_opaque_existential_1(&v59);
        if (v26)
        {

          v14 = v24;
LABEL_21:

          outlined destroy of DropDestination(v63);
          return 0;
        }

        v32 = v53;
      }

      else
      {
        v58 = 0;
        v56 = 0u;
        v57 = 0u;
        outlined destroy of DragPayloadProvider?(&v56, &lazy cache variable for type metadata for CustomDropPreviewProvider?, &lazy cache variable for type metadata for CustomDropPreviewProvider);
        v28 = v65;
        swift_beginAccess();
        v29 = *(v28 + 16);
        if (!*(v29 + 16) || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v31 & 1) == 0))
        {
          swift_endAccess();

          goto LABEL_21;
        }

        v54 = *(*(v29 + 56) + 16 * v30);
        swift_endAccess();
        v32 = v54;
        v25 = 0;
        v24 = 0;
      }

      v56 = 0uLL;
      v57 = vaddq_f64(v32, v32);
      LOBYTE(v58) = 0;

      v33 = UIViewSnapshotResponder.portalContainer(centeringPortalRect:inHost:options:preferredContainer:)(&v56, v14, 8, 0);
      v35 = v34;
      v36 = v33;
      v38 = v37;

      v39 = v65;
      swift_beginAccess();
      v40 = *(v39 + 24);
      v55 = xmmword_18CD683C0;
      v52 = xmmword_18CDA05A0;
      v41 = 0;
      if (*(v40 + 16))
      {
        v42 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
        v43 = 0;
        if (v44)
        {
          v45 = *(v40 + 56) + 48 * v42;
          v52 = *v45;
          v55 = *(v45 + 16);
          v41 = *(v45 + 32);
          v43 = *(v45 + 40);
        }
      }

      else
      {
        v43 = 0;
      }

      swift_endAccess();
      v46 = objc_allocWithZone(MEMORY[0x1E69DC9A8]);
      v60 = v55;
      v59 = v52;
      v61 = v41;
      v62 = v43;
      v47 = [v46 initWithContainer:v35 center:&v59 transform:{v36, v38}];
      if (v24)
      {
        v48 = v24;
        if (v25)
        {
          v49 = v25;
        }

        else
        {
          v49 = [a2 parameters];
        }

        v50 = objc_allocWithZone(MEMORY[0x1E69DD068]);
        v51 = v25;
        a2 = [v50 initWithView:v24 parameters:v49 target:v47];
      }

      else
      {
        a2 = [a2 retargetedPreviewWithTarget_];
      }

      outlined destroy of DropDestination(v63);
      return a2;
    }

    outlined destroy of DropDestination(v63);

LABEL_15:
    v27 = a2;
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t specialized DragAndDropBridge.shouldAllow(_:with:)(void *a1)
{
  v3 = DragAndDropBridge.springLoadedResponder(from:)(a1);
  v4 = v3;
  v5 = OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder;
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder);
  if (!v3)
  {
    if (!v6)
    {
      return 0;
    }

LABEL_6:
    v7 = *(v6 + 256);

    v7(v8);

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v3 == v6)
  {
LABEL_15:

    return 1;
  }

  if (v6)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = *(v4 + 240);

  v10 = [a1 state];
  if (v10)
  {
    v11 = v10 == 3;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v14 = v12;
  v9(&v14);

LABEL_14:
  *(v1 + v5) = v4;

  if (v4)
  {
    goto LABEL_15;
  }

  return 0;
}

void specialized DragAndDropBridge.SpringLoadedEffect.updateHighlightState(_:interaction:)(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) != v2)
  {
    *(v1 + OBJC_IVAR____TtCC7SwiftUI17DragAndDropBridge18SpringLoadedEffect_previousHighlightState) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *&Strong[OBJC_IVAR____TtC7SwiftUI17DragAndDropBridge_activeSpringLoadedResponder];
      if (v4)
      {
        v5 = *(v4 + 240);
        v7 = v2;
        v6 = Strong;

        v5(&v7);
      }

      else
      {
      }
    }
  }
}

double partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DragAndDropBridge.dragItems(_:_:)@<D0>(uint64_t a1@<X8>)
{
  (*(*v1 + class metadata base offset for DragDropDefaultPreviewResponder + 72))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t outlined init with take of DropDestination(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v6 = *(a1 + 64);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = v6;
  *(a2 + 72) = *(a1 + 72);
  return a2;
}

unint64_t type metadata accessor for DragDropDefaultPreviewResponder & DropPayloadProvider()
{
  result = lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider;
  if (!lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider)
  {
    type metadata accessor for DragDropDefaultPreviewResponder();
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for DragDropDefaultPreviewResponder & DropPayloadProvider);
  }

  return result;
}

void type metadata accessor for CustomDropPreviewProvider?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for DropDelegate(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of DragPayloadProvider?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for CustomDropPreviewProvider?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id partial apply for closure #1 in DragAndDropBridge.dropInteraction(_:sessionDidUpdate:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_allocWithZone(MEMORY[0x1E69DC998]);

  return [v3 initWithView:v1 parameters:v2];
}

uint64_t outlined init with copy of DropDestination?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _sypSgMaTm_2(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #3 in DragAndDropBridge.dragInteraction(_:willAnimateLiftWith:session:)()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t destroy for DropInfoAdaptor(uint64_t a1)
{
  MEMORY[0x18D011290]();

  result = *(a1 + 32);
  if (result != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 32);

  if (v5 != 1)
  {
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithCopy for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v5 == 1)
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    v7 = 1;
  }

  else
  {
    if (v6 != 1)
    {
      *v4 = v6;

      goto LABEL_9;
    }

    outlined destroy of DropSession.LocalSession(a1 + 32);
    v7 = *(a2 + 32);
  }

  *v4 = v7;
LABEL_9:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

__n128 initializeWithTake for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  *(v3 + 8) = *(a2 + 8);
  v4 = *(a2 + 64);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 80);
  v5 = *(a2 + 32);
  *(v3 + 16) = *(a2 + 16);
  *(v3 + 32) = v5;
  result = *(a2 + 88);
  *(v3 + 88) = result;
  return result;
}

uint64_t assignWithTake for DropInfoAdaptor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v4 != 1)
  {
    if (v6 != 1)
    {
      *v5 = v6;

      goto LABEL_6;
    }

    outlined destroy of DropSession.LocalSession(a1 + 32);
    v6 = *(a2 + 32);
  }

  *v5 = v6;
LABEL_6:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for DropInfoAdaptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DropInfoAdaptor(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double ButtonMenuStyle.Automatic.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v11[96] = 0;
  v11[88] = 0;
  v11[80] = 0;
  v11[72] = 0;
  LOBYTE(v13) = 2;
  *(&v13 + 1) = swift_getKeyPath();
  LOBYTE(v14) = 0;
  *(&v14 + 1) = swift_getKeyPath();
  LOBYTE(v15) = 0;
  *(&v15 + 1) = swift_getKeyPath();
  LOBYTE(v16) = 0;
  *(&v16 + 1) = swift_getKeyPath();
  v17 = 0;
  *&v12[7] = v13;
  v12[71] = 0;
  *&v12[55] = v16;
  *&v12[39] = v15;
  *&v12[23] = v14;
  v18[0] = 2;
  v19 = *(&v13 + 1);
  v20 = 0;
  v21 = *(&v14 + 1);
  v22 = 0;
  v23 = *(&v15 + 1);
  v24 = 0;
  v25 = *(&v16 + 1);
  v26 = 0;
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v5);
  outlined init with copy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(&v13, v11, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  outlined destroy of StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>(v18, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
  KeyPath = swift_getKeyPath();
  v8 = *v12;
  *(a2 + 49) = *&v12[16];
  result = *&v12[32];
  v10 = *&v12[48];
  *(a2 + 65) = *&v12[32];
  *(a2 + 81) = v10;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 97) = *&v12[64];
  *(a2 + 33) = v8;
  *(a2 + 112) = KeyPath;
  *(a2 + 120) = 0;
  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Sema()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_Seman)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Seman, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ButtonMenuStyle.Automatic>, lazy protocol witness table accessor for type ButtonMenuStyle.Automatic and conformance ButtonMenuStyle.Automatic, &type metadata for ButtonMenuStyle.Automatic, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_Seman);
    }
  }
}

void type metadata accessor for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassButtonStyle>, lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle, &type metadata for GlassButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<GlassButtonMenuStyle>, lazy protocol witness table accessor for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle, &type metadata for GlassButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassButtonMenuStyle and conformance GlassButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassProminentButtonStyle>, lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle, &type metadata for GlassProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<GlassProminentButtonMenuStyle>, lazy protocol witness table accessor for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle, &type metadata for GlassProminentButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle()
{
  result = lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle;
  if (!lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlassProminentButtonMenuStyle and conformance GlassProminentButtonMenuStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<CustomButtonMenuStyle>, lazy protocol witness table accessor for type CustomButtonMenuStyle and conformance CustomButtonMenuStyle, &type metadata for CustomButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<S()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFeature<Seman, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, MenuStyleModifier<CustomButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_SemanticFea);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, ;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, )
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassButtonStyle>, lazy protocol witness table accessor for type GlassButtonStyle and conformance GlassButtonStyle, &type metadata for GlassButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<GlassButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>;
  if (!lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>)
  {
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for ButtonStylePredicate<GlassProminentButtonStyle>, lazy protocol witness table accessor for type GlassProminentButtonStyle and conformance GlassProminentButtonStyle, &type metadata for GlassProminentButtonStyle, type metadata accessor for ButtonStylePredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStylePredicate<GlassProminentButtonStyle> and conformance ButtonStylePredicate<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>();
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<BorderlessButtonMenuStyle>, lazy protocol witness table accessor for type BorderlessButtonMenuStyle and conformance BorderlessButtonMenuStyle, &type metadata for BorderlessButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, ModifiedContent<MenuStyleConfiguration.Content, PrimitiveButtonStyleContainerModifier<DefaultButtonStyle>>>, StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderlessButtonStyle>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<BorderedProminentButtonStyle>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassButtonStyle>, MenuStyleModifier<GlassButtonMenuStyle>, EmptyModifier>>, StaticIf<ButtonStylePredicate<GlassProminentButtonStyle>, MenuStyleModifier<GlassProminentButtonMenuStyle>, EmptyModifier>>, StaticIf<_S(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>, lazy protocol witness table accessor for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle, &type metadata for ConditionallyBorderedMenuButtonStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, MenuStyleModifier<ConditionallyBorderedMenuButtonStyle>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for ButtonStylePredicate<BorderlessButtonStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<_BorderedButtonMenuStyle>, lazy protocol witness table accessor for type _BorderedButtonMenuStyle and conformance _BorderedButtonMenuStyle, &type metadata for _BorderedButtonMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>);
    }
  }
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle()
{
  result = lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle;
  if (!lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConditionallyBorderedMenuButtonStyle and conformance ConditionallyBorderedMenuButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content> and conformance Menu<A, B>, type metadata accessor for Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<PlainButtonStyle>, MenuStyleModifier<_PlainButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Menu<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, MenuStyleModifier<_BorderedButtonMenuStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, MenuStyleModifier<BorderlessButtonMenuStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

id HostingScrollView.PlatformContainer.next.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (MEMORY[0x18D008800]())
  {
    if (swift_weakLoadStrong())
    {
      v3 = ViewResponder.parentGestureContainer.getter();

      if (v3)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          return result;
        }
      }
    }
  }

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_nextResponder);
}

id HostingScrollView.PlatformContainer._parentContainer.getter()
{
  ObjectType = swift_getObjectType();
  if ((MEMORY[0x18D008800]() & 1) == 0)
  {
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel__parentGestureRecognizerContainer);
  }

  if (!swift_weakLoadStrong())
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_4;
    }

    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 208);

    if (!v6)
    {
      goto LABEL_4;
    }

    v8 = swift_getObjectType();
    v9 = type metadata accessor for EventGraphHost();
    (*(v7 + 16))(v12, v9, v9, v8, v7);
    swift_unknownObjectRelease();
    if (!v12[0])
    {
      goto LABEL_4;
    }

    v10 = v12[1];
    v11 = swift_getObjectType();
    (*(v10 + 16))(v11, v10);
    swift_unknownObjectRelease();
  }

LABEL_4:
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = ViewResponder.parentGestureContainer.getter();

    return v3;
  }

  return result;
}

uint64_t specialized HostingScrollView.PlatformContainer.renderPlatformGroup(_:in:size:renderer:)(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(v2 + OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView);
  v4 = type metadata accessor for HostingScrollView();
  v7.receiver = v3;
  v7.super_class = v4;

  objc_msgSendSuper2(&v7, sel_bounds);
  v6.receiver = v3;
  v6.super_class = v4;
  objc_msgSendSuper2(&v6, sel_bounds);
  GraphicsContext.translateBy(x:y:)();
  Path.init(_:)();
  GraphicsContext.clip(to:style:options:)();
  outlined destroy of Path(v9);
  DisplayList.GraphicsRenderer.render(list:in:)();
}

BOOL NavigationColumnState.ColumnContent.isShowingOriginalRoot.getter()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0, v11);
  if ((v11[120] & 1) == 0)
  {
    v2 = outlined init with copy of NavigationColumnState.ColumnContent(v11, v7);
    v3 = v10;
    if (v8 == 255)
    {
      v5 = (*(*v9 + 80))(v2);

      if (v5)
      {
        v6 = *(v3 + 16);

        v1 = v6 == 0;
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v7, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
LABEL_7:
    v1 = 0;
    goto LABEL_8;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v11, v7);
  if (v8 != 255)
  {
    goto LABEL_6;
  }

  v1 = 1;
LABEL_8:
  outlined destroy of NavigationColumnState.ColumnContent(v11);
  return v1;
}

uint64_t NavigationColumnState.ColumnContent.replacedRootMatchesView(identifiedBy:)(void *a1)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v1, v8);
  if ((v8[120] & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v8, v5);

    if (v7 != 255)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v5, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v8, v5);
  if (v7 == 255)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
LABEL_4:
    outlined destroy of NavigationColumnState.ReplacedRoot(v5);
LABEL_9:
    outlined destroy of NavigationColumnState.ColumnContent(v8);
    v3 = 0;
    return v3 & 1;
  }

LABEL_7:
  v9[2] = v5[2];
  v9[3] = v5[3];
  v9[4] = v5[4];
  v10 = v6;
  v9[0] = v5[0];
  v9[1] = v5[1];
  outlined destroy of NavigationColumnState.ColumnContent(v8);
  v3 = NavigationLinkSelectionIdentifier.matches(_:)(a1);
  outlined destroy of NavigationViewDestinationView(v9);
  return v3 & 1;
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.dismissReplacedRootView()()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0, v7);
  if ((v9 & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v7, v4);

    if (v6 != 255)
    {
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_7:
      v10[2] = v4[2];
      v10[3] = v4[3];
      v10[4] = v4[4];
      v11 = v5;
      v10[0] = v4[0];
      v10[1] = v4[1];
      outlined destroy of NavigationColumnState.ColumnContent(v7);
      LOBYTE(v4[0]) = 17;
      outlined init with copy of NavigationViewDestinationView(v10, v7);
      v1 = swift_allocObject();
      v2 = v7[3];
      *(v1 + 48) = v7[2];
      *(v1 + 64) = v2;
      *(v1 + 80) = v7[4];
      *(v1 + 96) = v8;
      v3 = v7[1];
      *(v1 + 16) = v7[0];
      *(v1 + 32) = v3;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationViewDestinationView(v10);
      return;
    }

LABEL_8:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_9;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v7, v4);
  if (v6 == 255)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  outlined destroy of NavigationColumnState.ReplacedRoot(v4);
LABEL_9:
  outlined destroy of NavigationColumnState.ColumnContent(v7);
}

uint64_t NavigationColumnState.ColumnContent.replaceRoot(_:)(uint64_t a1)
{
  *&v9[9] = *(v1 + 105);
  v2 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v2;
  *v9 = *(v1 + 96);
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v4 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v4;
  v5 = v9[24];
  if (v9[24])
  {
    outlined init with copy of AnyNavigationLinkPresentedValue(a1, v1);
    *(v1 + 88) = 0;
  }

  else
  {
    v6 = *&v9[16];
    outlined init with copy of AnyNavigationLinkPresentedValue(a1, v1);
    *(v1 + 88) = 0;
    *(v1 + 96) = *v9;
    *(v1 + 112) = v6;
  }

  *(v1 + 120) = v5;
  return outlined destroy of NavigationColumnState.ReplacedRoot?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

{
  *&v9[9] = *(v1 + 105);
  v2 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v2;
  *v9 = *(v1 + 96);
  v3 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v3;
  v4 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v4;
  v5 = v9[24];
  if (v9[24])
  {
    outlined init with copy of NavigationViewDestinationView(a1, v1);
    *(v1 + 88) = 1;
  }

  else
  {
    v6 = *&v9[16];
    outlined init with copy of NavigationViewDestinationView(a1, v1);
    *(v1 + 88) = 1;
    *(v1 + 96) = *v9;
    *(v1 + 112) = v6;
  }

  *(v1 + 120) = v5;
  return outlined destroy of NavigationColumnState.ReplacedRoot?(v8, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.resetRoot()()
{
  *&v6[9] = *(v0 + 105);
  v1 = *(v0 + 80);
  v5[4] = *(v0 + 64);
  v5[5] = v1;
  *v6 = *(v0 + 96);
  v2 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v2;
  v3 = *(v0 + 48);
  v5[2] = *(v0 + 32);
  v5[3] = v3;
  if (v6[24])
  {
    *(v0 + 80) = 0;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *v0 = 0u;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v0);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
  }

  else
  {
    v4 = *&v6[16];
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v0);
    *v0 = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0;
    *(v0 + 88) = -1;
    *(v0 + 96) = *v6;
    *(v0 + 112) = v4;
    *(v0 + 120) = 0;
  }

  outlined destroy of NavigationColumnState.ReplacedRoot?(v5, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
}

Swift::Void __swiftcall NavigationColumnState.ColumnContent.clearAll(popReplacedRoots:)(Swift::Bool popReplacedRoots)
{
  v2 = v1;
  v4 = *(v1 + 48);
  v36 = *(v1 + 32);
  v37 = v4;
  v5 = *(v1 + 80);
  v38[0] = *(v1 + 64);
  v38[1] = v5;
  v6 = *(v1 + 16);
  v34 = *v1;
  v35 = v6;
  if (*(v1 + 120))
  {
    v7 = *(v1 + 48);
    v31 = *(v1 + 32);
    v32 = v7;
    *v33 = *(v1 + 64);
    *&v33[9] = *(v1 + 73);
    v8 = *(v1 + 16);
    v29 = *v1;
    v30 = v8;
    if (popReplacedRoots)
    {
      outlined destroy of NavigationColumnState.ReplacedRoot?(&v29, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v9 = 0;
      v10 = 0uLL;
      v11 = -1;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
    }

    else
    {
      v10 = v29;
      v12 = v30;
      v13 = v31;
      v14 = v32;
      v15 = *v33;
      v9 = *&v33[16];
      v11 = v33[24];
    }

    *v1 = v10;
    *(v1 + 16) = v12;
    *(v1 + 32) = v13;
    *(v1 + 48) = v14;
    *(v1 + 64) = v15;
    *(v1 + 80) = v9;
    *(v1 + 88) = v11;
    *(v1 + 120) = 1;
  }

  else
  {
    v16 = *(v1 + 96);

    v31 = v36;
    v32 = v37;
    *v33 = v38[0];
    *&v33[9] = *(v38 + 9);
    v29 = v34;
    v30 = v35;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0;
    *(v2 + 88) = -1;
    *(v2 + 120) = 1;
    v17 = outlined destroy of NavigationColumnState.ColumnContent(v2);
    v18 = (*(*v16 + 88))(v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = (*(*v16 + 104))();

      v16 = v19;
    }

    (*(*v16 + 128))(v18);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    if (popReplacedRoots)
    {
      outlined destroy of NavigationColumnState.ReplacedRoot?(&v29, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      v22 = 0;
      v23 = 0uLL;
      v24 = -1;
      v25 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
    }

    else
    {
      v23 = v29;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v28 = *v33;
      v22 = *&v33[16];
      v24 = v33[24];
    }

    *v2 = v23;
    *(v2 + 16) = v25;
    *(v2 + 32) = v26;
    *(v2 + 48) = v27;
    *(v2 + 64) = v28;
    *(v2 + 80) = v22;
    *(v2 + 88) = v24;
    *(v2 + 96) = v16;
    *(v2 + 104) = v20;
    *(v2 + 112) = v21;
    *(v2 + 120) = 0;
  }
}

uint64_t NavigationColumnState.ColumnContent.presentView(_:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of NavigationColumnState.ColumnContent(v2, v26);
  if (v30)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v26);
    return 1;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v2);
  v7 = v28;
  v9 = *(&v29 + 1);
  v8 = v29;
  v34 = v26[2];
  v35 = v26[3];
  v36[0] = v27[0];
  *(v36 + 9) = *(v27 + 9);
  v32 = v26[0];
  v33 = v26[1];
  v31 = v29;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 88) = -1;
  *(v2 + 120) = 1;

  v10 = outlined destroy of NavigationColumnState.ColumnContent(v2);
  v11 = *(*v7 + 88);
  v12 = (v11)(v10);

  if (v12 > a2)
  {
    result = (v11)(v13);
    v15 = __OFSUB__(result, a2);
    v6 = result - a2;
    if (!v15)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = (*(*v7 + 104))();

        v7 = v21;
      }

      (*(*v7 + 128))(v6);
      specialized Collection<>.dismiss(from:)(0, v8, v9);

      v8 = MEMORY[0x1E69E7CC0];
      v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *&v31 = v8;
      *(&v31 + 1) = v22;
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = *(v8 + 16);
  result = (v11)(v13);
  if (__OFADD__(v16, result))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 + result <= a2)
  {
    v6 = 1;
    goto LABEL_20;
  }

  result = v11();
  v17 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = specialized Collection<>.dismiss(from:)(a2 - result, v8, v9);
  v18 = *(v8 + 16);
  v19 = v18 - v17;
  if (__OFSUB__(v18, v17))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v19)
  {
    v6 = 1;
    goto LABEL_20;
  }

  if (v19 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*(v8 + 16), v17 - v18, 0, v8);
  if ((v20 & 1) == 0)
  {
    if (v18 < result)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    specialized IdentifiedArray.replaceSubrange<A>(_:with:)(result, v18);
    v6 = 1;
    v8 = v31;
LABEL_20:
    v23 = *(v8 + 16);
    outlined init with copy of NavigationViewDestinationView(a1, v26);
    specialized IdentifiedArray.replaceSubrange<A>(_:with:)(v23, v23, v26);
    outlined destroy of NavigationColumnState.ReplacedRoot?(v26, &lazy cache variable for type metadata for CollectionOfOne<NavigationViewDestinationView>, &type metadata for NavigationViewDestinationView, MEMORY[0x1E69E6BC0]);
    v24 = v35;
    *(v3 + 32) = v34;
    *(v3 + 48) = v24;
    *(v3 + 64) = v36[0];
    *(v3 + 73) = *(v36 + 9);
    v25 = v33;
    *v3 = v32;
    *(v3 + 16) = v25;
    *(v3 + 96) = v7;
    *(v3 + 104) = v31;
    *(v3 + 120) = 0;
    return v6;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t NavigationColumnState.ColumnContent.replaceViewDestinationView(_:identifier:)(uint64_t a1, void *a2)
{
  v3 = v2;
  outlined init with copy of NavigationColumnState.ColumnContent(v2, v36);
  if (v36[120] == 1)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v36, v30);
    if (v32 != 255)
    {
      if (v32)
      {
        v18 = v30[2];
        v19 = v30[3];
        *v20 = v30[4];
        *&v20[16] = v31;
        v16 = v30[0];
        v17 = v30[1];
        if (NavigationLinkSelectionIdentifier.matches(_:)(a2))
        {
          outlined destroy of NavigationColumnState.ColumnContent(v2);
          *v2 = 0u;
          *(v2 + 16) = 0u;
          *(v2 + 32) = 0u;
          *(v2 + 48) = 0u;
          *(v2 + 64) = 0u;
          *(v2 + 80) = 0;
          *(v2 + 88) = -1;
          v6 = 1;
          *(v3 + 120) = 1;
          outlined destroy of NavigationColumnState.ColumnContent(v3);

          *&v16 = a1;
          outlined init with copy of NavigationViewDestinationView(&v16, v3);
          *(v3 + 88) = 1;
          *(v3 + 120) = 1;
          outlined destroy of NavigationViewDestinationView(&v16);
LABEL_25:
          outlined destroy of NavigationColumnState.ColumnContent(v36);
          return v6;
        }

        outlined destroy of NavigationViewDestinationView(&v16);
      }

      else
      {
        outlined destroy of NavigationColumnState.ReplacedRoot(v30);
      }

LABEL_20:
      v6 = 0;
      goto LABEL_25;
    }

LABEL_19:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    goto LABEL_20;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v36, v30);
  v8 = v33;
  v7 = v34;
  v9 = v35;
  if (v32 == 255)
  {
  }

  else
  {
    outlined init with copy of NavigationColumnState.ReplacedRoot?(v30, &v16);
    if (v20[24] == 1)
    {
      v27 = v18;
      v28 = v19;
      *v29 = *v20;
      *&v29[16] = *&v20[16];
      v25 = v16;
      v26 = v17;
      if (NavigationLinkSelectionIdentifier.matches(_:)(a2))
      {
        outlined destroy of NavigationColumnState.ColumnContent(v2);
        *v2 = 0u;
        *(v2 + 16) = 0u;
        *(v2 + 32) = 0u;
        *(v2 + 48) = 0u;
        *(v2 + 64) = 0u;
        *(v2 + 80) = 0;
        *(v2 + 88) = -1;
        v6 = 1;
        *(v3 + 120) = 1;
        outlined destroy of NavigationColumnState.ColumnContent(v3);

        *&v25 = a1;
        outlined init with copy of NavigationViewDestinationView(&v25, v3);
        *(v3 + 88) = 1;
        *(v3 + 96) = v8;
        *(v3 + 104) = v7;
        *(v3 + 112) = v9;
        *(v3 + 120) = 0;
        outlined destroy of NavigationViewDestinationView(&v25);
        outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
        goto LABEL_25;
      }

      outlined destroy of NavigationViewDestinationView(&v25);
    }

    else
    {

      outlined destroy of NavigationColumnState.ReplacedRoot(&v16);
    }
  }

  specialized IdentifiedArray.subscript.getter(a2, v7, v9, &v16);

  if (!v16)
  {
    outlined destroy of (NavigationViewDestinationView, Int)?(&v16);
    goto LABEL_19;
  }

  v10 = *&v20[24];
  outlined destroy of NavigationViewDestinationView(&v16);
  outlined init with copy of NavigationColumnState.ColumnContent(v2, &v16);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(&v16);
LABEL_24:
    outlined destroy of NavigationColumnState.ReplacedRoot?(v30, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v6 = 1;
    goto LABEL_25;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v2);
  v11 = v21;
  v27 = v18;
  v28 = v19;
  *v29 = *v20;
  *&v29[9] = *&v20[9];
  v25 = v16;
  v26 = v17;
  v15 = v22;
  v24 = v22;
  *(v2 + 80) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  *(v2 + 88) = -1;
  *(v2 + 120) = 1;
  result = outlined destroy of NavigationColumnState.ColumnContent(v2);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v15 + 16))
  {
    outlined init with copy of NavigationViewDestinationView(v15 + 88 * v10 + 32, &v16);

    *&v16 = a1;
    specialized IdentifiedArray.subscript.setter(&v16, v10);
    v13 = v28;
    *(v2 + 32) = v27;
    *(v2 + 48) = v13;
    *(v2 + 64) = *v29;
    *(v2 + 73) = *&v29[9];
    v14 = v26;
    *v2 = v25;
    *(v2 + 16) = v14;
    *(v2 + 96) = v11;
    *(v2 + 104) = v24;
    *(v2 + 120) = 0;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}