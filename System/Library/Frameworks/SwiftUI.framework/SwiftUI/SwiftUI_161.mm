uint64_t DeprecatedAlertBridge.descriptionChildren.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78));
  if (v1 && (type metadata accessor for PlatformAlertController(), type metadata accessor for CustomRecursiveStringConvertible(), v2 = v1, (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      v5 = (*(v4 + 32))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v5;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  outlined destroy of CustomRecursiveStringConvertible?(&v7);
  return MEMORY[0x1E69E7CC0];
}

uint64_t DeprecatedAlertBridge.descriptionAttributes.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x78));
  if (v1 && (type metadata accessor for PlatformAlertController(), type metadata accessor for CustomRecursiveStringConvertible(), v2 = v1, (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      __swift_destroy_boxed_opaque_existential_1(&v7);
      return v5;
    }
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
  }

  outlined destroy of CustomRecursiveStringConvertible?(&v7);
  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of CustomRecursiveStringConvertible?(uint64_t a1)
{
  type metadata accessor for CustomRecursiveStringConvertible?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for CustomRecursiveStringConvertible?()
{
  if (!lazy cache variable for type metadata for CustomRecursiveStringConvertible?)
  {
    type metadata accessor for CustomRecursiveStringConvertible();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CustomRecursiveStringConvertible?);
    }
  }
}

unint64_t type metadata accessor for CustomRecursiveStringConvertible()
{
  result = lazy cache variable for type metadata for CustomRecursiveStringConvertible;
  if (!lazy cache variable for type metadata for CustomRecursiveStringConvertible)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CustomRecursiveStringConvertible);
  }

  return result;
}

uint64_t ToolbarTitleMenu.init(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  v11 = *(*(a2 - 8) + 56);
  v12 = v11(a3, 1, 1, a2, v8);
  a1(v12);
  (v11)(v10, 0, 1, a2);
  return (*(v7 + 40))(a3, v10, v6);
}

uint64_t static ToolbarTitleMenu._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a5;
  v67 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v65 = a2[2];
  *v66 = v8;
  *&v66[12] = *(a2 + 60);
  v9 = a2[1];
  v63 = *a2;
  v64 = v9;
  v10 = v9;
  swift_beginAccess();
  v11 = *(v10 + 16);
  v61 = v65;
  v62[0] = *v66;
  *(v62 + 12) = *&v66[12];
  v59 = v63;
  v60 = v64;
  outlined init with copy of _ToolbarInputs(&v63, &v53);
  _GraphInputs.pushStyleContext<A>(_:)();
  LODWORD(v53) = v11;
  v38 = type metadata accessor for ToolbarTitleMenu.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v53, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, &v37, v38, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  _GraphInputs.environment.setter();
  v36 = v7;
  type metadata accessor for ToolbarTitleMenu();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v14 = type metadata accessor for Optional();
  if (*(*(v14 - 8) + 64))
  {
    closure #1 in static ToolbarTitleMenu._makeToolbar(content:inputs:)(1);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v46[0] = v59;
  v46[1] = v60;
  v46[2] = v61;
  v47 = v59;
  v48 = v60;
  v49 = v61;
  outlined init with copy of _GraphInputs(v46, &v53);
  _ViewInputs.init(withoutGeometry:)();
  v45 = a4;
  v16 = swift_getWitnessTable();
  PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v53, 0, &v47);
  LODWORD(v33) = v7;
  v17 = _GraphValue.value.getter();
  v31 = v17;
  v43[1] = v51;
  v44[0] = v52[0];
  *(v44 + 12) = *(v52 + 12);
  v40 = v47;
  v41 = v48;
  v42 = v49;
  v43[0] = v50;
  MEMORY[0x1EEE9AC00](v17);
  *&v53 = &type metadata for AllPlatformItemListFlags;
  *(&v53 + 1) = v14;
  *&v54 = &protocol witness table for AllPlatformItemListFlags;
  *(&v54 + 1) = v16;
  v18 = type metadata accessor for PlatformItemListGenerator();
  v29 = v18;
  v30 = swift_getWitnessTable();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v53, &v47, v18);
  type metadata accessor for Attribute<PlatformItemList>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v40, closure #1 in Attribute.init<A>(_:)partial apply, v28, v18, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  v57 = v43[1];
  v58[0] = v44[0];
  *(v58 + 12) = *(v44 + 12);
  v53 = v40;
  v54 = v41;
  v55 = v42;
  v56 = v43[0];
  v22 = *(v19 + 8);
  v22(&v53, v18);
  v23 = v35;
  v24 = *&v66[16];
  PreferencesOutputs.init()();
  v25 = DWORD2(v40);
  v26 = v32;
  *v32 = v40;
  *(v26 + 2) = v25;
  v26[2] = v24;
  v33 = *&v62[0];
  v34 = DWORD2(v62[0]);
  MEMORY[0x1EEE9AC00](*&v62[0]);
  v28[0] = a3;
  v28[1] = a4;
  v29 = __PAIR64__(v23, v31);

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  v22(&v47, v18);

  v42 = v61;
  v43[0] = v62[0];
  *(v43 + 12) = *(v62 + 12);
  v40 = v59;
  v41 = v60;
  return outlined destroy of _ToolbarInputs(&v40);
}

uint64_t closure #1 in static ToolbarTitleMenu._makeToolbar(content:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ToolbarTitleMenu();
  v6 = type metadata accessor for Optional();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

uint64_t implicit closure #1 in static ToolbarTitleMenu._makeToolbar(content:inputs:)(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = type metadata accessor for ToolbarTitleMenu.PreferenceTransform();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ToolbarStorage.NavigationProperties?(0, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v5, closure #1 in Attribute.init<A>(_:)partial apply, v6, v7, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v2);
  return v4;
}

uint64_t ToolbarTitleMenu.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a1);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a1[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t ToolbarTitleMenu.PreferenceTransform.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ToolbarTitleMenu();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t (*ToolbarTitleMenu.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v25[1] = a3;
  v25[2] = a1;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - v6;
  v8 = type metadata accessor for ToolbarTitleMenu();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v12 = v11 - 8;
  v26 = *(v11 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  *v17 = 0;
  v18 = -1;
  v17[8] = -1;
  *(v17 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 6) = 0;
  v19 = *(v12 + 40);
  v20 = type metadata accessor for PlatformItemList.Item();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  ToolbarTitleMenu.PreferenceTransform.content.getter(v10);
  (*(v5 + 32))(v7, v10, v4);
  LODWORD(a2) = (*(*(a2 - 8) + 48))(v7, 1, a2);
  (*(v5 + 8))(v7, v4);
  if (a2 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = AGCreateWeakAttribute();
    v18 = 0;
  }

  *(v17 + 2) = v21;
  v17[24] = v18;
  outlined init with copy of ToolbarStorage.NavigationProperties(v17, v14);
  v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v23 = swift_allocObject();
  outlined init with take of ToolbarStorage.NavigationProperties(v14, v23 + v22);
  outlined destroy of ToolbarStorage.NavigationProperties(v17);
  return partial apply for closure #1 in ToolbarTitleMenu.PreferenceTransform.value.getter;
}

uint64_t closure #1 in ToolbarTitleMenu.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  outlined init with copy of ToolbarStorage.NavigationProperties?(a1, &v14[-v8]);
  v10 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  outlined destroy of ToolbarStorage.NavigationProperties?(v9);
  if (v12 == 1)
  {
    outlined destroy of ToolbarStorage.NavigationProperties?(a1);
    outlined init with copy of ToolbarStorage.NavigationProperties(a2, a1);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    outlined init with copy of ToolbarStorage.NavigationProperties(a2, v6);
    (*(v11 + 56))(v6, 0, 1, v10);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI14ToolbarStorageV20NavigationPropertiesV_s5NeverOytTg503_s7c4UI23gh32KeyV6reduce5value9nextValueyAA14eF26V0cD0VSgz_AKyXEtFZyAJXEfU_AHSgTf1cn_n(v6, a1);
    return outlined destroy of ToolbarStorage.NavigationProperties?(v6);
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ToolbarTitleMenu<A>.PreferenceTransform@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = ToolbarTitleMenu.PreferenceTransform.value.getter(*v2, *(a1 + 16), *(a1 + 24));
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t View.toolbarTitleMenu<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a1;
  v10[7] = a2;
  type metadata accessor for ToolbarTitleMenu();
  v8 = type metadata accessor for TupleToolbarContent();
  return View.toolbar<A>(content:)(partial apply for closure #1 in View.toolbarTitleMenu<A>(content:), v10, a3, v8, a5);
}

uint64_t closure #1 in View.toolbarTitleMenu<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22[1] = a7;
  v13 = type metadata accessor for ToolbarTitleMenu();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = a5;
  v22[7] = a6;
  v22[8] = a1;
  v22[9] = a2;
  ToolbarTitleMenu.init(content:)(partial apply for closure #1 in closure #1 in View.toolbarTitleMenu<A>(content:), a4, v16);
  static ToolbarContentBuilder.buildExpression<A>(_:)(v16, v13, &protocol witness table for ToolbarTitleMenu<A>);
  v20 = *(v14 + 8);
  v20(v16, v13);
  static ToolbarContentBuilder.buildBlock<A>(_:)(v19, v13, &protocol witness table for ToolbarTitleMenu<A>);
  return (v20)(v19, v13);
}

uint64_t closure #1 in closure #1 in View.toolbarTitleMenu<A>(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v16)(v14, a4);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.RenameSelectorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for ToolbarStorage.NavigationProperties?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined init with copy of ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of ToolbarStorage.NavigationProperties(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ToolbarTitleMenu.PreferenceTransform.value.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for ToolbarStorage.NavigationProperties(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in ToolbarTitleMenu.PreferenceTransform.value.getter(a1, v4);
}

uint64_t outlined destroy of ToolbarStorage.NavigationProperties(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ToolbarStorage.NavigationProperties?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ToolbarStorage.NavigationProperties?(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0, &lazy cache variable for type metadata for ToolbarStorage.NavigationProperties?, type metadata accessor for ToolbarStorage.NavigationProperties, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenuElement);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t UIKitBarPaletteHost.item.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7SwiftUI19UIKitBarPaletteHost_item;
  swift_beginAccess();
  outlined assign with copy of ToolbarStorage.Item(a1, v3);
  swift_endAccess();
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI19UIKitBarPaletteHost_host);
  outlined init with copy of _ViewList_View(v3 + 184, v9);
  outlined init with copy of _ViewList_View(v9, v8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x60);
  swift_beginAccess();
  v6 = v4;
  outlined assign with take of _ViewList_View(v8, v4 + v5);
  swift_endAccess();
  type metadata accessor for EnvironmentPropertyKey<ToolbarItemMetricsKey>(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(a1, type metadata accessor for ToolbarStorage.Item);
  return outlined destroy of _ViewList_View(v9);
}

void @objc UIKitBarItemHost.layoutMarginsDidChange()(void *a1)
{
  v1 = a1;
  CellHostingView.layoutMarginsDidChange()();
}

void closure #1 in UIKitBarItemHost.willMove(toSuperview:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = *(a2 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *MEMORY[0x1E69E7D40] & *Strong;
    if (!AGSubgraphIsValid())
    {
      goto LABEL_11;
    }

    v8 = &v6[*(v7 + 1824)];
    v9 = v8[16];
    *v8 = v4;
    *(v8 + 1) = v3;
    v8[16] = 0;
    if (v9)
    {
      goto LABEL_11;
    }

    v10 = v6;
    _UIHostingView.viewGraph.getter();
    GraphHost.environment.getter();

    EnvironmentValues.pixelLength.getter();
    v12 = v11;

    v13 = v12 * ceil(v4 / v12);
    v14 = ceil(v4);
    if (v12 == 1.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    if (v15 != v2)
    {
      [v10 frame];
      [v10 setFrame_];

      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (!v16)
      {
LABEL_11:

        return;
      }

      v10 = v16;
      [v16 invalidateIntrinsicContentSize];
    }

    goto LABEL_11;
  }
}

CGSize __swiftcall UIKitBarItemHost.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (AGSubgraphIsValid() || (v5 = (v1 + *(v4 + 1824)), (v5[2] & 1) != 0))
  {
    v6 = _UIHostingView.base.getter();
    v7 = MEMORY[0x18D001840](width, height);
    v9 = v8;
  }

  else
  {
    v7 = *v5;
    v9 = v5[1];
  }

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

double @objc UIKitBarItemHost.sizeThatFits(_:)(void *a1, double a2, double a3)
{
  v5 = a1;
  *&v6 = *&UIKitBarItemHost.sizeThatFits(_:)(__PAIR128__(*&a3, *&a2));

  return v6;
}

void UIKitBarItemHost.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];

  v2 = *(v0 + *((*v1 & *v0) + 0x718));
}

uint64_t BarItemViewGraph.modifyViewInputs(inputs:graph:)(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
  PropertyList.subscript.getter();
  PropertyList.subscript.setter();
  static _GraphInputs.defaultInterfaceIdiom.getter();
  result = static Solarium.isEnabled(for:)();
  if (result)
  {
    swift_beginAccess();
    v5 = *(a2 + 32);
    AGGraphClearUpdate();
    v6 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    *v2 = Attribute.init<A>(body:value:flags:update:)();
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint();
    return PropertyList.subscript.setter();
  }

  return result;
}

uint64_t protocol witness for ViewGraphFeature.uninstantiate(graph:) in conformance BarItemViewGraph()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  result = static Solarium.isEnabled(for:)();
  if (result)
  {
    *v0 = *MEMORY[0x1E698D3F8];
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance BarItemBridgedTint@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static BarItemBridgedTint.defaultValue;
  return result;
}

uint64_t closure #1 in ViewGraph.updateBarItemBridgedTint(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  lazy protocol witness table accessor for type BarItemViewGraph and conformance BarItemViewGraph();
  result = ViewGraph.subscript.getter();
  if (result && (result = *result, result != *MEMORY[0x1E698D3F8]) && (result = AGGraphSetValue(), result))
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = *(a1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 8) + 16))(ObjectType);
      result = swift_unknownObjectRelease();
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t type metadata completion function for UIKitBarPaletteHost()
{
  result = type metadata accessor for ToolbarStorage.Item(319);
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

uint64_t UIKitBarButtonItem.initializePlatformItem(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host);
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
    lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
    v9 = v8;
    ViewRendererHost.updateViewGraph<A>(body:)();

    v7 = v19;
  }

  v10 = v7[2];
  swift_bridgeObjectRetain_n();
  if (v10)
  {
    PlatformItemList.mergedContentItem.getter(v7, v6);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for PlatformItemList.Item();
  (*(*(v12 - 8) + 56))(v6, v11, 1, v12);
  v13 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v6, v2 + v13, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  v14 = UIKitBarButtonItem.allowsBridging()();
  if (UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(v14 & 1, v14 >> 8, 0))
  {

    v15 = *(v2 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host);
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
    lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
    v16 = v15;
    ViewRendererHost.updateViewGraph<A>(body:)();

    v7 = v19;
  }

  UIKitBarButtonItem.updatePlatformItem(_:)(v7);
}

uint64_t UIKitBarButtonItem.listView.didset()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v0 + v1, &v4, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  if (!*(&v5 + 1))
  {
    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v4, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  }

  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  outlined init with copy of _ViewList_View(v12, &v4);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v10 = v2;
  v11 = 0;
  UIKitBarButtonItem.updateHost(rootView:)(&v4);
  outlined destroy of BarItemView(&v4);
  return outlined destroy of _ViewList_View(v12);
}

uint64_t UIKitBarButtonItem.allowsBridging()()
{
  v1 = type metadata accessor for PlatformItemList.Item();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host);
  _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
  lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
  v5 = v4;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  v6 = v61;
  v7 = BYTE8(v61);
  v8 = *(&v61 + 9);
  v9 = BYTE11(v61);
  static Semantics.v3.getter();
  v10 = isLinkedOnOrAfter(_:)();
  v43 = v0;
  v11 = v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  v12 = *(v2 + 48);
  if (!v12(v11, 1, v1) && *(v11 + 954) != 3)
  {
    static Semantics.v3.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      static Semantics.v5.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        if (v9)
        {
          goto LABEL_6;
        }

        v16 = v6 == 1;
        if (v16)
        {
          v26 = 0;
        }

        else
        {
          v26 = 1;
        }

        v15 = 1;
        if (((v26 | v7) & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    v15 = v10 ^ 1;
    v16 = v6 == 1;
    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    if (((v17 | v7) & 1) == 0)
    {
LABEL_11:
      v16 = (v8 != 2) & v8;
    }

LABEL_12:
    static Semantics.v5.getter();
    if (isLinkedOnOrAfter(_:)())
    {
      v18 = v16 | v15;
    }

    else
    {
      v18 = v15;
    }

    v14 = v8;
    if (v12(v11, 1, v1))
    {
LABEL_16:
      v13 = v14 != 2;
      if ((v18 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!*(v11 + 896) && !*v11)
    {
      v27 = v42;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v11, v42, type metadata accessor for PlatformItemList.Item);
      v28 = *(v27 + 208);
      v29 = *(v27 + 176);
      v58 = *(v27 + 192);
      v59 = v28;
      v30 = *(v27 + 208);
      v60[0] = *(v27 + 224);
      *(v60 + 11) = *(v27 + 235);
      v31 = *(v27 + 144);
      v32 = *(v27 + 112);
      v54 = *(v27 + 128);
      v55 = v31;
      v33 = *(v27 + 144);
      v34 = *(v27 + 176);
      v56 = *(v27 + 160);
      v57 = v34;
      v35 = *(v27 + 80);
      v53[0] = *(v27 + 64);
      v53[1] = v35;
      v36 = *(v27 + 112);
      v38 = *(v27 + 64);
      v37 = *(v27 + 80);
      v53[2] = *(v27 + 96);
      v53[3] = v36;
      v65[3] = v58;
      v66 = v30;
      v67[0] = *(v27 + 224);
      *(v67 + 11) = *(v27 + 235);
      v64 = v54;
      v65[0] = v33;
      v65[1] = v56;
      v65[2] = v29;
      v61 = v38;
      v62[0] = v37;
      v62[1] = v53[2];
      v63 = v32;
      if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v61) == 1)
      {
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v27, type metadata accessor for PlatformItemList.Item);
        goto LABEL_16;
      }

      if (v66)
      {
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v27, type metadata accessor for PlatformItemList.Item);
      }

      else
      {
        v49 = v64;
        v50[0] = v65[0];
        *(v50 + 12) = *(v65 + 12);
        v45 = v61;
        v46 = v62[0];
        v47 = v62[1];
        v48 = v63;
        v39 = *(v27 + 48);
        v40 = MEMORY[0x1E69E6720];
        _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v53, v44, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
        outlined init with copy of GraphicsImage(&v61, v44);
        v41 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v39);
        _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v53, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], v40, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
        v51[4] = v49;
        v52[0] = v50[0];
        *(v52 + 12) = *(v50 + 12);
        v51[0] = v45;
        v51[1] = v46;
        v51[2] = v47;
        v51[3] = v48;
        outlined destroy of GraphicsImage(v51);
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v27, type metadata accessor for PlatformItemList.Item);
        if (!v41)
        {
          goto LABEL_16;
        }
      }
    }

    if ((v18 & 1) == 0)
    {
LABEL_23:
      v13 = 0;
      return v13 | (v14 << 8);
    }

    v13 = 1;
LABEL_22:
    v19 = v43 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
    swift_beginAccess();
    v20 = type metadata accessor for ToolbarStorage.Item(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      outlined init with copy of ToolbarItemPlacement.Role(v19 + 112, &v61);
      *(&v53[1] + 9) = *(v62 + 9);
      v53[0] = v61;
      v53[1] = v62[0];
      if (BYTE8(v62[1]) != 2 || (*&v53[0] != 4 ? (v22 = *&v53[0] == 1) : (v22 = 1), !v22 ? (v23 = *&v53[0] == 11) : (v23 = 1), !v23 ? (v24 = (*&v53[0] - 25) > 1) : (v24 = 0), v24 || (v25 = vorrq_s8(*(v53 + 8), *(&v53[1] + 8)), *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)))))
      {
        outlined destroy of ToolbarItemPlacement.Role(v53);
        return v13 | (v14 << 8);
      }
    }

    goto LABEL_23;
  }

LABEL_6:
  v13 = 0;
  v14 = v8;
  return v13 | (v14 << 8);
}

