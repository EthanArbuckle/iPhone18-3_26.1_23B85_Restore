uint64_t static ScrollEventStateReader._makeViewList(view:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v13[0] = *a2;
  v13[1] = v4;
  v13[2] = a2[2];
  v5 = _GraphInputs.scrollPhaseState.getter();
  type metadata accessor for ScrollEventStateReader();
  type metadata accessor for _GraphValue();
  LODWORD(v13[0]) = _GraphValue.value.getter();
  DWORD1(v13[0]) = v5;
  v10 = a3;
  View = type metadata accessor for ScrollEventStateReader.MakeView();
  WitnessTable = swift_getWitnessTable();
  v6 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, closure #1 in Attribute.init<A>(_:)partial apply, v9, View, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  _GraphValue.init(_:)();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests()
{
  result = lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests;
  if (!lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateEnqueueRequests and conformance ScrollStateEnqueueRequests);
  }

  return result;
}

void type metadata accessor for Attribute<[ScrollableCollection]>()
{
  if (!lazy cache variable for type metadata for Attribute<[ScrollableCollection]>)
  {
    type metadata accessor for [ScrollableCollection](255, &lazy cache variable for type metadata for [ScrollableCollection], &lazy cache variable for type metadata for ScrollableCollection, MEMORY[0x1E697FA60], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<[ScrollableCollection]>);
    }
  }
}

double CoordinateSpaceNameTransform.value.getter@<D0>(_OWORD *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 8);
  *&v16 = *Value;
  *(&v16 + 1) = v3;
  v4 = *(Value + 32);
  v17 = *(Value + 16);
  v18 = v4;
  type metadata accessor for CGPoint(0);

  v5 = AGGraphGetValue();
  ViewTransform.appendPosition(_:)(*v5);
  v6 = AGGraphGetValue();
  outlined init with copy of CoordinateSpaceNameModifier(v6, &v12);
  v9 = v12;
  if (v15)
  {
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    ViewTransform.appendSizedSpace(id:size:)();
  }

  else
  {
    v10 = v13;
    v11 = v14;
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    ViewTransform.appendSizedSpace(name:size:)();
    outlined destroy of AnyHashable(&v9);
  }

  v7 = v17;
  *a1 = v16;
  a1[1] = v7;
  result = *&v18;
  a1[2] = v18;
  return result;
}

uint64_t View.scrollPosition<A>(id:anchor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a7;
  v18 = a5;
  type metadata accessor for Optional();
  v11 = type metadata accessor for Binding();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v12 + 16))(&v17 - v14, a1, v11, v13);
  (*(v12 + 8))(v15, v11);
  v20[0] = a2;
  v20[1] = a3;
  v21 = a4 & 1;
  type metadata accessor for ValueToScrollPosition();
  swift_getWitnessTable();
  Binding.projecting<A>(_:)();
  outlined init with copy of Binding<ScrollPosition>(v25, v20);
  v22 = a2;
  v23 = a3;
  v24 = a4 & 1;
  MEMORY[0x18D00A570](v20, v18, MEMORY[0x1E6980958], v19);
  outlined destroy of ScrollPositionBindingModifier(v20);
  return outlined destroy of Binding<ScrollPosition>(v25);
}

uint64_t outlined init with copy of Binding<ScrollPosition>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Binding<ScrollPosition>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1)
{
  type metadata accessor for Binding<ScrollPosition>(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.scrollTargetBehavior<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollBehaviorModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.transformScrollEnvironment<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TransformScrollStorageModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t View.scrollIndicators(_:axes:)(_BYTE *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5[0] = *a1;
  v6 = 0;
  v7 = a2;
  return View.transformScrollEnvironment<A>(_:)(v5, a3, &type metadata for TransformScrollIndicators, a4);
}

double ScrollBehaviorModifier.ChildEnvironment.value.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(&v11);
  v9[0] = a1;
  v4 = type metadata accessor for ScrollBehaviorModifier.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](v4, &type metadata for ScrollEnvironmentProperties, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v10, v9);
  type metadata accessor for ScrollEnvironmentStorage();
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  swift_allocObject();
  v9[0] = ScrollEnvironmentStorage.init(_:transform:)(v9, v7);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

  PropertyList.subscript.setter();
  if (*(&v11 + 1))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

    outlined destroy of ScrollEnvironmentProperties(v10);
  }

  else
  {
    outlined destroy of ScrollEnvironmentProperties(v10);
  }

  result = *&v11;
  *a2 = v11;
  return result;
}

double ResetScrollEnvironmentModifier.ResetTransform.update(properties:)(char *__src)
{
  memcpy(__dst, __src, 0x108uLL);
  v2 = MEMORY[0x1E69E7CC0];
  v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v2);
  static EdgeInsets.zero.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static EdgeInsets.zero.getter();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (Axis.Set.contains(_:)())
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v20 = __dst[15];
    v21 = __dst[16];
    v22 = __dst[17];
    v23 = BYTE1(__dst[17]);
  }

  if (Axis.Set.contains(_:)())
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v24 = __dst[18];
    v25 = __dst[19];
    v26 = __dst[20];
    v27 = BYTE1(__dst[20]);
  }

  outlined destroy of ScrollEnvironmentProperties(__dst);
  *__src = 257;
  *(__src + 21) = 0;
  result = 0.0;
  *(__src + 8) = 0u;
  *(__src + 24) = 0u;
  *(__src + 40) = 0u;
  *(__src + 56) = 0u;
  *(__src + 67) = 0u;
  *(__src + 44) = 4;
  *(__src + 12) = v29;
  *(__src + 13) = v3;
  __src[112] = 0;
  __src[120] = v20;
  *(__src + 16) = v21;
  __src[136] = v22;
  __src[137] = v23;
  __src[144] = v24;
  *(__src + 19) = v25;
  __src[160] = v26;
  __src[161] = v27;
  __src[162] = 0;
  __src[163] = 0;
  *(__src + 82) = 0;
  __src[166] = 1;
  __src[199] = 0;
  *(__src + 183) = 0u;
  *(__src + 167) = 0u;
  *(__src + 25) = v5;
  *(__src + 26) = v7;
  *(__src + 27) = v9;
  *(__src + 28) = v11;
  *(__src + 29) = v13;
  *(__src + 30) = v15;
  *(__src + 31) = v17;
  *(__src + 32) = v19;
  return result;
}

uint64_t closure #1 in ScrollBehaviorModifier.ChildEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v10 + 16, a2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v10 + 280, &v10);
  if (v11)
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v10, v7);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 8))(a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  Value = AGGraphGetValue();
  outlined init with copy of ResolvedScrollBehavior(Value, &v10);
  return outlined assign with take of ResolvedScrollBehavior?(&v10, a2 + 8);
}

uint64_t protocol witness for ScrollEnvironmentTransform.update(properties:) in conformance TransformScrollIndicators(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  if ((v4 & 2) == 0)
  {
    if ((v1[16] & 1) == 0)
    {
      return result;
    }

LABEL_5:
    *(result + 144) = v2;
    *(result + 152) = v3;
    return result;
  }

  *(result + 120) = v2;
  *(result + 128) = v3;
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t ScrollBehaviorModifier.ScrollBehaviorProvider.updateValue()(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 12) + 1;
  *(v1 + 12) = v2;
  v13 = *(a1 + 16);
  v11 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  Value = AGGraphGetValue();
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, Value, v11);
  v5 = AGCreateWeakAttribute();
  v6 = v5;
  v7 = HIDWORD(v5);
  v8 = AGCreateWeakAttribute();
  LODWORD(boxed_opaque_existential_1) = v8;
  v9 = HIDWORD(v8);
  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v12, v14);
  v15 = v2;
  v16 = 256;
  v17 = v6;
  v18 = v7;
  v19 = boxed_opaque_existential_1;
  v20 = v9;
  v21 = 0;
  AGGraphSetOutputValue();
  return outlined destroy of AccessibilityRelationshipScope.Key(v14);
}

uint64_t initializeWithCopy for ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t outlined init with copy of ResolvedScrollBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  (**(v4 - 8))(a2, a1);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  return a2;
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

uint64_t storeEnumTagSinglePayload for ActionSheet(uint64_t result, int a2, int a3)
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

void type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?)()
{
  if (!lazy cache variable for type metadata for (ResolvedScrollBehavior?, ResolvedScrollBehavior?))
  {
    type metadata accessor for Attribute<AccessibilityNodeList>(255, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ResolvedScrollBehavior?, ResolvedScrollBehavior?));
    }
  }
}

uint64_t ScrollEventStateReader.MakeView.value.getter(uint64_t a1, uint64_t a2)
{
  View = type metadata accessor for ScrollEventStateReader.MakeView();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B90](View, a2, WitnessTable);
  Rule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in ScrollEventStateReader.MakeView.value.getter(uint64_t a1)
{
  ScrollEventStateReader.MakeView.view.getter(&v8);
  v2 = v8;
  ScrollEventStateReader.MakeView.resolvedState.getter(a1, v6);
  v4[0] = v6[0];
  v5 = v7;
  v2(v4);
}

uint64_t static ScrollTransitionConfiguration.interactive.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for interactive != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EA9FA3C0;
  v2 = qword_1EA9FA3C8;
  v3 = unk_1EA9FA3D0;
  v4 = qword_1EA9FA3D8;
  v5 = qword_1EA9FA3E0;
  v6 = qword_1EA9FA3E8;
  *a1 = static ScrollTransitionConfiguration.interactive;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;

  return outlined copy of ScrollTransitionConfiguration.Mode(v1, v2, v3, v4, v5);
}

double one-time initialization function for interactive()
{
  MEMORY[0x18D00BC00](v3);
  v0 = v4;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x3FF0000000000000;
  static ScrollTransitionConfiguration.interactive = v1;
  result = *v3;
  unk_1EA9FA3D0 = v3[1];
  unk_1EA9FA3C0 = v3[0];
  qword_1EA9FA3E0 = v0 | 0x4000000000000000;
  qword_1EA9FA3E8 = 0;
  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t View.containerRelativeFrame(_:alignment:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  return MEMORY[0x18D00A570](v6, a4, &type metadata for ContainerRelativeFrameModifier, a5);
}

uint64_t destroy for ContainerRelativeFrameModifier(uint64_t result)
{
  if (*(result + 24))
  {
  }

  return result;
}

void type metadata accessor for RemoteSheetContainerVCKey.Storage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void specialized PresentationHostingController.setupDelayIfNeeded()()
{
  v1 = v0;
  v2 = *&v0[direct field offset for UIHostingController.host];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v3 = v2;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (LOBYTE(v7[0]) == 1)
  {
    v4 = [v0 view];
    [v4 setNeedsLayout];
    [v4 layoutIfNeeded];

    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7[4] = partial apply for specialized closure #1 in PresentationHostingController.setupDelayIfNeeded();
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> (@unowned Bool);
    v7[3] = &block_descriptor_15_0;
    v6 = _Block_copy(v7);

    [v1 _beginDelayingPresentation_cancellationHandler_];
    _Block_release(v6);
    *(v1 + direct field offset for PresentationHostingController.isDelayingRemotePresentation) = 1;
  }
}

uint64_t sub_18BF158F0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t SheetBridge.presenter.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v2 = v0 + direct field offset for SheetBridge.host;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = ViewGraphDelegate.uiPresenterViewController.getter(ObjectType, *(*(v3 + 16) + 8));
      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for StyleContextWriter<SheetStyleContext>, MEMORY[0x1E697F2A0], MEMORY[0x1E697F298], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<SheetStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ClearNavigationContextModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t View.renderContainerBackgroundInHostingView<A>(_:)()
{
  static Alignment.center.getter();
  type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  return View.backgroundPreferenceValue<A, B>(_:alignment:_:)();
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.PreparedColumn(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.PreparedColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t outlined destroy of _NavigationTransitionOutputs?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for AlertTransformModifier<Alert.Presentation.Key>()
{
  if (!lazy cache variable for type metadata for AlertTransformModifier<Alert.Presentation.Key>)
  {
    v0 = type metadata accessor for AlertTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AlertTransformModifier<Alert.Presentation.Key>);
    }
  }
}

uint64_t ScrollEventStateReader.MakeView.view.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for ScrollEventStateReader();
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t ScrollEventStateReader.init(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 ScrollEventStateReader.MakeView.resolvedState.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1) || (Value = AGGraphGetValue(), v4 = *Value, v4 == 5))
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    v5 = &v7;
    ScrollPhaseState.init(phase:velocity:)();
    LOBYTE(v4) = v7;
  }

  else
  {
    v5 = Value;
  }

  result = *(v5 + 8);
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

uint64_t ScrollViewChildContainerSize.updateValue()()
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    Value = static ViewSize.zero.getter();
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = Value[1];
    v18 = *Value;
    v19 = v2;
  }

  MEMORY[0x18D00B390](Value);
  AGGraphGetValue();
  CGSize.inset(by:)();
  ViewSize.value.setter();
  v3 = *(v0 + 32);
  v16 = *(v0 + 16);
  v17 = v3;
  v4 = v18;
  v5 = v19;
  v14 = v18;
  v15 = v19;
  v6 = MEMORY[0x18D00B350](&v16, &v14) ^ 1;
  type metadata accessor for CGSize(0);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + 56) != v9 || *(v0 + 48) != *v7;
  v16 = v4;
  v17 = v5;
  static CGSize.invalidValue.getter();
  if ((v8 != v12 || v9 != v11) && (v8 != 0.0 || v9 != 0.0))
  {
    ViewSize.value.setter();
    v6 = v10;
  }

  result = AGGraphGetOutputValue();
  if (!result || (v6 & 1) != 0)
  {
    v14 = v16;
    v15 = v17;
    result = AGGraphSetOutputValue();
  }

  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  *(v0 + 16) = v4;
  *(v0 + 32) = v5;
  return result;
}

uint64_t View.scrollTransition<A>(_:axis:transition:)(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  *&v18 = a3;
  *(&v18 + 1) = a4;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  *&v20 = v9;
  *(&v20 + 1) = v10;
  *&v21 = v11;
  *(&v21 + 1) = v12;
  *&v22 = v13;
  *(&v22 + 1) = v7;
  *&v23 = v8;
  *(&v23 + 1) = v9;
  *&v24 = v10;
  *(&v24 + 1) = v11;
  *&v25 = v12;
  *(&v25 + 1) = v13;
  v26 = a2;

  outlined copy of ScrollTransitionConfiguration.Mode(v8, v9, v10, v11, v12);

  outlined copy of ScrollTransitionConfiguration.Mode(v8, v9, v10, v11, v12);
  v14 = type metadata accessor for ScrollTransitionModifier();

  MEMORY[0x18D00A570](&v18, a5, v14, a7);
  v27[6] = v24;
  v27[7] = v25;
  v28 = v26;
  v27[2] = v20;
  v27[3] = v21;
  v27[4] = v22;
  v27[5] = v23;
  v27[0] = v18;
  v27[1] = v19;
  return (*(*(v14 - 8) + 8))(v27, v14);
}

uint64_t outlined copy of ScrollTransitionConfiguration.Mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ScrollTransitionModifier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);

  outlined copy of ScrollTransitionConfiguration.Mode(v5, v6, v7, v8, v9);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  v11 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = *(a2 + 112);
  v16 = *(a2 + 120);

  outlined copy of ScrollTransitionConfiguration.Mode(v11, v12, v13, v14, v15);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  *(a1 + 120) = v16;
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t outlined consume of ScrollTransitionConfiguration.Mode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((a5 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t destroy for ScrollTransitionConfiguration(void *a1)
{

  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];

  return outlined consume of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6);
}

uint64_t assignWithCopy for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = (a1 + 24);
  v5 = (a2 + 24);
  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      v7 = *(a2 + 32);
      *(a1 + 24) = v4;
      *(a1 + 32) = v7;

      return a1;
    }

LABEL_7:
    *v3 = *v5;
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;

  return a1;
}

uint64_t static SceneBridge.merge(predicate:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Predicate<Pack{String}>?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for Predicate<Pack{String}>();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  outlined init with copy of Predicate<Pack{String}>?(a1, v11, type metadata accessor for Predicate<Pack{String}>?);
  v20 = *(v14 + 48);
  if (v20(v11, 1, v13) == 1)
  {
    outlined destroy of Predicate<Pack{String}>?(v11, type metadata accessor for Predicate<Pack{String}>?);
    return outlined init with copy of Predicate<Pack{String}>?(a2, a3, type metadata accessor for Predicate<Pack{String}>?);
  }

  else
  {
    v29 = v16;
    v30 = a3;
    v22 = *(v14 + 32);
    v22(v19, v11, v13);
    outlined init with copy of Predicate<Pack{String}>?(a2, v8, type metadata accessor for Predicate<Pack{String}>?);
    if (v20(v8, 1, v13) == 1)
    {
      outlined destroy of Predicate<Pack{String}>?(v8, type metadata accessor for Predicate<Pack{String}>?);
      v23 = v30;
      (*(v14 + 16))(v30, v19, v13);
      (*(v14 + 56))(v23, 0, 1, v13);
      return (*(v14 + 8))(v19, v13);
    }

    else
    {
      v24 = v29;
      v25 = (v22)(v29, v8, v13);
      MEMORY[0x1EEE9AC00](v25);
      *(&v28 - 2) = v19;
      *(&v28 - 1) = v24;
      v31 = MEMORY[0x1E69E6158];
      v26 = v30;
      Predicate.init(_:)();
      (*(v14 + 56))(v26, 0, 1, v13);
      v27 = *(v14 + 8);
      v27(v24, v13);
      return (v27)(v19, v13);
    }
  }
}

void SheetBridge.present(_:from:animated:existingPresentedVC:isPreempting:)(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  v6 = v5;
  v44 = a5;
  v45 = a3;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40];
  v43 = *MEMORY[0x1E69E7D40] & *v5;
  v42 = type metadata accessor for UITraitOverrides();
  MEMORY[0x1EEE9AC00](v42);
  if (a4)
  {
    v12 = *a1;
    v13 = *(a4 + direct field offset for UIHostingController.host);
    v14 = *((*v13 & v11) + 0x60);
    swift_beginAccess();
    *(v13 + v14) = v12;
    v10 = MEMORY[0x1E69E7D40];

    v15 = v13;

    type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v16 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for willPresent != -1)
  {
    swift_once();
  }

  [v16 postNotificationName:static SheetPopoverBridgeNotifications.willPresent object:0];

  MEMORY[0x1EEE9AC00](v17);
  *(&v41 - 4) = a4;
  *(&v41 - 3) = a1;
  *(&v41 - 2) = v6;
  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for PresentationHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PresentationHostingController);
  static Update.ensure<A>(_:)();
  v18 = v46;
  v19 = direct field offset for UIHostingController.host;
  *(*&v46[direct field offset for UIHostingController.host] + *((*v10 & **&v46[direct field offset for UIHostingController.host]) + 0x1C0) + 8) = &protocol witness table for SheetBridge<A>;
  swift_unknownObjectWeakAssign();
  v20 = *&v18[v19];
  v21 = *(a1 + 96);
  v46 = *(a1 + 88);
  v47 = v21;

  v22 = v20;

  UIHostingViewBase.environmentOverride.setter();

  specialized PresentationHostingController.setupDelayIfNeeded()();
  specialized PresentationHostingController.setupSheet(for:presenter:placement:)(0, a2, *(a1 + 72));
  v23 = *(v6 + direct field offset for SheetBridge.lastEnvironment + 8);
  v46 = *(v6 + direct field offset for SheetBridge.lastEnvironment);
  v47 = v23;

  EnvironmentValues.explicitPreferredColorScheme.getter();

  if (LOBYTE(v48[0]) != 2)
  {
    v24 = *&v18[v19];
    v25 = *((*v10 & *v24) + 0xF8);
    v26 = *(v24 + v25);
    *(v24 + v25) = v48[0];
    v27 = v24;
    specialized _UIHostingView.didChangeColorScheme(from:)(v26);

    v28 = [v18 presentationController];
    if (v28)
    {
      v29 = v28;
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
LABEL_12:
        UIPresentationController.traitOverrides.getter();
        UIMutableTraits.userInterfaceStyle.setter();
        UIPresentationController.traitOverrides.setter();

        goto LABEL_13;
      }
    }

    v32 = [v18 popoverPresentationController];
    if (!v32)
    {
      goto LABEL_13;
    }

    v33 = v32;
    v31 = [v32 adaptiveSheetPresentationController];

    if (!v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v34 = v44;
  v48[0] = *(v6 + direct field offset for SheetBridge.seed);
  if (v44)
  {
    swift_beginAccess();
    PresentationState.presentPreemptingDismissal(_:presentedVC:presentationSeed:)(a1, v18, v48);
  }

  else
  {
    swift_beginAccess();
    PresentationState.present(_:presentedVC:presentationSeed:)(a1, v18, v48);
  }

  swift_endAccess();
  LOBYTE(v46) = 17;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = *(v6 + direct field offset for SheetBridge.seed);
  v37 = swift_allocObject();
  v38 = v43;
  *(v37 + 16) = *(v43 + 80);
  *(v37 + 24) = *(v38 + 88);
  *(v37 + 32) = v35;
  *(v37 + 40) = v34 & 1;
  *(v37 + 48) = a2;
  *(v37 + 56) = v45 & 1;
  *(v37 + 60) = v36;
  *(v37 + 64) = v18;

  v39 = a2;
  v40 = v18;
  static Update.enqueueAction(reason:_:)();
}

uint64_t sub_18BF16E0C()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of PresentationOptionsPreference?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for PresentationOptionsPreference?, &type metadata for PresentationOptionsPreference, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void specialized PresentationHostingController.setBackgroundTransparency(preferenceValue:)(unsigned __int8 a1)
{
  v2 = v1;
  v4 = direct field offset for UIHostingController.host;
  v5 = *(v1 + direct field offset for UIHostingController.host);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0));
  v8 = a1;
  v9 = *(v1 + direct field offset for PresentationHostingController.legacyPresentationWantsTransparentBackground);
  v10 = v5;
  specialized _UIHostingView.setWantsTransparentBackground(for:_:)(8, v9, specialized _UIHostingView.updateBackgroundColor());

  if (v8 != 3)
  {
    v11 = *(v2 + v4);
    v12 = *((*v6 & *v11) + 0x258);
    v13 = v11;
    v14 = v12();

    if (a1)
    {
      if (a1 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }
    }

    else
    {
      v15 = 1;
    }

    v16 = *(v2 + v4);
    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(16, v15 & 1, specialized _UIHostingView.updateBackgroundColor());
  }

  v17 = *(v2 + v4);
  if ((v7 != 0) == (*(v17 + *((*v6 & *v17) + 0xA0)) == 0))
  {
    _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
    lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
    v18 = v17;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }
}

void specialized SheetBridge.hostingView<A>(_:willUpdate:)(uint64_t a1)
{
  v2 = SheetBridge.presenter.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 viewIfLoaded];

    if (v4)
    {
      v5 = [v4 window];

      if (v5)
      {
        v6 = [v5 screen];

        if (v6)
        {
          v7 = objc_opt_self();
          [v6 bounds];
          [v7 defaultFormSheetSizeForScreenSize_];
          type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize, MEMORY[0x1E697FE38]);
          lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>();

          PropertyList.subscript.setter();
          if (*(a1 + 8))
          {
            PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
          }
        }
      }
    }
  }
}

void PresentationHostingController.presentationKind.getter(_BYTE *a1@<X8>)
{
  v3 = [v1 viewIfLoaded];
  if (!v3 || (v4 = v3, v5 = [v3 superview], v4, !v5))
  {
LABEL_10:
    LOBYTE(v12) = 0;
    goto LABEL_11;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 _presentationSemanticContext];

  v8 = [v1 activePresentationController];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 presentationStyle];

    v11 = v10 - 1;
    if (v7 != 3)
    {
      goto LABEL_5;
    }

LABEL_13:
    LOBYTE(v12) = 1;
    goto LABEL_11;
  }

  v11 = -1;
  if (v7 == 3)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v7 == 2)
  {
    LOBYTE(v12) = 2;
    goto LABEL_11;
  }

  if (v7 != 1 || !v9 || v11 >= 8)
  {
    goto LABEL_10;
  }

  v12 = 0x400000300000303uLL >> (8 * v11);
LABEL_11:
  *a1 = v12;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>()
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<NavigationEnabled>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t static Optional<A>._makeToolbar(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a1[3];
  v17[2] = a1[2];
  v18[0] = v7;
  *(v18 + 12) = *(a1 + 60);
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  type metadata accessor for Optional();
  type metadata accessor for _GraphValue();
  v12 = _GraphValue.value.getter();
  v14 = type metadata accessor for _ConditionalContent();
  v15 = type metadata accessor for Optional<A>.Child();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v12, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v15, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  _GraphValue.init(_:)();
  return static _ConditionalContent<>._makeToolbar(content:inputs:)(&v12, v17, a2, &type metadata for EmptyToolbarContent, a3, &protocol witness table for EmptyToolbarContent, a4);
}

uint64_t static AlertTransformModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v27 = *a2;
  v4 = *(a2 + 2);
  v5 = *(a2 + 6);
  v25 = *(a2 + 28);
  v26 = *(a2 + 11);
  v6 = *(a2 + 6);
  v7 = *(a2 + 14);
  v8 = *(a2 + 15);
  v23 = a2[4];
  v24 = *(a2 + 20);
  v22 = v3;
  type metadata accessor for AlertTransformModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  _ViewInputs.animatedPosition()();
  swift_beginAccess();
  CachedEnvironment.animatedSize(for:)();
  v9 = swift_endAccess();
  v12 = v27;
  v13 = v4;
  v14 = v5;
  v15 = v25;
  v16 = v26;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v23;
  v21 = v24;
  a3(v9, &v12);
  *&v12 = v6;
  DWORD2(v12) = v7;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t destroy for ScrollTransitionModifier(void *a1)
{

  outlined consume of ScrollTransitionConfiguration.Mode(a1[3], a1[4], a1[5], a1[6], a1[7]);

  v2 = a1[10];
  v3 = a1[11];
  v4 = a1[12];
  v5 = a1[13];
  v6 = a1[14];

  return outlined consume of ScrollTransitionConfiguration.Mode(v2, v3, v4, v5, v6);
}

__n128 initializeWithCopy for ContainerRelativeFrameModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v2 = (a2 + 24);
  v3 = *(a2 + 24);
  if (v3)
  {
    v4 = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
  }

  else
  {
    result = *v2;
    *(a1 + 24) = *v2;
  }

  return result;
}

uint64_t closure #1 in ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemGroup();
  v3 = *(v2 + 40);
  v8[2] = v2;
  v4 = MEMORY[0x1E69E6370];
  v5 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v8, v4, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return v8[5];
}

id ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)@<X0>(int a1@<W0>, int a2@<W2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = a3[3];
  v20 = a3[2];
  *v21 = v7;
  *&v21[12] = *(a3 + 60);
  v8 = a3[1];
  v18 = *a3;
  v19 = v8;
  closure #1 in ToolbarMakeEntries.init<A>(placement:toolbarItemGroup:viewList:inputs:)(1);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v10 = *&v21[24];
  v11 = DWORD2(v19);
  if (one-time initialization token for toolbarItemPlatterVisibility != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for Visibility?);
  v12 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v14 = result;
    v15 = *MEMORY[0x1E698D3F8];
    result = outlined destroy of _ToolbarInputs(&v18);
    v16 = *&v21[16];
    *a4 = a1;
    *(a4 + 4) = OffsetAttribute2;
    *(a4 + 8) = a2;
    *(a4 + 12) = v10;
    *(a4 + 16) = v11;
    *(a4 + 20) = 1;
    v17 = vdupq_n_s32(v15);
    *(a4 + 24) = v17;
    *(a4 + 40) = v17;
    *(a4 + 56) = v12;
    *(a4 + 60) = v15;
    *(a4 + 64) = v15;
    *(a4 + 72) = v14;
    *(a4 + 80) = v16;
    *(a4 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void type metadata accessor for [ToolbarStorage.Entry]()
{
  if (!lazy cache variable for type metadata for [ToolbarStorage.Entry])
  {
    type metadata accessor for ToolbarStorage.Entry(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [ToolbarStorage.Entry]);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchFocusContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t static _ConditionalContent<>._makeToolbar(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a2 + 60);
  v12 = a2[3];
  v42 = a2[2];
  *v43 = v12;
  *&v43[12] = v11;
  v13 = a2[1];
  v40 = *a2;
  v41 = v13;
  v26 = *&v43[16];
  *&v50 = v12;
  DWORD2(v50) = DWORD2(v12);

  PreferencesInputs.makeIndirectOutputs()();

  v14 = v58;
  v15 = DWORD2(v58);
  v46 = v42;
  *v47 = *v43;
  *&v47[12] = *&v43[12];
  v44 = v40;
  v45 = v41;
  *&v48 = v58;
  DWORD2(v48) = DWORD2(v58);
  v49 = *&v43[16];
  LODWORD(v32) = v10;
  outlined init with copy of _ToolbarInputs(&v40, &v58);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _GraphValue();

  _GraphValue.value.getter();
  v62 = *&v47[16];
  v63 = v48;
  *&v64 = v49;
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = *v47;
  *&v50 = a3;
  *(&v50 + 1) = a4;
  *&v51 = a5;
  *(&v51 + 1) = a6;
  v16 = type metadata accessor for _ConditionalContent<>.ToolbarProvider();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v50, &v44, v16);
  WitnessTable = swift_getWitnessTable();
  _ConditionalContent.Container.init(content:provider:)();
  v36 = v54;
  v37 = v55;
  v38 = v56;
  v39 = v57;
  v32 = v50;
  v33 = v51;
  v34 = v52;
  v35 = v53;
  v29 = type metadata accessor for _ConditionalContent.Info();
  *&v58 = a3;
  *(&v58 + 1) = a4;
  *&v59 = v16;
  *(&v59 + 1) = WitnessTable;
  v19 = type metadata accessor for _ConditionalContent.Container();
  v30 = v19;
  v31 = swift_getWitnessTable();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v58, &v50, v19);
  v21 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v32, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v28, v19, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  v62 = v36;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v58 = v32;
  v59 = v33;
  v60 = v34;
  v61 = v35;
  v23 = *(v20 + 8);
  v23(&v58, v19);
  *&v32 = v14;
  DWORD2(v32) = v15;

  PreferencesOutputs.setIndirectDependency(_:)();
  v23(&v50, v19);
  (*(v17 + 8))(&v44, v16);

  *a7 = v14;
  *(a7 + 8) = v15;
  *(a7 + 16) = v26;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance ToolbarContentKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *&qword_1EAB09AC0;
  v8[2] = xmmword_1EAB09AB0;
  v8[3] = *&qword_1EAB09AC0;
  v2 = qword_1EAB09AD0;
  v9 = qword_1EAB09AD0;
  v4 = static ToolbarContentKey.defaultValue;
  v3 = unk_1EAB09AA0;
  v8[0] = static ToolbarContentKey.defaultValue;
  v8[1] = unk_1EAB09AA0;
  *(a1 + 32) = xmmword_1EAB09AB0;
  *(a1 + 48) = v1;
  *(a1 + 64) = v2;
  *a1 = v4;
  *(a1 + 16) = v3;
  return outlined init with copy of ToolbarStorage(v8, v7);
}

uint64_t initializeWithCopy for _ToolbarItemList(uint64_t a1, uint64_t a2)
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
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t destroy for _ToolbarItemList()
{
}

uint64_t implicit closure #2 in static ToolbarModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v16 = a5(0);
  WitnessTable = swift_getWitnessTable();
  v10 = a7(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v14, a8, v15, v16, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v13;
}

void type metadata accessor for Attribute<(_:)>(uint64_t a1)
{
  type metadata accessor for Attribute<(_:)>(a1, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
}

{
  type metadata accessor for Attribute<(_:)>(a1, &lazy cache variable for type metadata for Attribute<(_:)>, type metadata accessor for (_:), MEMORY[0x1E698D388]);
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply(uint64_t a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_2(a1, a2, type metadata accessor for (_:), closure #1 in Attribute.init<A>(_:));
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TATm_1(a1, a2, type metadata accessor for ViewList, closure #1 in Attribute.init<A>(_:));
}

void type metadata accessor for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBas()
{
  result = lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt;
  if (!lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt)
  {
    type metadata accessor for StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>>();
    lazy protocol witness table accessor for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<HasAccessibilityButtonUnderline, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonSt);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(255, &lazy cache variable for type metadata for Text.LineStyle?, MEMORY[0x1E6981130], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<CarPlayInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, lazy protocol witness table accessor for type BorderlessButtonStyle_Car and conformance BorderlessButtonStyle_Car, &type metadata for BorderlessButtonStyle_Car, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_0(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<BorderlessButtonStyleBase>, lazy protocol witness table accessor for type BorderlessButtonStyleBase and conformance BorderlessButtonStyleBase, &type metadata for BorderlessButtonStyleBase, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>> and conformance _BackgroundModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DividerStyleModifier.styleBody(configuration:)(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  v17 = *a1;
  (*(v3 + 24))(&v17, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI28StyleContextAcceptsPredicateVyAA04MenucD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata completion function for BorderlessButtonLabelShapeStyle()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void DefaultButtonStyle.makeBody(configuration:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = type metadata accessor for SearchCompletionButtonStyle() - 8;
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *a2 = *v9;
  v10 = *(v7 + 32);
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v9[v10], &a2[*(v11 + 36)], type metadata accessor for ButtonAction);
  outlined destroy of PrimitiveButtonStyleConfiguration(v9, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(0);
  v14 = &a2[*(v13 + 36)];
  *v14 = KeyPath;
  v14[8] = 0;
  outlined copy of Environment<Selector?>.Content(KeyPath, 0);
  outlined consume of Environment<Selector?>.Content(KeyPath, 0);
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewIn(0);
  v18 = &a2[*(v17 + 36)];
  *v18 = v15;
  v18[8] = 0;
  *(v18 + 2) = v16;
  v18[24] = 0;
  outlined copy of Environment<Color?>.Content(v15, 0);
  outlined copy of Environment<Selector?>.Content(v16, 0);
  outlined consume of Environment<Color?>.Content(v15, 0);
  outlined consume of Environment<Selector?>.Content(v16, 0);
  v19 = swift_getKeyPath();
  v20 = swift_getKeyPath();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<An(0);
  v22 = &a2[*(v21 + 36)];
  v23 = a2;
  *v22 = v19;
  v22[8] = 0;
  *(v22 + 2) = v20;
  v22[24] = 0;
  outlined copy of Environment<Color?>.Content(v19, 0);
  outlined copy of Environment<Selector?>.Content(v20, 0);
  outlined consume of Environment<Color?>.Content(v19, 0);
  outlined consume of Environment<Selector?>.Content(v20, 0);
  v24 = swift_getKeyPath();
  v73 = 0;
  v25 = swift_getKeyPath();
  v72 = 0;
  v26 = swift_getKeyPath();
  v71 = 0;
  v27 = swift_getKeyPath();
  v70 = 0;
  LOBYTE(KeyPath) = v73;
  LOBYTE(a2) = v72;
  v28 = v71;
  *&v74 = v24;
  BYTE8(v74) = v73;
  *&v75 = v25;
  BYTE8(v75) = v72;
  *&v76[0] = v26;
  BYTE8(v76[0]) = v71;
  *&v76[1] = v27;
  BYTE8(v76[1]) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewI(0);
  v30 = &v23[*(v29 + 36)];
  v31 = v75;
  *v30 = v74;
  v30[1] = v31;
  v30[2] = v76[0];
  *(v30 + 41) = *(v76 + 9);
  v77 = v24;
  v78 = KeyPath;
  v79 = v25;
  v80 = a2;
  v81 = v26;
  v82 = v28;
  v83 = v27;
  v84 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v74, v60, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v77, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  v32 = swift_getKeyPath();
  v69 = 0;
  v33 = swift_getKeyPath();
  v68 = 0;
  v34 = swift_getKeyPath();
  v67 = 0;
  v35 = swift_getKeyPath();
  v66 = 0;
  LOBYTE(a2) = v69;
  LOBYTE(KeyPath) = v68;
  v36 = v67;
  *&v87 = v32;
  BYTE8(v87) = v69;
  *(&v87 + 9) = *v86;
  HIDWORD(v87) = *&v86[3];
  *&v88 = v33;
  BYTE8(v88) = v68;
  *(&v88 + 9) = *v85;
  HIDWORD(v88) = *&v85[3];
  *&v89[0] = v34;
  BYTE8(v89[0]) = v67;
  *&v89[1] = v35;
  BYTE8(v89[1]) = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<(0);
  v38 = &v23[*(v37 + 36)];
  v39 = v88;
  *v38 = v87;
  v38[1] = v39;
  v38[2] = v89[0];
  *(v38 + 41) = *(v89 + 9);
  v90 = v32;
  v91 = a2;
  *v92 = *v86;
  *&v92[3] = *&v86[3];
  v93 = v33;
  v94 = KeyPath;
  *&v95[3] = *&v85[3];
  *v95 = *v85;
  v96 = v34;
  v97 = v36;
  v98 = v35;
  v99 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v87, v60, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v90, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  v60[0] = swift_getKeyPath();
  v61 = 0;
  v62 = swift_getKeyPath();
  v63 = 0;
  v64 = swift_getKeyPath();
  v65 = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationVie(0);
  v41 = v23;
  outlined init with copy of ToolbarButtonStyle(v60, &v23[*(v40 + 36)]);
  outlined destroy of ToolbarButtonStyle(v60);
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 8) = 0;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[72] = -1;
  v42 = v55;
  v43 = *(v55 + 28);
  *&v5[v43] = swift_getKeyPath();
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  swift_storeEnumTagMultiPayload();
  v44 = &v5[*(v42 + 32)];
  *v44 = swift_getKeyPath();
  *(v44 + 1) = 0;
  v44[16] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf(0);
  outlined init with copy of PrimitiveButtonStyleConfiguration(v5, &v41[*(v45 + 36)], type metadata accessor for SearchCompletionButtonStyle);
  outlined destroy of PrimitiveButtonStyleConfiguration(v5, type metadata accessor for SearchCompletionButtonStyle);
  v46 = swift_getKeyPath();
  v59 = 0;
  v47 = swift_getKeyPath();
  v58 = 0;
  v48 = swift_getKeyPath();
  v57 = 0;
  v49 = swift_getKeyPath();
  v56[64] = 0;
  LOBYTE(v44) = v59;
  LOBYTE(v33) = v58;
  LOBYTE(v34) = v57;
  *&v103 = v46;
  BYTE8(v103) = v59;
  *(&v103 + 9) = *v102;
  HIDWORD(v103) = *&v102[3];
  *&v104 = v47;
  BYTE8(v104) = v58;
  *(&v104 + 9) = *v101;
  HIDWORD(v104) = *&v101[3];
  *v105 = v48;
  v105[8] = v57;
  *&v105[9] = *v100;
  *&v105[12] = *&v100[3];
  *&v105[16] = v49;
  v105[24] = 0;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonS(0);
  v51 = &v41[*(v50 + 36)];
  v52 = v104;
  *v51 = v103;
  v51[1] = v52;
  v51[2] = *v105;
  *(v51 + 41) = *&v105[9];
  v106 = v46;
  v107 = v44;
  *v108 = *v102;
  *&v108[3] = *&v102[3];
  v109 = v47;
  v110 = v33;
  *&v111[3] = *&v101[3];
  *v111 = *v101;
  v112 = v48;
  v113 = v34;
  *v114 = *v100;
  *&v114[3] = *&v100[3];
  v115 = v49;
  v116 = 0;
  outlined init with copy of PrimitiveButtonStyleConfiguration(&v103, v56, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  outlined destroy of PrimitiveButtonStyleConfiguration(&v106, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 0,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
  v41[*(v53 + 36)] = 0;
}

uint64_t sub_18BF199BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18BF19A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MEMORY[0x18D0064D0](a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18BF19AB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t initializeWithCopy for ToolbarButtonStyle(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 41))
  {
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 24);
      *(a1 + 24) = v4;
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 25) = *(a2 + 25);
    }

    *(a1 + 41) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 41) = 0;
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  v8 = *(a2 + 64);
  v9 = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  return a1;
}

uint64_t destroy for ToolbarButtonStyle(uint64_t a1)
{
  if (*(a1 + 41))
  {
    if (*(a1 + 40) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t initializeWithCopy for SearchCompletionButtonStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 72);
  if (v6 == 255)
  {
    v9 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v9;
    *(a1 + 57) = *(a2 + 57);
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
  }

  else if (v6)
  {
    v7 = *(a2 + 24);
    *(a1 + 24) = v7;
    (**(v7 - 8))(a1, a2);
    v8 = *(a2 + 56);
    *(a1 + 56) = v8;
    (**(v8 - 8))(a1 + 32, a2 + 32);
    *(a1 + 72) = 1;
  }

  else
  {
    v11 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v11;
    *(a1 + 72) = 0;
  }

  v12 = *(a3 + 20);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v16 = v15;
    v17 = *(v15 - 8);
    if ((*(v17 + 48))(v14, 1, v15))
    {
      _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>?, type metadata accessor for Binding<SearchFieldState>, MEMORY[0x1E69E6720]);
      memcpy(v13, v14, *(*(v18 - 8) + 64));
    }

    else
    {
      v38 = v14[1];
      *v13 = *v14;
      v13[1] = v38;
      v19 = *(v16 + 32);
      v39 = v17;
      v20 = v13 + v19;
      v21 = v14 + v19;
      *v20 = *(v14 + v19);
      v20[1] = *(v14 + v19 + 1);
      *(v20 + 1) = *(v14 + v19 + 2);
      v20[8] = *(v14 + v19 + 8);
      *(v20 + 1) = *(v14 + v19 + 4);
      v22 = type metadata accessor for SearchFieldState(0);
      v40 = a3;
      v23 = v22[9];
      v24 = type metadata accessor for AttributedString();
      v37 = *(*(v24 - 8) + 16);

      v25 = &v20[v23];
      v26 = &v21[v23];
      a3 = v40;
      v37(v25, v26, v24);
      v20[v22[10]] = v21[v22[10]];
      v27 = v22[11];
      v28 = &v20[v27];
      v29 = &v21[v27];
      v28[4] = v29[4];
      *v28 = *v29;
      (*(v39 + 56))(v13, 0, 1, v16);
    }
  }

  else
  {
    *v13 = *v14;
  }

  swift_storeEnumTagMultiPayload();
  v30 = *(a3 + 24);
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v32, v34, v35);
  *v31 = v33;
  *(v31 + 8) = v34;
  *(v31 + 16) = v35;
  return a1;
}

uint64_t destroy for TextInputCompletionButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 != 255)
  {
    if (v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      __swift_destroy_boxed_opaque_existential_1(a1 + 32);
    }

    else
    {
    }
  }

  v5 = a1 + *(a2 + 20);
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Binding<SearchFieldState>(0);
    v7 = v6;
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v8 = v5 + *(v7 + 32);
      v9 = *(type metadata accessor for SearchFieldState(0) + 36);
      v10 = type metadata accessor for AttributedString();
      (*(*(v10 - 8) + 8))(v8 + v9, v10);
    }
  }

  else
  {
  }

  return outlined consume of Environment<TriggerSubmitAction?>.Content(*(a1 + *(a2 + 24)), *(a1 + *(a2 + 24) + 8), *(a1 + *(a2 + 24) + 16), outlined consume of TriggerSubmitAction?);
}

uint64_t outlined consume of Environment<TriggerSubmitAction?>.Content(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

uint64_t sub_18BF1A250(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t specialized static ScrollViewLayoutComputer.Engine.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 40);
  v2 = *(a2 + 5);
  if ((static EdgeInsets.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
LABEL_7:

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  swift_retain_n();

  v3 = static LayoutComputer.== infix(_:_:)();

  return v3 & 1;
}

uint64_t outlined destroy of ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CoordinateSpaceNameModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceNameModifier and conformance CoordinateSpaceNameModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStackViewPosition(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationStackViewPosition(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t getEnumTag for ScrollTransitionConfiguration.Mode(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t ToolbarMakeEntries.resolvedDefaultVisibility.getter()
{
  v1 = *MEMORY[0x1E698D3F8];
  if (v0[12] == *MEMORY[0x1E698D3F8])
  {
    return 1;
  }

  v2 = v0[6];
  v3 = v0[9];
  v4 = v0[10];
  Value = AGGraphGetValue();
  if (v2 == v1)
  {
    return 1;
  }

  v6 = *Value;
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for String?);
  AGGraphGetValue();
  if (v4 != v1)
  {
    if (*AGGraphGetValue())
    {
      return 1;
    }
  }

  result = v6;
  if (v3 != v1)
  {
    if (*AGGraphGetValue())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t specialized NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  LODWORD(v108) = a6;
  v110 = a5;
  v111 = a1;
  v107 = a4;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v102 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v106 = &v98 - v21;
  v22 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x70);
  v109 = v13;
  v23 = (v13 + v22);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];

  result = outlined consume of NavigationStrategy_Phone?(v24, v25, v26);
  *v23 = a7;
  v23[1] = a8;
  v23[2] = a9;
  v105 = a9;
  if (!a9)
  {
    goto LABEL_57;
  }

  *v23 = a2;
  v23[1] = a3;

  swift_endAccess();
  v104 = a8;

  v103 = a7;

  v28 = [v111 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v29 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x1E69E7D40];
  v31 = v109;
  if (result < 1)
  {

    goto LABEL_18;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x18D00E9C0](0, v29);
    goto LABEL_8;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v32 = *(v29 + 32);
LABEL_8:
  v33 = v32;

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    v36 = direct field offset for UIHostingController.host;
    v37 = *(v34 + direct field offset for UIHostingController.host);
    v38 = objc_opt_self();
    v39 = v37;
    v40 = [v38 currentDevice];
    v41 = [v40 userInterfaceIdiom];

    if (v41 == 5)
    {
      v30 = MEMORY[0x1E69E7D40];
      v42 = *(v31 + *((*MEMORY[0x1E69E7D40] & *v31) + 0x60) + 8) == 0;
    }

    else
    {
      v42 = 0;
      v30 = MEMORY[0x1E69E7D40];
    }

    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(2, v42);

    v43 = *(v35 + v36);
    specialized _UIHostingView.setWantsTransparentBackground(for:_:)(1, v108 & 1);

    *&v116[0] = a2;
    *(&v116[0] + 1) = a3;
    v44 = EnvironmentValues.presentationNeedsPreferredContentSize.getter();
    v45 = direct field offset for UIHostingController.sizingOptions;
    if (v44)
    {
      swift_beginAccess();
      v46 = *(v35 + v45);
      v47 = v46 | 1;
    }

    else
    {
      swift_beginAccess();
      v46 = *(v35 + v45);
      v47 = v46 & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v35 + v45) = v47;
    *&v116[0] = v46;
    (*((*v30 & *v35) + 0x3D8))(v116);
  }

LABEL_18:
  v48 = v110;
  result = swift_weakLoadStrong();
  if (result)
  {
    v49 = result;
    swift_beginAccess();
    v50 = v49[8];
    v124 = v49[7];
    v125 = v50;
    v126[0] = v49[9];
    *(v126 + 10) = *(v49 + 154);
    v51 = v49[4];
    v120 = v49[3];
    v121 = v51;
    v52 = v49[6];
    v122 = v49[5];
    v123 = v52;
    v53 = v49[2];
    v118 = v49[1];
    v119 = v53;
    outlined init with copy of NavigationState.StackContent?(&v118, v116, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

    v133 = v124;
    v134 = v125;
    v135[0] = v126[0];
    *(v135 + 10) = *(v126 + 10);
    v129 = v120;
    v130 = v121;
    v131 = v122;
    v132 = v123;
    v127 = v118;
    v128 = v119;
    result = getEnumTag for AccessibilityActionCategory.Category(&v127);
    if (result != 1)
    {
      v101 = a10;
      v54 = HIDWORD(v48);
      v55 = *v30 & *v31;
      v56 = (v31 + *(v55 + 0xA8));
      if (*v56 == v48)
      {
        memset(v116, 0, sizeof(v116));
        v117 = -1;
LABEL_29:
        v108 = a12;
        v66 = v106;
        static Log.navigation.getter();
        v67 = type metadata accessor for Logger();
        v68 = *(v67 - 8);
        if ((*(v68 + 48))(v66, 1, v67) == 1)
        {
          outlined destroy of UINavigationPresentationAdaptor?(v66, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        }

        else
        {
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_18BD4A000, v69, v70, "Enqueuing: Updating stack views in place", v71, 2u);
            v72 = v71;
            v30 = MEMORY[0x1E69E7D40];
            MEMORY[0x18D0110E0](v72, -1, -1);
          }

          (*(v68 + 8))(v106, v67);
        }

        v114 = 17;
        v73 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v74 = *((*v30 & *v31) + 0xB0);
        swift_beginAccess();
        outlined init with copy of NavigationState.StackContent?(v31 + v74, v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        if (LOBYTE(v113[112]) == 255)
        {
          outlined destroy of PPTTestCase?(v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
          v75 = v31 + *((*v30 & *v31) + 0x60);
          v76 = *v75;
          v77 = v75[8];
          v78 = *(v75 + 2);
          if (v77 == 4)
          {
            LOBYTE(v77) = 0;
          }

          *&v115[0] = v76;
          BYTE8(v115[0]) = v77;
          *&v115[1] = v78;
          LOBYTE(v115[28]) = 0;
        }

        else
        {
          memcpy(v115, v113, 0x1C1uLL);
        }

        outlined init with copy of NavigationState.StackContent?(v116, v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        outlined init with copy of NavigationState.StackContent(v115, v112);
        v79 = swift_allocObject();
        v79[2] = v73;
        memcpy(v79 + 3, v113, 0x1C1uLL);
        memcpy(v79 + 60, v112, 0x1C1uLL);
        v80 = v104;
        v79[117] = v103;
        v79[118] = v80;
        v79[119] = v105;
        v81 = v111;
        v79[120] = v111;
        v79[121] = v107;

        v82 = v81;
        static Update.enqueueAction(reason:_:)();

        outlined destroy of NavigationState.StackContent(v115);

        v31 = v109;
        v83 = v110;
LABEL_52:
        specialized $defer #2 <A>() in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v116, v31);
        outlined destroy of PPTTestCase?(&v118, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
        result = outlined destroy of PPTTestCase?(v116, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        *v56 = v83;
        v56[1] = v54;
        return result;
      }

      v99 = (v31 + *((*v30 & *v31) + 0xA8));
      v100 = HIDWORD(v48);
      v57 = v31 + *(v55 + 96);
      v58 = *v57;
      v59 = *(v57 + 2);
      v60 = v57[8];
      v115[6] = v133;
      v115[7] = v134;
      v115[8] = v135[0];
      *(&v115[8] + 10) = *(v135 + 10);
      v115[2] = v129;
      v115[3] = v130;
      v115[4] = v131;
      v115[5] = v132;
      v115[0] = v127;
      v115[1] = v128;
      NavigationState.stackContent(for:)(v58, v60, v59, v116);
      v61 = v117;
      if (v117 == 255)
      {
        v61 = 0;
        v62 = *v57;
        v64 = *(v57 + 2);
        if (v57[8] == 4)
        {
          v63 = 0;
        }

        else
        {
          v63 = v57[8];
        }
      }

      else
      {
        v62 = *&v116[0];
        v63 = BYTE8(v116[0]);
        v113[0] = *(v116 + 9);
        *(v113 + 3) = HIDWORD(v116[0]);
        v64 = *&v116[1];
        memcpy(v115, &v116[1] + 8, 0x1A8uLL);
      }

      *&v116[0] = v62;
      BYTE8(v116[0]) = v63;
      *(v116 + 9) = v113[0];
      HIDWORD(v116[0]) = *(v113 + 3);
      *&v116[1] = v64;
      memcpy(&v116[1] + 8, v115, 0x1A8uLL);
      v117 = v61;
      outlined init with copy of NavigationState.StackContent?(v116, v115, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v115[28]) == 255)
      {
        v30 = MEMORY[0x1E69E7D40];
        v56 = v99;
      }

      else
      {
        memcpy(v113, v115, 0x1C1uLL);
        v65 = specialized closure #1 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(v113, v31);
        outlined destroy of NavigationState.StackContent(v113);
        v30 = MEMORY[0x1E69E7D40];
        v56 = v99;
        LODWORD(v54) = v100;
        if (v65)
        {
          goto LABEL_29;
        }
      }

      v84 = v102;
      static Log.navigation.getter();
      v85 = type metadata accessor for Logger();
      v86 = *(v85 - 8);
      if ((*(v86 + 48))(v84, 1, v85) == 1)
      {
        outlined destroy of UINavigationPresentationAdaptor?(v84, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
      }

      else
      {
        v109 = a13;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_18BD4A000, v87, v88, "Enqueuing: Updating stack views with new content", v89, 2u);
          v90 = v89;
          v30 = MEMORY[0x1E69E7D40];
          MEMORY[0x18D0110E0](v90, -1, -1);
        }

        (*(v86 + 8))(v102, v85);
      }

      v114 = 17;
      v91 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v92 = *((*v30 & *v31) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v31 + v92, v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v113[112]) == 255)
      {
        outlined destroy of PPTTestCase?(v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v93 = v57[8];
        v94 = *(v57 + 2);
        if (v93 == 4)
        {
          LOBYTE(v93) = 0;
        }

        *&v115[0] = *v57;
        BYTE8(v115[0]) = v93;
        *&v115[1] = v94;
        LOBYTE(v115[28]) = 0;
      }

      else
      {
        memcpy(v115, v113, 0x1C1uLL);
      }

      outlined init with copy of NavigationState.StackContent?(v116, v113, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      outlined init with copy of NavigationState.StackContent(v115, v112);
      v95 = swift_allocObject();
      memcpy((v95 + 16), v113, 0x1C1uLL);
      *(v95 + 472) = v91;
      memcpy((v95 + 480), v112, 0x1C1uLL);
      v96 = v111;
      *(v95 + 936) = v111;
      *(v95 + 944) = v107;
      *(v95 + 952) = v108 & 1;

      v97 = v96;
      static Update.enqueueAction(reason:_:)();

      outlined destroy of NavigationState.StackContent(v115);

      v83 = v110;
      LODWORD(v54) = v100;
      goto LABEL_52;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey>, &type metadata for EnvironmentValues.ToolbarForegroundStyleKey, &protocol witness table for EnvironmentValues.ToolbarForegroundStyleKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarForegroundStyleKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)()
{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002398, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002820, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

{
  return partial apply for specialized closure #2 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(&unk_1F0002A50, implicit closure #2 in implicit closure #1 in NavigationState.StackContent.Views.sequence<A, B>(using:)specialized partial apply, partial apply for specialized closure #1 in NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:));
}

uint64_t getEnumTag for ScrollTransitionConfiguration.Threshold.Storage(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t getEnumTagSinglePayload for ScrollView(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
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
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v17 + 72);
    v19 = *(v17 + 64) & 0x7FFFFFFF;
    if ((v18 & 0xF000000000000007) != 0)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t ToolbarStorage.merge(_:options:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ToolbarStorage.Entry(0);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = v2[1];
  if (v12)
  {
    v13 = *v2;
  }

  else
  {
    v13 = *a1;
  }

  *v2 = v13;
  v2[1] = v12;
  v14 = v2[3];
  if (v14)
  {
    v15 = v3[2];
    v16 = v3[4];
  }

  else
  {
    v15 = a1[2];
    v14 = a1[3];
    v16 = a1[4];
    outlined copy of Binding<Int>?(v15, v14);
  }

  v3[2] = v15;
  v3[3] = v14;
  v3[4] = v16;
  if (v3[5])
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 40);
  }

  *(v3 + 40) = v17;
  v64 = MEMORY[0x1E69E7CC0];
  v18 = a1[6];
  v53 = a1;
  if ((a2 & 7) == 0)
  {

    if ((a2 & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v29 = v3[6];
    if ((a2 & 8) != 0)
    {
LABEL_51:
      v63[0] = v28;
      goto LABEL_52;
    }

LABEL_23:
    v63[0] = v29;
    v29 = v28;
LABEL_52:
    specialized Array.append<A>(contentsOf:)(v29);
    v3[6] = v63[0];

    specialized Set.formUnion<A>(_:)(v50);
  }

  v19 = a2;
  v20 = *(v18 + 16);
  v21 = v18;

  if (v20)
  {
    v22 = *(v57 + 72);
    v62 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v23 = v21 + v62;
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of ToolbarStorage.Entry(v23, v11, type metadata accessor for ToolbarStorage.Entry);
      if (specialized isPlacementValid #1 (_:) in ToolbarStorage.merge(_:options:)(v11, v19, &v64))
      {
        _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v11, v8, type metadata accessor for ToolbarStorage.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
          v24 = v63[0];
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
          v24 = v63[0];
        }

        *(v24 + 16) = v27 + 1;
        _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v8, v24 + v62 + v27 * v22, type metadata accessor for ToolbarStorage.Entry);
      }

      else
      {
        outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v11, type metadata accessor for ToolbarStorage.Entry);
      }

      v23 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v28 = v24;
  a2 = v19;
  if ((v19 & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v54 = v28;
  v52 = a2;
  swift_beginAccess();
  v30 = *(v64 + 2);
  v56 = v64;

  v55 = v30;
  if (!v30)
  {
LABEL_50:

    v28 = v54;
    v29 = v3[6];
    if ((v52 & 8) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_23;
  }

  v32 = 0;
  v33 = (v56 + 32);
  while (v32 < *(v56 + 2))
  {
    v34 = outlined init with copy of ToolbarItemPlacement.Role(v33, v63);
    MEMORY[0x1EEE9AC00](v34);
    *(&v51 - 2) = v63;
    result = specialized MutableCollection._halfStablePartition(isSuffixElement:)(partial apply for closure #1 in ToolbarStorage.merge(_:options:), (&v51 - 4));
    v35 = v3;
    v36 = v3[6];
    v37 = v36[2];
    v38 = v37 - result;
    if (v37 < result)
    {
      goto LABEL_54;
    }

    v39 = result;
    if (result < 0)
    {
      goto LABEL_55;
    }

    v40 = result;
    if (__OFADD__(v37, result - v37))
    {
      goto LABEL_56;
    }

    v59 = result - v37;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v32;
    v62 = v33;
    v60 = &v51;
    if (!v41 || v40 > v36[3] >> 1)
    {
      if (v37 <= v40)
      {
        v42 = v37 - v38;
      }

      else
      {
        v42 = v37;
      }

      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41, v42, 1, v36);
    }

    v43 = v36 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v44 = *(v57 + 72);
    v45 = v44 * v39;
    result = swift_arrayDestroy();
    v3 = v35;
    if (v37 != v39)
    {
      if (v45 < v44 * v37 || &v43[v44 * v39] >= &v43[v44 * v37 + (v36[2] - v37) * v44])
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (v45 != v44 * v37)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v47 = v36[2];
      v48 = __OFADD__(v47, v59);
      v49 = v47 + v59;
      if (v48)
      {
        goto LABEL_57;
      }

      v36[2] = v49;
    }

    v32 = v61 + 1;
    v35[6] = v36;
    result = outlined destroy of ToolbarItemPlacement.Role(v63);
    v33 = v62 + 48;
    if (v55 == v32)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

char *initializeWithCopy for ToolbarStorage.Entry.Kind(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *a1 = *a2;
      v15 = a1 + 8;
      if (a2[48] == 1)
      {
        v16 = *(a2 + 2);
        *(a1 + 2) = v16;
        (**(v16 - 8))(v15, (a2 + 8));
        a1[48] = 1;
      }

      else
      {
        v19 = *(a2 + 24);
        *v15 = *(a2 + 8);
        *(a1 + 24) = v19;
        *(a1 + 33) = *(a2 + 33);
      }

      a1[49] = a2[49];
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 9) = *(a2 + 9);

      goto LABEL_145;
    case 1:
      v11 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v11;
      v12 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v12;
      v13 = *(a2 + 7);

      if (v13)
      {
        v14 = *(a2 + 8);
        *(a1 + 7) = v13;
        *(a1 + 8) = v14;
        (**(v13 - 8))((a1 + 32), (a2 + 32), v13);
        *(a1 + 9) = *(a2 + 9);
      }

      else
      {
        v20 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v20;
        *(a1 + 4) = *(a2 + 4);
      }

      if (a2[120] == 1)
      {
        v21 = *(a2 + 104);
        *(a1 + 104) = v21;
        (**(v21 - 8))((a1 + 80), (a2 + 80));
        a1[120] = 1;
      }

      else
      {
        v22 = *(a2 + 6);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = v22;
        *(a1 + 105) = *(a2 + 105);
      }

      a1[121] = a2[121];
      *(a1 + 16) = *(a2 + 16);
      a1[136] = a2[136];
      *(a1 + 137) = *(a2 + 137);
      v23 = *(a2 + 19);
      *(a1 + 18) = *(a2 + 18);
      *(a1 + 19) = v23;
      v24 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
      v25 = &a1[v24];
      v26 = &a2[v24];
      v27 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);

      if (v29(v26, 1, v27))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
        memcpy(v25, v26, *(*(v30 - 8) + 64));
LABEL_145:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v261 = a1;
      type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v77 = *(v26 + 24);
        *(v25 + 24) = v77;
        (**(v77 - 8))(v25, v26);
        v78 = *(v26 + 6);
        *(v25 + 5) = *(v26 + 5);
        *(v25 + 6) = v78;
        *(v25 + 7) = *(v26 + 7);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 72) = *(v26 + 72);
        v79 = *(v26 + 11);
        *(v25 + 11) = v79;

        v80 = v79;
LABEL_144:
        swift_storeEnumTagMultiPayload();
        v236 = *(v27 + 20);
        v237 = *&v26[v236];
        *&v25[v236] = v237;
        v238 = *(v28 + 56);
        v239 = v237;
        v238(v25, 0, 1, v27);
        a1 = v261;
        goto LABEL_145;
      }

      v31 = *v26;
      v32 = *(v26 + 1);
      *v25 = *v26;
      *(v25 + 1) = v32;
      v33 = *(v26 + 3);
      *(v25 + 2) = *(v26 + 2);
      *(v25 + 3) = v33;
      v25[32] = v26[32];
      v34 = *(v26 + 6);
      *(v25 + 5) = *(v26 + 5);
      *(v25 + 6) = v34;
      v25[56] = v26[56];
      v35 = *(v26 + 24);
      v36 = v31;
      v37 = v32;

      v263 = v28;
      if (v35 >> 1 == 4294967294)
      {
        v38 = *(v26 + 13);
        *(v25 + 12) = *(v26 + 12);
        *(v25 + 13) = v38;
        *(v25 + 14) = *(v26 + 14);
        *(v25 + 235) = *(v26 + 235);
        v39 = *(v26 + 9);
        *(v25 + 8) = *(v26 + 8);
        *(v25 + 9) = v39;
        v40 = *(v26 + 11);
        *(v25 + 10) = *(v26 + 10);
        *(v25 + 11) = v40;
        v41 = *(v26 + 5);
        *(v25 + 4) = *(v26 + 4);
        *(v25 + 5) = v41;
        v42 = *(v26 + 7);
        *(v25 + 6) = *(v26 + 6);
        *(v25 + 7) = v42;
      }

      else
      {
        v83 = v26[72];
        if (v83 == 255)
        {
          *(v25 + 8) = *(v26 + 8);
          v25[72] = v26[72];
        }

        else
        {
          v84 = *(v26 + 8);
          outlined copy of GraphicsImage.Contents(v84, v26[72]);
          *(v25 + 8) = v84;
          v25[72] = v83;
          v35 = *(v26 + 24);
        }

        *(v25 + 10) = *(v26 + 10);
        *(v25 + 88) = *(v26 + 88);
        v25[104] = v26[104];
        *(v25 + 108) = *(v26 + 108);
        *(v25 + 121) = *(v26 + 121);
        *(v25 + 136) = *(v26 + 136);
        *(v25 + 152) = *(v26 + 152);
        *(v25 + 84) = *(v26 + 84);
        v25[170] = v26[170];
        v25[171] = v26[171];
        if (v35 >> 1 == 0xFFFFFFFF)
        {
          v160 = *(v26 + 12);
          *(v25 + 11) = *(v26 + 11);
          *(v25 + 12) = v160;
        }

        else
        {
          v161 = *(v26 + 22);
          v162 = *(v26 + 23);
          v163 = *(v26 + 25);
          outlined copy of AccessibilityImageLabel(v161, v162, v35);
          *(v25 + 22) = v161;
          *(v25 + 23) = v162;
          *(v25 + 24) = v35;
          *(v25 + 25) = v163;
        }

        v164 = *(v26 + 27);
        *(v25 + 26) = *(v26 + 26);
        *(v25 + 27) = v164;
        *(v25 + 112) = *(v26 + 112);
        *(v25 + 57) = *(v26 + 57);
        v25[232] = v26[232];
        v165 = *(v26 + 30);
        *(v25 + 30) = v165;
        *(v25 + 124) = *(v26 + 124);
        v25[250] = v26[250];
        swift_unknownObjectRetain();

        v166 = v165;
      }

      v167 = *(v26 + 33);
      if (v167)
      {
        *(v25 + 32) = *(v26 + 32);
        *(v25 + 33) = v167;
        v168 = *(v26 + 34);

        if (v168 >= 2)
        {
          v169 = v168;
        }

        *(v25 + 34) = v168;
        *(v25 + 70) = *(v26 + 70);
        v25[284] = v26[284];
        *(v25 + 285) = *(v26 + 285);
        v170 = *(v26 + 37);
        *(v25 + 36) = *(v26 + 36);
        *(v25 + 37) = v170;
      }

      else
      {
        v171 = *(v26 + 17);
        *(v25 + 16) = *(v26 + 16);
        *(v25 + 17) = v171;
        *(v25 + 18) = *(v26 + 18);
      }

      v172 = *(v26 + 42);
      v266 = v27;
      if (v172 >> 2 == 0xFFFFFFFF)
      {
        v173 = *(v26 + 24);
        *(v25 + 23) = *(v26 + 23);
        *(v25 + 24) = v173;
        *(v25 + 50) = *(v26 + 50);
        v174 = *(v26 + 20);
        *(v25 + 19) = *(v26 + 19);
        *(v25 + 20) = v174;
        v175 = *(v26 + 22);
        *(v25 + 21) = *(v26 + 21);
        *(v25 + 22) = v175;
      }

      else
      {
        v176 = *(v26 + 38);
        v177 = *(v26 + 39);
        v178 = *(v26 + 40);
        v179 = *(v26 + 41);
        v181 = *(v26 + 43);
        v180 = *(v26 + 44);
        v182 = *(v26 + 45);
        v242 = *(v26 + 46);
        v247 = *(v26 + 47);
        __dstc = *(v26 + 48);
        v255 = *(v26 + 49);
        v258 = *(v26 + 50);
        outlined copy of PlatformItemList.Item.SystemItem(v176, v177, v178, v179, v172, v181, v180, v182, v242, v247, __dstc, v255, v258);
        *(v25 + 38) = v176;
        *(v25 + 39) = v177;
        *(v25 + 40) = v178;
        *(v25 + 41) = v179;
        *(v25 + 42) = v172;
        *(v25 + 43) = v181;
        *(v25 + 44) = v180;
        *(v25 + 45) = v182;
        *(v25 + 46) = v242;
        *(v25 + 47) = v247;
        *(v25 + 48) = __dstc;
        *(v25 + 49) = v255;
        *(v25 + 50) = v258;
      }

      v183 = *(v26 + 52);
      if (v183 == 1)
      {
        v184 = *(v26 + 456);
        *(v25 + 440) = *(v26 + 440);
        *(v25 + 456) = v184;
        v25[472] = v26[472];
        v185 = *(v26 + 424);
        *(v25 + 408) = *(v26 + 408);
        *(v25 + 424) = v185;
      }

      else
      {
        *(v25 + 102) = *(v26 + 102);
        v25[412] = v26[412];
        if (v183)
        {
          v186 = *(v26 + 53);
          *(v25 + 52) = v183;
          *(v25 + 53) = v186;
        }

        else
        {
          *(v25 + 26) = *(v26 + 26);
        }

        v187 = *(v26 + 54);
        if (v187)
        {
          v188 = *(v26 + 55);
          *(v25 + 54) = v187;
          *(v25 + 55) = v188;
        }

        else
        {
          *(v25 + 27) = *(v26 + 27);
        }

        v189 = *(v26 + 56);
        if (v189)
        {
          v190 = *(v26 + 57);
          *(v25 + 56) = v189;
          *(v25 + 57) = v190;
        }

        else
        {
          *(v25 + 28) = *(v26 + 28);
        }

        *(v25 + 58) = *(v26 + 58);
        v25[472] = v26[472];
      }

      v191 = *(v26 + 61);
      *(v25 + 60) = *(v26 + 60);
      *(v25 + 61) = v191;
      *(v25 + 62) = *(v26 + 62);
      v25[504] = v26[504];
      v192 = *(v26 + 64);

      if (v192)
      {
        v193 = *(v26 + 65);
        *(v25 + 64) = v192;
        *(v25 + 65) = v193;
      }

      else
      {
        *(v25 + 32) = *(v26 + 32);
      }

      v25[528] = v26[528];
      if (!*(v26 + 102))
      {
        memcpy(v25 + 536, v26 + 536, 0x130uLL);
        goto LABEL_129;
      }

      *(v25 + 67) = *(v26 + 67);
      *(v25 + 68) = *(v26 + 68);
      v25[552] = v26[552];
      *(v25 + 70) = *(v26 + 70);
      v25[568] = v26[568];
      *(v25 + 36) = *(v26 + 36);
      v25[592] = v26[592];
      v194 = v25 + 600;
      v195 = v26 + 600;
      v196 = *(v26 + 78);

      if (v196)
      {
        if (v196 == 1)
        {
          v197 = *(v26 + 616);
          *v194 = *v195;
          *(v25 + 616) = v197;
          *(v25 + 632) = *(v26 + 632);
LABEL_125:
          *(v25 + 81) = *(v26 + 81);
          v25[656] = v26[656];
          v199 = v25 + 664;
          v200 = v26 + 664;
          v201 = *(v26 + 97);
          if (v201 == 1)
          {
            v202 = *(v26 + 776);
            *(v25 + 760) = *(v26 + 760);
            *(v25 + 776) = v202;
            *(v25 + 792) = *(v26 + 792);
            v25[808] = v26[808];
            v203 = *(v26 + 712);
            *(v25 + 696) = *(v26 + 696);
            *(v25 + 712) = v203;
            v204 = *(v26 + 744);
            *(v25 + 728) = *(v26 + 728);
            *(v25 + 744) = v204;
            v205 = *(v26 + 680);
            *v199 = *v200;
            *(v25 + 680) = v205;
          }

          else
          {
            *v199 = *v200;
            v25[672] = v26[672];
            *(v25 + 85) = *(v26 + 85);
            v25[688] = v26[688];
            *(v25 + 689) = *(v26 + 689);
            v25[691] = v26[691];
            v25[692] = v26[692];
            *(v25 + 87) = *(v26 + 87);
            v206 = *(v26 + 45);
            *(v25 + 44) = *(v26 + 44);
            *(v25 + 45) = v206;
            *(v25 + 92) = *(v26 + 92);
            *(v25 + 372) = *(v26 + 372);
            *(v25 + 47) = *(v26 + 47);
            v25[768] = v26[768];
            *(v25 + 97) = v201;
            *(v25 + 49) = *(v26 + 49);
            *(v25 + 100) = *(v26 + 100);
            v25[808] = v26[808];
          }

          *(v25 + 102) = *(v26 + 102);
          *(v25 + 103) = *(v26 + 103);
          *(v25 + 104) = *(v26 + 104);

LABEL_129:
          v207 = v25 + 840;
          v208 = v26 + 840;
          v209 = *(v26 + 108);
          if (v209)
          {
            if (v209 == 1)
            {
              v210 = *(v26 + 856);
              *v207 = *v208;
              *(v25 + 856) = v210;
              *(v25 + 872) = *(v26 + 872);
              *(v25 + 111) = *(v26 + 111);
LABEL_137:
              v214 = *(v26 + 112);
              *(v25 + 112) = v214;
              *(v25 + 113) = *(v26 + 113);
              *(v25 + 114) = *(v26 + 114);
              *(v25 + 115) = *(v26 + 115);
              *(v25 + 116) = *(v26 + 116);
              *(v25 + 117) = *(v26 + 117);
              *(v25 + 118) = *(v26 + 118);
              *(v25 + 476) = *(v26 + 476);
              v25[954] = v26[954];
              v215 = type metadata accessor for PlatformItemList.Item();
              v216 = *(v215 + 112);
              v256 = v215;
              v259 = &v25[v216];
              v217 = &v26[v216];
              v218 = type metadata accessor for CommandOperation();
              v219 = *(v218 - 8);
              v248 = v219[6];
              v220 = v214;

              if (v248(v217, 1, v218))
              {
                _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                memcpy(v259, v217, *(*(v221 - 8) + 64));
                v28 = v263;
                v27 = v266;
              }

              else
              {
                __dsta = v219;
                *v259 = *v217;
                v222 = *(v218 + 20);
                v223 = v217;
                v243 = v217;
                v224 = &v259[v222];
                v225 = &v223[v222];
                v226 = v218;
                v227 = *&v223[v222];
                v228 = *&v223[v222 + 8];
                v229 = v223[v222 + 16];
                outlined copy of Text.Storage(v227, v228, v229);
                *v224 = v227;
                *(v224 + 1) = v228;
                v224[16] = v229;
                *(v224 + 3) = *(v225 + 3);
                v230 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                v231 = type metadata accessor for UUID();
                v249 = *(*(v231 - 8) + 16);

                v249(&v224[v230], &v225[v230], v231);
                v232 = *(v226 + 24);
                v233 = &v259[v232];
                v234 = &v243[v232];
                if (*v234)
                {
                  v235 = *(v234 + 1);
                  *v233 = *v234;
                  *(v233 + 1) = v235;
                }

                else
                {
                  *v233 = *v234;
                }

                v28 = v263;
                v27 = v266;
                __dsta[7](v259, 0, 1, v226);
              }

              v25[v256[29]] = v26[v256[29]];
              v25[v256[30]] = v26[v256[30]];
              v25[v256[31]] = v26[v256[31]];
              v25[v256[32]] = v26[v256[32]];
              v25[v256[33]] = v26[v256[33]];
              *&v25[v256[34]] = *&v26[v256[34]];

              goto LABEL_144;
            }

            *(v25 + 108) = v209;
            *(v25 + 109) = *(v26 + 109);
            (**(v209 - 8))(v207, v208);
          }

          else
          {
            v211 = *(v26 + 856);
            *v207 = *v208;
            *(v25 + 856) = v211;
            *(v25 + 109) = *(v26 + 109);
          }

          v212 = *(v26 + 110);
          if (v212)
          {
            v213 = *(v26 + 111);
            *(v25 + 110) = v212;
            *(v25 + 111) = v213;
          }

          else
          {
            *(v25 + 55) = *(v26 + 55);
          }

          goto LABEL_137;
        }

        *(v25 + 78) = v196;
        *(v25 + 79) = *(v26 + 79);
        (**(v196 - 8))((v25 + 600), (v26 + 600), v196);
      }

      else
      {
        v198 = *(v26 + 616);
        *v194 = *v195;
        *(v25 + 616) = v198;
        *(v25 + 79) = *(v26 + 79);
      }

      *(v25 + 80) = *(v26 + 80);

      goto LABEL_125;
    case 0:
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 1) = *(a2 + 1);
      v7 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v7;
      v8 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v8;
      v9 = *(a2 + 11);

      if (v9)
      {
        v10 = *(a2 + 12);
        *(a1 + 11) = v9;
        *(a1 + 12) = v10;
        (**(v9 - 8))((a1 + 64), (a2 + 64), v9);
        *(a1 + 13) = *(a2 + 13);
      }

      else
      {
        v43 = *(a2 + 5);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = v43;
        *(a1 + 6) = *(a2 + 6);
      }

      if (a2[152] == 1)
      {
        v44 = *(a2 + 136);
        *(a1 + 136) = v44;
        (**(v44 - 8))((a1 + 112), (a2 + 112));
        a1[152] = 1;
      }

      else
      {
        v45 = *(a2 + 8);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = v45;
        *(a1 + 137) = *(a2 + 137);
      }

      *(a1 + 153) = *(a2 + 153);
      *(a1 + 20) = *(a2 + 20);
      a1[168] = a2[168];
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 22) = *(a2 + 22);
      v46 = *(a2 + 13);
      *(a1 + 13) = v46;
      v47 = v46;
      v48 = **(v46 - 8);

      v48(a1 + 184, a2 + 184, v47);
      v49 = *(a2 + 29);
      *(a1 + 28) = *(a2 + 28);
      *(a1 + 29) = v49;
      *(a1 + 30) = *(a2 + 30);
      *(a1 + 31) = *(a2 + 31);
      *(a1 + 16) = *(a2 + 16);
      v50 = *(a2 + 34);
      v51 = *(a2 + 35);
      *(a1 + 34) = v50;
      *(a1 + 35) = v51;
      v260 = type metadata accessor for ToolbarStorage.Item(0);
      v52 = v260[17];
      v262 = a1;
      v264 = &a1[v52];
      v265 = &a2[v52];
      v53 = type metadata accessor for PlatformItemList.Item();
      v54 = *(v53 - 8);
      v55 = *(v54 + 48);

      v56 = v50;
      v57 = v51;
      v58 = v265;
      if (v55(v265, 1, v53))
      {
        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
        memcpy(v264, v265, *(*(v59 - 8) + 64));
LABEL_88:
        swift_weakCopyInit();
        a1[v260[19]] = a2[v260[19]];
        a1[v260[20]] = a2[v260[20]];
        a1[v260[21]] = a2[v260[21]];
        goto LABEL_145;
      }

      v254 = v54;
      v257 = v53;
      v60 = *v265;
      v61 = v265[1];
      v62 = v264;
      *v264 = *v265;
      v264[1] = v61;
      v63 = v265[3];
      v264[2] = v265[2];
      v264[3] = v63;
      *(v264 + 32) = *(v265 + 32);
      v64 = v265[6];
      v264[5] = v265[5];
      v264[6] = v64;
      *(v264 + 56) = *(v265 + 56);
      v65 = v265[24];
      v66 = v60;
      v67 = v61;

      if (v65 >> 1 == 4294967294)
      {
        v68 = *(v265 + 13);
        *(v264 + 12) = *(v265 + 12);
        *(v264 + 13) = v68;
        *(v264 + 14) = *(v265 + 14);
        *(v264 + 235) = *(v265 + 235);
        v69 = *(v265 + 9);
        *(v264 + 8) = *(v265 + 8);
        *(v264 + 9) = v69;
        v70 = *(v265 + 11);
        *(v264 + 10) = *(v265 + 10);
        *(v264 + 11) = v70;
        v71 = *(v265 + 5);
        *(v264 + 4) = *(v265 + 4);
        *(v264 + 5) = v71;
        v72 = *(v265 + 7);
        *(v264 + 6) = *(v265 + 6);
        *(v264 + 7) = v72;
        v73 = v265[33];
        if (v73)
        {
LABEL_32:
          v264[32] = v265[32];
          v264[33] = v73;
          v74 = v265[34];

          if (v74 >= 2)
          {
            v75 = v74;
          }

          v264[34] = v74;
          *(v264 + 70) = *(v265 + 70);
          *(v264 + 284) = *(v265 + 284);
          *(v264 + 285) = *(v265 + 285);
          v76 = v265[37];
          v264[36] = v265[36];
          v264[37] = v76;

LABEL_46:
          v93 = v265[42];
          if (v93 >> 2 == 0xFFFFFFFF)
          {
            v94 = *(v265 + 24);
            *(v264 + 23) = *(v265 + 23);
            *(v264 + 24) = v94;
            v264[50] = v265[50];
            v95 = *(v265 + 20);
            *(v264 + 19) = *(v265 + 19);
            *(v264 + 20) = v95;
            v96 = *(v265 + 22);
            *(v264 + 21) = *(v265 + 21);
            *(v264 + 22) = v96;
          }

          else
          {
            v97 = v265[38];
            v98 = v265[39];
            v99 = v265[40];
            v100 = v265[41];
            v101 = v265[43];
            v102 = v265[44];
            v103 = v265[45];
            v104 = v265[46];
            v240 = v265[47];
            v241 = v265[48];
            v244 = v265[49];
            __dstb = v265[50];
            outlined copy of PlatformItemList.Item.SystemItem(v97, v98, v99, v100, v93, v101, v102, v103, v104, v240, v241, v244, __dstb);
            v264[38] = v97;
            v264[39] = v98;
            v264[40] = v99;
            v264[41] = v100;
            v58 = v265;
            v264[42] = v93;
            v264[43] = v101;
            v62 = v264;
            v264[44] = v102;
            v264[45] = v103;
            v264[46] = v104;
            v264[47] = v240;
            v264[48] = v241;
            v264[49] = v244;
            v264[50] = __dstb;
          }

          v105 = v58[52];
          if (v105 == 1)
          {
            v106 = *(v58 + 57);
            *(v62 + 55) = *(v58 + 55);
            *(v62 + 57) = v106;
            *(v62 + 472) = *(v58 + 472);
            v107 = *(v58 + 53);
            *(v62 + 51) = *(v58 + 51);
            *(v62 + 53) = v107;
            goto LABEL_59;
          }

          *(v62 + 102) = *(v58 + 102);
          *(v62 + 412) = *(v58 + 412);
          if (v105)
          {
            v108 = v58[53];
            v62[52] = v105;
            v62[53] = v108;

            v109 = v58[54];
            if (v109)
            {
              goto LABEL_53;
            }
          }

          else
          {
            *(v62 + 26) = *(v58 + 26);
            v109 = v58[54];
            if (v109)
            {
LABEL_53:
              v110 = v58[55];
              v62[54] = v109;
              v62[55] = v110;

              v111 = v58[56];
              if (v111)
              {
LABEL_54:
                v112 = v58[57];
                v62[56] = v111;
                v62[57] = v112;

LABEL_58:
                v62[58] = v58[58];
                *(v62 + 472) = *(v58 + 472);
LABEL_59:
                v113 = v58[61];
                v62[60] = v58[60];
                v62[61] = v113;
                v62[62] = v58[62];
                *(v62 + 504) = *(v58 + 504);
                v114 = v58[64];

                if (v114)
                {
                  v115 = v58[65];
                  v62[64] = v114;
                  v62[65] = v115;
                }

                else
                {
                  *(v62 + 32) = *(v58 + 32);
                }

                *(v62 + 528) = *(v58 + 528);
                if (!v58[102])
                {
                  memcpy(v62 + 67, v58 + 67, 0x130uLL);
                  goto LABEL_74;
                }

                v62[67] = v58[67];
                v62[68] = v58[68];
                *(v62 + 552) = *(v58 + 552);
                v62[70] = v58[70];
                *(v62 + 568) = *(v58 + 568);
                *(v62 + 36) = *(v58 + 36);
                *(v62 + 592) = *(v58 + 592);
                v116 = v62 + 75;
                v117 = v58 + 75;
                v118 = v58[78];

                if (v118)
                {
                  if (v118 == 1)
                  {
                    v119 = *(v58 + 77);
                    *v116 = *v117;
                    *(v62 + 77) = v119;
                    *(v62 + 79) = *(v58 + 79);
LABEL_70:
                    v62[81] = v58[81];
                    *(v62 + 656) = *(v58 + 656);
                    v121 = v62 + 83;
                    v122 = v58 + 83;
                    v123 = v58[97];
                    if (v123 == 1)
                    {
                      v124 = *(v58 + 97);
                      *(v62 + 95) = *(v58 + 95);
                      *(v62 + 97) = v124;
                      *(v62 + 99) = *(v58 + 99);
                      *(v62 + 808) = *(v58 + 808);
                      v125 = *(v58 + 89);
                      *(v62 + 87) = *(v58 + 87);
                      *(v62 + 89) = v125;
                      v126 = *(v58 + 93);
                      *(v62 + 91) = *(v58 + 91);
                      *(v62 + 93) = v126;
                      v127 = *(v58 + 85);
                      *v121 = *v122;
                      *(v62 + 85) = v127;
                    }

                    else
                    {
                      *v121 = *v122;
                      *(v62 + 672) = *(v58 + 672);
                      v62[85] = v58[85];
                      *(v62 + 688) = *(v58 + 688);
                      *(v62 + 689) = *(v58 + 689);
                      *(v62 + 691) = *(v58 + 691);
                      *(v62 + 692) = *(v58 + 692);
                      v62[87] = v58[87];
                      v128 = *(v58 + 45);
                      *(v62 + 44) = *(v58 + 44);
                      *(v62 + 45) = v128;
                      v62[92] = v58[92];
                      *(v62 + 372) = *(v58 + 372);
                      *(v62 + 47) = *(v58 + 47);
                      *(v62 + 768) = *(v58 + 768);
                      v62[97] = v123;
                      *(v62 + 49) = *(v58 + 49);
                      v62[100] = v58[100];
                      *(v62 + 808) = *(v58 + 808);
                    }

                    v62[102] = v58[102];
                    v62[103] = v58[103];
                    v62[104] = v265[104];

                    v58 = v265;

LABEL_74:
                    v129 = v62 + 105;
                    v130 = v58 + 105;
                    v131 = v58[108];
                    if (v131)
                    {
                      if (v131 == 1)
                      {
                        v132 = *(v58 + 107);
                        *v129 = *v130;
                        *(v62 + 107) = v132;
                        *(v62 + 109) = *(v58 + 109);
                        v62[111] = v58[111];
LABEL_81:
                        v136 = v58[112];
                        v62[112] = v136;
                        v62[113] = v58[113];
                        v62[114] = v58[114];
                        v62[115] = v58[115];
                        v62[116] = v58[116];
                        v62[117] = v58[117];
                        v62[118] = v58[118];
                        *(v62 + 476) = *(v58 + 476);
                        *(v62 + 954) = *(v58 + 954);
                        v137 = v257[28];
                        __dst = v62 + v137;
                        v138 = v58 + v137;
                        v139 = type metadata accessor for CommandOperation();
                        v140 = *(v139 - 8);
                        v245 = *(v140 + 48);
                        v141 = v136;

                        if (v245(v138, 1, v139))
                        {
                          _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                          memcpy(__dst, v138, *(*(v142 - 8) + 64));
                          a1 = v262;
                          v144 = v254;
                          v143 = v257;
                          v145 = v265;
                        }

                        else
                        {
                          v246 = v139;
                          *__dst = *v138;
                          v146 = *(v139 + 20);
                          v147 = &__dst[v146];
                          v148 = &v138[v146];
                          v149 = *&v138[v146];
                          v150 = *&v138[v146 + 8];
                          v151 = v138[v146 + 16];
                          outlined copy of Text.Storage(v149, v150, v151);
                          *v147 = v149;
                          *(v147 + 1) = v150;
                          v147[16] = v151;
                          *(v147 + 3) = *(v148 + 3);
                          v152 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                          v153 = type metadata accessor for UUID();
                          v154 = *(*(v153 - 8) + 16);

                          v154(&v147[v152], &v148[v152], v153);
                          v155 = *(v246 + 24);
                          v156 = &__dst[v155];
                          v157 = &v138[v155];
                          if (*v157)
                          {
                            v158 = v157[1];
                            *v156 = *v157;
                            v156[1] = v158;
                          }

                          else
                          {
                            *v156 = *v157;
                          }

                          a1 = v262;
                          v144 = v254;
                          v143 = v257;
                          v145 = v265;
                          (*(v140 + 56))(__dst, 0, 1, v246);
                        }

                        *(v264 + v143[29]) = *(v145 + v143[29]);
                        *(v264 + v143[30]) = *(v145 + v143[30]);
                        *(v264 + v143[31]) = *(v145 + v143[31]);
                        *(v264 + v143[32]) = *(v145 + v143[32]);
                        *(v264 + v143[33]) = *(v145 + v143[33]);
                        *(v264 + v143[34]) = *(v145 + v143[34]);
                        v159 = *(v144 + 56);

                        v159(v264, 0, 1, v143);
                        goto LABEL_88;
                      }

                      v62[108] = v131;
                      v62[109] = v58[109];
                      (**(v131 - 1))(v129, v130);
                      v134 = v58[110];
                      if (!v134)
                      {
LABEL_80:
                        *(v62 + 55) = *(v58 + 55);
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v133 = *(v58 + 107);
                      *v129 = *v130;
                      *(v62 + 107) = v133;
                      v62[109] = v58[109];
                      v134 = v58[110];
                      if (!v134)
                      {
                        goto LABEL_80;
                      }
                    }

                    v135 = v58[111];
                    v62[110] = v134;
                    v62[111] = v135;

                    goto LABEL_81;
                  }

                  v62[78] = v118;
                  v62[79] = v58[79];
                  (**(v118 - 1))((v62 + 75), (v58 + 75), v118);
                }

                else
                {
                  v120 = *(v58 + 77);
                  *v116 = *v117;
                  *(v62 + 77) = v120;
                  v62[79] = v58[79];
                }

                v62[80] = v58[80];

                goto LABEL_70;
              }

LABEL_57:
              *(v62 + 28) = *(v58 + 28);
              goto LABEL_58;
            }
          }

          *(v62 + 27) = *(v58 + 27);
          v111 = v58[56];
          if (v111)
          {
            goto LABEL_54;
          }

          goto LABEL_57;
        }
      }

      else
      {
        v81 = *(v265 + 72);
        if (v81 == 255)
        {
          v264[8] = v265[8];
          *(v264 + 72) = *(v265 + 72);
        }

        else
        {
          v82 = v265[8];
          outlined copy of GraphicsImage.Contents(v82, *(v265 + 72));
          v264[8] = v82;
          *(v264 + 72) = v81;
          v65 = v265[24];
        }

        v264[10] = v265[10];
        *(v264 + 11) = *(v265 + 11);
        *(v264 + 104) = *(v265 + 104);
        *(v264 + 108) = *(v265 + 108);
        *(v264 + 121) = *(v265 + 121);
        *(v264 + 17) = *(v265 + 17);
        *(v264 + 19) = *(v265 + 19);
        *(v264 + 84) = *(v265 + 84);
        *(v264 + 170) = *(v265 + 170);
        *(v264 + 171) = *(v265 + 171);
        if (v65 >> 1 == 0xFFFFFFFF)
        {
          v85 = *(v265 + 12);
          *(v264 + 11) = *(v265 + 11);
          *(v264 + 12) = v85;
        }

        else
        {
          v86 = v265[22];
          v87 = v265[23];
          v88 = v265[25];
          outlined copy of AccessibilityImageLabel(v86, v87, v65);
          v264[22] = v86;
          v264[23] = v87;
          v264[24] = v65;
          v264[25] = v88;
        }

        v89 = v265[27];
        v264[26] = v265[26];
        v264[27] = v89;
        *(v264 + 112) = *(v265 + 112);
        *(v264 + 57) = *(v265 + 57);
        *(v264 + 232) = *(v265 + 232);
        v90 = v265[30];
        v264[30] = v90;
        *(v264 + 124) = *(v265 + 124);
        *(v264 + 250) = *(v265 + 250);
        swift_unknownObjectRetain();

        v91 = v90;
        v73 = v265[33];
        if (v73)
        {
          goto LABEL_32;
        }
      }

      v92 = *(v265 + 17);
      *(v264 + 16) = *(v265 + 16);
      *(v264 + 17) = v92;
      *(v264 + 18) = *(v265 + 18);
      goto LABEL_46;
  }

  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(int a1, _OWORD *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 4 * result) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a1, v19);
  }

  return result;
}

uint64_t ToolbarPlacementEnvironment.barConfiguration(in:)(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v1 = v22;
    if (v22)
    {
      goto LABEL_3;
    }

    return 0;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_toolbarItemPlatterVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration>, &type metadata for EnvironmentValues.__Key_barConfiguration, &protocol witness table for EnvironmentValues.__Key_barConfiguration, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_barConfiguration> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.getter();
  v1 = v22;
  if (!v22)
  {
    return 0;
  }

LABEL_3:
  Value = AGGraphGetValue();
  outlined init with copy of ToolbarItemPlacement(Value, &v22);
  outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18);
  if (v21 == 2 && (v18 != 13 ? (v3 = v18 == 4) : (v3 = 1), v3 && (v4 = vorrq_s8(v19, v20), !*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))) || (outlined destroy of ToolbarItemPlacement.Role(&v18), outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18), v21 == 2) && v18 == 8 && (v5 = vorrq_s8(v19, v20), !*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL))))
  {
    outlined destroy of ToolbarItemPlacement.Role(&v22);
    v6 = AGGraphGetValue();
    outlined init with copy of ToolbarItemPlacement(v6, &v22);
    outlined init with copy of ToolbarItemPlacement.Role(&v22, &v18);
    if (v21 == 2 && (v18 == 13 || v18 == 4))
    {
      v8 = vorrq_s8(v19, v20);
      if (!*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))
      {
        result = outlined destroy of ToolbarItemPlacement.Role(&v22);
        v10 = *(v1 + 16);
        if (!v10)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    outlined destroy of ToolbarItemPlacement.Role(&v18);
    outlined destroy of ToolbarItemPlacement.Role(&v22);

    return 0;
  }

  outlined destroy of ToolbarItemPlacement.Role(&v18);
  result = outlined destroy of ToolbarItemPlacement.Role(&v22);
  v10 = *(v1 + 16);
  if (!v10)
  {
LABEL_21:
    v11 = MEMORY[0x1E69E7CC0];
LABEL_22:

    return v11;
  }

LABEL_26:
  v12 = 0;
  v13 = v1 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  while (v12 < *(v1 + 16))
  {
    outlined init with copy of ContentScrollViewBox(v13, &v22);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (Strong, (v23 & 2) != 0))
    {
      outlined init with take of ContentScrollViewBox(&v22, &v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1);
        v11 = v24;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      result = outlined init with take of ContentScrollViewBox(&v18, v11 + 48 * v17 + 32);
    }

    else
    {
      result = outlined destroy of ContentScrollViewBox(&v22);
    }

    ++v12;
    v13 += 48;
    if (v10 == v12)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t assignWithCopy for ScrollViewLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = v7;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  return a1;
}

uint64_t _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v5 = [v2 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v17 = v14;
        v9 = v12;
        v10 = a1(&v17);

        if ((v10 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v15 = _sSo22UINavigationControllerC7SwiftUIE16visitDescendents12matchingType7visitorSbxm_SbxXEtlFAC022NavigationStackHostingB0CyAC7AnyViewVG_Ttg5(a1, a2);

          if ((v15 & 1) == 0)
          {
LABEL_18:

            return 0;
          }
        }

        else
        {
        }
      }

      ++v8;
      if (v13 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_17:

  return 1;
}

uint64_t closure #2 in TransformScrollStorageEnvironment.updateValue()(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    outlined init with copy of ScrollEnvironmentProperties(a2, v10);
    ScrollEnvironmentStorage.baseProperties.setter(v10);
    v10[3] = a4;
    v10[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a3, a4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v10, type metadata accessor for ScrollEnvironmentTransform?);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined copy of ResolvedNavigationDestinations.ChangeRequest(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.copy()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  outlined copy of NavigationPath.Representation(v1, v2, v3, v4);

  return v7;
}

unint64_t ResolvedNavigationDestinations.ejectDestinations(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = v1[2];
  if (!*(v3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(v3 + 56) + 8 * v5);
  swift_bridgeObjectRetain_n();
  specialized Dictionary._Variant.removeValue(forKey:)(a1);

  v46 = *(v7 + 16);
  if (!v46)
  {
LABEL_35:

    return v7;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (v9 < *(v7 + 16))
  {
    v11 = *(v10 + 8 * v9);
    if (a1 == -1)
    {
      v25 = v2[1];
      if (*(v25 + 16))
      {
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(*(v10 + 8 * v9));
        if (v27)
        {
          v28 = *(**(*(v25 + 56) + 8 * v26) + 96);

          v30 = v28(v29);
          v32 = v31;
          v10 = v7 + 32;

          if (v32)
          {
            v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v32);
            if (v34)
            {
              v35 = v33;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v37 = v2[4];
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized _NativeDictionary.copy()();
              }

              specialized _NativeDictionary._delete(at:)(v35, v37);

              v2[4] = v37;
            }

            else
            {
            }

            v10 = v7 + 32;
          }
        }
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v42)
      {
        v43 = result;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v45 = v2[1];
        if (!v44)
        {
          specialized _NativeDictionary.copy()();
        }

        specialized _NativeDictionary._delete(at:)(v43, v45);

        v2[1] = v45;
      }
    }

    else
    {
      v12 = *v2;
      if (*(*v2 + 16))
      {
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(*(v10 + 8 * v9));
        if (v14)
        {
          v15 = *(**(*(v12 + 56) + 8 * v13) + 96);

          v17 = v15(v16);
          v19 = v18;
          v10 = v7 + 32;

          if (v19)
          {
            v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v19);
            if (v21)
            {
              v22 = v20;
              v23 = swift_isUniquelyReferenced_nonNull_native();
              v24 = v2[4];
              if (!v23)
              {
                specialized _NativeDictionary.copy()();
              }

              specialized _NativeDictionary._delete(at:)(v22, v24);

              v2[4] = v24;
            }

            else
            {
            }

            v10 = v7 + 32;
          }
        }
      }

      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v38)
      {
        v39 = result;
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v41 = *v2;
        v47 = *v2;
        if (!v40)
        {
          specialized _NativeDictionary.copy()();
          v41 = v47;
        }

        specialized _NativeDictionary._delete(at:)(v39, v41);

        *v2 = v41;
      }
    }

    if (v46 == ++v9)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

void type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Int, [ObjectIdentifier]>)
  {
    type metadata accessor for PredicateExpressions.Variable<String>(255, &lazy cache variable for type metadata for [ObjectIdentifier], MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<Int, [ObjectIdentifier]>);
    }
  }
}

uint64_t destroy for NavigationRequest.ListRequest(uint64_t result)
{
  v1 = result;
  switch(*(result + 96))
  {
    case 0:
      goto LABEL_31;
    case 1:

      goto LABEL_31;
    case 2:

      result = (v1 + 2);
      goto LABEL_35;
    case 3:

    case 4:
    case 5:

      goto LABEL_31;
    case 6:

      goto LABEL_31;
    case 0xA:
    case 0x11:
      __swift_destroy_boxed_opaque_existential_1(result);

      goto LABEL_31;
    case 0xB:
LABEL_35:

      return __swift_destroy_boxed_opaque_existential_1(result);
    case 0xC:
    case 0xD:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 1));
      }

      if (v1[7] != 1)
      {
      }

      goto LABEL_31;
    case 0xE:

      if (v1[4])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 1));
      }

      result = v1[7];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_31;
    case 0x12:

      if (v1[5])
      {
        __swift_destroy_boxed_opaque_existential_1((v1 + 2));
      }

      if (v1[8] != 1)
      {
      }

      goto LABEL_31;
    case 0x13:
      if (*(result + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(result);
      }

      result = v1[6];
      if (result == 1)
      {
        return result;
      }

      goto LABEL_31;
    case 0x15:
      if (*result)
      {
      }

      if (v1[2])
      {
LABEL_31:
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s7SwiftUI30ResolvedNavigationDestinationsV16prepareToPresent4view2at012shouldUpdateE08applyingAA7AnyViewVx_AA0d5StackO8PositionVSbq_ALXEtAA0O0RzAA0O8ModifierR_r0_lFZAA09_VariadicO0O4TreeVy_AA13_VStackLayoutVAA01_dP18StyleConfigurationV4RootVG_AA05EmptyR0VTt3B5Tf4nndn_n(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(uint64_t *))
{
  *(&v14 + 1) = a2;
  v6 = *a4;
  v7 = a4[1];
  v13 = *(a4 + 16);
  *&v14 = a1;
  v8 = a4[3];
  v9 = a4[4];
  v10 = a4[5] & 1;
  LOBYTE(v29) = a3 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = 1;
  a5(a4);
  v23 = v14;
  LOBYTE(v24) = v29;
  *(&v24 + 1) = v6;
  *&v25 = v7;
  *(&v25 + 1) = v13;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  LOBYTE(v27) = v10;
  BYTE1(v27) = 1;
  *(&v27 + 1) = partial apply for closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:);
  v28 = v11;
  v22 = v11;
  v20 = v26;
  v21 = v27;
  v17 = v14;
  v18 = v24;
  v19 = v25;
  v29 = v14;
  v30 = v24;
  v31 = v6;
  v32 = v7;
  v33 = v13;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = 1;
  v38 = partial apply for closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:);
  v39 = v11;
  outlined init with copy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(&v23, v16);
  outlined destroy of ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>(&v29);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, EmptyModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, _NavigationStackStyleConfiguration.Root>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>);
  return AnyView.init<A>(_:)();
}