uint64_t closure #1 in UIKitBarButtonItem.performAction(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12[-v4 - 8];
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(a1, &v12[-v4 - 8], &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v2, type metadata accessor for ToolbarStorage.Item?);
  v6 = type metadata accessor for PlatformItemList.Item();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v5, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  v14 = v5[472];
  v8 = *(v5 + 456);
  v13[2] = *(v5 + 440);
  v13[3] = v8;
  v9 = *(v5 + 424);
  v13[0] = *(v5 + 408);
  v13[1] = v9;
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v13, v12, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  result = _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v5, type metadata accessor for PlatformItemList.Item);
  v10 = *(&v13[0] + 1);
  if (*(&v13[0] + 1) != 1)
  {
    outlined copy of AppIntentExecutor?(*(&v13[0] + 1));
    result = _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v13, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    if (v10)
    {
      v10(result);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v10);
    }
  }

  return result;
}

uint64_t UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(char a1, unsigned __int16 a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v7 = &v3[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item];
  swift_beginAccess();
  v8 = type metadata accessor for ToolbarStorage.Item(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v55 = -1;
  }

  else
  {
    outlined init with copy of ToolbarItemPlacement.Role((v7 + 112), v53);
  }

  v49 = 5;
  v50 = 0u;
  v51 = 0u;
  v52 = 2;
  v10 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v53, v45, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v49, &v47, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v10, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  if (v46 == 255)
  {
    v12 = MEMORY[0x1E69E6720];
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v49, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v53, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v12, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    if (BYTE8(v48[1]) == 255)
    {
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v45, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      v9 = 1;
      goto LABEL_13;
    }

LABEL_12:
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v45, type metadata accessor for (ToolbarItemPlacement.Role?, ToolbarItemPlacement.Role?));
    v9 = 0;
    goto LABEL_13;
  }

  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v45, v44, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  if (BYTE8(v48[1]) == 255)
  {
    v13 = MEMORY[0x1E69E6720];
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v49, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v53, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v13, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    outlined destroy of ToolbarItemPlacement.Role(v44);
    goto LABEL_12;
  }

  v42 = v47;
  v43[0] = v48[0];
  *(v43 + 9) = *(v48 + 9);
  v9 = specialized static ToolbarItemPlacement.Role.== infix(_:_:)(v44, &v42);
  outlined destroy of ToolbarItemPlacement.Role(&v42);
  v11 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v49, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v53, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v11, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  outlined destroy of ToolbarItemPlacement.Role(v44);
  _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v45, &lazy cache variable for type metadata for ToolbarItemPlacement.Role?, &type metadata for ToolbarItemPlacement.Role, v11, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
LABEL_13:
  v4 = v41;
LABEL_14:
  v14 = a3;
  if (!a3)
  {
    v15 = *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host];
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
    lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
    v16 = v15;
    v4 = v41;
    ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

    v14 = v45[0];
  }

  v40 = v14;
  v17 = a2;
  v18 = &v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item];
  swift_beginAccess();
  v19 = type metadata accessor for ToolbarStorage.Item(0);
  v20 = (*(v19 - 8) + 48);
  v38 = *v20;
  v21 = !(*v20)(v18, 1, v19) && *(v18 + 20) || v40 != 0;
  if (v17 == 2)
  {
    if (((v9 | v21) & 1) == 0)
    {
LABEL_22:
      v22 = 0;
      goto LABEL_25;
    }
  }

  else if (!((v9 | v21) & 1 | (v17 < 0x100)))
  {
    goto LABEL_22;
  }

  v22 = 2;
LABEL_25:
  v23 = *&v41[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host];

  v24 = v23;
  UIHostingViewBase.viewGraph.getter();

  MEMORY[0x1EEE9AC00](v25);
  static Update.ensure<A>(_:)();

  v26 = LOBYTE(v53[0]);
  if (v22 != [v41 style])
  {
    [v41 setStyle_];
  }

  if (v38(v18, 1, v19) || (v27 = *(v18 + 20)) == 0)
  {

    v27 = v40;
    if (a1)
    {
      goto LABEL_33;
    }

LABEL_29:
    if (v27)
    {
LABEL_34:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);

      v28 = UIColor.init(_:)(v29);
      goto LABEL_35;
    }

LABEL_30:
    v28 = 0;
    goto LABEL_35;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_33:
  if (v27)
  {
    goto LABEL_34;
  }

  v35 = &v41[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem];
  swift_beginAccess();
  v36 = type metadata accessor for PlatformItemList.Item();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *&v35[*(v36 + 136)];

    if (v37)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  v28 = 0;
LABEL_35:
  v30 = [v41 tintColor];
  v31 = v30;
  if (!v28)
  {
    if (!v30)
    {
LABEL_42:

      goto LABEL_43;
    }

LABEL_41:
    [v41 setTintColor_];

    goto LABEL_42;
  }

  if (!v30)
  {
    goto LABEL_41;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
  v32 = v28;
  v33 = static NSObject.== infix(_:_:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_43:

  return v26;
}

uint64_t closure #1 in UIKitBarButtonItem.initializePlatformItem(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  GraphHost.instantiateIfNeeded()();
  lazy protocol witness table accessor for type PlatformItemListViewGraph and conformance PlatformItemListViewGraph();
  if (ViewGraph.subscript.getter())
  {
    result = PlatformItemListViewGraph.readAndUpdate(graph:)(a1);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  *a2 = result;
  return result;
}

uint64_t UIKitBarButtonItem.resolvedMenuRepresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlatformItemList.Item();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v46 - v9;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation;
  v17 = *(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation);
  v49 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation;
  if (v17)
  {
    v47 = v2;
    v18 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
    swift_beginAccess();
    _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v1 + v18, v15, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    if ((*(v6 + 48))(v15, 1, v5) != 1)
    {

      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v15, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
      return v17;
    }

    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v15, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    v16 = v49;
    v2 = v47;
  }

  v19 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v1 + v19, v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v12, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    v17 = MEMORY[0x1E69E7CC0];
    *(v1 + v16) = MEMORY[0x1E69E7CC0];
LABEL_23:

    return v17;
  }

  v47 = v5;
  v20 = v50;
  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v12, v50, type metadata accessor for PlatformItemList.Item);
  v21 = v20;
  v22 = v48;
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v21, v48, type metadata accessor for PlatformItemList.Item);
  v23 = MEMORY[0x1E69E6F90];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v25 = swift_allocObject();
  v46 = xmmword_18CD63400;
  *(v25 + 16) = xmmword_18CD63400;
  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v22, v25 + v24, type metadata accessor for PlatformItemList.Item);
  v26 = MEMORY[0x1E69E7CC0];
  v51 = MEMORY[0x1E69E7CC0];
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v28 = MEMORY[0x1E69E7CC8];
  v4[8] = 0;
  *(v4 + 2) = v28;
  *(v4 + 3) = v27;
  *(v4 + 4) = v26;
  *(v4 + 5) = v28;
  v4[48] = 0;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, v23);
  v29 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
  v30 = (*(*(v29 - 8) + 80) + 32) & ~*(*(v29 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v46;
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v29, static MenuVisitor.MenuStackGroup.empty);
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v32, v31 + v30, type metadata accessor for MenuVisitor.MenuStackGroup);
  *(v4 + 7) = v31;
  v33 = *(v2 + 32);
  v34 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v34 - 8) + 56))(&v4[v33], 1, 1, v34);
  *v4 = 0;
  MenuVisitor.visit(_:uniqueNames:)(v25, &v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v35 = *(v4 + 4);

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v4, type metadata accessor for MenuVisitor);
  if (!(v35 >> 62))
  {
    result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:
    v39 = v1;

    goto LABEL_21;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x18D00E9C0](0, v35);
LABEL_13:
    v38 = v37;

    if (*(v1 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection))
    {
      v39 = v1;
      if (v38)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIMenu);
        _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_18CD69590;
        *(v40 + 32) = v38;
        v44 = v40;
        v41._countAndFlagsBits = 0;
        v41._object = 0xE000000000000000;
        v52.value.super.isa = 0;
        v52.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(&unk_18CD69000, v41, 0, v52, 1, 0xFFFFFFFFFFFFFFFFLL, v44, v45);
        v38 = v42;
LABEL_18:
        _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_18CD69590;
        *(v17 + 32) = v38;
LABEL_22:
        v43 = v49;
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v50, type metadata accessor for PlatformItemList.Item);
        *(v39 + v43) = v17;

        goto LABEL_23;
      }
    }

    else
    {
      v39 = v1;
      if (v38)
      {
        goto LABEL_18;
      }
    }

LABEL_21:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v35 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in UIKitBarButtonItem.updateRepresentation()(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = a4();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  a1(v8);
}

uint64_t UIKitBarButtonItem.resolvedMenu()()
{
  v1 = type metadata accessor for MenuVisitor(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren;
  v8 = *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
    swift_beginAccess();
    _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v0 + v9, v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    v10 = type metadata accessor for PlatformItemList.Item();
    if ((*(*(v10 - 8) + 48))(v6, 1, v10) != 1)
    {

      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
      return v8;
    }

    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v6, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  v11 = v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  swift_beginAccess();
  v12 = type metadata accessor for PlatformItemList.Item();
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v13 = *(v11 + 936);
    v8 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v14 = v0;
      v25 = MEMORY[0x1E69E7CC0];

      v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_7SwiftUI16PlatformItemListVTt0g5Tf4g_n(v8);
      v16 = MEMORY[0x1E69E7CC8];
      v3[8] = 0;
      *(v3 + 2) = v16;
      *(v3 + 3) = v15;
      *(v3 + 4) = v8;
      *(v3 + 5) = v16;
      v3[48] = 0;
      type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MenuVisitor.MenuStackGroup>, type metadata accessor for MenuVisitor.MenuStackGroup, MEMORY[0x1E69E6F90]);
      v17 = type metadata accessor for MenuVisitor.MenuStackGroup(0);
      v18 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_18CD63400;
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      v20 = __swift_project_value_buffer(v17, static MenuVisitor.MenuStackGroup.empty);
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v20, v19 + v18, type metadata accessor for MenuVisitor.MenuStackGroup);
      *(v3 + 7) = v19;
      v21 = *(v1 + 32);
      v22 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
      (*(*(v22 - 8) + 56))(&v3[v21], 1, 1, v22);
      *v3 = 0;
      MenuVisitor.visit(_:uniqueNames:)(v13, &v25);

      v8 = *(v3 + 4);

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v3, type metadata accessor for MenuVisitor);
      v0 = v14;
    }
  }

  *(v0 + v7) = v8;

  return v8;
}

uint64_t UIKitBarButtonItem.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for _UIBarButtonItemMetrics?, MEMORY[0x1E69DC0A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for _UIBarButtonItemMetrics();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = v2 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  swift_beginAccess();
  v16 = type metadata accessor for ToolbarStorage.Item(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    swift_weakLoadStrong();
  }

  EnvironmentValues.preferenceBridge.setter();
  v17 = _UIHostingView.traitCollectionOverride.getter();
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = [a1 traitCollection];
    v17 = 0;
  }

  v19 = v17;
  MEMORY[0x18D00DA70]();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v7, &lazy cache variable for type metadata for _UIBarButtonItemMetrics?, MEMORY[0x1E69DC0A8], MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    _UIBarButtonItemMetrics.imageItemInternalPadding.getter();
    v22 = v21;
    _UIBarButtonItemMetrics.textItemInternalPadding.getter();
    v24 = v23;
    _UIBarButtonItemMetrics.customViewInternalPadding.getter();
    v26 = v25;
    _UIBarButtonItemMetrics.minimumWidth.getter();
    v28 = v27;
    v30 = *(v9 + 8);
    v30(v11, v8);
    v31 = v22;
    v32 = v24;
    v33 = v26;
    v34 = v28;
    v35 = 0;
    type metadata accessor for EnvironmentPropertyKey<ToolbarItemMetricsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemMetricsKey>, &type metadata for ToolbarItemMetricsKey, &protocol witness table for ToolbarItemMetricsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemMetricsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (*(a2 + 8))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return (v30)(v14, v8);
  }
}

uint64_t UIKitBarButtonItem.accessibilityIdentifier.getter(SEL *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [*&v1[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] accessibilityElements];
  if (v4)
  {
    v5 = v4;
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v6 + 16))
    {
      outlined init with copy of Any(v6 + 32, v15);

      outlined init with take of Any(v15, v16);
      outlined init with copy of Any(v16, v15);
      type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
      if (swift_dynamicCast())
      {
        v7 = [v13 *a1];
        if (v7)
        {
          v8 = v7;
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          __swift_destroy_boxed_opaque_existential_1(v16);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }

    else
    {
    }
  }

  v14.receiver = v1;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

id @objc UIKitBarButtonItem.accessibilityIdentifier.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = UIKitBarButtonItem.accessibilityIdentifier.getter(a3);
  v7 = v6;

  if (v7)
  {
    v8 = MEMORY[0x18D00C850](v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id UIKitBarButtonItem.accessibilityTraits.getter()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] accessibilityElements];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16))
    {
      outlined init with copy of Any(v4 + 32, v9);

      outlined init with take of Any(v9, v10);
      outlined init with copy of Any(v10, v9);
      type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
      if (swift_dynamicCast())
      {
        v5 = [v7 accessibilityTraits];

        __swift_destroy_boxed_opaque_existential_1(v10);
        return v5;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
    }

    else
    {
    }
  }

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_accessibilityTraits);
}

uint64_t UIKitBarButtonItem.accessibilityCustomActions.getter()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] accessibilityElements];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16))
    {
      outlined init with copy of Any(v4 + 32, v13);

      outlined init with take of Any(v13, v14);
      outlined init with copy of Any(v14, v13);
      type metadata accessor for NSObject & PlatformAccessibilityElementProtocol();
      if (swift_dynamicCast())
      {
        v5 = [v11 accessibilityCustomActions];
        if (v5)
        {
          v6 = v5;
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
          v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          __swift_destroy_boxed_opaque_existential_1(v14);
          return v7;
        }

        __swift_destroy_boxed_opaque_existential_1(v14);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v14);
      }
    }

    else
    {
    }
  }

  v12.receiver = v0;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, sel_accessibilityCustomActions);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIAccessibilityCustomAction);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

id UIKitBarButtonItemGroup.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
  v5 = type metadata accessor for ToolbarStorage.GroupItem(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v1[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge] = 2;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void UINavigationItem.adoptSystemUpdates(_:updates:forceUpdate:isFromSwiftUI:)(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  memset(v24, 0, 40);
  v10 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v10 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTitleIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef_titleView, &selRef_setTitleView_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD90750;
  v11 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v11 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTitleIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef__subtitleView, &selRef__setSubtitleView_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD79540;
  v12 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v12 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTitleIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef__largeSubtitleView, &selRef__setLargeSubtitleView_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD6A6D0;
  v13 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v13 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTitleIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef__largeTitleView, &selRef__setLargeTitleView_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD79D60;
  v14 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v14 & 1) != 0 || (a4)
  {
    UINavigationItem.updateCenterIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CDA9100;
  v15 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v15 & 1) != 0 || (a4)
  {
    if (v16 = [v5 _largeTitleAccessoryView]) == 0 || (v16, (v17 = objc_msgSend(v5, sel__largeTitleAccessoryView)) != 0) && (v18 = v17, _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost), v19 = swift_dynamicCastClass(), v18, v19) || (a5)
    {
      v20 = [a1 _largeTitleAccessoryView];
      [v5 _setLargeTitleAccessoryView_alignToBaseline_];
    }
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD7DD20;
  v21 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v21 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTrailingItemsIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef_trailingItemGroups, &selRef_rightBarButtonItems, &selRef_setTrailingItemGroups_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD90770;
  v22 = specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  if (v22 & 1) != 0 || (a4)
  {
    UINavigationItem.updateTrailingItemsIfNeeded(_:isFromSwiftUI:)(a1, a5 & 1, &selRef_leadingItemGroups, &selRef_leftBarButtonItems, &selRef_setLeadingItemGroups_);
  }

  memset(v24, 0, 24);
  *(&v24[1] + 8) = xmmword_18CD9F780;
  specialized Set.contains(_:)(v24, a2);
  outlined destroy of Toolbar.BarLocation(v24);
  v23 = [a1 customizationIdentifier];
  [v5 setCustomizationIdentifier_];
}

uint64_t UINavigationItem.updateRenameDelegate(_:)(void *a1)
{
  if (UINavigationItem.renameDelegate.getter() || [a1 _objc_renameDelegate])
  {
    swift_unknownObjectRelease();
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  result = UINavigationItem.renameDelegate.getter();
  if (result)
  {
    type metadata accessor for ToolbarPlatformDelegate();
    v5 = swift_dynamicCastClass();
    result = swift_unknownObjectRelease();
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3;
    }

    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return result;
  }

  if (UINavigationItem.renameDelegate.getter())
  {
    swift_unknownObjectRetain();
    UINavigationItem.renameDelegate.setter();
LABEL_15:

    return swift_unknownObjectRelease();
  }

  v7 = [a1 _objc_renameDelegate];
  if (v7)
  {
    [v1 set:v7 objc:? renameDelegate:?];
    goto LABEL_15;
  }

  return UINavigationItem.renameDelegate.setter();
}

void UINavigationItem.updateCenterIfNeeded(_:isFromSwiftUI:)(void *a1, char a2)
{
  v3 = v2;
  v5 = [a1 centerItemGroups];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItemGroup);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((a2 & 1) == 0)
  {
    v6 = [v2 centerItemGroups];
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_17;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v14 = v3;
        v3 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x18D00E9C0](v3, v7);
          v10 = (v3 + 1);
          if (__OFADD__(v3, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v3 = v14;
            v13 = v16;
            goto LABEL_19;
          }

LABEL_10:
          v11 = v9;
          v12 = UIBarButtonItemGroup.isNotFromSwiftUI.getter();

          if (v12)
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
          if (v10 == v8)
          {
            goto LABEL_15;
          }
        }

        if (v3 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v8 = __CocoaSet.count.getter();
        if (!v8)
        {
          goto LABEL_18;
        }
      }

      v9 = *(v7 + 8 * v3 + 32);
      v10 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

LABEL_18:
    v13 = MEMORY[0x1E69E7CC0];
LABEL_19:

    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v13);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setCenterItemGroups_];
}

BOOL UIBarButtonItemGroup.isNotFromSwiftUI.getter()
{
  v1 = [v0 barButtonItems];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    swift_getObjectType();
    v8 = [swift_getObjCClassFromMetadata() _isFromSwiftUI];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 == v5;
}

double static PreventsToolbarItemBridgingModifier._makeView(modifier:inputs:body:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v5 = a2[3];
  v6 = a2[1];
  v24 = a2[2];
  v25 = v5;
  v7 = a2[3];
  v26 = a2[4];
  v8 = a2[1];
  v22 = *a2;
  v23 = v8;
  v16 = v24;
  v17 = v7;
  v18 = a2[4];
  v27 = *(a2 + 20);
  v19 = *(a2 + 20);
  v14 = v22;
  v15 = v6;
  a3(&v20, a1, &v14);
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v9 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  if (v9)
  {
    *&v14 = v25;
    DWORD2(v14) = DWORD2(v25);
    v12 = v25;
    v13 = DWORD2(v25);
    MEMORY[0x1EEE9AC00](v9);
    outlined init with copy of PreferencesInputs(&v14, v11);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  *a4 = v20;
  result = v21;
  a4[1] = v21;
  return result;
}

uint64_t implicit closure #1 in static PreventsToolbarItemBridgingModifier._makeView(modifier:inputs:body:)()
{
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for (_:)();
  v0 = GraphHost.intern<A>(_:for:id:)();

  return v0;
}

uint64_t specialized UIKitBarButtonItem.hostingView<A>(_:didChangePreferences:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_tintColorTracker;
  swift_beginAccess();
  PreferenceValues.subscript.getter();
  v2 = *(v0 + v1);
  if (v2 == -1 || v8 == -1 || v2 != v8)
  {
    *(v0 + v1) = v8;

    v5 = UIKitBarButtonItem.allowsBridging()();
    UIKitBarButtonItem.updateStyleAndTint(isBridged:role:buttonTint:)(v5 & 1, v5 >> 8, v7);
  }

  return swift_endAccess();
}

uint64_t _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>()
{
  result = lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(255, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>;
  if (!lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>)
  {
    _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(255, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>);
  }

  return result;
}

id specialized UIKitBarButtonItem.init(listView:context:host:)(uint64_t a1, char *a2, int a3, void *a4)
{
  v5 = v4;
  v28 = a4;
  v27 = a3;
  v29 = a2;
  v25 = a1;
  ObjectType = swift_getObjectType();
  v24 = type metadata accessor for ToolbarStorage.Item;
  v6 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  v11 = type metadata accessor for ToolbarStorage.Item(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v13 = &v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView];
  *v13 = 0u;
  v13[1] = 0u;
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v14 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge;
  v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge] = 2;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  v16 = type metadata accessor for PlatformItemList.Item();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection] = 0;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_tintColorTracker] = -1;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation] = 0;
  *&v4[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren] = 0;
  v12(v9, 1, 1, v11);
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v9, &v4[v10], &lazy cache variable for type metadata for ToolbarStorage.Item?, v24, v6, type metadata accessor for ToolbarStorage.Item?);
  swift_endAccess();
  v17 = v25;
  outlined init with copy of _ViewList_View(v25, v30);
  swift_beginAccess();
  outlined assign with take of PlatformItemList.Item?(v30, v13, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
  swift_endAccess();
  v18 = v27;
  v5[v14] = v27;
  v19 = v28;
  *&v5[OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_host] = v28;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = v19;
  v21 = objc_msgSendSuper2(&v31, sel_init);
  outlined init with copy of _ViewList_View(v17, v30);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v30[96] = v18;
  v30[97] = 0;
  v22 = v21;
  UIKitBarButtonItem.initialize(rootView:context:)(v30, v29);

  outlined destroy of _ViewList_View(v17);
  outlined destroy of BarItemView(v30);
  return v22;
}

uint64_t outlined assign with copy of ToolbarStorage.Item(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarStorage.Item(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for EnvironmentPropertyKey<ToolbarItemMetricsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t _s7SwiftUI18UIKitBarButtonItemC13performActionyyypSgFyycfU_TA_0()
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  return closure #1 in UIKitBarButtonItem.performAction(_:)(v2);
}

void specialized UIKitBarItemHost.init(rootView:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x710));
  *v2 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v2[1] = 0;
  v3 = v0 + *((*v1 & *v0) + 0x720);
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized UIKitBarItemHost.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x710));
  *v2 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v2[1] = 0;
  v3 = v0 + *((*v1 & *v0) + 0x720);
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized UIKitBarButtonItem.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
  v2 = type metadata accessor for ToolbarStorage.Item(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[5] = 0u;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge) = 2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_menuDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_platformItem;
  v5 = type metadata accessor for PlatformItemList.Item();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_hasOwnMenuSection) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_tintColorTracker) = -1;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuRepresentation) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_cachedMenuChildren) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ScrollViewReader.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t closure #1 in ScrollViewProxy.apply(to:)(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  AGGraphClearUpdate();
  closure #1 in closure #1 in ScrollViewProxy.apply(to:)(a1, a2);
  return AGGraphSetUpdate();
}

Swift::Void __swiftcall ScrollViewProxy.setContentOffset(_:)(CGPoint a1)
{
  type metadata accessor for ViewGraph();
  v1 = static GraphHost.isUpdating.getter();
  if (v1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v1);
    static Update.ensure<A>(_:)();
  }
}

uint64_t closure #1 in ScrollViewProxy.setContentOffset(_:)(void *a1, double a2, double a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  LOBYTE(v5) = (*(v6 + 16))(partial apply for closure #1 in closure #1 in ScrollViewProxy.setContentOffset(_:), v7, v5, v6);

  return v5 & 1;
}

double closure #1 in closure #1 in ScrollViewProxy.setContentOffset(_:)@<D0>(__int128 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>)
{
  v17 = a1[3];
  v14 = *a1;
  v8 = *a2;
  v15 = a1[1];
  v16 = a1[2];
  ScrollGeometry.containerSize.getter();
  v10 = v9;
  v12 = v11;
  ScrollGeometry.contentSize.getter();
  if (v8 == 1)
  {
    v18.origin.x = a4;
    v18.origin.y = a5;
    v18.size.width = v10;
    v18.size.height = v12;
    CGRectGetMaxX(v18);
  }

  static UnitPoint.topLeading.getter();
  ScrollTarget.init(rect:anchor:)();
  result = *&v14;
  *a3 = v14;
  *(a3 + 16) = v15;
  *(a3 + 32) = v16;
  *(a3 + 48) = v17;
  return result;
}

uint64_t ScrollViewProxy.scrollTo(rect:anchor:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in ScrollViewProxy.scrollTo(rect:anchor:)(void *a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8)
{
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4 & 1;
  v18 = (*(v16 + 16))(partial apply for closure #1 in closure #1 in ScrollViewProxy.scrollTo(rect:anchor:), v17, v15, v16);

  return v18 & 1;
}

double closure #1 in closure #1 in ScrollViewProxy.scrollTo(rect:anchor:)@<D0>(unsigned __int8 *a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = *a1;
  ScrollGeometry.contentSize.getter();
  if (v11 == 1)
  {
    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    CGRectGetMaxX(v17);
  }

  ScrollTarget.init(rect:anchor:)();
  *a2 = v13;
  *(a2 + 16) = v14;
  result = *&v15;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t ScrollViewProxy.runScrollTest(_:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t ScrollViewProxy.runScrollTest(_:scrollMode:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in ScrollViewProxy.runScrollTest(_:scrollMode:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PPTScrollable);
  (*(v8 + 40))(v20, v9, closure #1 in closure #1 in ScrollViewProxy.runScrollTest(_:scrollMode:), 0, v9, v9, v7, v8);
  outlined init with copy of PPTScrollable?(v20, &v15);
  if (v16)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v15, v17);
    v10 = v18;
    v11 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    *&v15 = a3;
    *(&v15 + 1) = a4;
    v12 = (*(v11 + 8))(a2, &v15, v10, v11);
    outlined destroy of PPTScrollable?(v20);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of PPTScrollable?(&v15);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    outlined destroy of PPTScrollable?(v20);
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ScrollViewProxy.runScrollTest(_:scrollMode:onComplete:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in ScrollViewProxy.runScrollTest(_:scrollMode:onComplete:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PPTScrollable);
  (*(v12 + 40))(v24, v13, closure #1 in closure #1 in ScrollViewProxy.runScrollTest(_:scrollMode:), 0, v13, v13, v11, v12);
  outlined init with copy of PPTScrollable?(v24, &v19);
  if (v20)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v19, v21);
    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    *&v19 = a3;
    *(&v19 + 1) = a4;
    v16 = (*(v15 + 16))(a2, &v19, a5, a6, v14, v15);
    outlined destroy of PPTScrollable?(v24);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    outlined destroy of PPTScrollable?(&v19);
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    outlined destroy of PPTScrollable?(v24);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t ScrollViewProxy.runScrollSubTest(_:subTestName:onComplete:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t ScrollViewProxy.runScrollSubTest(_:subTestName:scrollMode:onComplete:)()
{
  type metadata accessor for ViewGraph();
  v0 = static GraphHost.isUpdating.getter();
  if (v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v0);
    return static Update.ensure<A>(_:)();
  }

  return result;
}

uint64_t closure #1 in ScrollViewProxy.runScrollSubTest(_:subTestName:scrollMode:onComplete:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for PPTScrollable);
  (*(v16 + 40))(v29, v17, closure #1 in closure #1 in ScrollViewProxy.runScrollTest(_:scrollMode:), 0, v17, v17, v15, v16);
  outlined init with copy of PPTScrollable?(v29, &v24);
  if (v25)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v24, v26);
    v18 = v27;
    v19 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    *&v24 = a3;
    *(&v24 + 1) = a4;
    v23[0] = a5;
    v23[1] = a6;
    v20 = (*(v19 + 24))(a2, &v24, v23, a7, a8, v18, v19);
    outlined destroy of PPTScrollable?(v29);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    outlined destroy of PPTScrollable?(&v24);
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    outlined destroy of PPTScrollable?(v29);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t outlined init with copy of PPTScrollable?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for PPTScrollable?, &lazy cache variable for type metadata for PPTScrollable, &protocol descriptor for PPTScrollable, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PPTScrollable?(uint64_t a1)
{
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for PPTScrollable?, &lazy cache variable for type metadata for PPTScrollable, &protocol descriptor for PPTScrollable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WidgetGraph()
{
  result = type metadata singleton initialization cache for WidgetGraph;
  if (!type metadata singleton initialization cache for WidgetGraph)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in WidgetGraph.init<A>(rootWidget:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v27 = *a1;
  v28 = v7;
  v29[0] = a1[2];
  *(v29 + 12) = *(a1 + 44);
  static DynamicPropertyCache.fields(of:)();
  v8 = v34;
  v9 = v35;
  v10 = DWORD1(v35);
  v24 = v27;
  v25 = v28;
  v26[0] = v29[0];
  *(v26 + 12) = *(v29 + 12);
  v19[2] = a3;
  outlined init with copy of _WidgetInputs(&v27, &v34);
  v11 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a2, closure #1 in Attribute.init(value:)partial apply, v19, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  _GraphValue.init(_:)();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a3, a4, v13, v14);
  v34 = v8;
  LOBYTE(v35) = v9;
  DWORD1(v35) = v10;
  type metadata accessor for WidgetBodyAccessor();
  swift_getWitnessTable();
  BodyAccessor.makeBody(container:inputs:fields:)();
  outlined consume of DynamicPropertyCache.Fields.Layout();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30[0] = v24;
  v30[1] = v25;
  v31[0] = v26[0];
  *(v31 + 12) = *(v26 + 12);
  v20 = v24;
  v21 = v25;
  v22[0] = v26[0];
  *(v22 + 12) = *(v26 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _WidgetInputs(v30, &v34);
  v17(v23, &v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  v32[0] = v20;
  v32[1] = v21;
  v33[0] = v22[0];
  *(v33 + 12) = *(v22 + 12);
  outlined destroy of _WidgetInputs(v32);
  v34 = v24;
  v35 = v25;
  v36[0] = v26[0];
  *(v36 + 12) = *(v26 + 12);
  return outlined destroy of _WidgetInputs(&v34);
}

uint64_t specialized WidgetGraph.init<A>(rootWidget:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v24 = a6;
  v22 = a5;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v6 + 176) = v22;
  *(v6 + 184) = v13;
  GraphHost.Data.init()();
  v14 = AGSubgraphGetCurrent();
  v15 = *(&v34[0] + 1);
  AGSubgraphSetCurrent();
  v16 = v15;
  static CustomEventTrace.instantiateBegin(_:)();

  v25[2] = a2;
  v17 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v23, v24, v25, a2, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  *(v6 + 192) = v27;
  v31 = v34[4];
  v32 = v34[5];
  v33 = v35;
  v27 = v34[0];
  v28 = v34[1];
  v29 = v34[2];
  v30 = v34[3];
  outlined init with copy of GraphHost.Data(v34, &v26);
  v19 = GraphHost.init(data:)();

  AGSubgraphSetCurrent();
  static CustomEventTrace.instantiateEnd(_:)();

  outlined destroy of GraphHost.Data(v34);
  return v19;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c4UI24e101PickerStyleV4Body33_AAF5C5EDB558810623EAFD84FD4E7390LLV0cD6ButtonV4bodyQrvgyAA0C10PropertiesVzXEfU_Sbz3C12fG6VXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(a1, &v6, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v7 + 1) == 1)
  {
    return 2;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  closure #1 in closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter(v5, a2, &v9);
  if (v2)
  {
    result = outlined destroy of AccessibilityValueStorage(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of AccessibilityValueStorage(v5);
    return v9;
  }

  return result;
}

void *BridgedAttachment.value.getter@<X0>(int a1@<W0>, void *a2@<X8>)
{
  AccessibilityProperties.init()();
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    return memcpy(a2, __src, 0x120uLL);
  }

  v4 = *AGGraphGetValue();
  if (v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result != 1)
    {
      return memcpy(a2, __src, 0x120uLL);
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      return memcpy(a2, __src, 0x120uLL);
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x18D00E9C0](0, v4);

    goto LABEL_7;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_7:
    AccessibilityNode.attachment.getter(v9);
    outlined init with copy of AccessibilityProperties(v9, v10);
    outlined destroy of AccessibilityAttachment(v9);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableCollectionKey and conformance AccessibilityProperties.ScrollableCollectionKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v10);
    v7 = MEMORY[0x1E69E6720];
    outlined init with copy of Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>(v9, v10, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, MEMORY[0x1E69E6720]);
    AccessibilityProperties.subscript.setter();
    outlined destroy of ScrollableCollection?(v9, &lazy cache variable for type metadata for ScrollableCollection?, type metadata accessor for ScrollableCollection, v7);
    AccessibilityNode.attachment.getter(v9);
    outlined init with copy of AccessibilityProperties(v9, v10);
    outlined destroy of AccessibilityAttachment(v9);
    lazy protocol witness table accessor for type AccessibilityProperties.ScrollableContextKey and conformance AccessibilityProperties.ScrollableContextKey();
    AccessibilityProperties.subscript.getter();
    outlined destroy of AccessibilityProperties(v10);
    v8 = MEMORY[0x1E6980998];
    _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(v9, v10, &lazy cache variable for type metadata for AccessibilityScrollableContext?, MEMORY[0x1E6980998]);
    AccessibilityProperties.subscript.setter();

    _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(v9, &lazy cache variable for type metadata for AccessibilityScrollableContext?, v8);
    return memcpy(a2, __src, 0x120uLL);
  }

  __break(1u);
  return result;
}

uint64_t RepresentationGeometryTransform.updateValue()()
{
  v11[2] = *MEMORY[0x1E69E9840];
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v2 = CurrentAttribute;
  Value = AGGraphGetValue();
  v5 = v4;
  v6 = Value[1];
  v11[0] = *Value;
  v11[1] = v6;
  OutputValue = AGGraphGetOutputValue();
  v8 = OutputValue;
  if (!*(v0 + 56))
  {

    if (!*(v0 + 120))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = v5 | (OutputValue == 0);

  AccessibilityViewResponderUpdater.updateAccessibilityNodes(list:listChanged:source:)(v11, v9 & 1, v2);
  if (*(v0 + 120))
  {
LABEL_4:
    AccessibilityGeometryUpdater.updateAccessibilityNodes(list:listChanged:source:)(v11, v5 & 1u | (v8 == 0), v2);
  }

LABEL_5:
  AGGraphSetOutputValue();
}

uint64_t AccessibilityProxyTransform.makeOutputs()(uint64_t a1)
{
  v2 = v1;
  v45 = *MEMORY[0x1E69E9840];
  *v30 = *(v2 + 12);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BridgedAttachment and conformance BridgedAttachment();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  *v30 = *v2;
  *&v30[4] = v4;
  v26[2] = v7;
  v27 = type metadata accessor for AccessibilityProxyTransform.Child();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v26, v27, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  _GraphValue.init(_:)();
  v10 = *(v2 + 64);
  v11 = *(v2 + 32);
  v39 = *(v2 + 48);
  v40 = v10;
  v12 = *(v2 + 64);
  v41 = *(v2 + 80);
  v13 = *(v2 + 32);
  v38[0] = *(v2 + 16);
  v38[1] = v13;
  *&v30[32] = v39;
  *&v30[48] = v12;
  *&v30[64] = *(v2 + 80);
  v42 = *(v2 + 96);
  *&v30[80] = *(v2 + 96);
  *v30 = v38[0];
  *&v30[16] = v11;
  outlined init with copy of _ViewInputs(v38, v29);
  v14 = swift_getWitnessTable();
  v15 = lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier();
  v36 = v14;
  v37 = v15;
  v34 = swift_getWitnessTable();
  v35 = &protocol witness table for AccessibilityAttachmentModifier;
  v32 = swift_getWitnessTable();
  v33 = &protocol witness table for HiddenModifierAllowingAccessibility;
  swift_getWitnessTable();
  static View.makeDebuggableView(view:inputs:)();
  v43[2] = *&v30[32];
  v43[3] = *&v30[48];
  v43[4] = *&v30[64];
  v44 = *&v30[80];
  v43[0] = *v30;
  v43[1] = *&v30[16];
  outlined destroy of _ViewInputs(v43);
  v16 = *&v29[0];
  v17 = DWORD2(v29[0]);
  *v30 = *&v29[0];
  *&v30[8] = DWORD2(v29[0]);
  v18 = PreferencesOutputs.subscript.getter();
  if ((v18 & 0x100000000) == 0)
  {
    *v30 = v18;
    memset(&v30[8], 0, 112);
    v31 = 0;
    v29[4] = *&v30[64];
    v29[5] = *&v30[80];
    v29[6] = *&v30[96];
    v29[7] = 0uLL;
    v29[0] = *v30;
    v29[1] = *&v30[16];
    v29[2] = *&v30[32];
    v29[3] = *&v30[48];
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type RepresentationGeometryTransform and conformance RepresentationGeometryTransform();
    Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of RepresentationGeometryTransform(v30);
    if ((*(v2 + 104) & 1) == 0)
    {
      AGGraphSetIndirectAttribute();
    }
  }

  PreferencesOutputs.init()();
  v30[0] = *(v2 + 8) == *MEMORY[0x1E698D3F8];
  PreferencesOutputs.subscript.setter();
  v22[7] = v16;
  v23 = v17;
  PairwisePreferenceCombinerVisitor.init(outputs:)();
  PairwisePreferenceCombinerVisitor.visit<A>(key:)();
  v24 = *&v30[32];
  v25 = *&v30[40];

  v19 = PreferencesOutputs.subscript.getter();

  MEMORY[0x1EEE9AC00](v20);
  v22[2] = v5;
  v22[3] = v6;
  v22[4] = v2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI16PreferenceValuesVG_s5NeverOytSgTg5(partial apply for closure #1 in AccessibilityProxyTransform.makeOutputs(), v22, v19 | ((HIDWORD(v19) & 1) << 32));
}

void AccessibilityProxyTransform.Child.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v23 = a4;
  v19 = HIDWORD(a1);
  v7 = type metadata accessor for VStack();
  v20 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v22 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v24 = a2;
  v25 = a3;
  v26 = v6;
  v27 = v19;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](WitnessTable, v7, &type metadata for AccessibilityRepresentableStyleModifier, WitnessTable);
  (*(v20 + 8))(v9, v7);
  Value = AGGraphGetValue();
  outlined init with copy of AccessibilityProperties(Value, v32);
  v16 = lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier();
  v30 = WitnessTable;
  v31 = v16;
  v17 = swift_getWitnessTable();
  View.accessibility(_:)(v32, v10, v17);
  outlined destroy of AccessibilityProperties(v32);
  (*(v21 + 8))(v12, v10);
  v28 = v17;
  v29 = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  View.hiddenAllowingAccessibility()();
}

uint64_t closure #1 in AccessibilityProxyTransform.Child.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  static ViewBuilder.buildExpression<A>(_:)(v7, a2, a3);
  v12 = *(v5 + 8);
  v12(v7, a2);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a3);
  return (v12)(v10, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AccessibilityProxyTransform<A>.Child@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t AccessibilityChildrenModifier.BridgedAttachment.representedNodeList.getter@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    result = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(AGGraphGetValue() + 8);
  }

  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t AccessibilityChildrenModifier.BridgedAttachment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  AccessibilityChildrenModifier.BridgedAttachment.representedNodeList.getter(a1, __src);
  if (!__src[0])
  {
    goto LABEL_15;
  }

  if (__src[0] >> 62)
  {
    v9 = __CocoaSet.count.getter();

    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
LABEL_15:
      AccessibilityProperties.init()();
      outlined init with copy of AccessibilityProperties(v14, v12);
      AccessibilityAttachment.init(properties:)();
      goto LABEL_16;
    }
  }

  AccessibilityRotorModifier.RelationshipScope.nodeList.getter(a1, __src);
  v5 = __src[0];
  if (!__src[0])
  {
    goto LABEL_15;
  }

  if (!(__src[0] >> 62))
  {
    result = *((__src[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  result = __CocoaSet.count.getter();
  if (result != 1)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_7:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x18D00E9C0](0, v5);
    goto LABEL_10;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_10:
    v8 = v7;

    AccessibilityNode.attachment.getter(__src);

    outlined init with copy of AccessibilityProperties(__src, v14);
    outlined destroy of AccessibilityAttachment(__src);
    v15 = 0;
    v16 = 0;
    outlined init with copy of AccessibilityProperties(v14, v12);
    outlined init with copy of AccessibilityProperties(v12, v11);
    AccessibilityAttachment.init(properties:)();
    outlined destroy of AccessibilityProperties(v12);
LABEL_16:
    outlined destroy of AccessibilityProperties(v14);
    _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v10 = swift_allocObject();
    result = memcpy((v10 + 16), __src, 0x128uLL);
    *a2 = v10;
    a2[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AccessibilityRepresentableStyleModifier.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(0, &lazy cache variable for type metadata for StyleBox<AccessibilitySegmentedControlStyle>, lazy protocol witness table accessor for type AccessibilitySegmentedControlStyle and conformance AccessibilitySegmentedControlStyle, &type metadata for AccessibilitySegmentedControlStyle, type metadata accessor for StyleBox);
  v2 = swift_allocObject();
  result = swift_getKeyPath();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void AccessibilityControlStyle.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v2 = *(a1 + 24);
  v15[3] = *(a1 + 16);
  v15[4] = v2;
  v15[1] = type metadata accessor for _OverlayModifier();
  v3 = type metadata accessor for ModifiedContent();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v15 - v4;
  v6 = type metadata accessor for ModifiedContent();
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for ModifiedContent();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = type metadata accessor for ModifiedContent();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v15[2] = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15[6] = v15 - v11;
  v25 = static Color.clear.getter();
  static Alignment.center.getter();
  v12 = MEMORY[0x1E6981580];
  View.overlay<A>(_:alignment:)();

  LOBYTE(v25) = 19;
  WitnessTable = swift_getWitnessTable();
  v23 = v12;
  v24 = WitnessTable;
  v14 = swift_getWitnessTable();
  View.accessibilityRemoveTraits(_:)(&v25, v3, v14);
  (*(v16 + 8))(v5, v3);
  v21 = v14;
  v22 = &protocol witness table for AccessibilityAttachmentModifier;
  swift_getWitnessTable();
  View.accessibilityIgnoreViewResponders()();
}

uint64_t sub_18CAB069C()
{
  (*(*(v7 - 192) + 8))(v6, v3);
  *(v7 - 144) = v0;
  *(v7 - 136) = &protocol witness table for IgnoreViewRespondersModifier;
  WitnessTable = swift_getWitnessTable();
  v9 = *(v7 - 240);
  View.accessibilityCombinedElement(options:ignoredTraits:)(0, v2, WitnessTable, v9);
  (*(*(v7 - 184) + 8))(v5, v2);
  *(v7 - 160) = WitnessTable;
  *(v7 - 152) = v4;
  v10 = swift_getWitnessTable();
  v11 = *(v7 - 208);
  static ViewBuilder.buildExpression<A>(_:)(v9, v1, v10);
  v12 = *(*(v7 - 176) + 8);
  v12(v9, v1);
  static ViewBuilder.buildExpression<A>(_:)(v11, v1, v10);
  return (v12)(v11, v1);
}

uint64_t protocol witness for ControlGroupStyle.makeBody(configuration:) in conformance AccessibilityControlGroupStyle@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for contain != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static AccessibilityChildBehavior.contain;
}

uint64_t static AccessibilityPickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  swift_getWitnessTable();
  type metadata accessor for ForEachSubviewCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  type metadata accessor for ForEach();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabeledContent();
  _GraphInputs.interfaceIdiom.getter();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AccessibilityPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static AccessibilityPickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  swift_getWitnessTable();
  type metadata accessor for ForEachSubviewCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  type metadata accessor for ForEach();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabeledContent();
  _GraphInputs.interfaceIdiom.getter();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AccessibilityPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AccessibilityPickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t AccessibilityPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  swift_getWitnessTable();
  type metadata accessor for ForEachSubviewCollection();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  type metadata accessor for ForEach();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return LabeledContent<>.init(content:label:)(partial apply for closure #1 in AccessibilityPickerStyle.Body.value.getter, partial apply for closure #2 in AccessibilityPickerStyle.Body.value.getter, a1);
}

uint64_t closure #1 in AccessibilityPickerStyle.Body.value.getter()
{
  v35 = static VerticalAlignment.center.getter();
  LOBYTE(v36) = 1;
  v0 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  WitnessTable = swift_getWitnessTable();
  v2 = type metadata accessor for ForEachSubviewCollection();
  v3 = swift_getWitnessTable();
  v4 = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  *&v41 = v2;
  *(&v41 + 1) = MEMORY[0x1E6981A40];
  *&v42 = v0;
  *(&v42 + 1) = v3;
  *&v43 = v4;
  type metadata accessor for ForEach();
  _VariadicView.Tree.init(_:content:)();
  v31 = v43;
  v32 = v44;
  *&v33 = v45;
  v29 = v41;
  v30 = v42;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  *&v21 = static AccessibilityChildBehavior.contain;
  v5 = type metadata accessor for _VariadicView.Tree();
  v20 = WitnessTable;

  v6 = swift_getWitnessTable();
  v18 = MEMORY[0x1E697E240];
  v19 = v6;
  v7 = swift_getWitnessTable();
  View._accessibilityElement(children:)(&v21, v5, v7);

  v27[2] = v31;
  v27[3] = v32;
  v28 = v33;
  v27[0] = v29;
  v27[1] = v30;
  (*(*(v5 - 8) + 8))(v27, v5);
  v23 = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v21 = v35;
  v22 = v36;
  LOBYTE(v12) = 18;
  v8 = type metadata accessor for ModifiedContent();
  ModifiedContent<>.accessibilityAddTraits(_:)(v8, &v41);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v29 = v21;
  v30 = v22;
  v9 = *(*(v8 - 8) + 8);
  v9(&v29, v8);
  v14 = v43;
  v15 = v44;
  v16 = v45;
  v17 = v46;
  v12 = v41;
  v13 = v42;
  v10 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v12, v8, v10);
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v35 = v12;
  v36 = v13;
  v9(&v35, v8);
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v12 = v21;
  v13 = v22;
  static ViewBuilder.buildExpression<A>(_:)(&v12, v8, v10);
  v43 = v14;
  v44 = v15;
  v45 = v16;
  v46 = v17;
  v41 = v12;
  v42 = v13;
  return (v9)(&v41, v8);
}

uint64_t closure #1 in closure #1 in AccessibilityPickerStyle.Body.value.getter(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _UNKNOWN **a5)
{
  *&v35 = &type metadata for AccessibilityPickerStyle;
  *(&v35 + 1) = a4;
  v36 = &protocol witness table for AccessibilityPickerStyle;
  *&v37 = a5;
  v10 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  LODWORD(v28) = a3;
  type metadata accessor for AccessibilityPickerStyle.Body();
  AccessibilityPickerStyle.Body.base.getter(v12);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a4, a5, v13, v14);
  v15 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v15 - 8) + 8))(v12, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *&v35 = a4;
  *(&v35 + 1) = MEMORY[0x1E6981A60];
  v36 = a5;
  *&v37 = MEMORY[0x1E6981A58];
  v17 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  v18 = type metadata accessor for PickerStyleConfiguration.Content();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00AE40](&v31, WitnessTable, partial apply for closure #1 in closure #1 in closure #1 in AccessibilityPickerStyle.Body.value.getter, v16, v17, v18, WitnessTable, &protocol witness table for PickerStyleConfiguration<A>.Content);
  v27 = v31;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v20 = type metadata accessor for ForEachSubviewCollection();
  v21 = swift_getWitnessTable();
  v22 = lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  *&v35 = v20;
  *(&v35 + 1) = MEMORY[0x1E6981A40];
  v36 = v17;
  *&v37 = v21;
  *(&v37 + 1) = v22;
  v23 = type metadata accessor for ForEach();
  v26[1] = WitnessTable;
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v27, v23, v24);

  v31 = v35;
  v32 = v36;
  v33 = v37;
  v34 = v38;
  static ViewBuilder.buildExpression<A>(_:)(&v31, v23, v24);
}

uint64_t closure #1 in closure #1 in closure #1 in AccessibilityPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23[1] = a7;
  v27 = &type metadata for AccessibilityPickerStyle;
  v28 = a5;
  v29 = &protocol witness table for AccessibilityPickerStyle;
  v30 = a6;
  v13 = type metadata accessor for _PickerValue();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - v15;
  outlined init with copy of Subview(a1, &v27);
  *&v25 = a2;
  *(&v25 + 1) = a3;
  v23[2] = a2;
  v23[3] = a3;
  v24 = a4;
  type metadata accessor for AccessibilityPickerStyle.Body();
  AccessibilityPickerStyle.Body.base.getter(v16);
  v17 = *&v16[*(type metadata accessor for PickerStyleConfiguration() + 36)];
  v18 = *(v14 + 8);

  v18(v16, v13);
  AccessibilityPickerStyle.Body.AccessibilityPickerButton.init<>(_:idiom:selection:)(&v27, &v25, v17, a5, a6, v26);
  v27 = a5;
  v28 = MEMORY[0x1E6981A60];
  v29 = a6;
  v30 = MEMORY[0x1E6981A58];
  v19 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v26, v19, WitnessTable);
  v21 = *(*(v19 - 8) + 8);
  v21(v26, v19);
  static ViewBuilder.buildExpression<A>(_:)(&v27, v19, WitnessTable);
  return v21(&v27, v19);
}