void specialized _UIHostingView.containerBackgroundColor.setter(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1F0);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;

  _UIHostingView.updateBackgroundColor()();
}

double @objc _UIHostingView.transform3D.getter@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  _UIHostingView.transform3D.getter(v12);

  result = *v12;
  v5 = v12[1];
  v6 = v12[2];
  v7 = v12[3];
  v8 = v12[4];
  v9 = v12[5];
  v10 = v12[6];
  v11 = v12[7];
  *a2 = v12[0];
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  a2[7] = v11;
  return result;
}

void PlatformBarUpdater.callAsFunction(configurations:context:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v7 = v4[7];
  v8 = v4[8];
  v9 = v4 + 7;
  v4[7] = a2;
  v4[8] = a3;
  v10 = a2;
  v11 = a3;

  if (a1)
  {
    swift_beginAccess();
    v4[3] = a1;

    swift_beginAccess();

    specialized Set.formUnion<A>(_:)(v12);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = v4[3];
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);

  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  while (v16)
  {
    v19 = v17;
LABEL_12:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    outlined init with copy of ToolbarPlacement.Role(*(v13 + 48) + 40 * (v20 | (v19 << 6)), v28);
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    v21 = v4[6];

    v22 = specialized Set.contains(_:)(v26, v21);

    if (v22 & 1) != 0 && (PlatformBarUpdater.updateIfNeeded(role:)(v26))
    {
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v26, v25);
      swift_endAccess();
      _s7SwiftUI22NavigationTitleStorageVSgWOhTm_0(v25, &lazy cache variable for type metadata for ToolbarPlacement.Role?, &type metadata for ToolbarPlacement.Role);
    }

    outlined destroy of ToolbarPlacement.Role(v26);
    v17 = v19;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      v23 = v4[7];
      v24 = v4[8];
      *v9 = 0;
      v9[1] = 0;

      return;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v17;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall NavigationStackCoordinator.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40] & *v3;
  if (!animated || (v7 = *MEMORY[0x1E69E7D40] & *v3, v9 = [(UINavigationController *)_ transitionCoordinator], v5 = *v4 & *v3, !v9))
  {
    *(v3 + *(v5 + 144)) = 0;
    return;
  }

  v10 = v9;
  v11 = *((*v4 & *v3) + 0x90);
  *(v3 + v11) = 1;
  v12 = swift_allocObject();
  v47 = v3;
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = *(v7 + 80);
  v13[2] = v14;
  v15 = *(v7 + 88);
  v13[3] = v15;
  v13[4] = v12;
  v64 = partial apply for closure #1 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
  v65 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v63 = &block_descriptor_78;
  v16 = _Block_copy(&aBlock);

  [v10 animateAlongsideTransition:0 completion:v16];
  _Block_release(v16);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([(UINavigationController *)_ lastOperation]== 1)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v14;
    v18[3] = v15;
    v18[4] = v17;
    v18[5] = _;
    v64 = partial apply for closure #2 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
    v65 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v19 = &block_descriptor_25_0;