uint64_t AccessibilityPickerStyle.Body.AccessibilityPickerButton.init<>(_:idiom:selection:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v11 = type metadata accessor for Optional();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v29 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  outlined init with copy of Subview(a1, a6 + 16);
  *a6 = *a2;
  v33 = *(a1 + 96);

  ContainerValues.tag<A>(for:)();

  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    outlined destroy of Subview(a1);

    result = (*(v27 + 8))(v13, v28);
    v21 = 0;
    *(a6 + 120) = 1;
    *(a6 + 144) = 0;
    v22 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  else
  {
    v23 = *(v14 + 32);
    v23(v19, v13, a4);
    v33 = v30;
    type metadata accessor for Binding();
    type metadata accessor for Array();
    swift_getWitnessTable();
    static ToggleState.stateFor<A, B>(item:in:)();
    *(a6 + 120) = v32;
    v33 = *(a1 + 96);
    v31 = 1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v24 = v32;
    outlined destroy of Subview(a1);
    *(a6 + 144) = v24;
    v25 = v29;
    v23(v29, v19, a4);
    v26 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v21 = swift_allocObject();
    v21[2] = a4;
    v21[3] = a5;
    v21[4] = v30;
    result = (v23)(v21 + v26, v25, a4);
    v22 = partial apply for closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.init<>(_:idiom:selection:);
  }

  *(a6 + 128) = v22;
  *(a6 + 136) = v21;
  return result;
}

uint64_t closure #2 in AccessibilityPickerStyle.Body.value.getter(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = &protocol witness table for AccessibilityPickerStyle;
  v21 = a5;
  v10 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v19 - v11;
  v19[0] = a1;
  v19[1] = a2;
  LODWORD(v20) = a3;
  type metadata accessor for AccessibilityPickerStyle.Body();
  AccessibilityPickerStyle.Body.base.getter(v12);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a4, a5, v13, v14);
  v15 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v15 - 8) + 8))(v12, v15);
  v16 = type metadata accessor for PickerStyleConfiguration.Label();
  v17 = static ViewBuilder.buildExpression<A>(_:)(v16, v16, &protocol witness table for PickerStyleConfiguration<A>.Label);
  return static ViewBuilder.buildExpression<A>(_:)(v17, v16, &protocol witness table for PickerStyleConfiguration<A>.Label);
}

uint64_t closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.init<>(_:idiom:selection:)(uint64_t a1)
{
  v2 = type metadata accessor for Binding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - v6;
  result = MEMORY[0x18D00CDE0](a1, v2, v5);
  if (result)
  {
    v9 = 0;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        result = (*(v3 + 16))(v7, a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v4 != 8)
        {
          __break(1u);
          return result;
        }

        v13 = result;
        (*(v3 + 16))(v7, &v13, v2);
        result = swift_unknownObjectRelease();
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_10:
          __break(1u);
          return result;
        }
      }

      specialized Binding.wrappedValue.setter();
      (*(v3 + 8))(v7, v2);
      result = MEMORY[0x18D00CDE0](a1, v2);
      ++v9;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = a1 - 8;
  v61 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = v6;
  v59 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v5 + 32);
  v8 = type metadata accessor for ModifiedContent();
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v54 = v49 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = v49 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v60 = v49 - v19;
  _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v20 = type metadata accessor for ModifiedContent();
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v56 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v58 = v49 - v23;
  if (one-time initialization token for combine != -1)
  {
    swift_once();
  }

  *&v70 = static AccessibilityChildBehavior.combine;
  v24 = *(a1 + 40);

  v50 = v24;
  View._accessibilityElement(children:)(&v70, v7, v24);

  v70 = *v3;
  v25 = AnyInterfaceIdiom.accepts<A>(_:)();
  MEMORY[0x1EEE9AC00](v25);
  v52 = *(a1 + 16);
  v49[-6] = v52;
  v49[-5] = v7;
  v53 = v7;
  v51 = *(a1 + 32);
  v26 = a1;
  v49[-4] = v51;
  v49[-3] = v24;
  v49[-2] = v3;
  ModifiedContent<>.update(isEnabled:body:)(v27 & 1, partial apply for closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter, v8, v13);
  v28 = *(v64 + 1);
  v28(v10, v8);
  *&v70 = 4 * (*(v3 + *(a1 + 56)) == 0);
  v29 = v54;
  ModifiedContent<>.accessibilityAddTraits(_:)(&v70, v8);
  v28(v13, v8);
  v64 = v28;
  v30 = *v3;
  v49[1] = v3;
  v70 = v30;
  AnyInterfaceIdiom.accepts<A>(_:)();
  v31 = v55;
  ModifiedContent<>.accessibilityAddTraits(_:)(v8, v55);

  v28(v29, v8);
  v70 = 0u;
  v71 = 0u;
  v32 = v61;
  v33 = v59;
  (*(v61 + 16))(v59, v3, v26);
  v34 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 2) = v52;
  *(v35 + 3) = v36;
  v37 = v50;
  *(v35 + 4) = v51;
  *(v35 + 5) = v37;
  (*(v32 + 32))(&v35[v34], v33, v26);
  v38 = v60;
  ModifiedContent<>.accessibilityAction(kind:_:)(&v70, partial apply for closure #2 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter, v35, v8);

  outlined consume of AccessibilityActionKind.ActionKind(v70, *(&v70 + 1), v71, *(&v71 + 1));
  v39 = v31;
  v40 = v64;
  v64(v39, v8);
  v68 = v37;
  v69 = &protocol witness table for AccessibilityAttachmentModifier;
  WitnessTable = swift_getWitnessTable();
  v42 = v56;
  View._disabled(_:)();
  v40(v38, v8);
  v43 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v66 = WitnessTable;
  v67 = v43;
  v44 = v63;
  v45 = swift_getWitnessTable();
  v46 = v58;
  static ViewBuilder.buildExpression<A>(_:)(v42, v44, v45);
  v47 = *(v62 + 8);
  v47(v42, v44);
  static ViewBuilder.buildExpression<A>(_:)(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  lazy protocol witness table accessor for type AccessibilityToggleValue and conformance AccessibilityToggleValue();
  AccessibilityValueStorage.init<A>(_:description:)();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c4UI24e101PickerStyleV4Body33_AAF5C5EDB558810623EAFD84FD4E7390LLV0cD6ButtonV4bodyQrvgyAA0C10PropertiesVzXEfU_Sbz3C12fG6VXEfU_AFTf1cn_n(a1 + 64, v8);
  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AccessibilityValueStorage(v8, a1 + 64);
  return outlined destroy of AccessibilityValueStorage(v8);
}

uint64_t closure #1 in closure #1 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = MEMORY[0x1E697FBB0];
  _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(a2, &v15, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  v7 = *(&v16 + 1);
  result = _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(&v15, &lazy cache variable for type metadata for AnyAccessibilityValue?, v6);
  if (!v7)
  {
    _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOcTm_0(a1, &v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
    if (*(&v13 + 1))
    {
      v15 = v12;
      v16 = v13;
      v17 = v14;
      result = _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(a2, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
      v11 = v16;
      *a2 = v15;
      *(a2 + 16) = v11;
      *(a2 + 32) = v17;
      v9 = 1;
      v10 = *(a2 + 40);
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    result = _s7SwiftUI28AccessibilityGeometryUpdaterVSgWOhTm_0(&v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  }

  v9 = 0;
  v10 = *(a2 + 40);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (!*(v10 + 16))
  {
    result = *(a1 + 40);
    if (result)
    {
      if (*(result + 16))
      {
        *(a2 + 40) = result;

        v9 = 1;
      }
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance AccessibilityPickerStyle.Body<A>@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 73) = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 AccessibilitySegmentedControlStyle.body(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  outlined init with copy of SubviewsCollection(a1, __src);
  v5 = specialized _copySequenceToContiguousArray<A>(_:)(__src);
  outlined destroy of EnumeratedSequence<SubviewsCollection>(__src);
  KeyPath = swift_getKeyPath();
  outlined init with copy of ResolvedSegmentedControl(a1, __src);
  v7 = swift_allocObject();
  v8 = *&__src[80];
  *(v7 + 80) = *&__src[64];
  *(v7 + 96) = v8;
  *(v7 + 112) = *&__src[96];
  *(v7 + 128) = __src[112];
  v9 = *&__src[16];
  *(v7 + 16) = *__src;
  *(v7 + 32) = v9;
  v10 = *&__src[48];
  *(v7 + 48) = *&__src[32];
  *(v7 + 64) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = partial apply for closure #1 in closure #1 in AccessibilitySegmentedControlStyle.body(configuration:);
  *(v11 + 24) = v7;
  v20 = v5;
  v24 = KeyPath;
  type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(0, &lazy cache variable for type metadata for [(offset: Int, element: Subview)], type metadata accessor for (offset: Int, element: Subview), MEMORY[0x1E69E62F8]);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>();
  lazy protocol witness table accessor for type [(offset: Int, element: Subview)] and conformance [A]();
  lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
  ForEach.init(_:idGenerator:content:)();
  v18 = *__src;
  v12 = *&__src[16];
  v13 = *&__src[32];
  v14 = v25;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v15 = static AccessibilityChildBehavior.contain;

  AccessibilityProperties.init()();
  v22 = vdupq_n_s64(0x4000000uLL);
  v23 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v20);
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v16 = swift_allocObject();
  memcpy((v16 + 16), __src, 0x128uLL);
  swift_beginAccess();
  v20 = 37;
  v21 = 0;

  AccessibilityProperties.subscript.setter();
  swift_endAccess();

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  result = v18;
  *(a2 + 24) = v18;
  *(a2 + 40) = v12;
  *(a2 + 56) = v13;
  *(a2 + 72) = v15;
  *(a2 + 80) = v16;
  *(a2 + 88) = 0;
  return result;
}

uint64_t key path getter for Subview.id : Subview@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 72);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v3 = *(result + 60);
    v4 = *(result + 64);
    *a2 = v2;
    *(a2 + 4) = v3;
    *(a2 + 8) = v4;
  }

  __break(1u);
  return result;
}

void closure #1 in closure #1 in AccessibilitySegmentedControlStyle.body(configuration:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for Button);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32[-v10];
  type metadata accessor for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of ResolvedSegmentedControl(a3, v33);
  v16 = swift_allocObject();
  *(v16 + 128) = v33[112];
  v17 = *&v33[96];
  *(v16 + 96) = *&v33[80];
  *(v16 + 112) = v17;
  v18 = *&v33[64];
  v19 = *&v33[16];
  *(v16 + 16) = *v33;
  *(v16 + 32) = v19;
  v20 = *&v33[48];
  *(v16 + 48) = *&v33[32];
  *(v16 + 64) = v20;
  *(v16 + 80) = v18;
  *(v16 + 136) = a1;
  *v11 = 4;
  v21 = &v11[*(v9 + 44)];
  *v21 = partial apply for closure #1 in closure #1 in closure #1 in AccessibilitySegmentedControlStyle.body(configuration:);
  v21[1] = v16;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  outlined init with copy of Subview(a2, &v11[*(v9 + 48)]);
  v22 = *(a3 + 80);
  v23 = *(a3 + 88);
  *v33 = *(a3 + 64);
  *&v33[16] = v22;
  v33[24] = v23;
  type metadata accessor for Binding<Int?>();
  MEMORY[0x18D00ACC0](&v34);
  if ((v35 & 1) != 0 || v34 != a1)
  {
    v24 = 0;
  }

  else
  {
    v24 = 4;
  }

  AccessibilityProperties.init()();
  v36 = v24;
  v37 = v24;
  v38 = 0;
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(&v34);
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v33, 0x128uLL);
  outlined init with take of Button<Subview>(v11, v15, &lazy cache variable for type metadata for Button<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58]);
  v26 = &v15[*(v13 + 36)];
  *v26 = v25;
  v26[1] = 0;
  *v33 = *(a2 + 96);
  v32[15] = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v27 = v34;
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  outlined init with take of ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>(v15, a4);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>();
  v31 = (a4 + *(v30 + 36));
  *v31 = KeyPath;
  v31[1] = partial apply for closure #1 in View.disabled(_:);
  v31[2] = v29;
}

uint64_t closure #1 in AccessibilityMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for Button);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-v8];
  type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20[-v14];
  if (a1)
  {
    *v9 = 4;
    v16 = &v9[*(v7 + 36)];
    *v16 = a1;
    v16[1] = a2;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    outlined init with take of Button<Subview>(v9, v15, &lazy cache variable for type metadata for Button<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label);
  }

  type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage, MEMORY[0x1E697F948]);
  swift_storeEnumTagMultiPayload();
  outlined copy of AppIntentExecutor?(a1);
  type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>();
  lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>, lazy protocol witness table accessor for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  Group.init<A, B>(subviews:transform:)();
  outlined init with copy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(v15, v12);
  v17 = MEMORY[0x1E69815F8];
  outlined init with copy of Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>(v21, v20, &lazy cache variable for type metadata for Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>, type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>, MEMORY[0x1E69815F8]);
  outlined init with copy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(v12, a3);
  type metadata accessor for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)();
  outlined init with copy of Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>(v20, a3 + *(v18 + 48), &lazy cache variable for type metadata for Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>, type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>, v17);
  outlined destroy of ScrollableCollection?(v21, &lazy cache variable for type metadata for Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>, type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>, v17);
  outlined destroy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(v15);
  outlined destroy of ScrollableCollection?(v20, &lazy cache variable for type metadata for Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>, type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>, v17);
  return outlined destroy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(v12);
}

uint64_t closure #2 in closure #1 in AccessibilityMenuStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = SubviewsCollection.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    outlined init with copy of SubviewsCollection(a1, &v11);
    v5 = swift_allocObject();
    v6 = v12;
    v5[1] = v11;
    v5[2] = v6;
    v7 = v14;
    v5[3] = v13;
    v5[4] = v7;
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for ModifiedContent<Subview, AccessibilityAttachmentModifier>, MEMORY[0x1E6981A60], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    result = ForEach.init(_:idGenerator:content:)();
    v8 = v14;
    v10 = v12;
    v9 = v13;
    *a2 = v11;
    *(a2 + 16) = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in AccessibilityMenuStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = _VariadicView_Children.subscript.getter();
  v5 = -v3;
  if (__OFSUB__(0, v3))
  {
    __break(1u);
  }

  else
  {
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (!v6)
    {
      __src[0] = v7;
      LOBYTE(__src[1]) = 0;
      AccessibilityProperties.init<A>(_:_:)();
      outlined init with copy of AccessibilityProperties(v11, v9);
      AccessibilityAttachment.init(properties:)();
      outlined destroy of AccessibilityProperties(v11);
      _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
      v8 = swift_allocObject();
      result = memcpy((v8 + 16), __src, 0x128uLL);
      *(a2 + 104) = v8;
      *(a2 + 112) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance AccessibilityMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a2 = static Alignment.center.getter();
  a2[1] = v5;
  type metadata accessor for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>();
  closure #1 in AccessibilityMenuStyle.makeBody(configuration:)(v3, v4, a2 + *(v6 + 44));
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v7 = static AccessibilityChildBehavior.automatic;
  type metadata accessor for ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier>, type metadata accessor for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>);
  *(a2 + *(v8 + 36)) = v7;
}

uint64_t closure #1 in AccessibilityProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v5 = *(a1 + *(result + 32));
  *a2 = *(a1 + *(result + 28));
  a2[1] = v5;
  return result;
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance AccessibilityProgressViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  result = closure #1 in AccessibilityProgressViewStyle.makeBody(configuration:)(a1, v8);
  v6 = v8[0];
  v7 = v8[1];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 17) = v6;
  *(a2 + 18) = v7;
  return result;
}

uint64_t AccessibilityDisclosureGroupStyle.makeBody(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = static HorizontalAlignment.center.getter();
  v11 = v3;
  v12 = v4;
  v13 = v5;
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v10);
  v7 = v10;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v8 = static AccessibilityChildBehavior.contain;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = v7 ^ 1;
  *(a2 + 24) = v8;
}

uint64_t closure #1 in AccessibilityLabelStyle.makeBody(configuration:)(_OWORD *__src)
{
  result = memcpy(__dst, __src, 0x129uLL);
  if (__dst[296])
  {
    if (__dst[296] == 1)
    {
      result = outlined destroy of AccessibilityAttachment.Tree(__dst);
    }

    *(__src + 36) = 0;
    __src[16] = 0u;
    __src[17] = 0u;
    __src[14] = 0u;
    __src[15] = 0u;
    __src[12] = 0u;
    __src[13] = 0u;
    __src[10] = 0u;
    __src[11] = 0u;
    __src[8] = 0u;
    __src[9] = 0u;
    __src[6] = 0u;
    __src[7] = 0u;
    __src[4] = 0u;
    __src[5] = 0u;
    __src[2] = 0u;
    __src[3] = 0u;
    *__src = 0u;
    __src[1] = 0u;
    *(__src + 296) = 2;
  }

  else
  {
    memcpy(v5, __src, sizeof(v5));
    AccessibilityProperties.init()();
    v3 = AccessibilityProperties.images.getter();
    MEMORY[0x18D0086C0](v3);
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(v4);
    result = outlined destroy of AccessibilityAttachment(v5);
    *(__src + 296) = 0;
  }

  return result;
}

void protocol witness for LabeledContentStyle.makeBody(configuration:) in conformance AccessibilityLabeledContentStyle(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = static VerticalAlignment.center.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v3, v5, v6, v7);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

void protocol witness for GroupBoxStyle.makeBody(configuration:) in conformance AccessibilityGroupBoxStyle(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v2, v3, v4, v5);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t static AccessibilityListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AccessibilityListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static AccessibilityListStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList();
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for AccessibilityListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t AccessibilityListStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ListValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t AccessibilityListStyle.Body.value.getter@<X0>(int a1@<W0>, ValueMetadata *a2@<X1>, _UNKNOWN **a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v23 = &type metadata for AccessibilityListStyle;
  v24 = a2;
  v25 = &protocol witness table for AccessibilityListStyle;
  v26 = a3;
  v12 = type metadata accessor for _ListValue();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v21 - v13;
  WitnessTable = swift_getWitnessTable();
  v23 = a2;
  v24 = v7;
  v25 = a3;
  v26 = WitnessTable;
  v16 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v21 - v17;
  AccessibilityListStyle.Body.base.getter(v14);
  v19 = *(v9 + 32);
  v19(v11, v14, v8);
  v19(v18, v11, v8);
  v21[4] = a2;
  v21[5] = a3;
  v22 = a1;
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in AccessibilityListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = &type metadata for AccessibilityListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for AccessibilityListStyle;
  v8[3] = a3;
  v3 = type metadata accessor for _ListValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v8 - v5;
  AccessibilityListStyle.Body.base.getter(v8 - v5);
  return (*(v4 + 8))(v6, v3);
}

uint64_t AccessibilityListStyle.Body.AccessibilityList.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v5 = *(a2 + 24);
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = *(a2 + 16);
  v22 = *(a2 + 32);
  *&v11 = v10;
  *(&v11 + 1) = v5;
  v25[0] = v11;
  v25[1] = v22;
  v12 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  outlined init with copy of _VariadicView_Children(a1, v25);
  (*(v7 + 16))(v9, v23, v6);
  AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.init(children:selection:)(v25, v9, v15);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v15, v12, WitnessTable);
  v20 = *(v13 + 8);
  v20(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)(v18, v12, WitnessTable);
  return (v20)(v18, v12);
}

uint64_t AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.init(children:selection:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = a1[3];
  *(a3 + 2) = a1[2];
  *(a3 + 3) = v6;
  v7 = *(type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() + 52);
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  return (*(*(v8 - 8) + 32))(&a3[v7], a2, v8);
}

uint64_t AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.body.getter()
{
  static HorizontalAlignment.center.getter();
  v0 = MEMORY[0x1E69E6530];
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v2 = v1;
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
  *&v32 = v2;
  *(&v32 + 1) = v0;
  *&v33 = type metadata accessor for ModifiedContent();
  *(&v33 + 1) = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v34 = MEMORY[0x1E69E6540];
  type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x1E697FFB0];
  v18 = WitnessTable;
  v16 = swift_getWitnessTable();
  swift_getWitnessTable();
  VStack.init(alignment:spacing:content:)();
  v21 = v28;
  v22 = v29;
  v23 = v30;
  v19 = v26;
  v20 = v27;
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  *&v10 = static AccessibilityChildBehavior.contain;
  v4 = type metadata accessor for VStack();

  v5 = swift_getWitnessTable();
  View.accessibilityElement(children:)(&v10, v4, v5);

  v25[2] = v21;
  v25[3] = v22;
  v25[4] = v23;
  v25[0] = v19;
  v25[1] = v20;
  (*(*(v4 - 8) + 8))(v25, v4);
  v12 = v34;
  v13 = v35;
  v14 = v36;
  v15 = v37;
  v10 = v32;
  v11 = v33;
  v6 = type metadata accessor for ModifiedContent();
  v7 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v10, v6, v7);
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v26 = v10;
  v27 = v11;
  v8 = *(*(v6 - 8) + 8);
  v8(&v26, v6);
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v10 = v19;
  v11 = v20;
  static ViewBuilder.buildExpression<A>(_:)(&v10, v6, v7);
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  v32 = v10;
  v33 = v11;
  return (v8)(&v32, v6);
}

uint64_t closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28[2] = a6;
  *&v37 = a2;
  *(&v37 + 1) = a3;
  *&v38 = a4;
  *(&v38 + 1) = a5;
  v11 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v28 - v13;
  result = _VariadicView_Children.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *&v29[0] = 0;
    *(&v29[0] + 1) = result;
    v28[1] = swift_getKeyPath();
    (*(v12 + 16))(v14, a1, v11);
    v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a2;
    *(v17 + 3) = a3;
    *(v17 + 4) = a4;
    *(v17 + 5) = a5;
    (*(v12 + 32))(&v17[v16], v14, v11);
    v18 = MEMORY[0x1E69E6530];
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v20 = v19;
    *&v37 = a2;
    *(&v37 + 1) = a3;
    *&v38 = a4;
    *(&v38 + 1) = a5;
    type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
    v21 = type metadata accessor for ModifiedContent();
    v22 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    WitnessTable = swift_getWitnessTable();
    v31 = MEMORY[0x1E697FFB0];
    v32 = WitnessTable;
    v24 = swift_getWitnessTable();
    v25 = MEMORY[0x1E69E6540];
    ForEach<>.init(_:id:content:)();
    v29[0] = v33;
    v29[1] = v34;
    v29[2] = v35;
    v30 = v36;
    *&v37 = v20;
    *(&v37 + 1) = v18;
    *&v38 = v21;
    *(&v38 + 1) = v22;
    *&v39 = v25;
    v26 = type metadata accessor for ForEach();
    v28[3] = v24;
    v27 = swift_getWitnessTable();
    static ViewBuilder.buildExpression<A>(_:)(v29, v26, v27);

    v33 = v37;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    static ViewBuilder.buildExpression<A>(_:)(&v33, v26, v27);
  }

  return result;
}

uint64_t closure #1 in closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.body.getter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  _VariadicView_Children.subscript.getter();
  v11 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
  v19[0] = AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(v10, v11);
  v19[1] = v12;
  v20 = v13 & 1;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v14 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
  MEMORY[0x18D00A570](v21, v19, MEMORY[0x1E697FFB8], v14, MEMORY[0x1E697FFB0]);

  outlined destroy of _VariadicView_Children.Element(v22);
  v15 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v15, WitnessTable);
  v17 = *(*(v15 - 8) + 8);
  v17(v21, v15);
  static ViewBuilder.buildExpression<A>(_:)(v22, v15, WitnessTable);
  return v17(v22, v15);
}

uint64_t AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(uint64_t a1, void *a2)
{
  v35 = a1;
  v4 = *(a2 - 1);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v4 + 16);
  v33(v7, v2, a2, v6);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v28 = v9;
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v8;
  *(v11 + 3) = v12;
  v13 = a2[2];
  v31 = a2[3];
  v14 = v31;
  v32 = v13;
  *(v11 + 4) = v13;
  *(v11 + 5) = v14;
  v15 = a2[4];
  v29 = a2[5];
  v16 = v29;
  v30 = v15;
  *(v11 + 6) = v15;
  *(v11 + 7) = v16;
  v17 = *(v4 + 32);
  v17(&v11[v9], v7, a2);
  v18 = v34;
  v19 = v35;
  *&v11[v10] = v35;
  (v33)(v7, v18, a2);
  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  *(v21 + 2) = v20;
  v23 = v31;
  v22 = v32;
  *(v21 + 3) = MEMORY[0x1E69E85E0];
  *(v21 + 4) = v22;
  v24 = v29;
  v25 = v30;
  *(v21 + 5) = v23;
  *(v21 + 6) = v25;
  *(v21 + 7) = v24;
  v17(&v21[v28], v7, a2);
  *&v21[v10] = v19;
  Binding.init(get:set:)();
  return v36;
}

uint64_t closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  v38 = a3;
  v39 = a5;
  v45 = a7;
  v36 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Binding();
  v43 = type metadata accessor for Optional();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v34 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v37 = &v34 - v19;
  v42 = a2;
  _VariadicView_Children.subscript.getter();
  v20 = v46[12];

  outlined destroy of _VariadicView_Children.Element(v46);
  v46[0] = v20;
  v21 = a6;
  swift_getAssociatedConformanceWitness();
  ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)(1, AssociatedTypeWitness, v16);

  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v14 + 8))(v16, v13);
  }

  else
  {
    v23 = v37;
    (*(v17 + 32))(v37, v16, AssociatedTypeWitness);
    v46[0] = v38;
    v46[1] = a4;
    v46[2] = v39;
    v46[3] = v21;
    v24 = v21;
    v25 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
    v27 = v40;
    v26 = v41;
    v28 = v43;
    (*(v40 + 16))(v41, v42 + *(v25 + 52), v43);
    v29 = v44;
    v30 = *(v44 - 8);
    if ((*(v30 + 48))(v26, 1, v44) != 1)
    {
      v32 = v35;
      MEMORY[0x18D00ACC0](v29);
      (*(v30 + 8))(v26, v29);
      v33 = (*(v24 + 64))(v23, a4, v24);
      (*(v36 + 8))(v32, a4);
      result = (*(v17 + 8))(v23, AssociatedTypeWitness);
      v31 = v33 & 1;
      goto LABEL_7;
    }

    (*(v17 + 8))(v23, AssociatedTypeWitness);
    result = (*(v27 + 8))(v26, v28);
  }

  v31 = 0;
LABEL_7:
  *v45 = v31;
  return result;
}

uint64_t closure #2 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v44 = a6;
  v45 = a8;
  v50 = a5;
  v42 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Binding();
  v47 = type metadata accessor for Optional();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v39 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  v43 = *a1;
  v46 = a4;
  _VariadicView_Children.subscript.getter();
  v25 = v55;

  outlined destroy of _VariadicView_Children.Element(&v51);
  v51 = v25;
  v50 = a9;
  swift_getAssociatedConformanceWitness();
  ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)(1, AssociatedTypeWitness, v20);

  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v18 + 8))(v20, v17);
  }

  (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
  v27 = v48;
  v28 = (v49 + 16);
  v29 = v21;
  if (!v43)
  {
    v51 = v44;
    v52 = a7;
    v37 = v50;
    v53 = v45;
    v54 = v50;
    v38 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
    v32 = v47;
    v33 = v40;
    (*v28)(v40, v46 + *(v38 + 52), v47);
    v34 = *(v27 - 8);
    if ((*(v34 + 48))(v33, 1, v27) != 1)
    {
      v35 = v41;
      v36 = v33;
      MEMORY[0x18D00ACC0](v27);
      (*(v37 + 48))(v24, a7, v37);
      goto LABEL_9;
    }

LABEL_7:
    (*(v29 + 8))(v24, AssociatedTypeWitness);
    return (*(v49 + 8))(v33, v32);
  }

  v51 = v44;
  v52 = a7;
  v30 = v50;
  v53 = v45;
  v54 = v50;
  v31 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody();
  v32 = v47;
  v33 = v39;
  (*v28)(v39, v46 + *(v31 + 52), v47);
  v34 = *(v27 - 8);
  if ((*(v34 + 48))(v33, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v35 = v41;
  v36 = v33;
  MEMORY[0x18D00ACC0](v27);
  (*(v30 + 32))(v24, a7, v30);
LABEL_9:
  specialized Binding.wrappedValue.setter();
  (*(v42 + 8))(v35, a7);
  (*(v29 + 8))(v24, AssociatedTypeWitness);
  return (*(v34 + 8))(v36, v27);
}

uint64_t AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v35 = a2;
  *(&v35 + 1) = a3;
  LOBYTE(v36) = a4;
  v14 = a4 & 1;
  _s7SwiftUI7BindingVySbGMaTm_11(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v16 = v15;
  MEMORY[0x18D00ACC0](&v32);
  v17 = 4;
  if (!v32)
  {
    v17 = 0;
  }

  *&v26 = v17;
  *&v35 = a5;
  *(&v35 + 1) = a6;
  v36 = a7;
  v37 = a8;
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier();
  swift_getWitnessTable();
  v18 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  View.accessibilityAddTraits(_:)(&v32, &v26, v18, WitnessTable);
  v26 = v32;
  if (one-time initialization token for automatic != -1)
  {
    swift_once();
  }

  v31 = static AccessibilityChildBehavior.automatic;
  v20 = type metadata accessor for ModifiedContent();
  v29 = WitnessTable;
  v30 = &protocol witness table for AccessibilityAttachmentModifier;

  v21 = swift_getWitnessTable();
  View._accessibilityElement(children:)(&v31, v20, v21);

  v26 = v35;
  v27 = v36;
  v28 = v37;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  LOBYTE(v33) = v14;
  MEMORY[0x18D00ACC0](&v31, v16);
  v22 = 4;
  if (!v31)
  {
    v22 = 0;
  }

  v31 = v22;
  v23 = type metadata accessor for ModifiedContent();
  ModifiedContent<>.accessibilityAddTraits(_:)(&v31, v23);

  v26 = v32;
  v27 = v33;
  v28 = v34;
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v26, v23, v24);

  v32 = v35;
  v33 = v36;
  v34 = v37;
  static ViewBuilder.buildExpression<A>(_:)(&v32, v23, v24);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance AccessibilityListStyle.Body<A>.AccessibilityList<A1>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance AccessibilityListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  type metadata accessor for AccessibilityListStyle.Body.AccessibilityList();
  v2 = type metadata accessor for _VariadicView.Tree();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t assignWithCopy for AccessibilityProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
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
  v4 = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 100) = v4;
  v5 = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 108) = v5;
  v6 = *(a2 + 120);
  v7 = *(a1 + 120);
  *(a1 + 120) = v6;
  v8 = v6;

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  v9 = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 136) = v9;
  *(a1 + 152) = *(a2 + 152);
  v10 = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 160) = v10;
  v11 = *(a2 + 176);
  v12 = *(a1 + 176);
  *(a1 + 176) = v11;
  v13 = v11;

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  v14 = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v14;
  *(a1 + 216) = *(a2 + 216);
  v15 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v15;
  v16 = *(a2 + 240);
  v17 = *(a1 + 240);
  *(a1 + 240) = v16;
  v18 = v16;

  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t assignWithTake for AccessibilityProxyTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 100);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = v4;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v6 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v6;
  *(a1 + 168) = *(a2 + 168);
  v7 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  v8 = *(a2 + 224);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = v8;
  *(a1 + 232) = *(a2 + 232);
  v9 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityProxyTransform(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
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

uint64_t storeEnumTagSinglePayload for AccessibilityProxyTransform(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityControlStyle<ButtonStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityControlStyle<ButtonStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityControlStyle<ButtonStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityControlStyle<ButtonStyleConfiguration.Label>, &type metadata for ButtonStyleConfiguration.Label, &protocol witness table for ButtonStyleConfiguration.Label, type metadata accessor for AccessibilityControlStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityControlStyle<ButtonStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>>)
  {
    type metadata accessor for AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>>);
    }
  }
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>()
{
  if (!lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>)
  {
    v0 = type metadata accessor for AccessibilityProxyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabelStyleConfiguration.Icon>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier>, type metadata accessor for VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>);
    lazy protocol witness table accessor for type VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>> and conformance VStack<A>, type metadata accessor for VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>)
  {
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, &lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>, type metadata accessor for (DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>, type metadata accessor for (DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?));
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>);
    }
  }
}

void type metadata accessor for (DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)()
{
  if (!lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?))
  {
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for DisclosureGroupStyleConfiguration.Content?, &type metadata for DisclosureGroupStyleConfiguration.Content, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?));
    }
  }
}