LABEL_6:
    v62 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v63 = v19;
    v20 = _Block_copy(&aBlock);
    v21 = _;

    [v10 notifyWhenInteractionChangesUsingBlock_];
    _Block_release(v20);
LABEL_21:
    swift_unknownObjectRelease();
    return;
  }

  v22 = *(v47 + *((*v4 & *v47) + 0x88));
  if (v22)
  {
    v23 = v22 == willShow;
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  v46 = v24;
  v25 = [(UINavigationController *)_ viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v26 >> 62)
  {
    v27 = __CocoaSet.count.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  NavigationStackCoordinator.previousContent.getter(&aBlock);
  v28 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(&aBlock);
  if (v27 >= v28 || *(v47 + *((*v4 & *v47) + 0x80)) == 1 || (v46 & 1) == 0)
  {
    goto LABEL_21;
  }

  if ([v10 isInteractive])
  {
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v14;
    v30[3] = v15;
    v30[4] = v29;
    v30[5] = _;
    v64 = partial apply for closure #3 in NavigationStackCoordinator.navigationController(_:willShow:animated:);
    v65 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v61 = 1107296256;
    v19 = &block_descriptor_18_1;
    goto LABEL_6;
  }

  v31 = [(UINavigationController *)_ viewControllers];
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  NavigationStackCoordinator.previousContent.getter(&aBlock);
  v34 = NavigationState.Base.count.getter();
  outlined destroy of NavigationState.StackContent(&aBlock);
  *(v47 + v11) = 0;
  if (one-time initialization token for deselectionIsAtEndOfAnimatedTransitions != -1)
  {
    swift_once();
  }

  v35 = deselectionIsAtEndOfAnimatedTransitions;
  if (deselectionIsAtEndOfAnimatedTransitions)
  {
    v36 = 257;
  }

  else
  {
    v36 = 1;
  }

  *(v47 + *((*v4 & *v47) + 0x78)) = v36;
  outlined init with copy of NavigationAuthority(v47 + *((*v4 & *v47) + 0x68), v59);
  v37 = v34 - v33;
  if (__OFSUB__(v34, v33))
  {
    __break(1u);
  }

  else
  {
    NavigationStackCoordinator.previousContent.getter(&aBlock);
    v38 = NavigationState.StackContent.topKey.getter();
    v40 = v39;
    v42 = v41;
    outlined destroy of NavigationState.StackContent(&aBlock);
    static Transaction.current.getter();
    static Transaction.current.getter();
    v43 = Transaction.disablesAnimations.getter();

    if (v43)
    {
      v44 = 1;
    }

    else
    {
      v44 = Transaction.disablesAnimations.getter();
    }

    static Transaction.current.getter();
    v45 = Transaction.animation.getter();

    if (!v45)
    {
      v45 = Transaction.animation.getter();
    }

    v48 = v37;
    v49 = v35;
    v50 = 9;
    v51 = v38;
    v52 = v40;
    v53 = v42;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = v44 & 1;
    v58 = v45;
    NavigationAuthority.enqueueRequest(_:)(&v48);
    swift_unknownObjectRelease();
    outlined destroy of NavigationRequest(&v48);
    outlined destroy of NavigationAuthority(v59);
  }
}

uint64_t sub_18BF1F894()
{

  return swift_deallocObject();
}

uint64_t NavigationStackCoordinator.environment.getter()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = *(v3 + 0x70);
  swift_beginAccess();
  v5 = *((v2 & v1) + 0x50);
  result = (*(*(v5 - 8) + 48))(&v0[v4], 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v3 + 88) + 24))(v5);
    return swift_endAccess();
  }

  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance ScrollTransitionModifier<A>.StageProgress(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t closure #2 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ScrollTransitionModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 16, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_9, v5, &type metadata for ScrollTransitionConfiguration, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

unint64_t lazy protocol witness table accessor for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier()
{
  result = lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier;
  if (!lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationDestinationScopeModifier and conformance NavigationDestinationScopeModifier);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance FormInsetsKey(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 9) = *(a2 + 41);
  return MEMORY[0x18D006FC0](v7, v5) & 1;
}

uint64_t EnvironmentValues.accessibilitySwitchControlEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 1) & 1;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined init with take of (key: NavigationLinkSelectionIdentifier, value: UpdateViewDestinationRequest)?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata accessor for (key: ViewIdentity, value: ConfirmationDialog)?(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for (key: ViewIdentity, value: InspectorStorage)(255, a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t EnvironmentValues.isScrollViewTransformClippingEnabled.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v1)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v2 = v19[0];
  swift_getKeyPath();
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v19[0] + 16, v19);
  swift_getKeyPath();
  v18[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v2 + 280, v18, type metadata accessor for ScrollEnvironmentTransform?);
  if (v18[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v18, v15);
    v3 = v16;
    v4 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v4 + 8))(v19, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v5 = BYTE1(v19[0]);
  outlined destroy of ScrollEnvironmentProperties(v19);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v5>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    if (v1)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v7 = v18[0];
    swift_getKeyPath();
    v18[0] = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v7 + 16, v18);
    swift_getKeyPath();
    v15[0] = v7;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v7 + 280, v15, type metadata accessor for ScrollEnvironmentTransform?);
    if (v16)
    {
      outlined init with take of ScrollEnvironmentTransform(v15, v12);
      v8 = v13;
      v9 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v9 + 8))(v18, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    v10 = BYTE2(v18[0]);
    outlined destroy of ScrollEnvironmentProperties(v18);
    v6 = v10 ^ 1;
  }

  return v6 & 1;
}

void *destructiveInjectEnumTag for ScrollTransitionConfiguration.Mode(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[4] = result[4] & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *(result + 2) = xmmword_18CD68310;
  }

  return result;
}

uint64_t sub_18BF203DC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t View.defaultToolbarBarPocket()(uint64_t a1, uint64_t a2)
{
  v6[0] = swift_getKeyPath();
  v7 = 0;
  KeyPath = swift_getKeyPath();
  v9 = 0;
  type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>();
  MEMORY[0x18D00A570](v6, a1, v4, a2);
  return _s7SwiftUI16CommandOperationVWOhTm_3(v6, type metadata accessor for StaticIf<Solarium, DefaultToolbarBarPocketModifier, EmptyModifier>);
}

uint64_t outlined init with copy of ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t destroy for ToolbarStorage.Item(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }

  if (*(a1 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 112);
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 184);

  v4 = a1 + *(a2 + 68);
  v5 = type metadata accessor for PlatformItemList.Item();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v4 + 192);
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v8 = *(v4 + 72);
      if (v8 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v4 + 64), v8);
        v6 = *(v4 + 192);
        v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v7 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v4 + 176), *(v4 + 184), v6);
      }

      swift_unknownObjectRelease();
    }

    if (*(v4 + 264))
    {

      v9 = *(v4 + 272);
      if (v9 >= 2)
      {
      }
    }

    v10 = *(v4 + 336);
    if (v10 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v4 + 304), *(v4 + 312), *(v4 + 320), *(v4 + 328), v10, *(v4 + 344), *(v4 + 352), *(v4 + 360), *(v4 + 368), *(v4 + 376), *(v4 + 384), *(v4 + 392), *(v4 + 400));
    }

    v11 = *(v4 + 416);
    if (v11)
    {
      if (v11 == 1)
      {
        goto LABEL_25;
      }
    }

    if (*(v4 + 432))
    {
    }

    if (*(v4 + 448))
    {
    }

LABEL_25:

    if (*(v4 + 512))
    {
    }

    if (!*(v4 + 816))
    {
LABEL_35:
      v13 = *(v4 + 864);
      if (v13)
      {
        if (v13 == 1)
        {
LABEL_40:

          v14 = v4 + *(v5 + 112);
          v15 = type metadata accessor for CommandOperation();
          if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
          {
            v16 = v14 + *(v15 + 20);
            outlined consume of Text.Storage(*v16, *(v16 + 8), *(v16 + 16));

            v17 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v18 = type metadata accessor for UUID();
            (*(*(v18 - 8) + 8))(v16 + v17, v18);
            if (*(v14 + *(v15 + 24)))
            {
            }
          }

          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1(v4 + 840);
      }

      if (*(v4 + 880))
      {
      }

      goto LABEL_40;
    }

    v12 = *(v4 + 624);
    if (v12)
    {
      if (v12 == 1)
      {
LABEL_32:
        if (*(v4 + 776) != 1)
        {
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1(v4 + 600);
    }

    goto LABEL_32;
  }

LABEL_44:

  return swift_weakDestroy();
}

void type metadata accessor for (Int, ToolbarStorage.Item)()
{
  if (!lazy cache variable for type metadata for (Int, ToolbarStorage.Item))
  {
    type metadata accessor for ToolbarStorage.Item(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Int, ToolbarStorage.Item));
    }
  }
}

uint64_t outlined init with copy of ToolbarStorage.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithTake for ToolbarStorage.Item(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  *(a1 + 137) = *(a2 + 137);
  v11 = *(a2 + 128);
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 96) = v9;
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 184) = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 280) = *(a2 + 280);
  v13 = a3[17];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  *(a1 + 200) = v12;
  v16 = type metadata accessor for PlatformItemList.Item();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    *(v14 + 32) = *(v15 + 32);
    *(v14 + 40) = *(v15 + 40);
    *(v14 + 56) = *(v15 + 56);
    v20 = v15[13];
    v14[12] = v15[12];
    v14[13] = v20;
    v14[14] = v15[14];
    *(v14 + 235) = *(v15 + 235);
    v21 = v15[9];
    v14[8] = v15[8];
    v14[9] = v21;
    v22 = v15[11];
    v14[10] = v15[10];
    v14[11] = v22;
    v23 = v15[5];
    v14[4] = v15[4];
    v14[5] = v23;
    v24 = v15[7];
    v14[6] = v15[6];
    v14[7] = v24;
    v25 = v15[17];
    v14[16] = v15[16];
    v14[17] = v25;
    v26 = v15[23];
    v14[22] = v15[22];
    v14[23] = v26;
    v14[24] = v15[24];
    *(v14 + 50) = *(v15 + 50);
    v27 = v15[19];
    v14[18] = v15[18];
    v14[19] = v27;
    v28 = v15[21];
    v14[20] = v15[20];
    v14[21] = v28;
    v29 = *(v15 + 456);
    *(v14 + 440) = *(v15 + 440);
    *(v14 + 456) = v29;
    *(v14 + 472) = *(v15 + 472);
    v30 = *(v15 + 424);
    *(v14 + 408) = *(v15 + 408);
    *(v14 + 424) = v30;
    v14[30] = v15[30];
    *(v14 + 489) = *(v15 + 489);
    v14[32] = v15[32];
    *(v14 + 528) = *(v15 + 528);
    memcpy(v14 + 536, v15 + 536, 0x130uLL);
    v31 = *(v15 + 856);
    *(v14 + 840) = *(v15 + 840);
    *(v14 + 856) = v31;
    *(v14 + 872) = *(v15 + 872);
    *(v14 + 111) = *(v15 + 111);
    *(v14 + 112) = *(v15 + 112);
    *(v14 + 904) = *(v15 + 904);
    *(v14 + 920) = *(v15 + 920);
    *(v14 + 117) = *(v15 + 117);
    *(v14 + 118) = *(v15 + 118);
    *(v14 + 952) = *(v15 + 952);
    *(v14 + 953) = *(v15 + 953);
    v32 = v16[28];
    __dst = v14 + v32;
    v33 = v15 + v32;
    v34 = type metadata accessor for CommandOperation();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
      memcpy(__dst, v33, *(*(v36 - 8) + 64));
    }

    else
    {
      *__dst = *v33;
      v37 = *(v34 + 20);
      v46 = v17;
      v38 = &__dst[v37];
      v45 = &v33[v37];
      v39 = *&v33[v37 + 16];
      *v38 = *&v33[v37];
      v38[1] = v39;
      v44 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v40 = type metadata accessor for UUID();
      v41 = v38 + v44;
      v17 = v46;
      (*(*(v40 - 8) + 32))(v41, &v45[v44], v40);
      *&__dst[*(v34 + 24)] = *&v33[*(v34 + 24)];
      (*(v35 + 56))();
    }

    *(v14 + v16[29]) = *(v15 + v16[29]);
    *(v14 + v16[30]) = *(v15 + v16[30]);
    *(v14 + v16[31]) = *(v15 + v16[31]);
    *(v14 + v16[32]) = *(v15 + v16[32]);
    *(v14 + v16[33]) = *(v15 + v16[33]);
    *(v14 + v16[34]) = *(v15 + v16[34]);
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  swift_weakTakeInit();
  v42 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v42) = *(a2 + v42);
  *(a1 + a3[21]) = *(a2 + a3[21]);
  return a1;
}

uint64_t outlined destroy of ToolbarViewListVisitor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitViewState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