void type metadata accessor for TupleView<(LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content)>()
{
  if (!lazy cache variable for type metadata for TupleView<(LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content));
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityControlStyle<ToggleStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityControlStyle<ToggleStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityControlStyle<ToggleStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityControlStyle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for AccessibilityControlStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityControlStyle<ToggleStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BridgedAttachment and conformance BridgedAttachment()
{
  result = lazy protocol witness table cache variable for type BridgedAttachment and conformance BridgedAttachment;
  if (!lazy protocol witness table cache variable for type BridgedAttachment and conformance BridgedAttachment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BridgedAttachment and conformance BridgedAttachment);
  }

  return result;
}

uint64_t partial apply for closure #1 in AccessibilityProxyTransform.makeOutputs()@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(*(v1 + 32) + 112);
  if ((v3 & 1) == 0)
  {
    result = AGGraphSetIndirectAttribute();
  }

  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type RepresentationGeometryTransform and conformance RepresentationGeometryTransform()
{
  result = lazy protocol witness table cache variable for type RepresentationGeometryTransform and conformance RepresentationGeometryTransform;
  if (!lazy protocol witness table cache variable for type RepresentationGeometryTransform and conformance RepresentationGeometryTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RepresentationGeometryTransform and conformance RepresentationGeometryTransform);
  }

  return result;
}

uint64_t outlined init with copy of Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void destroy for RepresentationGeometryTransform(uint64_t a1)
{
  v2 = *(a1 + 120);
}

uint64_t initializeWithCopy for RepresentationGeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 112) = *(a2 + 112);
  v5 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v5;
  v6 = *(a2 + 120);
  *(a1 + 120) = v6;
  v7 = v4;
  v8 = v6;
  return a1;
}

uint64_t assignWithCopy for RepresentationGeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
  v8 = v6;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  v9 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v9;
  *(a1 + 96) = *(a2 + 96);
  v10 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v10;
  v11 = *(a2 + 120);
  v12 = *(a1 + 120);
  *(a1 + 120) = v11;
  v13 = v11;

  return a1;
}

uint64_t assignWithTake for RepresentationGeometryTransform(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for RepresentationGeometryTransform(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t storeEnumTagSinglePayload for RepresentationGeometryTransform(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 56) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySegmentedControlStyle and conformance AccessibilitySegmentedControlStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilitySegmentedControlStyle and conformance AccessibilitySegmentedControlStyle;
  if (!lazy protocol witness table cache variable for type AccessibilitySegmentedControlStyle and conformance AccessibilitySegmentedControlStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySegmentedControlStyle and conformance AccessibilitySegmentedControlStyle);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>, _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>, _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>();
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>, &type metadata for AnySegmentedControlStyle, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>, _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for MenuStyleModifier<AccessibilityMenuStyle>, lazy protocol witness table accessor for type AccessibilityMenuStyle and conformance AccessibilityMenuStyle, &type metadata for AccessibilityMenuStyle, type metadata accessor for MenuStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for ControlGroupStyleModifier<AccessibilityControlGroupStyle>, lazy protocol witness table accessor for type AccessibilityControlGroupStyle and conformance AccessibilityControlGroupStyle, &type metadata for AccessibilityControlGroupStyle, type metadata accessor for ControlGroupStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for GroupBoxStyleModifier<AccessibilityGroupBoxStyle>, lazy protocol witness table accessor for type AccessibilityGroupBoxStyle and conformance AccessibilityGroupBoxStyle, &type metadata for AccessibilityGroupBoxStyle, type metadata accessor for GroupBoxStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for StepperStyleModifier<AccessibilityStepperStyle>, lazy protocol witness table accessor for type AccessibilityStepperStyle and conformance AccessibilityStepperStyle, &type metadata for AccessibilityStepperStyle, type metadata accessor for StepperStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for SliderStyleModifier<AccessibilitySliderStyle>, lazy protocol witness table accessor for type AccessibilitySliderStyle and conformance AccessibilitySliderStyle, &type metadata for AccessibilitySliderStyle, type metadata accessor for SliderStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>();
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ListStyleWriter<AccessibilityListStyle>, &type metadata for AccessibilityListStyle, &protocol witness table for AccessibilityListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>();
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for PickerStyleWriter<AccessibilityPickerStyle>, &type metadata for AccessibilityPickerStyle, &protocol witness table for AccessibilityPickerStyle, type metadata accessor for PickerStyleWriter);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>();
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for ProgressViewStyleModifier<AccessibilityProgressViewStyle>, lazy protocol witness table accessor for type AccessibilityProgressViewStyle and conformance AccessibilityProgressViewStyle, &type metadata for AccessibilityProgressViewStyle, type metadata accessor for ProgressViewStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>)
  {
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityRepresentableStyleModifier>, lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier, &type metadata for AccessibilityRepresentableStyleModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E6980C10], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityProgressViewStyle and conformance AccessibilityProgressViewStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityProgressViewStyle and conformance AccessibilityProgressViewStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityProgressViewStyle and conformance AccessibilityProgressViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityProgressViewStyle and conformance AccessibilityProgressViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySliderStyle and conformance AccessibilitySliderStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilitySliderStyle and conformance AccessibilitySliderStyle;
  if (!lazy protocol witness table cache variable for type AccessibilitySliderStyle and conformance AccessibilitySliderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySliderStyle and conformance AccessibilitySliderStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityStepperStyle and conformance AccessibilityStepperStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityStepperStyle and conformance AccessibilityStepperStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityStepperStyle and conformance AccessibilityStepperStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityStepperStyle and conformance AccessibilityStepperStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityGroupBoxStyle and conformance AccessibilityGroupBoxStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityGroupBoxStyle and conformance AccessibilityGroupBoxStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityGroupBoxStyle and conformance AccessibilityGroupBoxStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityGroupBoxStyle and conformance AccessibilityGroupBoxStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityControlGroupStyle and conformance AccessibilityControlGroupStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityControlGroupStyle and conformance AccessibilityControlGroupStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityControlGroupStyle and conformance AccessibilityControlGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityControlGroupStyle and conformance AccessibilityControlGroupStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityMenuStyle and conformance AccessibilityMenuStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityMenuStyle and conformance AccessibilityMenuStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityMenuStyle and conformance AccessibilityMenuStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityMenuStyle and conformance AccessibilityMenuStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>, _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityRepresentableStyleModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type StyleContextWriter<AccessibilityRepresentableStyleContext> and conformance StyleContextWriter<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityRepresentableStyleModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityRepresentableStyleModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityRepresentableStyleModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityRepresentableStyleModifier>, lazy protocol witness table accessor for type AccessibilityRepresentableStyleModifier and conformance AccessibilityRepresentableStyleModifier, &type metadata for AccessibilityRepresentableStyleModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityRepresentableStyleModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<AccessibilityRepresentableStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityRepresentableStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityRepresentableStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityRepresentableStyleContext>, MEMORY[0x1E6980C18], MEMORY[0x1E6980C10], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityRepresentableStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnySegmentedControlStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnySegmentedControlStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnySegmentedControlStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>, &type metadata for AnySegmentedControlStyle, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnySegmentedControlStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<SubviewsCollection>(uint64_t a1)
{
  type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(0, &lazy cache variable for type metadata for EnumeratedSequence<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, MEMORY[0x1E697F4E8], MEMORY[0x1E69E6E48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for StyleBox<AccessibilitySegmentedControlStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>();
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for Button);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>);
    }
  }
}

uint64_t outlined init with take of ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<Button<Subview>, AccessibilityAttachmentModifier>();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>)
  {
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, &lazy cache variable for type metadata for TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>, type metadata accessor for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>), MEMORY[0x1E6981F40]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_ZStackLayout, TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>);
    }
  }
}

void type metadata accessor for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)()
{
  if (!lazy cache variable for type metadata for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>))
  {
    type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(255, &lazy cache variable for type metadata for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, MEMORY[0x1E697F960]);
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, &lazy cache variable for type metadata for Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>, type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>, MEMORY[0x1E69815F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>));
    }
  }
}

void type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<MenuStyleConfiguration.Label>, &type metadata for MenuStyleConfiguration.Label, &protocol witness table for MenuStyleConfiguration.Label, type metadata accessor for Button);
    v7 = a3(a1, v6, &type metadata for MenuStyleConfiguration.Label);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>()
{
  if (!lazy cache variable for type metadata for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>)
  {
    type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>();
    lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>, lazy protocol witness table accessor for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for GroupElementsOfContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>);
    }
  }
}

void type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>()
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<Subview, AccessibilityAttachmentModifier>, MEMORY[0x1E6981A60], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<Subview, AccessibilityAttachmentModifier>, MEMORY[0x1E6981A60], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Subview, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>)
  {
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, &lazy cache variable for type metadata for TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>, type metadata accessor for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>, type metadata accessor for (_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>));
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ScrollableCollection?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined destroy of _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>(uint64_t a1)
{
  type metadata accessor for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>.Storage(0, &lazy cache variable for type metadata for _ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Button<Subview>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(0, a3, a4, a5, type metadata accessor for Button);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t type metadata completion function for AccessibilityPickerStyle.Body.AccessibilityPickerButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityPickerStyle.Body.AccessibilityPickerButton(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((-17 - v5) | v5) - v6) | 7uLL) > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 16) & ~v5;
    v11 = (a2 + v5 + 16) & ~v5;
    (*(v4 + 16))(v10, v11);
    *(v10 + v6) = *(v11 + v6);
    v12 = (v10 + v6) & 0xFFFFFFFFFFFFFFF8;
    v13 = (v11 + v6) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 16);
    *(v12 + 8) = *(v13 + 8);
    *(v12 + 16) = v14;
    *(v12 + 24) = *(v13 + 24);
  }

  return v3;
}

uint64_t destroy for AccessibilityPickerStyle.Body.AccessibilityPickerButton(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 24) - 8) + 8))((a1 + *(*(*(a2 + 24) - 8) + 80) + 16) & ~*(*(*(a2 + 24) - 8) + 80));
}

_OWORD *initializeWithCopy for AccessibilityPickerStyle.Body.AccessibilityPickerButton(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;
  *(v10 + 24) = *(v11 + 24);

  return a1;
}

_OWORD *assignWithCopy for AccessibilityPickerStyle.Body.AccessibilityPickerButton(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v12 = v10 & 0xFFFFFFFFFFFFFFF8;
  v13 = v11 & 0xFFFFFFFFFFFFFFF8;
  v14 = *((v11 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v12 + 8) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v12 + 16) = v14;

  *(v12 + 24) = *(v13 + 24);
  return a1;
}

_OWORD *initializeWithTake for AccessibilityPickerStyle.Body.AccessibilityPickerButton(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v10 &= 0xFFFFFFFFFFFFFFF8;
  v11 &= 0xFFFFFFFFFFFFFFF8;
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 24) = *(v11 + 24);
  return a1;
}

_OWORD *assignWithTake for AccessibilityPickerStyle.Body.AccessibilityPickerButton(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 16) & ~v6;
  v8 = (a2 + v6 + 16) & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24);
  v10 = v9 + v7;
  v11 = v9 + v8;
  *v10 = *v11;
  v12 = v10 & 0xFFFFFFFFFFFFFFF8;
  v13 = v11 & 0xFFFFFFFFFFFFFFF8;
  *((v10 & 0xFFFFFFFFFFFFFFF8) + 8) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v12 + 24) = *(v13 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityPickerStyle.Body.AccessibilityPickerButton(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 16] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for AccessibilityPickerStyle.Body.AccessibilityPickerButton(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
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
  v10 = ((((v9 + 16) & ~v9) + *(*(*(a4 + 24) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 25;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v17 = *(v6 + 56);
        v18 = &a1[v9 + 16] & ~v9;

        v17(v18);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        *(a1 + 1) = 0;
      }

      else
      {
        *a1 = a2 - 1;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for AccessibilityListStyle.Body.AccessibilityList()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AccessibilityListStyle.Body.AccessibilityList(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(v11 + 1, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    *__dst = *a2;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v11;
    v17 = *(v5 + 16);

    v17(v16 + 1, v11 + 1, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

uint64_t destroy for AccessibilityListStyle.Body.AccessibilityList(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~v4;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = v3;
  if ((*(v3 + 84) & 0x80000000) != 0)
  {
    result = (*(v3 + 48))((v6 + v4 + 8) & v5);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v7 = *v6;
  if (*v6 >= 0xFFFFFFFF)
  {
    LODWORD(v7) = -1;
  }

  result = (v7 + 1);
  if (v7 == -1)
  {
LABEL_7:

    v9 = *(v10 + 8);

    return v9((v6 + v4 + 8) & v5, v2);
  }

  return result;
}

void *initializeWithCopy for AccessibilityListStyle.Body.AccessibilityList(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = *(v4 + 16);
    v19 = a1;

    v18(v16 & v6, v17 & v6, v3);
    return v19;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithCopy for AccessibilityListStyle.Body.AccessibilityList(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v6 + 64);
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v6 + 64);
    v19 = *(v6 + 48);
    v22 = v19((v12 + v8 + 8) & v9, v7, v5);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v4 = a1;
    v15 = v19((v13 + v8 + 8) & v9, v7, v5);
    v12 = v24;
    v3 = a2;
    v11 = v23;
    v10 = (v8 + 16) & ~v8;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      v17 = v10 + v11;
      goto LABEL_10;
    }

    *v4 = *v3;
    *v12 = *v13;
    v21 = *(v6 + 16);

    v21((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v5);
    return v4;
  }

  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v12 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v12 = *v13;

    (*(v6 + 24))((v12 + v8 + 8) & v9, (v13 + v8 + 8) & v9, v5);
    return v4;
  }

  v16 = v11;

  (*(v6 + 8))((v12 + v8 + 8) & v9, v5);
  v17 = v10 + v16;
LABEL_10:

  return memcpy(v4, v3, v17);
}

void *initializeWithTake for AccessibilityListStyle.Body.AccessibilityList(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = a1;
    (*(v4 + 32))(v16 & v6, v17 & v6, v3);
    return v18;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithTake for AccessibilityListStyle.Body.AccessibilityList(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = (v7 + 16) & ~v7;
  v10 = *(v5 + 64);
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0x80000000) != 0)
  {
    v16 = *(v5 + 48);
    v17 = *(a3 + 24);
    v21 = v16((v11 + v7 + 8) & v8, v6, v17);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v6;
    v12 = v17;
    v19 = v17;
    v9 = (v7 + 16) & ~v7;
    v4 = a1;
    v15 = v16((v13 + v7 + 8) & v8, v18, v19);
    v3 = a2;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *v4 = *v3;
    *v11 = *v13;
    (*(v5 + 32))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  v12 = *(a3 + 24);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v11 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v11 = *v13;

    (*(v5 + 40))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  (*(v5 + 8))((v11 + v7 + 8) & v8, v12);
LABEL_9:

  return memcpy(v4, v3, v9 + v10);
}

uint64_t getEnumTagSinglePayload for AccessibilityListStyle.Body.AccessibilityList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((v16 + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 16) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void storeEnumTagSinglePayload for AccessibilityListStyle.Body.AccessibilityList(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 24) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

void type metadata accessor for ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityRepresentableStyleModifier>, StyleContextWriter<AccessibilityRepresentableStyleContext>>, ProgressViewStyleModifier<AccessibilityProgressViewStyle>>, PickerStyleWriter<AccessibilityPickerStyle>>, ListStyleWriter<AccessibilityListStyle>>, SliderStyleModifier<AccessibilitySliderStyle>>, StepperStyleModifier<AccessibilityStepperStyle>>, GroupBoxStyleModifier<AccessibilityGroupBoxStyle>>, ControlGroupStyleModifier<AccessibilityControlGroupStyle>>, MenuStyleModifier<AccessibilityMenuStyle>>, _EnvironmentKeyWritingModifier<AnySegmentedControlStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Button<Subview> and conformance Button<A>()
{
  result = lazy protocol witness table cache variable for type Button<Subview> and conformance Button<A>;
  if (!lazy protocol witness table cache variable for type Button<Subview> and conformance Button<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for Button);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Button<Subview> and conformance Button<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>>, AccessibilityContainerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier>, type metadata accessor for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>);
    lazy protocol witness table accessor for type VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(_ConditionalContent<Button<MenuStyleConfiguration.Label>, MenuStyleConfiguration.Label>, Group<GroupElementsOfContent<MenuStyleConfiguration.Content, ForEach<Range<Int>, Int, ModifiedContent<Subview, AccessibilityAttachmentModifier>>>>)>>, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ControlGroupStyleConfiguration.Content, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ControlGroupStyleConfiguration.Content, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ControlGroupStyleConfiguration.Content, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for ModifiedContent<ControlGroupStyleConfiguration.Content, AccessibilityContainerModifier>, &type metadata for ControlGroupStyleConfiguration.Content, &type metadata for AccessibilityContainerModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ControlGroupStyleConfiguration.Content, AccessibilityContainerModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for HStack<TupleView<(LabeledContentStyleConfiguration.Label, LabeledContentStyleConfiguration.Content)>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>> and conformance VStack<A>(a4, a5);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for TupleView<(GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content)>()
{
  if (!lazy cache variable for type metadata for TupleView<(GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content)>)
  {
    type metadata accessor for (Badge, Spacer)(255, &lazy cache variable for type metadata for (GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content));
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(GroupBoxStyleConfiguration.Label, GroupBoxStyleConfiguration.Content)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityControlStyle<StepperStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityControlStyle<StepperStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityControlStyle<StepperStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityControlStyle<StepperStyleConfiguration.Label>, &type metadata for StepperStyleConfiguration.Label, &protocol witness table for StepperStyleConfiguration.Label, type metadata accessor for AccessibilityControlStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityControlStyle<StepperStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityControlStyle<SliderStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>()
{
  result = lazy protocol witness table cache variable for type AccessibilityControlStyle<SliderStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>;
  if (!lazy protocol witness table cache variable for type AccessibilityControlStyle<SliderStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>)
  {
    type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for AccessibilityControlStyle<SliderStyleConfiguration.Label>, &type metadata for SliderStyleConfiguration.Label, &protocol witness table for SliderStyleConfiguration.Label, type metadata accessor for AccessibilityControlStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityControlStyle<SliderStyleConfiguration.Label> and conformance AccessibilityControlStyle<A>);
  }

  return result;
}

void type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>> and conformance VStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for HStack<TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)>>)
  {
    type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, DisclosureGroupStyleConfiguration.Content?)>(255, &lazy cache variable for type metadata for TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)> and conformance TupleView<A>, &lazy cache variable for type metadata for TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)>, type metadata accessor for (ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?));
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)>>);
    }
  }
}

void type metadata accessor for (ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?)()
{
  if (!lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?))
  {
    v0 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?, &type metadata for ProgressViewStyleConfiguration.Label, MEMORY[0x1E69E6720]);
    _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label?, ProgressViewStyleConfiguration.CurrentValueLabel?));
    }
  }
}

uint64_t instantiation function for generic protocol witness table for AccessibilityListStyle.Body<A>.AccessibilityList<A1>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t partial apply for closure #2 in AccessibilityPickerStyle.Body.AccessibilityPickerButton.body.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton();
  result = (*(v1 + *(v5 + 60) + v4))(v5, v6, v7, v8);
  *a1 = 3;
  return result;
}

uint64_t type metadata completion function for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-65 - v7) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *(a2 + 3);
    *(a1 + 24) = v12;
    (**(v12 - 8))(a1);
    v14 = a2[5];
    v15 = a2[6];
    v3[5] = v14;
    v3[6] = v15;
    v3[7] = a2[7];
    v16 = v3 + 71;
    v17 = ((a2 + 71) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v19 = v14;

    if ((v6 & 0x80000000) != 0)
    {
      v22 = (*(v5 + 48))(v18 + 1, v6, v4);
      v21 = (v16 & 0xFFFFFFFFFFFFFFF8);
      if (v22)
      {
LABEL_13:
        memcpy(v21, v17, v8);
        return v3;
      }
    }

    else
    {
      v20 = *v18;
      if (*v18 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = (v16 & 0xFFFFFFFFFFFFFFF8);
      if (v20 != -1)
      {
        goto LABEL_13;
      }
    }

    *v21 = *v17;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v18;
    v24 = *(v5 + 16);

    v24(v23 + 1, v18 + 1, v4);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = (v11 + ((v7 + 16) & ~(v7 | 7)));

  return v3;
}

uint64_t destroy for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (a1 + (v6 | 7) + 64) & ~(v6 | 7);
  v8 = ~v6;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = v5;
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    result = (*(v5 + 48))((v9 + v6 + 8) & v8);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v10 = *v9;
  if (*v9 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  result = (v10 + 1);
  if (v10 == -1)
  {
LABEL_7:

    v12 = *(v13 + 8);

    return v12((v9 + v6 + 8) & v8, v4);
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 | 7) + 64;
  v13 = ((v12 + a1) & ~(v11 | 7));
  v14 = ((v12 + a2) & ~(v11 | 7));
  v15 = *(v10 + 84);
  v16 = ~v11;
  v24 = *(v10 + 64);
  v17 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = v7;

  if ((v15 & 0x80000000) == 0)
  {
    v19 = *v17;
    if (*v17 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v13 = *v14;
    v20 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v17;
    v21 = v20 + v11 + 8;
    v22 = *(v10 + 16);

    v22(v21 & v16, (v17 + v11 + 8) & v16, v9);
    return a1;
  }

  if (!(*(v10 + 48))((v17 + v11 + 8) & v16, v15, v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v13, v14, ((v11 + 16) & ~v11) + v24);
  return a1;
}

uint64_t *assignWithCopy for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v6 = a2[5];
  v7 = a1[5];
  a1[5] = v6;
  v8 = v6;

  a1[6] = a2[6];

  a1[7] = a2[7];
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 | 7) + 64;
  v13 = ((a1 + v12) & ~(v11 | 7));
  v14 = a2 + v12;
  v15 = (v14 & ~(v11 | 7));
  v16 = *(v10 + 84);
  v17 = ~v11;
  v18 = (v11 + 16) & ~v11;
  v19 = *(v10 + 64);
  v20 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v16 & 0x80000000) != 0)
  {
    v35 = v14 & ~(v11 | 7);
    v28 = *(v10 + 48);
    v34 = *(*(v9 - 8) + 64);
    v33 = v28((v20 + v11 + 8) & ~v11, v16, v9);
    v21 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = ~v11;
    v23 = v28((v21 + v11 + 8) & ~v11, v16, v9);
    v19 = v34;
    v18 = (v11 + 16) & ~v11;
    v20 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
    v15 = v35;
    if (!v33)
    {
LABEL_5:
      v24 = v20;
      if (!v23)
      {
        *v13 = *v15;

        *v24 = *v21;

        (*(v10 + 24))((v24 + v11 + 8) & v17, (v21 + v11 + 8) & v17, v9);
        return a1;
      }

      v25 = v18;
      v26 = v19;

      (*(v10 + 8))((v24 + v11 + 8) & v17, v9);
      v27 = v25 + v26;
      goto LABEL_10;
    }
  }

  else
  {
    v21 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 + 1;
    if (*v20 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v23)
  {
    *v13 = *v15;
    *v20 = *v21;
    v29 = v9;
    v30 = v20 + v11 + 8;
    v31 = *(v10 + 16);

    v31(v30 & v17, (v21 + v11 + 8) & v17, v29);
    return a1;
  }

  v27 = v18 + v19;
LABEL_10:
  memcpy(v13, v15, v27);
  return a1;
}

_OWORD *initializeWithTake for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | 7) + 64;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  v12 = ~v8;
  v13 = *(v7 + 64);
  v14 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v15 = *v14;
    if (*v14 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    if (v15 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v10 = *v11;
    v16 = (v10 + 15);
    *(v16 & 0xFFFFFFFFFFFFFFF8) = *v14;
    (*(v7 + 32))((v8 + 8 + (v16 & 0xFFFFFFFFFFFFFFF8)) & v12, (v14 + v8 + 8) & v12, v6);
    return a1;
  }

  if (!(*(v7 + 48))((v14 + v8 + 8) & v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v10, v11, ((v8 + 16) & ~v8) + v13);
  return a1;
}

uint64_t assignWithTake for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 | 7) + 64;
  v13 = ((v12 + a1) & ~(v11 | 7));
  v14 = ((v12 + a2) & ~(v11 | 7));
  v15 = *(v10 + 84);
  v16 = ~v11;
  v17 = (v11 + 16) & ~v11;
  v18 = *(v10 + 64);
  v19 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v15 & 0x80000000) != 0)
  {
    v30 = v14;
    v26 = *(v10 + 48);
    v29 = *(v10 + 64);
    v28 = v26((v19 + v11 + 8) & ~v11, v15, v9);
    v20 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v16 = ~v11;
    v22 = v26((v20 + v11 + 8) & ~v11, v15, v9);
    v18 = v29;
    v17 = (v11 + 16) & ~v11;
    v14 = v30;
    if (!v28)
    {
LABEL_5:
      if (!v22)
      {
        *v13 = *v14;

        *v19 = *v20;

        (*(v10 + 40))((v19 + v11 + 8) & v16, (v20 + v11 + 8) & v16, v9);
        return a1;
      }

      v23 = v17;
      v24 = v18;

      (*(v10 + 8))((v19 + v11 + 8) & v16, v9);
      v25 = v23 + v24;
      goto LABEL_10;
    }
  }

  else
  {
    v20 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = *v20;
    if (*v20 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v21) = -1;
    }

    v22 = v21 + 1;
    if (*v19 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v22)
  {
    *v13 = *v14;
    *v19 = *v20;
    (*(v10 + 32))((v19 + v11 + 8) & v16, (v20 + v11 + 8) & v16, v9);
    return a1;
  }

  v25 = v17 + v18;
LABEL_10:
  memcpy(v13, v14, v25);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = *(*(*(a3 + 24) - 8) + 64) - (((-17 - v8) | v8) + ((-65 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = ((((a1 + v10 + 64) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
        }

        else
        {
          v20 = *v19;
          if (v20 >= 0xFFFFFFFF)
          {
            LODWORD(v20) = -1;
          }

          v21 = v20 + 1;
        }

        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 3);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - (((-17 - v8) | v8) + ((-65 - v8) | v10)) != 2)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v13 = v12 + ((v11 + 64) & ~(v11 | 7));
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = (&a1[(v11 | 7) + 64] & ~(v11 | 7));
    if (v9 >= a2)
    {
      v26 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v27 = *(v6 + 56);
        v28 = a2 + 1;

        v27((v26 + v11 + 8) & ~v11, v28);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v26 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v26 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (a2 - v8);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
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

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 7) = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t partial apply for closure #1 in closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.body.getter(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.body.getter(a1, v8, v3, v4, v5, v6);
}

uint64_t partial apply for closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() - 8);
  v8 = v1[2];
  v9 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return closure #1 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(v8, v9, v3, v4, v5, v6, a1);
}

uint64_t objectdestroy_105Tm()
{
  v6 = *(v0 + 40);
  v1 = (type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() - 8);
  v2 = (*(*v1 + 80) + 64) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v2);

  v3 = v0 + v2 + v1[15];
  v4 = type metadata accessor for Binding();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    (*(*(v6 - 8) + 8))(v3 + *(v4 + 32), v6);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(unsigned __int8 *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  return closure #2 in AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody.isSelected(at:)(a1, v1[2], v1[3], v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, v6);
}

uint64_t static NavigationLinkPickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for PickerCurrentValueLabel();
  swift_getWitnessTable();
  type metadata accessor for NavigationPickerButton();
  swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for NavigationLinkPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static NavigationLinkPickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for PickerCurrentValueLabel();
  swift_getWitnessTable();
  type metadata accessor for NavigationPickerButton();
  swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _UnaryViewAdaptor();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for NavigationLinkPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t NavigationLinkPickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t NavigationLinkPickerStyle.Body.value.getter()
{
  type metadata accessor for PickerStyleConfiguration.Content();
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for PickerCurrentValueLabel();
  swift_getWitnessTable();
  type metadata accessor for NavigationPickerButton();
  swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return _UnaryViewAdaptor.init(content:)();
}

uint64_t closure #1 in NavigationLinkPickerStyle.Body.value.getter(int a1, _UNKNOWN **a2, _UNKNOWN **a3)
{
  v27 = &type metadata for NavigationLinkPickerStyle;
  v28 = a2;
  v29 = &protocol witness table for NavigationLinkPickerStyle;
  v30 = a3;
  v6 = type metadata accessor for _PickerValue();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  NavigationLinkPickerStyle.Body.base.getter(v25 - v8);
  v10 = *(v7 + 60);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, v11, v12);
  v13 = type metadata accessor for PickerStyleConfiguration();
  (*(*(v13 - 8) + 8))(&v9[v10], v13);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a1;
  v15 = type metadata accessor for PickerStyleConfiguration.Content();
  v16 = type metadata accessor for PickerStyleConfiguration.Label();
  v27 = v15;
  v28 = a2;
  v29 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v30 = a3;
  v17 = type metadata accessor for PickerCurrentValueLabel();
  WitnessTable = swift_getWitnessTable();
  v27 = v16;
  v28 = v17;
  v29 = a2;
  v30 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v31 = WitnessTable;
  v32 = a3;
  v19 = type metadata accessor for NavigationPickerButton();
  v20 = swift_getWitnessTable();
  Group.init<A, B>(subviews:transform:)();
  v27 = v15;
  v28 = v19;
  v29 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v30 = v20;
  type metadata accessor for GroupElementsOfContent();
  v21 = type metadata accessor for Group();
  v25[1] = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v26, v21, v22);
  v23 = *(*(v21 - 8) + 8);
  v23(v26, v21);
  static ViewBuilder.buildExpression<A>(_:)(&v27, v21, v22);
  return v23(&v27, v21);
}

uint64_t closure #1 in closure #1 in NavigationLinkPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41 = a1;
  v42 = a4;
  v6 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = &v34[-v7];
  v39 = type metadata accessor for PickerStyleConfiguration.Content();
  *&v43 = v39;
  *(&v43 + 1) = a2;
  v44 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v45 = a3;
  v40 = type metadata accessor for PickerCurrentValueLabel();
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34[-v10];
  *&v43 = &type metadata for NavigationLinkPickerStyle;
  *(&v43 + 1) = a2;
  v44 = &protocol witness table for NavigationLinkPickerStyle;
  v45 = a3;
  v12 = type metadata accessor for _PickerValue();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34[-v14];
  v16 = type metadata accessor for PickerStyleConfiguration();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34[-v18];
  NavigationLinkPickerStyle.Body.base.getter(v15);
  (*(v17 + 32))(v19, &v15[*(v12 + 52)], v16);
  NavigationLinkPickerStyle.Body.base.getter(v15);
  v20 = *(v13 + 8);
  v35 = *v15;
  v20(v15, v12);
  v21 = v38;
  PickerStyleConfiguration.$selection.getter();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, v22, v23);
  PickerCurrentValueLabel.init(selection:options:)(v21, v24, v39, v11);
  v27 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, v25, v26);
  v29 = v36;
  v28 = v37;
  v30 = v40;
  (*(v37 + 16))(v36, v11, v40, v27);
  outlined init with copy of SubviewsCollection(v41, &v43);
  PickerStyleConfiguration.$selection.getter();
  (*(v28 + 8))(v11, v30);
  (*(v17 + 8))(v19, v16);
  v31 = type metadata accessor for PickerStyleConfiguration.Label();
  WitnessTable = swift_getWitnessTable();
  return NavigationPickerButton.init(label:detailLabel:options:selection:labelAxis:)(WitnessTable, v29, &v43, v21, v35, v31, v30, v42);
}

uint64_t NavigationPickerButton.init(label:detailLabel:options:selection:labelAxis:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v14 = type metadata accessor for NavigationPickerButton();
  (*(*(a7 - 8) + 32))(a8 + v14[17], a2, a7);
  v15 = (a8 + v14[18]);
  v16 = a3[1];
  *v15 = *a3;
  v15[1] = v16;
  v17 = a3[3];
  v15[2] = a3[2];
  v15[3] = v17;
  v18 = v14[19];
  v19 = type metadata accessor for Binding();
  result = (*(*(v19 - 8) + 32))(a8 + v18, a4, v19);
  *(a8 + v14[20]) = a5;
  return result;
}