BOOL specialized closure #1 in NavigationStackCoordinator.updateNavigationController(_:environment:transaction:seeds:transparentBackground:strategy:)(uint64_t a1, void *a2)
{
  NavigationState.StackContent.structuralSeed.getter(&v15);
  v3 = v15;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xB0);
  swift_beginAccess();
  outlined init with copy of NavigationState.StackContent?(a2 + v5, __src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  if (LOBYTE(__src[112]) == 255)
  {
    outlined destroy of PPTTestCase?(__src, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
    v6 = a2 + *((*v4 & *a2) + 0x60);
    v7 = *v6;
    v8 = v6[8];
    v9 = *(v6 + 2);
    if (v8 == 4)
    {
      LOBYTE(v8) = 0;
    }

    *__dst = v7;
    __dst[8] = v8;
    *&__dst[16] = v9;
    __dst[448] = 0;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  NavigationState.StackContent.structuralSeed.getter(__src);
  outlined destroy of NavigationState.StackContent(__dst);
  return v3 != -1 && __src[0] != -1 && v3 == __src[0];
}

uint64_t outlined destroy of NavigationAuthority?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationAuthority?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for NavigationLinkPresentedValue?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI19NavigationAuthorityVSgMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI19NavigationAuthorityVSgWOhTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t initializeWithCopy for PositionedNavigationDestination.Storage.SeededRequest(uint64_t a1, uint64_t a2)
{
  switch(*(a2 + 96))
  {
    case 0:
      v4 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v4;
      *(a1 + 96) = 0;
      goto LABEL_57;
    case 1:
      v22 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v22;
      v23 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v23;
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 96) = 1;

      goto LABEL_57;
    case 2:
      v14 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v14;
      v15 = *(a2 + 40);
      *(a1 + 40) = v15;
      v16 = v15;
      v17 = **(v15 - 8);

      v17(a1 + 16, a2 + 16, v16);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 2;
      break;
    case 3:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 96) = 3;

      break;
    case 4:
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      *(a1 + 16) = *(a2 + 16);
      v13 = 4;
      goto LABEL_21;
    case 5:
      v18 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v18;
      *(a1 + 16) = *(a2 + 16);
      v13 = 5;
      goto LABEL_21;
    case 6:
      v24 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v24;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 96) = 6;

      goto LABEL_57;
    case 0xA:
      v25 = *(a2 + 24);
      *(a1 + 24) = v25;
      (**(v25 - 8))(a1, a2);
      v26 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
      v13 = 10;
      goto LABEL_21;
    case 0xB:
      v34 = *(a2 + 24);
      *(a1 + 24) = v34;
      (**(v34 - 8))(a1, a2);
      *(a1 + 96) = 11;
      break;
    case 0xC:
      *a1 = *a2;
      v31 = (a1 + 8);
      v32 = *(a2 + 32);

      if (v32)
      {
        v33 = *(a2 + 40);
        *(a1 + 32) = v32;
        *(a1 + 40) = v33;
        (**(v32 - 8))(a1 + 8, a2 + 8, v32);
      }

      else
      {
        v53 = *(a2 + 24);
        *v31 = *(a2 + 8);
        *(a1 + 24) = v53;
        *(a1 + 40) = *(a2 + 40);
      }

      v54 = *(a2 + 56);
      if (v54 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v54;
      }

      v55 = *(a2 + 72);
      v56 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v55;
      *(a1 + 80) = v56;
      v42 = 12;
      goto LABEL_56;
    case 0xD:
      *a1 = *a2;
      v8 = (a1 + 8);
      v9 = *(a2 + 32);

      if (v9)
      {
        v10 = *(a2 + 40);
        *(a1 + 32) = v9;
        *(a1 + 40) = v10;
        (**(v9 - 8))(a1 + 8, a2 + 8, v9);
      }

      else
      {
        v43 = *(a2 + 24);
        *v8 = *(a2 + 8);
        *(a1 + 24) = v43;
        *(a1 + 40) = *(a2 + 40);
      }

      v44 = *(a2 + 56);
      if (v44 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v44;
      }

      v45 = *(a2 + 72);
      v46 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v45;
      *(a1 + 80) = v46;
      *(a1 + 88) = *(a2 + 88);
      v42 = 13;
      goto LABEL_56;
    case 0xE:
      *a1 = *a2;
      v19 = (a1 + 8);
      v20 = *(a2 + 32);

      if (v20)
      {
        v21 = *(a2 + 40);
        *(a1 + 32) = v20;
        *(a1 + 40) = v21;
        (**(v20 - 8))(a1 + 8, a2 + 8, v20);
      }

      else
      {
        v47 = *(a2 + 24);
        *v19 = *(a2 + 8);
        *(a1 + 24) = v47;
        *(a1 + 40) = *(a2 + 40);
      }

      v48 = *(a2 + 56);
      if (v48 == 1)
      {
        *(a1 + 48) = *(a2 + 48);
      }

      else
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v48;
      }

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 96) = 14;
      break;
    case 0x11:
      v11 = *(a2 + 24);
      *(a1 + 24) = v11;
      (**(v11 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 40);
      v12 = *(a2 + 56);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v12;
      *(a1 + 64) = *(a2 + 64);
      v13 = 17;
LABEL_21:
      *(a1 + 96) = v13;

      goto LABEL_57;
    case 0x12:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      v6 = *(a2 + 40);

      if (v6)
      {
        v7 = *(a2 + 48);
        *(a1 + 40) = v6;
        *(a1 + 48) = v7;
        (**(v6 - 8))(a1 + 16, a2 + 16, v6);
      }

      else
      {
        v38 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v38;
        *(a1 + 48) = *(a2 + 48);
      }

      v39 = *(a2 + 64);
      if (v39 == 1)
      {
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v39;
      }

      v40 = *(a2 + 80);
      v41 = *(a2 + 88);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = v40;
      *(a1 + 88) = v41;
      v42 = 18;
LABEL_56:
      *(a1 + 96) = v42;
LABEL_57:

      break;
    case 0x13:
      v27 = *(a2 + 24);
      if (v27)
      {
        v28 = *(a2 + 32);
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        (**(v27 - 8))(a1, a2);
      }

      else
      {
        v49 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v49;
        *(a1 + 32) = *(a2 + 32);
      }

      v50 = *(a2 + 48);
      if (v50 == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = v50;
      }

      *(a1 + 56) = *(a2 + 56);
      *(a1 + 96) = 19;
      break;
    case 0x15:
      if (*a2)
      {
        v29 = *(a2 + 8);
        *a1 = *a2;
        *(a1 + 8) = v29;
      }

      else
      {
        *a1 = *a2;
      }

      v51 = *(a2 + 16);
      if (v51)
      {
        v52 = *(a2 + 24);
        *(a1 + 16) = v51;
        *(a1 + 24) = v52;
      }

      else
      {
        *(a1 + 16) = *(a2 + 16);
      }

      *(a1 + 96) = 21;
      break;
    default:
      v35 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v35;
      *(a1 + 96) = *(a2 + 96);
      v36 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v36;
      v37 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v37;
      break;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  return a1;
}

uint64_t (*ToolbarModifier.TransformProperties.value.getter())(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  Value = AGGraphGetValue();
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgWOcTm_1(Value, v6, type metadata accessor for ToolbarStorage.NavigationProperties?);
  outlined init with take of ToolbarStorage.SearchItem?(v6, v3, type metadata accessor for ToolbarStorage.NavigationProperties?);
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  outlined init with take of ToolbarStorage.SearchItem?(v3, v9 + v8, type metadata accessor for ToolbarStorage.NavigationProperties?);
  return partial apply for closure #1 in ToolbarModifier.TransformProperties.value.getter;
}

uint64_t sub_18BF21B44()
{
  type metadata accessor for ToolbarStorage.NavigationProperties?(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    v4 = *(v2 + 8);
    if (v4 != 255)
    {
      outlined consume of ResolvableCLKTextProvider.FontStorage(*v2, v4 & 1);
    }

    v5 = *(v2 + 24);
    if (v5 <= 0xFD)
    {
      outlined consume of PlatformItemCollection.Storage(*(v2 + 16), v5 & 1);
    }

    MEMORY[0x18D011290](v2 + 32);

    v6 = v2 + *(v3 + 32);
    v7 = type metadata accessor for PlatformItemList.Item();
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v6 + 192);
      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
      {
        v10 = *(v6 + 72);
        if (v10 != 255)
        {
          outlined consume of GraphicsImage.Contents(*(v6 + 64), v10);
          v8 = *(v6 + 192);
          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        }

        if (v9 != 0x1FFFFFFFELL)
        {
          outlined consume of AccessibilityImageLabel(*(v6 + 176), *(v6 + 184), v8);
        }

        swift_unknownObjectRelease();
      }

      if (*(v6 + 264))
      {

        v11 = *(v6 + 272);
        if (v11 >= 2)
        {
        }
      }

      v12 = *(v6 + 336);
      if (v12 >> 2 != 0xFFFFFFFF)
      {
        outlined consume of PlatformItemList.Item.SystemItem(*(v6 + 304), *(v6 + 312), *(v6 + 320), *(v6 + 328), v12, *(v6 + 344), *(v6 + 352), *(v6 + 360), *(v6 + 368), *(v6 + 376), *(v6 + 384), *(v6 + 392), *(v6 + 400));
      }

      v13 = *(v6 + 416);
      if (v13)
      {
        if (v13 == 1)
        {
          goto LABEL_26;
        }
      }

      if (*(v6 + 432))
      {
      }

      if (*(v6 + 448))
      {
      }

LABEL_26:

      if (*(v6 + 512))
      {
      }

      if (!*(v6 + 816))
      {
LABEL_36:
        v15 = *(v6 + 864);
        if (v15)
        {
          if (v15 == 1)
          {
LABEL_41:

            v16 = v6 + *(v7 + 112);
            v17 = type metadata accessor for CommandOperation();
            if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
            {
              v18 = v16 + *(v17 + 20);
              outlined consume of Text.Storage(*v18, *(v18 + 8), *(v18 + 16));

              v19 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
              v20 = type metadata accessor for UUID();
              (*(*(v20 - 8) + 8))(v18 + v19, v20);
              if (*(v16 + *(v17 + 24)))
              {
              }
            }

            goto LABEL_45;
          }

          __swift_destroy_boxed_opaque_existential_1(v6 + 840);
        }

        if (*(v6 + 880))
        {
        }

        goto LABEL_41;
      }

      v14 = *(v6 + 624);
      if (v14)
      {
        if (v14 == 1)
        {
LABEL_33:
          if (*(v6 + 776) != 1)
          {
          }

          goto LABEL_36;
        }

        __swift_destroy_boxed_opaque_existential_1(v6 + 600);
      }

      goto LABEL_33;
    }
  }

LABEL_45:

  return swift_deallocObject();
}

uint64_t NavigationColumnState.setPath(_:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = *a4;
  v31 = a4[1];
  outlined init with copy of NavigationColumnState.ColumnContent(v5 + 120, &v38);
  if (v45)
  {
    outlined destroy of NavigationRequest.Action?(&v38, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v12 = *(v5 + 96);
    v13 = *(v6 + 104);
    v29 = v11;

    outlined consume of Binding<AnyNavigationPath>?(v12, v13);
    *(v6 + 96) = a1;
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    ++*(v6 + 92);
    *&v38 = a1;
    *(&v38 + 1) = a2;
    *&v39 = a3;
    type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
    v15 = v14;
    MEMORY[0x18D00ACC0](&v33);
    v16 = v33;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    NavigationColumnState.ColumnContent.stack(path:views:)(v16, v17, v18);
    v11 = v29;

    *(v6 + 352) = 0;
    *&v38 = a1;
    *(&v38 + 1) = a2;
    *&v39 = a3;
    v19 = MEMORY[0x18D00ACC0](&v33, v15);
    v20 = (*(*v33 + 80))(v19);

    if (v20)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    *a5 = v22;
    *(a5 + 8) = 0;
    *(a5 + 16) = 2;
    *(a5 + 24) = 0u;
    *(a5 + 40) = 0u;
    *(a5 + 56) = 0u;
    *(a5 + 72) = 0u;
    *(a5 + 88) = 0u;
    *(a5 + 104) = 0u;
    *(a5 + 120) = 0u;
    *(a5 + 136) = 0u;
    *(a5 + 152) = 0;
    *(a5 + 160) = 0x1FFFFFFFCLL;
    *(a5 + 184) = 0u;
    *(a5 + 200) = 0u;
    *(a5 + 216) = 0u;
    *(a5 + 232) = 0u;
    *(a5 + 248) = 0u;
    *(a5 + 168) = 0u;
    *(a5 + 264) = 0u;
    *(a5 + 280) = 0u;
    *(a5 + 296) = 0u;
    *(a5 + 312) = 0u;
    *(a5 + 321) = 0u;
    *(a5 + 340) = (v20 & 1) == 0;
  }

  else
  {

    outlined destroy of NavigationRequest.Action?(&v38, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    outlined init with copy of NavigationColumnState.ColumnContent(v5 + 120, &v38);
    if (v45)
    {
      outlined destroy of NavigationColumnState.ColumnContent(&v38);
      v23 = 0;
    }

    else
    {
      v23 = v43;

      outlined destroy of NavigationRequest.Action?(&v38, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    v24 = *(v5 + 96);
    v25 = *(v6 + 104);

    outlined consume of Binding<AnyNavigationPath>?(v24, v25);
    *(v6 + 96) = a1;
    *(v6 + 104) = a2;
    *(v6 + 112) = a3;
    ++*(v6 + 92);
    outlined init with copy of NavigationColumnState.ColumnContent(v6 + 120, &v38);
    if (v45)
    {
      outlined destroy of NavigationColumnState.ColumnContent(&v38);
    }

    else
    {
      outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
      v35 = v40;
      v36 = v41;
      v37[0] = v42[0];
      *(v37 + 9) = *(v42 + 9);
      v33 = v38;
      v34 = v39;
      v30 = v44;

      *(v6 + 200) = 0;
      *(v6 + 184) = 0u;
      *(v6 + 168) = 0u;
      *(v6 + 152) = 0u;
      *(v6 + 136) = 0u;
      *(v6 + 120) = 0u;
      *(v6 + 208) = -1;
      *(v6 + 240) = 1;
      outlined destroy of NavigationColumnState.ColumnContent(v6 + 120);
      *&v38 = a1;
      *(&v38 + 1) = a2;
      *&v39 = a3;
      type metadata accessor for NavigationRequest.Action?(0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>, &type metadata for AnyNavigationPath, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v32);
      v26 = v36;
      *(v6 + 152) = v35;
      *(v6 + 168) = v26;
      *(v6 + 184) = v37[0];
      *(v6 + 193) = *(v37 + 9);
      v27 = v34;
      *(v6 + 120) = v33;
      v28 = v32;
      *(v6 + 136) = v27;
      *(v6 + 216) = v28;
      *(v6 + 224) = v30;
      *(v6 + 240) = 0;
    }

    NavigationColumnState.reestablishStateAfterPathReplacement(oldShadowPath:)(v23, a5);

    if (*(a5 + 16) != 2)
    {
      goto LABEL_15;
    }
  }

  if (*(a5 + 8) || *a5 != 1)
  {
LABEL_15:

    *(v6 + 288) = v11;
    *(v6 + 296) = v31;
  }

  return result;
}

BOOL protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance AlwaysOnFrameSpecifier(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  result = (*a1 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BLSAlwaysOnFrameSpecifier);
    v6 = v2;
    v7 = v3;
    v8 = static NSObject.== infix(_:_:)();

    return v8 & 1;
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA020AlwaysOnInvalidationD033_ED1CCB5A10919A16BDE683BBA73F40A5LLV_Tt1g5()
{
  Strong = swift_weakLoadStrong();
  v1 = swift_weakLoadStrong();
  if (Strong)
  {
    if (v1)
    {
      v2 = v1;

      return Strong == v2;
    }
  }

  else if (!v1)
  {
    return 1;
  }

  return 0;
}

uint64_t assignWithCopy for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = *(v8 + 40);
  v9 = (v7 + 48);
  v10 = *(v8 + 48);
  if (*(v7 + 48))
  {
    if (v10)
    {
      v11 = *(v8 + 56);
      *(v7 + 48) = v10;
      *(v7 + 56) = v11;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(v9);
  }

  else if (v10)
  {
    v12 = *(v8 + 56);
    *(v7 + 48) = v10;
    *(v7 + 56) = v12;

    goto LABEL_8;
  }

  *v9 = *(v8 + 48);
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v14 = (v7 + 80);
  v13 = *(v7 + 80);
  *(v7 + 72) = *(v8 + 72);
  v16 = (v8 + 80);
  v15 = *(v8 + 80);
  if (v13)
  {
    if (v15)
    {
      v17 = *(v8 + 88);
      *(v7 + 80) = v15;
      *(v7 + 88) = v17;

      *(v7 + 96) = *(v8 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(v7 + 80);
      v19 = *(v8 + 96);
      *v14 = *v16;
      *(v7 + 96) = v19;
    }
  }

  else if (v15)
  {
    v18 = *(v8 + 88);
    *(v7 + 80) = v15;
    *(v7 + 88) = v18;
    *(v7 + 96) = *(v8 + 96);
  }

  else
  {
    v20 = *v16;
    *(v7 + 96) = *(v8 + 96);
    *v14 = v20;
  }

  *(v7 + 104) = *(v8 + 104);
  *(v7 + 112) = *(v8 + 112);

  return a1;
}

uint64_t assignWithCopy for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = (a1 + 48);
  v8 = (a2 + 48);
  v7 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v7)
    {
      v9 = *(a2 + 56);
      *(a1 + 48) = v7;
      *(a1 + 56) = v9;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  else if (v7)
  {
    v10 = *(a2 + 56);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;

    goto LABEL_8;
  }

  *v6 = *v8;
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v12 = (a1 + 80);
  v11 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  v14 = (a2 + 80);
  v13 = *(a2 + 80);
  if (v11)
  {
    if (v13)
    {
      v15 = *(a2 + 88);
      *(a1 + 80) = v13;
      *(a1 + 88) = v15;

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(a1 + 80);
      v17 = *(a2 + 96);
      *v12 = *v14;
      *(a1 + 96) = v17;
    }
  }

  else if (v13)
  {
    v16 = *(a2 + 88);
    *(a1 + 80) = v13;
    *(a1 + 88) = v16;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v18 = *v14;
    *(a1 + 96) = *(a2 + 96);
    *v12 = v18;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 24))((*(v19 + 80) + 120 + a1) & ~*(v19 + 80), (*(v19 + 80) + 120 + a2) & ~*(v19 + 80));
  return a1;
}

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm_0()
{

  outlined consume of Text.Suffix.Storage(v0[3], v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t objectdestroy_54Tm_1()
{

  v1 = *(v0 + 472);
  if (v1 == 2)
  {

    v3 = *(v0 + 48);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 64))
    {
    }

    if (*(v0 + 88))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 72))
    {
    }

    if (*(v0 + 128))
    {
    }

    v2 = *(v0 + 232);
    if (*(v0 + 264))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 152);
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 144);
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 152);
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 144);
        }
      }
    }

    if (*(v0 + 384))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  v4 = *(v0 + 928);
  if (v4 == 2)
  {

    v6 = *(v0 + 504);
    if (v6)
    {
      if (v6 == 1)
      {
        goto LABEL_69;
      }
    }

    if (*(v0 + 520))
    {
    }

    if (*(v0 + 544))
    {

LABEL_68:
    }
  }

  else if (v4 == 1)
  {
    if (*(v0 + 528))
    {
    }

    if (*(v0 + 584))
    {
    }

    v5 = *(v0 + 688);
    if (*(v0 + 720))
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 608);
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 600);
        }
      }
    }

    else
    {
      if (v5 != 255)
      {
        if (v5)
        {

          if (*(v0 + 632))
          {
            __swift_destroy_boxed_opaque_existential_1(v0 + 608);
          }

          if (*(v0 + 656) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v0 + 600);
        }
      }
    }

    if (*(v0 + 840))
    {

      goto LABEL_68;
    }
  }

LABEL_69:

  return swift_deallocObject();
}

uint64_t ScrollEnvironmentStorage.baseProperties.setter(unsigned __int8 *a1)
{
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v1 + 16, v6);
  v3 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v6, a1);
  outlined destroy of ScrollEnvironmentProperties(v6);
  if (v3)
  {
    swift_beginAccess();
    outlined assign with copy of ScrollEnvironmentProperties(a1, v1 + 16);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of ScrollEnvironmentProperties(a1);
}

uint64_t ScrollEnvironmentStorage.__deallocating_deinit()
{
  outlined destroy of ScrollEnvironmentProperties(v0 + 16);
  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v0 + 280, type metadata accessor for ScrollEnvironmentTransform?);
  v1 = OBJC_IVAR____TtC7SwiftUI24ScrollEnvironmentStorage___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized NavigationColumnState.ColumnContent.mutatePath<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  outlined init with copy of NavigationColumnState.ColumnContent(a1, v21);
  if (v26)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v21);
    return 0;
  }

  else
  {
    v20 = a3;
    v32 = a4;
    outlined destroy of NavigationColumnState.ColumnContent(a1);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    v29 = v21[2];
    v30 = v21[3];
    v31[0] = v22[0];
    *(v31 + 9) = *(v22 + 9);
    v27 = v21[0];
    v28 = v21[1];
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 88) = -1;
    *(a1 + 120) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(a1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = v13;
      v16 = v14;
      v17 = (*(*v12 + 104))();

      v12 = v17;
      v14 = v16;
      v13 = v15;
    }

    result = (*(*v12 + 144))(a2, v20, v32, a5 + 248);
    if (v5)
    {
      outlined init with copy of NavigationColumnState.ReplacedRoot?(&v27, a1);
      *(a1 + 96) = v12;
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = 0;
      swift_willThrow();
      return outlined destroy of NavigationColumnState.ReplacedRoot?(&v27, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    }

    else
    {
      v18 = v30;
      *(a1 + 32) = v29;
      *(a1 + 48) = v18;
      *(a1 + 64) = v31[0];
      *(a1 + 73) = *(v31 + 9);
      v19 = v28;
      *a1 = v27;
      *(a1 + 16) = v19;
      *(a1 + 96) = v12;
      *(a1 + 104) = v13;
      *(a1 + 112) = v14;
      *(a1 + 120) = 0;
    }
  }

  return result;
}

uint64_t ResolvedNavigationDestinations.updatePossibilities(for:over:)(uint64_t result, uint64_t a2, char a3, __int128 *a4)
{
  v6 = v5;
  v7 = v4;
  if (!a3)
  {
    v10 = result;
    v11 = ResolvedNavigationDestinations.ejectDestinations(at:)(a2);
    if (v11)
    {
      v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(v11);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CD0];
    }

    v27 = ResolvedNavigationDestinations.setPossibilities(_:depth:)(v10, a2);
    v28 = _sSh2eeoiySbShyxG_ABtFZSO_Tt1g5(v12, v27);

    if (!__OFADD__(a2, 1))
    {
      LODWORD(v9) = (v28 & 1) == 0;
      if (a2 + 1 == *(v7 + 24))
      {
        goto LABEL_15;
      }

LABEL_33:
      v29 = 0x100000000;
      return v29 | v9;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a3 == 1)
  {
    LODWORD(v9) = ResolvedNavigationDestinations.popDestinationStack(_:)(result) & 1;
LABEL_15:
    v29 = 0;
    return v29 | v9;
  }

  if (!(result | a2))
  {
    v30 = *(v4 + 24);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v4 + 24) = v32;
      if (*(v4 + 72) > 1u)
      {
        LODWORD(v9) = 0;
        v29 = 0;
        return v29 | v9;
      }

      v33 = *(a4 + 2);
      v34 = *(a4 + 24);
      v35 = *(a4 + 4);
      v36 = *(a4 + 5);
      v63 = *a4;
      *&v64 = v33;
      BYTE8(v64) = v34;
      *&v65 = v35;
      *(&v65 + 1) = v36;
      result = NavigationPath.count.getter();
      v37 = result - 1;
      if (!__OFSUB__(result, 1))
      {
        v38 = *(a4 + 2);
        v39 = *(a4 + 24);
        v40 = *(a4 + 4);
        v41 = *(a4 + 5);
        v63 = *a4;
        *&v64 = v38;
        BYTE8(v64) = v39;
        *&v65 = v40;
        *(&v65 + 1) = v41;
        v42 = NavigationPath.count.getter();
        result = NavigationPath.updatePossibilities(from:to:into:)(v37, v42, v4);
        if (v5)
        {
          return result;
        }

        v43 = *(v4 + 24);
        result = v43 - 1;
        if (!__OFSUB__(v43, 1))
        {
          v44 = *(v4 + 16);
          LODWORD(v9) = *(v44 + 16) && (v45 = specialized __RawDictionaryStorage.find<A>(_:)(result), (v46 & 1) != 0) && *(*(*(v44 + 56) + 8 * v45) + 16);
          goto LABEL_33;
        }

LABEL_41:
        __break(1u);
        return result;
      }

      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v9 = result ^ 1 | a2;
  if (!v9)
  {
    goto LABEL_15;
  }

  v14 = *(v4 + 24);
  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_37;
  }

  v16 = *(v4 + 16);

  ResolvedNavigationDestinations.popDestinationStack(_:)(v15);
  v17 = *(a4 + 2);
  v18 = *(a4 + 24);
  v19 = *(a4 + 4);
  v20 = *(a4 + 5);
  v63 = *a4;
  *&v64 = v17;
  BYTE8(v64) = v18;
  *&v65 = v19;
  *(&v65 + 1) = v20;
  result = NavigationPath.count.getter();
  if (__OFADD__(result, 1))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v4 + 24) = result + 1;
  v21 = *(a4 + 1);
  v22 = *(a4 + 2);
  v23 = *(a4 + 24);
  v25 = *(a4 + 4);
  v24 = *(a4 + 5);
  if (*(v4 + 72) <= 1u)
  {
    *&v63 = *a4;
    *(&v63 + 1) = v21;
    *&v64 = v22;
    BYTE8(v64) = v23;
    *&v65 = v25;
    *(&v65 + 1) = v24;
    v26 = NavigationPath.count.getter();
    goto LABEL_27;
  }

  *&v63 = *a4;
  *(&v63 + 1) = v21;
  *&v64 = v22;
  BYTE8(v64) = v23;
  *&v65 = v25;
  *(&v65 + 1) = v24;
  result = NavigationPath.count.getter();
  v26 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_40;
  }

LABEL_27:
  NavigationPath.updatePossibilities(from:to:into:)(0, v26 & ~(v26 >> 63), v4);
  if (!v6)
  {
    v47 = *(v4 + 48);
    v48 = *(v4 + 16);
    v59 = *(v4 + 32);
    v60 = v47;
    v49 = *(v4 + 48);
    v61 = *(v4 + 64);
    v50 = *(v4 + 16);
    v58[0] = *v4;
    v58[1] = v50;
    v54 = v59;
    v55 = v49;
    v56 = *(v4 + 64);
    v62 = *(v4 + 80);
    v57 = *(v4 + 80);
    v52 = v58[0];
    v53 = v48;
    outlined init with copy of ResolvedNavigationDestinations(v58, &v63);
    v51 = ResolvedNavigationDestinations.domainDiffers(from:)(v16);

    v65 = v54;
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v63 = v52;
    v64 = v53;
    outlined destroy of ResolvedNavigationDestinations(&v63);
    LODWORD(v9) = v51 & 1;
    if (v26 <= 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSO_SaySOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x18D00D140](v2, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      specialized Set._Variant.insert(_:)(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

int32x2_t NavigationSplitViewState.update(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NavigationRequest.Action(a1, &v13);
  if (v17 == 21)
  {
    v4 = v13;
    v5 = v15;
    v6 = v16;
    v7 = v2[4];
    outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v15, *&v16);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v5);
    v2[4] = v5;
    v2[5] = v6;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0x1FFFFFFFCLL;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 0u;
    *(a2 + 248) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 264) = 0u;
    *(a2 + 280) = 0u;
    *(a2 + 296) = 0u;
    *(a2 + 312) = 0u;
    *(a2 + 321) = 0u;
    *a2 = xmmword_18CD6A6D0;
    *(a2 + 16) = 2;
    *(a2 + 340) = 0;
  }

  else
  {
    if (v17 == 5)
    {
      v10 = v13;
      v11 = v14;
      v9 = BYTE1(v15);
      v12 = v15;
      NavigationSplitViewState.updateRequiredCompactColumn(_:newValue:)(&v10, &v9, a2);
    }

    else
    {
      if (v17 != 4)
      {
        *(a2 + 136) = 0u;
        *(a2 + 120) = 0u;
        *(a2 + 104) = 0u;
        *(a2 + 88) = 0u;
        *(a2 + 72) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 152) = 0;
        *(a2 + 160) = 0x1FFFFFFFELL;
        *(a2 + 184) = 0u;
        *(a2 + 200) = 0u;
        *(a2 + 216) = 0u;
        *(a2 + 232) = 0u;
        *(a2 + 248) = 0u;
        *(a2 + 168) = 0u;
        *(a2 + 264) = 0u;
        *(a2 + 280) = 0u;
        *(a2 + 296) = 0u;
        *(a2 + 312) = 0u;
        *(a2 + 321) = 0u;
        *a2 = xmmword_18CD6A6D0;
        *(a2 + 16) = 2;
        *(a2 + 340) = 0;
        outlined destroy of NavigationRequest.Action(&v13);
        goto LABEL_9;
      }

      v10 = v13;
      v11 = v14;
      v9 = BYTE1(v15);
      v12 = v15;
      NavigationSplitViewState.updatePreferredCompactColumn(_:newValue:)(&v10, &v9, a2);
    }
  }

LABEL_9:
  result = vadd_s32(*v2, *(a2 + 340));
  *v2 = result;
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI9NamespaceV2IDV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<Namespace.ID>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL PresentationState.hasIdentityMatching(_:)(uint64_t a1)
{
  PresentationState.Base.lastPresentation.getter(&v15);
  if (v15)
  {
    outlined init with copy of SheetPreference?(&v17, v21, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    memset(v21, 0, sizeof(v21));
    v22 = 0;
  }

  outlined init with copy of SheetPreference?(a1, &v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (v15)
  {
    outlined init with copy of SheetPreference?(&v17, v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    memset(v13, 0, sizeof(v13));
    v14 = 0;
  }

  v2 = MEMORY[0x1E69E69B8];
  outlined init with copy of SheetPreference?(v21, &v15, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  outlined init with copy of SheetPreference?(v13, &v18, &lazy cache variable for type metadata for AnyHashable?, v2);
  if (!v16)
  {
    _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, v2);
    _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v2);
    if (!*(&v19 + 1))
    {
      _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
      goto LABEL_13;
    }

LABEL_17:
    _s2os6LoggerVSgWOhTm_1(&v15, type metadata accessor for (AnyHashable?, AnyHashable?));
    return 0;
  }

  outlined init with copy of SheetPreference?(&v15, v12, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  if (!*(&v19 + 1))
  {
    v7 = MEMORY[0x1E69E69B8];
    _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
    _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v7);
    outlined destroy of AnyHashable(v12);
    goto LABEL_17;
  }

  v10[0] = v18;
  v10[1] = v19;
  v11 = v20;
  v3 = MEMORY[0x18D00E7E0](v12, v10);
  outlined destroy of AnyHashable(v10);
  v4 = MEMORY[0x1E69E69B8];
  _ss11AnyHashableVSgWOhTm_3(v13, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8]);
  _ss11AnyHashableVSgWOhTm_3(v21, &lazy cache variable for type metadata for AnyHashable?, v4);
  outlined destroy of AnyHashable(v12);
  _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for AnyHashable?, v4);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  type metadata accessor for _SemanticFeature<Semantics_v6>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    return 1;
  }

  PresentationState.Base.lastPresentation.getter(&v15);
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    outlined destroy of SheetPreference(&v15);
  }

  else
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    v6 = 0;
  }

  outlined init with copy of SheetPreference?(a1, &v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
  if (!v15)
  {
    _ss11AnyHashableVSgWOhTm_3(&v15, &lazy cache variable for type metadata for SheetPreference?, &type metadata for SheetPreference);
    return !v5;
  }

  v9 = v16;
  outlined destroy of SheetPreference(&v15);
  result = 0;
  if (v5 && v6 == v9)
  {
    return 1;
  }

  return result;
}

uint64_t specialized _UIHostingView.didChangeColorScheme(from:)(uint64_t result)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xF8);
  v4 = *(v1 + v3);
  if (result == 2)
  {
    if (v4 == 2)
    {
      return result;
    }
  }

  else if (v4 != 2 && ((v4 ^ result) & 1) == 0)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(v1 + v3);
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    if (v6 == 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v9 = Strong;
    [v9 setOverrideUserInterfaceStyle_];
    v10 = *(v1 + *((*v2 & *v1) + 0x150));

    v11 = [v9 isBeingPresented];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 40);
    v13 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v15 = ViewGraphDelegate.uiViewController.getter(ObjectType, *(*(v12 + 16) + 8));
    swift_unknownObjectRelease();
    swift_unknownObjectWeakInit();

    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = partial apply for closure #1 in UIKitStatusBarBridge.updateStatusBar(isAnimated:shouldDefer:);
    *(v16 + 32) = v13;

    onNextMainRunLoop(do:)();
  }

  type metadata accessor for PresentationHostingController<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

uint64_t sub_18BF23F38()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BF23F70()
{

  return swift_deallocObject();
}