uint64_t type metadata completion function for NavigationPickerButton()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Binding();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for NavigationPickerButton(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = a1;
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = a3[3];
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8;
  v10 = *(v7 + 64);
  v11 = a3[4] - 8;
  v12 = *v11;
  v13 = *(*v11 + 80);
  v14 = ((v13 + 16) & ~v13) + *(*v11 + 64);
  v15 = v13 | *(v4 + 80) & 0xF8 | v8;
  v16 = (*(*v11 + 80) | *(v7 + 80) | *(v4 + 80)) & 0x100000;
  v17 = v14 - ((-65 - (((v10 + ((v5 + v8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + (v13 | 7))) | v13 | 7);
  if (v15 > 7 || v16 != 0 || v17 > 0x18)
  {
    v20 = *a2;
    *v3 = *a2;
    v3 = (v20 + (((v15 | 7) + 16) & ~(v15 | 7)));
  }

  else
  {
    v21 = ~v8;
    v37 = a3[4];
    (*(v4 + 16))(a1);
    v23 = (a2 + v9) & v21;
    (*(v7 + 16))((v3 + v9) & v21, v23, v6);
    v24 = ((v3 + v9) & v21) + v10;
    v25 = v23 + v10;
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v23 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    v28 = v27[3];
    v26[3] = v28;
    v26[4] = v27[4];
    (**(v28 - 8))(v26, v27);
    v29 = v27[5];
    v26[5] = v29;
    v26[6] = v27[6];
    v26[7] = v27[7];
    v30 = ((v24 + 71) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((v25 + 71) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    v34 = *(v12 + 16);
    v35 = v29;

    v34(v32 + 1, v33 + 1, v37);
    *(v30 + v14) = *(v31 + v14);
  }

  return v3;
}

uint64_t destroy for NavigationPickerButton(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v9);

  v10 = a2[4];
  v14 = *(v10 - 8);
  v11 = *(v14 + 80);

  v12 = *(v14 + 8);

  return v12((v11 + ((((v9 + (v11 | 7) + 64) & ~(v11 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11, v10);
}

uint64_t initializeWithCopy for NavigationPickerButton(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a3[2] - 8) + 16;
  (*v5)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v5 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[3];
  v14[3] = v16;
  v14[4] = v15[4];
  (**(v16 - 8))(v14, v15);
  v17 = v15[5];
  v14[5] = v17;
  v14[6] = v15[6];
  v14[7] = v15[7];
  v18 = a3[4];
  v19 = *(v18 - 8);
  v32 = *(v19 + 16);
  v20 = v19 + 16;
  v21 = *(v19 + 80);
  v22 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v14 + v21 + 64) & v22);
  v24 = ((v15 + v21 + 64) & v22);
  *v23 = *v24;
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;
  v27 = v25 + v21 + 8;
  v28 = v26 + v21 + 8;
  v29 = v17;

  v32(v27 & ~v21, v28 & ~v21, v18);
  v30 = *(v20 + 48) + ((v21 + 16) & ~v21);
  *(v23 + v30) = *(v24 + v30);
  return a1;
}

uint64_t assignWithCopy for NavigationPickerButton(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = *(v6 + 40) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 24))(v11, v12);
  v13 = *(v8 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v14, v15);
  v16 = v15[5];
  v17 = v14[5];
  v14[5] = v16;
  v18 = v16;

  v14[6] = v15[6];

  v14[7] = v15[7];
  v19 = a3[4];
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v14 + v21 + 64) & v22);
  v24 = ((v15 + v21 + 64) & v22);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  (*(v20 + 24))((v25 + v21 + 8) & ~v21, (v26 + v21 + 8) & ~v21, v19);
  v27 = *(v20 + 64) + ((v21 + 16) & ~v21);
  *(v23 + v27) = *(v24 + v27);
  return a1;
}

uint64_t initializeWithTake for NavigationPickerButton(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 32;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = *(v6 + 32) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 32))(v11, v12);
  v13 = *(v8 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = v15[3];
  v18 = *v15;
  v17 = v15[1];
  v14[2] = v15[2];
  v14[3] = v16;
  *v14 = v18;
  v14[1] = v17;
  v19 = *(a3[4] - 8);
  v20 = *(v19 + 80);
  v21 = *(v19 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v22 = ((v14 + v20 + 64) & v21);
  v23 = ((v15 + v20 + 64) & v21);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = v19 + 32;
  (*(v19 + 32))((v24 + v20 + 8) & ~v20, (v25 + v20 + 8) & ~v20);
  v27 = *(v26 + 32) + ((v20 + 16) & ~v20);
  *(v22 + v27) = *(v23 + v27);
  return a1;
}

uint64_t assignWithTake for NavigationPickerButton(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 40;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 40;
  v9 = *(v7 + 80);
  v10 = *(v6 + 24) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 40))(v11, v12);
  v13 = *(v8 + 24) + 7;
  v14 = (v13 + v11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + v12) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v14);
  v16 = *v15;
  v17 = *(v15 + 16);
  *(v14 + 32) = *(v15 + 32);
  *v14 = v16;
  *(v14 + 16) = v17;
  v18 = *(v14 + 40);
  *(v14 + 40) = *(v15 + 40);

  *(v14 + 48) = *(v15 + 48);

  *(v14 + 56) = *(v15 + 56);
  v19 = a3[4];
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v23 = ((v21 + 64 + v14) & v22);
  v24 = ((v21 + 64 + v15) & v22);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  (*(v20 + 40))((v25 + v21 + 8) & ~v21, (v26 + v21 + 8) & ~v21, v19);
  v27 = *(v20 + 64) + ((v21 + 16) & ~v21);
  *(v23 + v27) = *(v24 + v27);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationPickerButton(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[3];
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a3[4] - 8);
  v11 = *(v7 + 80);
  v12 = *(v10 + 80);
  if (*(v10 + 84) <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(a3[2] - 8) + 64) + v11;
  v15 = *(*(v4 - 8) + 64) + 7;
  v16 = v12 | 7;
  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v17 = ~(((-17 - v12) | v12) - *(*(a3[4] - 8) + 64) + ((-65 - v16 - ((v15 + (v14 & ~v11)) & 0xFFFFFFFFFFFFFFF8)) | v16));
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_33:
      if (v6 == v13)
      {
        v25 = *(v5 + 48);

        return v25();
      }

      else
      {
        v26 = (a1 + v14) & ~v11;
        if (v8 == v13)
        {
          v27 = *(v7 + 48);

          return v27(v26, v8, v4);
        }

        else
        {
          v28 = (v15 + v26) & 0xFFFFFFFFFFFFFFF8;
          if ((v13 & 0x80000000) != 0)
          {
            v30 = *(v10 + 48);

            return v30((v12 + ((((v28 + v16 + 64) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12);
          }

          else
          {
            v29 = *(v28 + 24);
            if (v29 >= 0xFFFFFFFF)
            {
              LODWORD(v29) = -1;
            }

            return (v29 + 1);
          }
        }
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_33;
  }

LABEL_20:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (((-17 - v12) | v12) - *(*(a3[4] - 8) + 64) + ((-65 - v16 - ((v15 + (v14 & ~v11)) & 0xFFFFFFF8)) | v16) == -1)
  {
    v24 = 0;
  }

  else
  {
    if (v17 <= 3)
    {
      v23 = ~(((-17 - v12) | v12) - *(*(a3[4] - 8) + 64) + ((-65 - v16 - ((v15 + (v14 & ~v11)) & 0xFFFFFFF8)) | v16));
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  return v13 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for NavigationPickerButton(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = a4[3];
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(v4 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(a4[4] - 8);
  v11 = *(*(a4[2] - 8) + 64);
  v12 = *(v7 + 80);
  v13 = *(*(v4 - 8) + 64);
  v14 = *(v10 + 80);
  if (*(v10 + 84) <= 0x7FFFFFFFu)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  v17 = v11 + v12;
  v18 = v13 + 7;
  v19 = (v14 + ((v13 + 7 + ((v11 + v12) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 64) & ~(v14 | 7);
  v20 = ((v14 + 16) & ~v14) + *(*(a4[4] - 8) + 64);
  v21 = v20 + v19 + 1;
  if (a3 > v16)
  {
    if (v21 <= 3)
    {
      v26 = ((a3 - v16 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v22 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v26 < 2)
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  if (v16 < a2)
  {
    v23 = ~v16 + a2;
    if (v21 < 4)
    {
      v25 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        v28 = a1;
        bzero(a1, v21);
        a1 = v28;
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v28 = v27;
            if (v22 > 1)
            {
LABEL_56:
              if (v22 == 2)
              {
                *&a1[v21] = v25;
              }

              else
              {
                *&a1[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v28 = v23;
            if (v22 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v24 = a1;
      bzero(a1, v21);
      a1 = v24;
      *v24 = v23;
      v25 = 1;
      if (v22 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v22)
    {
      a1[v21] = v25;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v6 == v16)
  {
    v29 = *(v5 + 56);

    v29();
  }

  else
  {
    v30 = &a1[v17] & ~v12;
    if (v8 == v16)
    {
      v31 = *(v7 + 56);

      v31(v30);
    }

    else
    {
      v32 = (v18 + v30) & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) != 0)
      {
        v33 = ((v32 + (v14 | 7) + 64) & ~(v14 | 7));
        if (v15 >= a2)
        {
          v37 = *(v10 + 56);

          v37((v14 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14);
        }

        else
        {
          if (v20 <= 3)
          {
            v34 = ~(-1 << (8 * v20));
          }

          else
          {
            v34 = -1;
          }

          if (v20)
          {
            v35 = v34 & (~v15 + a2);
            if (v20 <= 3)
            {
              v36 = v20;
            }

            else
            {
              v36 = 4;
            }

            bzero(v33, v20);
            if (v36 > 2)
            {
              if (v36 == 3)
              {
                *v33 = v35;
                v33[2] = BYTE2(v35);
              }

              else
              {
                *v33 = v35;
              }
            }

            else if (v36 == 1)
            {
              *v33 = v35;
            }

            else
            {
              *v33 = v35;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(v32 + 56) = 0;
        *(v32 + 40) = 0u;
        *(v32 + 24) = 0u;
        *(v32 + 8) = 0u;
        *v32 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v32 + 24) = a2 - 1;
      }
    }
  }
}

uint64_t NavigationPickerButton.DetailView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(v6 + 32);
  v28 = type metadata accessor for Binding();
  v33 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25[0] = v25 - v8;
  v26 = *(a1 + 40);
  v9 = *(*(a1 + 64) + 8);
  v29 = *(a1 + 64);
  v30 = v9;
  v10 = v7;
  v32 = type metadata accessor for _BindingActionModifier();
  v11 = type metadata accessor for ModifiedContent();
  v34 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v27 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31 = v25 - v14;
  v25[1] = *(a1 + 84);
  Binding.projectedValue.getter();
  (*(v4 + 16))(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v15 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = *(a1 + 16);
  *(v16 + 32) = v10;
  *(v16 + 40) = v26;
  *(v16 + 48) = *(a1 + 48);
  v17 = *(a1 + 72);
  *(v16 + 64) = v29;
  *(v16 + 72) = v17;
  (*(v4 + 32))(v16 + v15, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v18 = v25[0];
  v19 = v27;
  View._onBindingChange<A>(_:perform:)();

  (*(v33 + 8))(v18, v28);
  WitnessTable = swift_getWitnessTable();
  v36 = v17;
  v37 = WitnessTable;
  v21 = swift_getWitnessTable();
  v22 = v31;
  static ViewBuilder.buildExpression<A>(_:)(v19, v11, v21);
  v23 = *(v34 + 8);
  v23(v19, v11);
  static ViewBuilder.buildExpression<A>(_:)(v22, v11, v21);
  return (v23)(v22, v11);
}

uint64_t closure #1 in NavigationPickerButton.DetailView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v14[7] = a10;
  v11 = type metadata accessor for NavigationPickerButton.DetailView();
  specialized Environment.wrappedValue.getter(*(a2 + *(v11 + 88)), *(a2 + *(v11 + 88) + 8), *(a2 + *(v11 + 88) + 16) | (*(a2 + *(v11 + 88) + 17) << 8), v14);
  _s7SwiftUI4FontVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v13);
  v13 = 0;
  dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t NavigationPickerButton.DetailView.init(selection:content:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  v12 = *(a3 + 17);
  v13 = *(a3 + 16);
  v8 = type metadata accessor for Binding();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for NavigationPickerButton.DetailView();
  result = a2();
  v11 = a4 + *(v9 + 88);
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v13;
  *(v11 + 17) = v12;
  return result;
}

uint64_t NavigationPickerButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v85 = *(a1 - 1);
  v87 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v86 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 32);
  v83 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v61 - v6;
  v7 = a1[2];
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v11 = a1[7];
  *&v100 = v7;
  *(&v100 + 1) = v5;
  v76 = v5;
  v101 = v10;
  v102 = v11;
  v12 = v10;
  v75 = v11;
  v89 = type metadata accessor for ListPicker();
  v84 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v78 = &v61 - v13;
  v77 = a1;
  v14 = a1[6];
  *&v100 = a1[3];
  *(&v100 + 1) = v14;
  v15 = v100;
  v16 = v14;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabeledContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v17 = type metadata accessor for ModifiedContent();
  *&v100 = v7;
  *(&v100 + 1) = v15;
  v101 = v5;
  v102 = &type metadata for BoundInputsView;
  v18 = v12;
  v74 = v12;
  v103 = v12;
  v104 = v16;
  v105 = v11;
  v106 = &protocol witness table for BoundInputsView;
  v19 = type metadata accessor for NavigationPickerButton.DetailView();
  *&v100 = v15;
  *(&v100 + 1) = v16;
  v20 = v15;
  v71 = v15;
  v72 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v98 = OpaqueTypeConformance2;
  v99 = v22;
  v23 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v96 = v18;
  v97 = WitnessTable;
  v94 = swift_getWitnessTable();
  v95 = &protocol witness table for _LabeledContentStyleModifier<A>;
  v73 = v23;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  *&v100 = v17;
  *(&v100 + 1) = v19;
  v101 = v25;
  v102 = v26;
  type metadata accessor for NavigationLink();
  *&v100 = MEMORY[0x1E69E73E0];
  *(&v100 + 1) = v20;
  v101 = MEMORY[0x1E6982070];
  v102 = v16;
  type metadata accessor for AccessibilityProxyTransformModifier();
  v27 = type metadata accessor for ModifiedContent();
  v67 = v27;
  v28 = v89;
  v29 = swift_getWitnessTable();
  v66 = v29;
  v92 = swift_getWitnessTable();
  v93 = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v65 = swift_getWitnessTable();
  *&v100 = v28;
  *(&v100 + 1) = v27;
  v101 = v29;
  v102 = v65;
  v63 = type metadata accessor for ViewInputsBinding();
  v69 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v61 - v30;
  v68 = type metadata accessor for ModifiedContent();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v64 = &v61 - v34;
  v35 = v79;
  v36 = v81;
  (*(v80 + 16))(v79, v81, v7, v33);
  v37 = v77;
  outlined init with copy of SubviewsCollection(v36 + *(v77 + 18), &v100);
  v38 = v82;
  Binding.projectedValue.getter();
  v39 = v78;
  v40 = v38;
  v41 = v7;
  v42 = v76;
  v43 = v74;
  v44 = v75;
  ListPicker.init(label:options:selection:)(v35, &v100, v40, v7, v78);
  v45 = v85;
  v46 = v86;
  (*(v85 + 16))(v86, v36, v37);
  v47 = (*(v45 + 80) + 64) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *&v49 = v41;
  *(&v49 + 1) = v71;
  *&v50 = v42;
  *(&v50 + 1) = v43;
  *(v48 + 16) = v49;
  *(v48 + 32) = v50;
  *(v48 + 48) = v72;
  *(v48 + 56) = v44;
  (*(v45 + 32))(v48 + v47, v46, v37);
  v51 = v62;
  v52 = v89;
  View.bindInputs<A>(transform:)(partial apply for closure #1 in NavigationPickerButton.body.getter, v48, v89, v67, v66, v65, v62);

  v53 = (*(v84 + 8))(v39, v52);
  v54 = v61;
  v55 = v63;
  MEMORY[0x18D00A570](v53, v63, MEMORY[0x1E6980C28], &protocol witness table for ViewInputsBinding<A, B>);
  (*(v69 + 8))(v51, v55);
  v90 = &protocol witness table for ViewInputsBinding<A, B>;
  v91 = MEMORY[0x1E6980C20];
  v56 = v68;
  v57 = swift_getWitnessTable();
  v58 = v64;
  static ViewBuilder.buildExpression<A>(_:)(v54, v56, v57);
  v59 = *(v70 + 8);
  v59(v54, v56);
  static ViewBuilder.buildExpression<A>(_:)(v58, v56, v57);
  return (v59)(v58, v56);
}

uint64_t ListPicker.init(label:options:selection:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for ListPicker();
  v9 = (a5 + *(v8 + 52));
  v10 = a2[1];
  *v9 = *a2;
  v9[1] = v10;
  v11 = a2[3];
  v9[2] = a2[2];
  v9[3] = v11;
  v12 = *(v8 + 56);
  v13 = type metadata accessor for Binding();
  return (*(*(v13 - 8) + 32))(a5 + v12, a3, v13);
}

uint64_t closure #1 in NavigationPickerButton.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v62 = a8;
  v73 = a6;
  v74 = a5;
  v70 = a2;
  v71 = a9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
  type metadata accessor for ModifiedContent();
  v75 = a3;
  type metadata accessor for LabeledContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v76 = type metadata accessor for ModifiedContent();
  *&v108 = v73;
  *(&v108 + 1) = a7;
  *&v109 = a8;
  *(&v109 + 1) = &protocol witness table for BoundInputsView;
  v14 = type metadata accessor for NavigationPickerButton.DetailView();
  v15 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v69 = MEMORY[0x1E697E858];
  v102 = v73;
  WitnessTable = swift_getWitnessTable();
  v16 = v73;
  v100 = swift_getWitnessTable();
  v101 = &protocol witness table for _LabeledContentStyleModifier<A>;
  v65 = swift_getWitnessTable();
  v64 = swift_getWitnessTable();
  *&v106 = v76;
  *(&v106 + 1) = v14;
  v58 = v14;
  *&v107 = v65;
  *(&v107 + 1) = v64;
  v61 = type metadata accessor for NavigationLink();
  v68 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v55 - v17;
  *&v106 = MEMORY[0x1E69E73E0];
  *(&v106 + 1) = a4;
  *&v107 = MEMORY[0x1E6982070];
  *(&v107 + 1) = a7;
  type metadata accessor for AccessibilityProxyTransformModifier();
  v18 = type metadata accessor for ModifiedContent();
  v19 = *(v18 - 8);
  v66 = v18;
  v67 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v63 = &v55 - v22;
  v23 = v74;
  v24 = type metadata accessor for Binding();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v55 - v25;
  v56 = *(v14 - 8);
  v27 = v56;
  MEMORY[0x1EEE9AC00](v28);
  v57 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v72 = &v55 - v31;
  v32 = a1[3];
  v108 = a1[2];
  v109 = v32;
  v110 = a1[4];
  v111 = *(a1 + 10);
  v33 = a1[1];
  v106 = *a1;
  v107 = v33;
  v34 = v75;
  KeyPath = v75;
  v95 = a4;
  v96 = v23;
  v97 = v16;
  v98 = v15;
  v55 = v15;
  v35 = v62;
  v99 = v62;
  type metadata accessor for NavigationPickerButton();
  type metadata accessor for Binding();
  v36 = v70;
  Binding.projectedValue.getter();
  v91 = &v106;
  KeyPath = swift_getKeyPath();
  v95 = 0;
  LOWORD(v96) = 0;
  v37 = v35;
  v38 = v72;
  v39 = v26;
  v40 = v74;
  NavigationPickerButton.DetailView.init(selection:content:dismiss:)(v39, partial apply for closure #1 in closure #1 in NavigationPickerButton.body.getter, &KeyPath, v72);
  v41 = *(v27 + 16);
  v42 = v57;
  v43 = v58;
  v41(v57, v38, v58);
  v84 = v34;
  v85 = a4;
  v44 = v73;
  v86 = v40;
  v87 = v73;
  v45 = v55;
  v88 = v55;
  v89 = v37;
  v90 = v36;
  v46 = v60;
  NavigationLink.init(destination:label:)(v42, partial apply for closure #2 in closure #1 in NavigationPickerButton.body.getter, v76, v43, v64, v60);
  v77 = v75;
  v78 = a4;
  v79 = v40;
  v80 = v44;
  v81 = v45;
  v82 = v37;
  v83 = v36;
  v47 = v61;
  v48 = swift_getWitnessTable();
  v49 = v59;
  View.accessibilityValue<A>(value:)(partial apply for closure #3 in closure #1 in NavigationPickerButton.body.getter, v47, a4, v48, v45, v59);
  (*(v68 + 8))(v46, v47);
  (*(v56 + 8))(v72, v43);
  v92 = v48;
  v93 = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v50 = v66;
  v51 = swift_getWitnessTable();
  v52 = v63;
  static ViewBuilder.buildExpression<A>(_:)(v49, v50, v51);
  v53 = *(v67 + 8);
  v53(v49, v50);
  static ViewBuilder.buildExpression<A>(_:)(v52, v50, v51);
  return (v53)(v52, v50);
}

uint64_t closure #2 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a4;
  v42 = a1;
  v40 = a8;
  v61 = a3;
  v62 = a6;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
  v35 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for LabeledContent();
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v31 - v14;
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v15 = type metadata accessor for ModifiedContent();
  v38 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v36 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v31 - v18;
  v50 = a2;
  v51 = a3;
  v52 = v41;
  v53 = a5;
  v54 = a6;
  v55 = a7;
  v19 = a7;
  v32 = a7;
  v56 = v42;
  v43 = a2;
  v44 = a3;
  v45 = v41;
  v46 = a5;
  v20 = a5;
  v47 = a6;
  v48 = v19;
  v49 = v42;
  v61 = a3;
  v62 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v67 = OpaqueTypeConformance2;
  v68 = v22;
  v33 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v24 = v34;
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter, partial apply for closure #2 in closure #2 in closure #1 in NavigationPickerButton.body.getter, v34);
  v61 = a2;
  v62 = a3;
  v63 = v41;
  v64 = v20;
  v65 = a6;
  v66 = v32;
  LOBYTE(v61) = *(v42 + *(type metadata accessor for NavigationPickerButton() + 80));
  v59 = v20;
  v60 = WitnessTable;
  v25 = swift_getWitnessTable();
  lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle();
  v26 = v36;
  View.labeledContentStyle<A>(_:)(&v61, v13, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, v25);
  (*(v39 + 8))(v24, v13);
  v57 = v25;
  v58 = &protocol witness table for _LabeledContentStyleModifier<A>;
  v27 = swift_getWitnessTable();
  v28 = v37;
  static ViewBuilder.buildExpression<A>(_:)(v26, v15, v27);
  v29 = *(v38 + 8);
  v29(v26, v15);
  static ViewBuilder.buildExpression<A>(_:)(v28, v15, v27);
  return (v29)(v28, v15);
}

uint64_t closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a5;
  v45 = a7;
  v42 = a2;
  v43 = a4;
  v46 = a8;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  v54 = a7;
  v11 = type metadata accessor for NavigationPickerButton();
  v12 = *(v11 - 8);
  v37 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v49 = a3;
  v50 = a6;
  v39 = MEMORY[0x1E6981368];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v16 = &v34 - v15;
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
  v17 = type metadata accessor for ModifiedContent();
  v41 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v35 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v38 = &v34 - v20;
  View.accessibilityDisabled()();
  swift_getKeyPath();
  (*(v12 + 16))(v14, a1, v11);
  v21 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v22 = swift_allocObject();
  v23 = v43;
  *(v22 + 2) = v42;
  *(v22 + 3) = a3;
  v25 = v44;
  v24 = v45;
  *(v22 + 4) = v23;
  *(v22 + 5) = v25;
  *(v22 + 6) = a6;
  *(v22 + 7) = v24;
  (*(v12 + 32))(&v22[v21], v14, v11);
  v49 = a3;
  v50 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v35;
  v27 = OpaqueTypeMetadata2;
  View.transformEnvironment<A>(_:transform:)();

  (*(v40 + 8))(v16, v27);
  v29 = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v47 = OpaqueTypeConformance2;
  v48 = v29;
  WitnessTable = swift_getWitnessTable();
  v31 = v38;
  static ViewBuilder.buildExpression<A>(_:)(v28, v17, WitnessTable);
  v32 = *(v41 + 8);
  v32(v28, v17);
  static ViewBuilder.buildExpression<A>(_:)(v31, v17, WitnessTable);
  return (v32)(v31, v17);
}

uint64_t closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t *a1, uint64_t a2)
{
  result = type metadata accessor for NavigationPickerButton();
  if (*(a2 + *(result + 80)))
  {

    result = static Font.subheadline.getter();
    *a1 = result;
  }

  return result;
}

uint64_t closure #3 in closure #1 in NavigationPickerButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v18 = type metadata accessor for NavigationPickerButton();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v18 + 68), a3, a6);
  static ViewBuilder.buildExpression<A>(_:)(v11, a3, a6);
  return (*(v9 + 8))(v11, a3);
}

void type metadata accessor for _EnvironmentKeyTransformModifier<Font?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Font?>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Font?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Font?>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in NavigationPickerButton.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for NavigationPickerButton() - 8);
  v12 = v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80));

  return closure #1 in NavigationPickerButton.body.getter(a1, v12, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t partial apply for closure #1 in closure #1 in NavigationPickerButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = *(v2 + 80);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  return outlined init with copy of BoundInputsView(v2, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t *a1)
{
  v3 = *(type metadata accessor for NavigationPickerButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 64) & ~*(v3 + 80));

  return closure #1 in closure #1 in closure #2 in closure #1 in NavigationPickerButton.body.getter(a1, v4);
}

uint64_t ListPicker.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v40 = a1[3];
  *&v43 = a1[5];
  v32 = a1;
  v46 = type metadata accessor for PickerContentView();
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E69E73E0];
  v62 = v46;
  v63 = MEMORY[0x1E69E73F0];
  v64 = WitnessTable;
  v3 = type metadata accessor for List();
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>();
  v44 = v4;
  v38 = v3;
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  v39 = v5;
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v41 = v6;
  v48 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  *&v49 = a1[2];
  v35 = swift_getWitnessTable();
  v75 = v35;
  IsGrouped = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  v36 = swift_getWitnessTable();
  v73 = v36;
  v74 = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  v71 = swift_getWitnessTable();
  v72 = &protocol witness table for ToggleStyleModifier<A>;
  v37 = swift_getWitnessTable();
  v69 = v37;
  v70 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v67[15] = swift_getWitnessTable();
  v68 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v67[13] = swift_getWitnessTable();
  v67[14] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v67[11] = swift_getWitnessTable();
  v67[12] = v68;
  v8 = swift_getWitnessTable();
  v9 = v32;
  v31 = v32[4];
  v61 = &type metadata for TextPlatformItemListFlags;
  v62 = v7;
  v63 = v49;
  v64 = &protocol witness table for TextPlatformItemListFlags;
  v65 = v8;
  v66 = v31;
  type metadata accessor for PlatformItemListReader();
  v10 = type metadata accessor for StaticIf();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v31 - v14;
  v15 = v40;
  type metadata accessor for Binding();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  v16 = static Array._adoptStorage(_:count:)();
  type metadata accessor for Binding();
  v17 = v42;
  Binding.projectedValue.getter();
  _finalizeUninitializedArray<A>(_:)();
  outlined init with copy of SubviewsCollection(v17 + *(v9 + 13), &v61);
  v18 = v43;
  PickerContentView.init(selection:items:)(v16, &v61, v67);
  *&v19 = v49;
  *(&v19 + 1) = v15;
  v49 = v19;
  *&v20 = v31;
  *(&v20 + 1) = v18;
  v43 = v20;
  v53 = v19;
  v54 = v20;
  v55 = v67;
  v21 = v46;
  List<>.init(content:)(partial apply for closure #1 in ListPicker.body.getter, &v61);
  memset(v59, 0, 32);
  v59[32] = 1;
  v22 = v38;
  MEMORY[0x18D00A570](v60, v59, v38, v44, v35);
  (*(*(v22 - 8) + 8))(&v61, v22);
  v23 = lazy protocol witness table accessor for type AnyFormStyleContext and conformance AnyFormStyleContext();
  v24 = v39;
  View.listStyle<A, B>(_:in:)(v23, v25, v39, &type metadata for InsetGroupedListStyle, &type metadata for AnyFormStyleContext, v36, v23, &v61);
  (*(*(v24 - 8) + 8))(v60, v24);
  v50 = v49;
  v51 = v43;
  v52 = &v61;
  v26 = v37;
  ListPicker.resolvedList<A>(list:)(partial apply for closure #2 in ListPicker.body.getter, v9, v48, v37, v12);
  IsGroupedPredicate = lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  v57 = v26;
  v58 = &protocol witness table for PlatformItemListReader<A, B, C>;
  v27 = swift_getWitnessTable();
  v28 = v33;
  static ViewBuilder.buildExpression<A>(_:)(v12, v10, v27);
  v29 = *(v34 + 8);
  v29(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)(v28, v10, v27);
  v29(v28, v10);
  (*(*(v41 - 8) + 8))(&v61);
  return (*(*(v21 - 8) + 8))(v67, v21);
}