__n128 assignWithCopy for _NavigationTransitionStyleOutputs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v2)
    {
      *a1 = *a2;
      __swift_assign_boxed_opaque_existential_1((a1 + 8), (a2 + 8));
    }

    else
    {
      _s7SwiftUI28_NavigationTransitionOutputsVSgWOhTm_0(a1, type metadata accessor for (namespace: Namespace.ID, sourceID: AnyHashable));
      v7 = *(a2 + 16);
      result = *(a2 + 32);
      *a1 = *a2;
      *(a1 + 16) = v7;
      *(a1 + 32) = result;
    }
  }

  else if (v2)
  {
    *a1 = *a2;
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    *(a1 + 40) = *(a2 + 40);
    (**(v5 - 8))(a1 + 8, a2 + 8);
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v8;
    *a1 = result;
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackStyledCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v5 = (a1 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = (a2 + 31) & 0xFFFFFFFFFFFFFFF8;
  swift_weakCopyAssign();
  *(v5 + 8) = *(v6 + 8);

  *(v5 + 16) = *(v6 + 16);

  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 24;
  v9 = *(v7 + 80);
  v10 = (v9 + 24 + v5) & ~v9;
  v11 = (v9 + 24 + v6) & ~v9;
  (*(v7 + 24))(v10, v11);
  v12 = *(v8 + 40);
  v13 = v12 + v10;
  v14 = v12 + v11;
  v15 = (v13 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *v16;
  *(v15 + 4) = *(v16 + 4);
  *v15 = v17;
  v18 = (v13 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v14 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v15) = *(v19 + 8);
  *v18 = *v19;
  *(v18 + 8) = v15;
  return a1;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.index(after:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t (*)()))
{
  outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v25);
  v26 = a3;
  v27 = a4;
  if (v25[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v25, v22);
    outlined destroy of NavigationState?(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    if (a4 != 2 || a3)
    {
      outlined destroy of (NavigationColumnState.ColumnContent, NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>.Index.Kind)(v25, a6, a7, a8);
      return 0;
    }

LABEL_16:
    outlined destroy of NavigationColumnState.ColumnContent(v25);
    return 0;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v25, v22);
  result = v23;
  v15 = v24;
  if (!a4)
  {
    v18 = a3 + 1;
    if (__OFADD__(a3, 1))
    {
      goto LABEL_21;
    }

    v19 = (*(*v23 + 88))();

    if (v18 >= v19)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (a4 != 1)
  {
    v20 = (*(*v23 + 80))();

    if (v20)
    {
LABEL_14:
      v21 = *(v15 + 16);

      if (!v21)
      {
        goto LABEL_15;
      }

LABEL_19:
      outlined destroy of NavigationState?(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      outlined destroy of NavigationColumnState.ColumnContent(v25);
      return a1;
    }

LABEL_18:

    goto LABEL_19;
  }

  v16 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v17 = *(v15 + 16);

    if (v16 < v17)
    {
      goto LABEL_19;
    }

LABEL_15:
    outlined destroy of NavigationState?(v22, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    goto LABEL_16;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized NavigationState.StackContent.Views.ViewsSequence.view(at:state:baseDepth:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v10 = a5;
  v16 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, &v84[1]);
  if (!a4)
  {
    if ((BYTE8(v84[8]) & 1) == 0)
    {
      v33 = *&v84[7];

      v34 = a3 + 1;
      if (!__OFADD__(a3, 1))
      {
        if (!__OFADD__(a6, v34))
        {
          v35 = *(v10 + 296);
          v36 = *(v10 + 312);
          v37 = *(v10 + 264);
          v87 = *(v10 + 280);
          v88 = v35;
          v38 = *(v10 + 32);
          v39 = *(v10 + 24);
          v40 = *(v10 + 16);
          v41 = *(v8 + 456);
          v42 = *(v8 + 464);
          *&v95 = a3 + 1;
          *(&v95 + 1) = v40;
          LOBYTE(v96) = v39;
          *(&v96 + 1) = v38;
          *&v97 = a6 + v34;
          BYTE8(v97) = 1;
          v89 = v36;
          v90 = *(v10 + 328);
          v85 = *(v10 + 248);
          v86 = v37;
          v43 = (*(*v33 + 152))(&v92, &v85, v41, v42, a3, &v95, MEMORY[0x1E697E108], MEMORY[0x1E697E100]);
          if (v39 >= 3)
          {
            LOBYTE(v39) = 3;
          }

          v44 = __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
          v45 = MEMORY[0x1EEE9AC00](v44);
          (*(v47 + 16))(&v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
          AnyHashable.init<A>(_:)();

          *(a7 + 88) = 0;
          *a7 = v43;
          *(a7 + 8) = v39;
          *(a7 + 16) = v34;
          __swift_destroy_boxed_opaque_existential_1(&v92);
          return outlined destroy of NavigationState?(&v84[1], &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        }

        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_65:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (a4 == 1)
  {
    if ((BYTE8(v84[8]) & 1) == 0)
    {
      v17 = *(&v84[7] + 1);
      v18 = *&v84[8];
      v19 = (*(**&v84[7] + 88))(v16);
      v20 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        v21 = v20 + a3;
        if (!__OFADD__(v20, a3))
        {
          if ((a3 & 0x8000000000000000) == 0)
          {
            if (*(v17 + 16) > a3)
            {
              v22 = a6 + v21;
              if (!__OFADD__(a6, v21))
              {
                v82 = v18;
                v83 = a7;
                v23 = *(v10 + 32);
                v24 = *(v10 + 24);
                v25 = *(v10 + 16);
                v80 = v17 + 88 * a3;
                v26 = *(v80 + 32);
                *&v95 = v21;
                *(&v95 + 1) = v25;
                LOBYTE(v96) = v24;
                *(&v96 + 1) = v23;
                *&v97 = v22;
                BYTE8(v97) = 1;
                v27 = *(v8 + 456);
                v28 = *(v8 + 464);
                v29 = *(*v26 + 104);
                v81 = v21;

                v30 = v29(&v95, v27, v28, MEMORY[0x1E697E108], MEMORY[0x1E697E100]);

                if (*(v17 + 16) > a3)
                {
                  if (v24 >= 3)
                  {
                    v31 = 3;
                  }

                  else
                  {
                    v31 = v24;
                  }

                  outlined init with copy of NavigationViewDestinationView(v80 + 32, &v85);

                  v32 = v83;
                  outlined init with copy of NavigationLinkSelectionIdentifier(&v85 + 8, v83 + 24);
                  outlined destroy of NavigationViewDestinationView(&v85);
                  *(v83 + 88) = 1;
                  *v32 = v30;
                  *(v32 + 8) = v31;
                  *(v32 + 16) = v81;
                  return outlined destroy of NavigationState?(&v84[1], &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
                }

                goto LABEL_58;
              }

LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_53;
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    goto LABEL_65;
  }

  if ((BYTE8(v84[8]) & 1) == 0)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(&v84[1], &v85);

    if (v91 != 255)
    {
      if (v91)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_44;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(&v84[1], &v85);
  if (v91 != 255)
  {
    if (v91)
    {
LABEL_24:
      v97 = v87;
      v98 = v88;
      v99 = v89;
      v100 = v90;
      v95 = v85;
      v96 = v86;
      outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
      v49 = v95;
      v50 = *(v10 + 16);
      v51 = *(v10 + 24);
      v52 = *(v10 + 32);
      outlined init with copy of NavigationColumnState.ColumnContent(v10 + 120, v84);
      v53 = BYTE8(v84[7]);
      if ((BYTE8(v84[7]) & 1) == 0)
      {
      }

      outlined destroy of NavigationState?(v84, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      *&v85 = 0;
      *(&v85 + 1) = v50;
      LOBYTE(v86) = v51;
      *(&v86 + 1) = v52;
      *&v87 = a6;
      BYTE8(v87) = v53 ^ 1;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v8, v84, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
      v54 = swift_allocObject();
      memcpy((v54 + 16), v84, 0x1E0uLL);
      *(v54 + 496) = v50;
      *(v54 + 504) = v51;
      *(v54 + 512) = v52;
      v55 = *(*v49 + 104);
      _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<EmptyModifier, ReplacedRootDismissModifier>, MEMORY[0x1E697E108], &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
      v57 = v56;
      v58 = lazy protocol witness table accessor for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
      v59 = v55(&v85, closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)specialized partial apply, v54, v57, v58);

      if (v51 >= 3)
      {
        v60 = 3;
      }

      else
      {
        v60 = v51;
      }

      outlined init with copy of NavigationLinkSelectionIdentifier(&v95 + 8, a7 + 24);
      result = outlined destroy of NavigationViewDestinationView(&v95);
      *(a7 + 88) = 1;
      *a7 = v59;
      goto LABEL_39;
    }

LABEL_32:
    v92 = v85;
    v93 = v86;
    v94 = v87;
    outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
    if (a2)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, &v85);
    v61 = *(v10 + 16);
    v62 = *(v10 + 24);
    v63 = *(v10 + 32);
    outlined init with copy of _VariadicView.Tree<_VStackLayout, _VariadicView_Children>(v8, v84, &lazy cache variable for type metadata for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>);
    v64 = swift_allocObject();
    memcpy((v64 + 16), v84, 0x1E0uLL);
    *(v64 + 496) = v61;
    *(v64 + 504) = v62;
    *(v64 + 512) = v63;
    outlined init with copy of NavigationColumnState.ColumnContent(v10 + 120, v84);
    v65 = BYTE8(v84[7]);
    if ((BYTE8(v84[7]) & 1) == 0)
    {
    }

    outlined destroy of NavigationState?(v84, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
    *&v95 = 0;
    *(&v95 + 1) = v61;
    LOBYTE(v96) = v62;
    *(&v96 + 1) = v63;
    *&v97 = a6;
    BYTE8(v97) = v65 ^ 1;
    v66 = *(&v93 + 1);
    v67 = v94;
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    v84[2] = v87;
    v84[3] = v88;
    v84[4] = v89;
    *&v84[5] = v90;
    v84[0] = v85;
    v84[1] = v86;
    v68 = *(v67 + 104);
    _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<EmptyModifier, ReplacedRootDismissModifier>, MEMORY[0x1E697E108], &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
    v70 = v69;
    v71 = lazy protocol witness table accessor for type ModifiedContent<EmptyModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
    v72 = v68(v84, partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:), v64, &v95, v70, v71, v66, v67);
    outlined destroy of ResolvedNavigationDestinations(&v85);

    if (v62 >= 3)
    {
      v60 = 3;
    }

    else
    {
      v60 = v62;
    }

    v73 = *(&v93 + 1);
    v74 = v94;
    __swift_project_boxed_opaque_existential_1(&v92, *(&v93 + 1));
    (*(v74 + 24))(v73, v74);
    result = outlined destroy of AnyNavigationLinkPresentedValue(&v92);
    *(a7 + 88) = 0;
    *a7 = v72;
LABEL_39:
    *(a7 + 8) = v60;
    *(a7 + 16) = 0;
    return result;
  }

  if (a2)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v75 = *(v10 + 16);
  v76 = *(v10 + 24);
  v10 = *(v10 + 32);
  v77 = static HorizontalAlignment.center.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (*(*(v8 + 472) + 16) <= a1)
  {
    __break(1u);
LABEL_44:
    if (a2)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v75 = *(v10 + 16);
    v76 = *(v10 + 24);
    v10 = *(v10 + 32);
    v77 = static HorizontalAlignment.center.getter();
    if ((a1 & 0x8000000000000000) != 0)
    {
      goto LABEL_60;
    }

    if (*(*(v8 + 472) + 16) <= a1)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }
  }

  *&v95 = 0;
  *(&v95 + 1) = v75;
  LOBYTE(v96) = v76;
  *(&v96 + 1) = v10;
  *&v97 = a6;
  BYTE8(v97) = v76 == 3;
  if (v76 >= 3)
  {
    v78 = 3;
  }

  else
  {
    v78 = v76;
  }

  updated = _s7SwiftUI30ResolvedNavigationDestinationsV16prepareToPresent4view2at012shouldUpdateE08applyingAA7AnyViewVx_AA0d5StackO8PositionVSbq_ALXEtAA0O0RzAA0O8ModifierR_r0_lFZAA09_VariadicO0O4TreeVy_AA13_VStackLayoutVAA01_dP18StyleConfigurationV4RootVG_AA05EmptyR0VTt3B5Tf4nndn_n(v77, 0, 1, &v95, *(v8 + 456));
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 2;
  *a7 = updated;
  *(a7 + 8) = v78;
  *(a7 + 16) = 0;
  return outlined destroy of NavigationColumnState.ColumnContent(&v84[1]);
}

{
  v8 = v7;
  v16 = outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v118);
  if (a4)
  {
    if (a4 == 1)
    {
      if ((v122 & 1) == 0)
      {
        v17 = v119;
        v18 = v120;
        v19 = v121;
        v20 = (*(*v119 + 88))(v16);
        v21 = v20 + 1;
        if (!__OFADD__(v20, 1))
        {
          v22 = v21 + a3;
          if (!__OFADD__(v21, a3))
          {
            if ((a3 & 0x8000000000000000) == 0)
            {
              if (*(v18 + 16) > a3)
              {
                v23 = a6 + v22;
                if (!__OFADD__(a6, v22))
                {
                  v99 = v19;
                  v100 = v17;
                  v101 = a7;
                  v24 = *(a5 + 32);
                  v25 = *(a5 + 24);
                  v26 = *(a5 + 16);
                  v97 = v18 + 88 * a3;
                  v27 = *(v97 + 32);
                  *&v110[0] = v22;
                  *(&v110[0] + 1) = v26;
                  LOBYTE(v110[1]) = v25;
                  *(&v110[1] + 1) = v24;
                  *&v110[2] = v23;
                  BYTE8(v110[2]) = 1;
                  v28 = v8[57];
                  v29 = v8[58];
                  v30 = *(*v27 + 104);
                  v98 = v22;
                  v31 = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();

                  v32 = v30(v110, v28, v29, &type metadata for StackItemModifier, v31);

                  if (*(v18 + 16) > a3)
                  {
                    if (v25 >= 3)
                    {
                      v33 = 3;
                    }

                    else
                    {
                      v33 = v25;
                    }

                    outlined init with copy of NavigationViewDestinationView(v97 + 32, v104);

                    v34 = v101;
                    outlined init with copy of NavigationLinkSelectionIdentifier(v104 + 8, v101 + 24);
                    outlined destroy of NavigationViewDestinationView(v104);
                    *(v101 + 88) = 1;
                    *v34 = v32;
                    *(v34 + 8) = v33;
                    *(v34 + 16) = v98;
                    return outlined destroy of NavigationState?(v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
                  }

                  goto LABEL_60;
                }

LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          goto LABEL_55;
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      goto LABEL_68;
    }

    if (v122)
    {
      outlined init with copy of NavigationColumnState.ColumnContent(v118, &v111);
      if (v117 != 255)
      {
        if (v117)
        {
LABEL_24:
          v110[2] = v113;
          v110[3] = v114;
          v110[4] = v115;
          *&v110[5] = v116;
          v110[0] = v111;
          v110[1] = v112;
          outlined destroy of NavigationColumnState.ColumnContent(v118);
          v55 = *&v110[0];
          v56 = *(a5 + 16);
          v57 = *(a5 + 24);
          v58 = *(a5 + 32);
          outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v104);
          v59 = BYTE8(v104[7]);
          if ((BYTE8(v104[7]) & 1) == 0)
          {
          }

          outlined destroy of NavigationState?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
          v109[0] = 0;
          v109[1] = v56;
          LOBYTE(v109[2]) = v57;
          v109[3] = v58;
          v109[4] = a6;
          LOBYTE(v109[5]) = v59 ^ 1;
          outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(v8, v104);
          v60 = swift_allocObject();
          memcpy((v60 + 16), v104, 0x1E0uLL);
          *(v60 + 496) = v56;
          *(v60 + 504) = v57;
          *(v60 + 512) = v58;
          v61 = *(*v55 + 104);
          _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<StackItemModifier, ReplacedRootDismissModifier>, &type metadata for StackItemModifier, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
          v63 = v62;
          v64 = lazy protocol witness table accessor for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
          v65 = v61(v109, closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:)specialized partial apply, v60, v63, v64);

          if (v57 >= 3)
          {
            v66 = 3;
          }

          else
          {
            v66 = v57;
          }

          outlined init with copy of NavigationLinkSelectionIdentifier(v110 + 8, a7 + 24);
          result = outlined destroy of NavigationViewDestinationView(v110);
          *(a7 + 88) = 1;
          *a7 = v65;
          goto LABEL_39;
        }

LABEL_32:
        v103[0] = v111;
        v103[1] = v112;
        *&v103[2] = v113;
        outlined destroy of NavigationColumnState.ColumnContent(v118);
        if (a2)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        specialized NavigationState.StackContent.Views.ViewsSequence.destinations(before:)(a1, v110);
        v67 = *(a5 + 16);
        v68 = *(a5 + 24);
        v69 = *(a5 + 32);
        outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>(v8, v104);
        v70 = swift_allocObject();
        memcpy((v70 + 16), v104, 0x1E0uLL);
        *(v70 + 496) = v67;
        *(v70 + 504) = v68;
        *(v70 + 512) = v69;
        outlined init with copy of NavigationColumnState.ColumnContent(a5 + 120, v104);
        v71 = BYTE8(v104[7]);
        if ((BYTE8(v104[7]) & 1) == 0)
        {
        }

        outlined destroy of NavigationState?(v104, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
        v109[0] = 0;
        v109[1] = v67;
        LOBYTE(v109[2]) = v68;
        v109[3] = v69;
        v109[4] = a6;
        LOBYTE(v109[5]) = v71 ^ 1;
        v72 = *(&v103[1] + 1);
        v73 = *&v103[2];
        __swift_project_boxed_opaque_existential_1(v103, *(&v103[1] + 1));
        v104[2] = v110[2];
        v104[3] = v110[3];
        v104[4] = v110[4];
        *&v104[5] = *&v110[5];
        v104[0] = v110[0];
        v104[1] = v110[1];
        v74 = *(v73 + 104);
        _s7SwiftUI24ReadDestinationsModifier33_EA42A490FE48784768DCEF705CD04CF4LLVyAA018ResolvedNavigationD0VGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<StackItemModifier, ReplacedRootDismissModifier>, &type metadata for StackItemModifier, &type metadata for ReplacedRootDismissModifier, MEMORY[0x1E697E830]);
        v76 = v75;
        v77 = lazy protocol witness table accessor for type ModifiedContent<StackItemModifier, ReplacedRootDismissModifier> and conformance <> ModifiedContent<A, B>();
        v78 = v74(v104, partial apply for specialized closure #1 in NavigationState.StackContent.Views.ViewsSequence.replacedRootModifier(key:), v70, v109, v76, v77, v72, v73);
        outlined destroy of ResolvedNavigationDestinations(v110);

        if (v68 >= 3)
        {
          v66 = 3;
        }

        else
        {
          v66 = v68;
        }

        v79 = *(&v103[1] + 1);
        v80 = *&v103[2];
        __swift_project_boxed_opaque_existential_1(v103, *(&v103[1] + 1));
        (*(v80 + 24))(v79, v80);
        result = outlined destroy of AnyNavigationLinkPresentedValue(v103);
        *(a7 + 88) = 0;
        *a7 = v78;
LABEL_39:
        *(a7 + 8) = v66;
        *(a7 + 16) = 0;
        return result;
      }

      if (a2)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v81 = *(a5 + 16);
      v82 = *(a5 + 24);
      v83 = *(a5 + 32);
      v84 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v101 = a7;
      v85 = v8[59];
      if (*(v85 + 16) <= a1)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v86 = v84;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v85 + 104 * a1 + 32, v108, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
      v87 = v82 == 3;
      v105 = v86;
      v106 = 0;
      v107 = 1;
      v123 = 0;
      v124 = v81;
      v125 = v82;
      v126 = v83;
      v127 = a6;
      v128 = v82 == 3;
      v88 = v8[57];
      if (v82 >= 3)
      {
        v89 = 3;
      }

      else
      {
        v89 = v82;
      }
    }

    else
    {
      outlined init with copy of NavigationColumnState.ColumnContent(v118, &v111);

      if (v117 != 255)
      {
        if (v117)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

      if (a2)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v81 = *(a5 + 16);
      v82 = *(a5 + 24);
      v83 = *(a5 + 32);
      v90 = static HorizontalAlignment.center.getter();
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      v101 = a7;
      v91 = v8[59];
      if (*(v91 + 16) <= a1)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v92 = v90;
      outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(v91 + 104 * a1 + 32, v108, type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>);
      v87 = v82 == 3;
      v105 = v92;
      v106 = 0;
      v107 = 1;
      v123 = 0;
      v124 = v81;
      v125 = v82;
      v126 = v83;
      v127 = a6;
      v128 = v82 == 3;
      v88 = v8[57];
      if (v82 >= 3)
      {
        v89 = 3;
      }

      else
      {
        v89 = v82;
      }
    }

    outlined init with copy of _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(&v105, v104, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    *&v104[8] = 0;
    *(&v104[8] + 1) = v81;
    *&v104[9] = v82;
    *(&v104[9] + 1) = v83;
    *&v104[10] = a6;
    BYTE8(v104[10]) = v87;
    BYTE9(v104[10]) = 1;
    v93 = swift_allocObject();
    *(v93 + 16) = 1;
    *&v104[11] = closure #1 in View.readNavigationDestinations<A>(position:isActive:reader:)partial apply;
    *(&v104[11] + 1) = v93;
    v88(v103, &v123);
    memcpy(v109, v103, sizeof(v109));
    memcpy(&v104[12], v103, 0x130uLL);
    memcpy(v110, v103, sizeof(v110));
    outlined init with copy of StackItemModifier(v109, &v102);
    outlined destroy of StackItemModifier(v110);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>>, StackItemModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>, ReadDestinationsModifier<ResolvedNavigationDestinations>>, _PreferenceTransformModifier<NavigationDestinationKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier);
    v94 = AnyView.init<A>(_:)();
    outlined destroy of IndexingIterator<DefaultIndices<NavigationState.StackContent.Views.ViewsSequence<_NavigationStackStyleConfiguration.Root, EmptyModifier>>>(&v105, type metadata accessor for _VariadicView.Tree<_VStackLayout, ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>);
    v95 = v101;
    *(v101 + 72) = 0u;
    *(v95 + 56) = 0u;
    *(v95 + 40) = 0u;
    *(v95 + 24) = 0u;
    *(v95 + 88) = 2;
    *v95 = v94;
    *(v95 + 8) = v89;
    *(v95 + 16) = 0;
    return outlined destroy of NavigationColumnState.ColumnContent(v118);
  }

  if ((v122 & 1) == 0)
  {
    v35 = v119;

    v36 = a3 + 1;
    if (!__OFADD__(a3, 1))
    {
      v37 = a6 + v36;
      if (!__OFADD__(a6, v36))
      {
        v38 = *(a5 + 296);
        v39 = *(a5 + 312);
        v40 = *(a5 + 264);
        v104[2] = *(a5 + 280);
        v104[3] = v38;
        v41 = *(a5 + 32);
        v42 = *(a5 + 24);
        v43 = *(a5 + 16);
        v46 = v8 + 57;
        v45 = v8[57];
        v44 = v46[1];
        *&v110[0] = a3 + 1;
        *(&v110[0] + 1) = v43;
        LOBYTE(v110[1]) = v42;
        *(&v110[1] + 1) = v41;
        *&v110[2] = v37;
        BYTE8(v110[2]) = 1;
        v104[4] = v39;
        *&v104[5] = *(a5 + 328);
        v104[0] = *(a5 + 248);
        v104[1] = v40;
        v47 = *(*v35 + 152);
        v48 = lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier();
        v49 = v47(v109, v104, v45, v44, a3, v110, &type metadata for StackItemModifier, v48);
        if (v42 >= 3)
        {
          LOBYTE(v42) = 3;
        }

        v50 = __swift_project_boxed_opaque_existential_1(v109, v109[3]);
        v51 = MEMORY[0x1EEE9AC00](v50);
        (*(v53 + 16))(&v96 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v51);
        AnyHashable.init<A>(_:)();

        *(a7 + 88) = 0;
        *a7 = v49;
        *(a7 + 8) = v42;
        *(a7 + 16) = v36;
        __swift_destroy_boxed_opaque_existential_1(v109);
        return outlined destroy of NavigationState?(v118, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot);
      }

      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_68:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *closure #1 in ContainerBackgroundBridge.preferencesDidChange(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result[10];
    v11 = result[9];
    v8 = result[11];
    v9 = result[12];
    result[9] = v1;
    result[10] = v2;
    result[11] = v3;
    result[12] = v5;
    result[13] = v4;
    outlined copy of ContainerBackgroundValue.Content(v1, v2);

    outlined consume of ContainerBackgroundValue?(v11, v7, v8, v9);
    ContainerBackgroundBridge.lastContainerBackground.didset();
    if (v2 >> 62 == 1)
    {

      v10 = ShapeStyle.fallbackColor(in:level:)();
    }

    else
    {
      v10 = 0;
    }

    ContainerBackgroundBridge.updateBridgedBackgroundColor(_:)(v10);
  }

  return result;
}

void ContainerBackgroundBridge.lastContainerBackground.didset()
{
  if (*(v0 + 96) == 1 || (*(v0 + 80) & 0x8000000000000000) != 0)
  {
    v1 = *(v0 + 136);
    if (v1)
    {
      *(v0 + 136) = 0;
      v2 = *(v0 + 144);
      *(v0 + 144) = 0;
      ContainerBackgroundBridge.background.didset(v1, v2);
    }
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  if (v4 != 1 && (v3 & 0xC000000000000000) == 0x4000000000000000)
  {
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);
    outlined copy of ContainerBackgroundValue?(v11, *(v0 + 80), v10, *(v0 + 96));
    outlined copy of ContainerBackgroundValue?(v11, v3, v10, v4);
    outlined copy of ContainerBackgroundValue.Content(v11, v3);

    *&v16 = v4;
    *(&v16 + 1) = v9;

    ContainerBackgroundLuminance.init<A>(_:in:)();
    outlined consume of ContainerBackgroundValue?(v11, v3, v10, v4);
    outlined consume of ContainerBackgroundValue?(v11, v3, v10, v4);

    v7 = v20;
    v6 = v21 | (v22 << 32);
    v8 = v23;
  }

  else
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 1;
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 132);
  v14 = *(v0 + 133);
  *(v0 + 128) = v6;
  *(v0 + 132) = BYTE4(v6);
  *(v0 + 133) = v8;
  v15 = *(v0 + 112);
  *(v0 + 112) = v7;
  v16 = v15;
  v18 = v13;
  v17 = v12;
  v19 = v14;
  ContainerBackgroundBridge.lastContainerBackgroundLuminance.didset(&v16);
}

void protocol witness for ContainerBackgroundHost.containerBackgroundColor.setter in conformance _UIHostingView<A>(void *a1)
{
  specialized _UIHostingView.containerBackgroundColor.setter(a1);
}

uint64_t $defer #1 <A>() in NavigationStackCoordinator.navigationController(_:didShow:animated:)(uint64_t a1, void *a2)
{
  NavigationStackCoordinator.environment.getter();
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PPTTestCaseEnvironmentKey>, &type metadata for PPTTestCaseEnvironmentKey, &protocol witness table for PPTTestCaseEnvironmentKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PPTTestCaseEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
  if (v7[6])
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (!v7[2])
  {
    return outlined destroy of PPTTestCase?(v7, &lazy cache variable for type metadata for PPTTestCase?, &type metadata for PPTTestCase);
  }

  outlined init with take of PPTTestCase(v7, v8);
  v3 = [a2 viewControllers];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  PPTTestCase.navigationComplete(depth:)(v5);
  return outlined destroy of PPTTestCase(v8);
}

uint64_t protocol witness for NavigationStrategy.environment.getter in conformance NavigationStrategy_Phone@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t closure #1 in static ScrollTransitionModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ScrollTransitionModifier();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + 72, closure #1 in static PointerOffset.of(_:)partial apply, v5, &type metadata for ScrollTransitionConfiguration, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t implicit closure #7 in static SystemScrollView._makeView(view:inputs:)()
{
  _ViewInputs.position.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for [FocusableBounds], MEMORY[0x1E697E780], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type FocusableBoundsTransform and conformance FocusableBoundsTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t ScrollTransitionModifier.EffectRule.updateValue()(uint64_t a1)
{
  v15[17] = *MEMORY[0x1E69E9840];
  v2 = *AGGraphGetValue();
  v3 = *AGGraphGetValue();
  ScrollTransitionModifier.EffectRule.container.getter(v15);
  v5 = v15[0];
  v4 = v15[1];
  v6 = type metadata accessor for ScrollTransitionModifier();
  v7 = *(*(v6 - 8) + 8);

  v7(v15, v6);
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v4;
  v13 = a1;
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in StatefulRule.value.setter, v12, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
}

double ScrollTransitionModifier.StageProgress.progress(for:geometryProxy:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *a1;
  v15 = *(a1 + 24);
  v16 = *(a1 + 8);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v29 = *a2;
  v30 = v6;
  v31 = *(a2 + 32);
  v32 = *(a2 + 48);
  ScrollTransitionModifier.StageProgress.container.getter(&v20);
  LODWORD(v7) = v28;
  v33[6] = v26;
  v33[7] = v27;
  v34 = v28;
  v33[2] = v22;
  v33[3] = v23;
  v33[4] = v24;
  v33[5] = v25;
  v33[0] = v20;
  v33[1] = v21;
  v8 = type metadata accessor for ScrollTransitionModifier();
  (*(*(v8 - 8) + 8))(v33, v8);
  if (v7 == 2)
  {
    Value = AGGraphGetValue();
    v7 = *Value;
    v10 = Value[1];
    *&v20 = v7;
    *(&v20 + 1) = v10;

    v11 = EnvironmentValues.nearestScrollableAxes.getter();

    LOBYTE(v7) = v11 != 1;
  }

  if (!(v5 >> 62))
  {
    *&v17[0] = v4;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    LODWORD(v23) = v32;

    ScrollTransitionModifier.StageProgress.animatedProgress(threshold:axis:geometryProxy:)(v17, v7 & 1, &v20);
    v12 = v13;
    goto LABEL_7;
  }

  v12 = 1.0;
  if (v5 >> 62 == 1)
  {
    v19 = v4;
    v17[0] = v16;
    v17[1] = v15;
    v18 = v5 & 1;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    LODWORD(v23) = v32;

    v12 = ScrollTransitionModifier.StageProgress.interactiveProgress(threshold:axis:timingCurve:geometryProxy:)(&v19, v7 & 1, v17, &v20, a3 & 1);
LABEL_7:
  }

  return v12;
}

double ScrollTransitionModifier.StageProgress.interactiveProgress(threshold:axis:timingCurve:geometryProxy:)(unint64_t *a1, char a2, uint64_t *a3, __int128 *a4, char a5)
{
  v7 = *a1;
  v9 = *a3;
  v8 = a3[1];
  v11 = a3[2];
  v10 = a3[3];
  v12 = *(a3 + 32);
  v13 = a4[1];
  v38 = *a4;
  v39 = v13;
  v40 = a4[2];
  v41 = *(a4 + 12);
  static CoordinateSpaceProtocol<>.scrollView(axis:)();
  GeometryProxy.bounds(of:)();
  outlined destroy of NamedCoordinateSpace(&v37);
  v14 = 0.0;
  if ((v46 & 1) == 0)
  {
    v16 = v42;
    v15 = v43;
    v17 = v44;
    v18 = v45;
    v19 = v42;
    v20 = v43;
    if (a2)
    {
      Height = CGRectGetHeight(*&v19);
      Value = AGGraphGetValue();
      v23 = Value[1];
      v38 = *Value;
      v39 = v23;
      ViewSize.height.getter();
      v27 = v24.n128_f64[0];
    }

    else
    {
      Height = CGRectGetWidth(*&v19);
      v28 = AGGraphGetValue();
      v29 = v28[1];
      v38 = *v28;
      v39 = v29;
      ViewSize.width.getter();
      v27 = v24.n128_f64[0];
      v15 = v16;
    }

    v24.n128_f64[0] = v27;
    v25.n128_f64[0] = Height;
    v30 = ScrollTransitionConfiguration.Threshold.Storage.resolve(targetLength:containerLength:)(v7, v24, v25, v26);
    v31 = v27 * 0.5 - Height * 0.5;
    v32 = v30 + v31;
    v33 = v31 - v30;
    if (a5)
    {
      v34 = v33;
    }

    else
    {
      v34 = v27;
    }

    if (a5)
    {
      v32 = -Height;
    }

    if (v32 < v34)
    {
      v35 = 0.0;
      if (v15 >= v32)
      {
        v35 = 1.0;
        if (v15 < v34)
        {
          v35 = (v15 - v32) / (v34 - v32);
        }
      }

      *&v38 = v9;
      *(&v38 + 1) = v8;
      *&v39 = v11;
      *(&v39 + 1) = v10;
      LOBYTE(v40) = v12;
      if ((a5 & 1) == 0)
      {
        v35 = 1.0 - v35;
      }

      return UnitCurve.value(at:)(v35);
    }
  }

  return v14;
}

uint64_t ScrollTransitionModifier.EffectRule.container.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScrollTransitionModifier();
  Value = AGGraphGetValue();
  v16[0] = *Value;
  v4 = *(Value + 64);
  v6 = *(Value + 16);
  v5 = *(Value + 32);
  v16[3] = *(Value + 48);
  v16[4] = v4;
  v16[1] = v6;
  v16[2] = v5;
  v8 = *(Value + 96);
  v7 = *(Value + 112);
  v9 = *(Value + 80);
  v17 = *(Value + 128);
  v16[6] = v8;
  v16[7] = v7;
  v16[5] = v9;
  v10 = *(Value + 112);
  *(a1 + 96) = *(Value + 96);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(Value + 128);
  v11 = *(Value + 48);
  *(a1 + 32) = *(Value + 32);
  *(a1 + 48) = v11;
  v12 = *(Value + 80);
  *(a1 + 64) = *(Value + 64);
  *(a1 + 80) = v12;
  v13 = *(Value + 16);
  *a1 = *Value;
  *(a1 + 16) = v13;
  return (*(*(v2 - 8) + 16))(v15, v16, v2);
}

uint64_t ScrollTransitionModifier.EffectApplicationModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v27 = a1;
  v28 = a2;
  v29 = a5;
  type metadata accessor for ScrollTransitionModifier.EffectApplicationModifier();
  swift_getWitnessTable();
  v11 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for PlaceholderContentView();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v11;
  v37 = OpaqueTypeMetadata2;
  v38 = WitnessTable;
  v39 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &OpaqueTypeMetadata2 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &OpaqueTypeMetadata2 - v19;
  v30 = a3;
  v31 = a4;
  v32 = a6;
  v33 = a7;
  v34 = v27;
  v35 = v28;
  v21 = swift_checkMetadataState();
  v22 = swift_checkMetadataState();
  View.animation<A>(_:body:)();
  v36 = v21;
  v37 = v22;
  v38 = WitnessTable;
  v39 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, v23);
  v24 = *(v15 + 8);
  v24(v17, v14);
  static ViewBuilder.buildExpression<A>(_:)(v20, v14, v23);
  return (v24)(v20, v14);
}

BOOL protocol witness for Scrollable.allowsContentOffsetAdjustments.getter in conformance ScrollViewScrollable()
{
  AGGraphClearUpdate();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v1 = *WeakValue;
    v2 = WeakValue[2];
    v12[1] = WeakValue[1];
    v12[2] = v2;
    v12[0] = v1;
    v3 = WeakValue[3];
    v4 = WeakValue[4];
    v5 = WeakValue[5];
    *&v13[12] = *(WeakValue + 92);
    v12[4] = v4;
    *v13 = v5;
    v12[3] = v3;
    v6 = WeakValue[1];
    v14 = *WeakValue;
    v15 = v6;
    v7 = WeakValue[2];
    v8 = WeakValue[3];
    *(v19 + 12) = *(WeakValue + 92);
    v9 = WeakValue[5];
    v18 = WeakValue[4];
    v19[0] = v9;
    v16 = v7;
    v17 = v8;
    outlined init with copy of SystemScrollLayoutState(v12, v20);
    v20[4] = v18;
    *v21 = v19[0];
    *&v21[12] = *(v19 + 12);
    v20[0] = v14;
    v20[1] = v15;
    v20[2] = v16;
    v20[3] = v17;
    v10 = *(v19 + 12) >> 32;
    AGGraphSetUpdate();
    if (v10 >> 60 == 15)
    {
      return 0;
    }

    else
    {
      outlined destroy of ResolvedScrollBehavior?(v20, &lazy cache variable for type metadata for SystemScrollLayoutState?, &type metadata for SystemScrollLayoutState, MEMORY[0x1E69E6720]);
      return v10 >> 62 != 1;
    }
  }

  else
  {
    AGGraphSetUpdate();
    return 0;
  }
}

uint64_t protocol witness for Rule.value.getter in conformance ScrollTransitionModifier<A>.ConfigurationTransaction@<X0>(uint64_t *a1@<X8>)
{
  result = ScrollTransitionModifier.ConfigurationTransaction.value.getter();
  *a1 = result;
  return result;
}

void *assignWithCopy for ScrollTransitionModifier.EffectApplicationModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[3];
  a1[2] = a2[2];
  a1[3] = v3;

  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ListStackBehavior(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v2 | v3)
    {
      if (*&v2 ^ 1 | *(a1 + 8))
      {
        if (*(a2 + 9) && __PAIR128__(v5, *&v4) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 9) && !(*&v4 ^ 1 | v5))
      {
        return 1;
      }
    }

    else
    {
      v6 = *&v4 | v5;
      if (*(a2 + 9))
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}